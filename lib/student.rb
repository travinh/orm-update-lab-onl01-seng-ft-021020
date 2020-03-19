require_relative "../config/environment.rb"

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  
  attr_accessor :name, :grade, :id
  
  def initialize(name, grade, id = nil)
    @name = name 
    @grade = grade 
    @id = id
  end
  
  def self.create_table
    sql = <<-SQL 
      CREATE TABLE IF NOT EXISTS students(
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER
      )
    SQL
    
    result = DB[:conn].execute(sql)
    
    
  end


end
