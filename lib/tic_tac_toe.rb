require "pry"
class TicTacToe
<<<<<<< HEAD
  attr_accessor
=======
  attr_accessor :turn
>>>>>>> 7180d6d992d7d12698b0aff6b8ed928b68194e8d

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
def initialize
  @board = Array.new(9, " ")
  @turn = 1
end

def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(input)
  # binding.pry
  input.to_i-1
end

def move(index, letter)
  @board[index] = letter
end

def position_taken?(position)
  @board[position] == "X" || @board[position] == "O"
end

def valid_move?(position)
  # binding.pry
  (0..8) === position && !position_taken?(position)
end

def turn_count
  turn_counter = 0
  @board.each_with_index do |letter, index|
    turn_counter += 1 if position_taken?(index)
    end
    turn_counter
end

def current_player
    if turn_count.even?
    "X"
  else
    "O"
  end
end

def turn
  user_input = gets.chomp.to_i
  position = input_to_index(user_input)
  valid_move?(position) ? move(position, current_player) : turn
  display_board
end

def won?
<<<<<<< HEAD
  # I need my @board to reference the same index numbers as win_con while passing its
  #respective strings to win_con
   # win_con.all? {|index| index == "X"} || win_con.all? {|index| index == "O"}
   # binding.pry
  WIN_COMBINATIONS.detect do |win_con|
    # @board[win_con[0]] == @board[win_con[1]] &&
    # @board[win_con[1]] == @board[win_con[2]]
   if (@board[win_con[0]]) == "X" && (@board[win_con[1]]) == "X" && (@board[win_con[2]]) == "X"
     return win_con
   elsif (@board[win_con[0]]) == "O" && (@board[win_con[1]]) == "O" && (@board[win_con[2]]) == "O"
     return win_con
   end
     false
  end
  end

  def draw?
    # binding.pry
  full? && won? == nil
  end

  def full?
    # binding.pry
  !@board.include?(" ")
  end

  def over?
  draw? || won? || full?

  end

  def winner
    WIN_COMBINATIONS.detect do |win_combo|
     if (@board[win_combo[0]]) == "X" && (@board[win_combo[1]]) == "X" && (@board[win_combo[2]]) == "X"
       return "X"
     elsif (@board[win_combo[0]]) == "O" && (@board[win_combo[1]]) == "O" && (@board[win_combo[2]]) == "O"
       return "O"
     else
       nil
     end
   end
 end

 def play
  #  binding.pry
  while !over?
    turn
  end
  if won?
    puts "Congratulations #{winner}!"
  elsif draw?
    puts "Cat's Game!"
  end
end
=======
  #checks board to see if any win combinations match
  #will have to compare win combinations to board state
  #iterate through win combinations / if "X" || "O" = the index of all three of any win comb
  WIN_COMBINATIONS.detect do |win_con|
    # binding.pry
 #    if (@board[win_con[0]]) == "X" && (@board[win_con[1]]) == "X" && (@board[win_con[2]]) == "X"
 #     win_con
 #   elsif (@board[win_con[0]]) == "O" && (@board[win_con[1]]) == "O" && (@board[win_con[2]]) == "O"
 #     win_combo
 #   end
 #     false
 # end

 win_con.all? {|index| index == "X"} || win_con.all? {|index| index == "O"}
end
end



























>>>>>>> 7180d6d992d7d12698b0aff6b8ed928b68194e8d

end
