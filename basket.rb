##the program's input format is "BAS", "PAR", "COR", open the terminal and then
## excute the program, input item that you want
## exit the input process by press blank space
require 'active_support' # install gem active_support for entr.blank statment
require 'active_support/core_ext'
total_price = 0 #set the total price in the basket 0
quantatity_BAS = 0 #set quantity for Basil 0
quantatity_Parsely = 0 #set quantity for Parsely 0
quantatity_Corriander = 0 #set quantity for Corriander 0
puts "add the item"
while true
  entry  = gets.chomp #enter the name of the item, store them in entry
  if entry == "BAS"
    quantatity_BAS +=1 # if enters Basil, quantity for Basil increase 1
    elsif entry =="PAR"
    quantatity_Parsely +=1 # if enters Basil, quantity for Parsely  increase 1
  elsif entry == "COR"
    quantatity_Corriander +=1 # if enters Corriander, quantity for Corriander increase 1
  elsif
     entry.blank? # if enters blank space, exit the input process
        break
  end
end

## this if-else statment is used to calculate the total price in the basket
if quantatity_BAS%2 ==0 && quantatity_Parsely>=3
    total_price = 3.11* (quantatity_BAS/2) + quantatity_Parsely* 4.5+ quantatity_Corriander* 11.23
  elsif quantatity_BAS%2 !=0 && quantatity_Parsely>=3
    total_price = 3.11*(quantatity_BAS+1)/2+ quantatity_Parsely* 4.5+ quantatity_Corriander* 11.23
    elsif quantatity_BAS%2 ==0 && quantatity_Parsely<3
    total_price = 3.11* (quantatity_BAS/2) + quantatity_Parsely* 5+ quantatity_Corriander* 11.23
  else
    total_price = 3.11*(quantatity_BAS+1)/2 + quantatity_Parsely* 5+ quantatity_Corriander* 11.23
end

## out put the total price of the basket
puts ("total price ￡" +total_price.inspect)
