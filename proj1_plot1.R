Project11<- function(){
  setwd("D:/Tom/Coursera/Data Science Specialization-Johns Hopkins/R_data/EDA/Project1/")
  
  dFile <- "./household_power_consumption.txt"
  dataTable <- read.table(dFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
  subData <- dataTable[dataTable$Date %in% c("1/2/2007","2/2/2007"),]

  globalActivePower <- as.numeric(subData$Global_active_power)
  png("plot1.png", width=480, height=480)
  hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  dev.off()
}