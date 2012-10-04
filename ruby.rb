require 'csv'

class ReadCSVFile
	
	# Constructor method
	def initialize(file_name, tasks_row, name_num)
		@tasks_row = tasks_row 
		@name_row = name_row
		@file_name = file_name

		findSum
	end

	# Get the sum of the tasks
	def findSum
		data = CSV.read(@file_name)
		data.shift
		@sum_ruby = 0
		@sum_python = 0
		
		@sum_name_ruby = 0
		@sum_name_ython = 0
		
		data.each do |i|
			# Change from String to Integer and sum numbers
			
			if(i[@task_row] == "Ruby"
				@sum_language += Integer(i[@tasks_row]) 
				@sum_name_ruby += Integer(i[@name_row]) 
			end

			if(i[@task_row] == "Python"
				@sum_language += Integer(i[@tasks_row]) 
				@sum_name_python += Integer(i[@name_row]) 
			end
						
		end
	end

	# Display the sum on the screen
	def displayData
		puts "Result: #{@sum}"
	end

end


result = ReadCSVFile.new("sheet.csv", 2)
result.displayData
