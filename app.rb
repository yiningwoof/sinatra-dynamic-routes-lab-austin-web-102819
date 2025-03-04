require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_f
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @result = ""
    @number.times do
      @result += @phrase
    end
    @result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 + ' ' + @word2 + ' ' + @word3 + ' ' + @word4 + ' ' + @word5 + '.'
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_f
    @number2 = params[:number2].to_f
    @operation = params[:operation]
    case @operation
    when 'add'
      @result = @number1 + @number2
    when 'subtract'
      @result = @number1 - @number2
    when 'multiply'
      @result = @number1 * @number2
    when 'divide'
      @result = @number1 / @number2
    end
    @result.to_s
  end

end