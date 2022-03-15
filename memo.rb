require "csv"

puts "1(新規でメモ作成) 2(既存のメモを編集)"

memo_type = gets.chomp.to_s

if memo_type == "1"
  puts "--拡張子を除いたファイル名を入力してください--"
  title = gets.chomp.to_s
  CSV.open("#{title}.csv","w") do |csv|
    puts "-------メモしたい内容の入力してください-------"
    create = gets.chomp.to_s
    csv << [create]
  end
elsif memo_type == "2"
  puts "--編集したいファイルを拡張子を除いて入力してください--"
  search = gets.chomp.to_s
  CSV.open("#{search}.csv","w") do |csv|
    puts "-------上書きしたい内容の入力してください-------"
    create = gets.chomp.to_s
    csv << [create]
  end
end