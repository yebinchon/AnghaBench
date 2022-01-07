; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_clock_out_i2c_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_clock_out_i2c_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_I2CPARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"e1000_clock_out_i2c_bit\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_I2C_T_HIGH = common dso_local global i32 0, align 4
@E1000_I2C_T_LOW = common dso_local global i32 0, align 4
@E1000_ERR_I2C = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"I2C data was not set to %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_clock_out_i2c_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_clock_out_i2c_bit(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @E1000_I2CPARAMS, align 4
  %9 = call i32 @E1000_READ_REG(%struct.e1000_hw* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @e1000_set_i2c_data(%struct.e1000_hw* %11, i32* %6, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @E1000_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = call i32 @e1000_raise_i2c_clk(%struct.e1000_hw* %18, i32* %6)
  %20 = load i32, i32* @E1000_I2C_T_HIGH, align 4
  %21 = call i32 @usec_delay(i32 %20)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = call i32 @e1000_lower_i2c_clk(%struct.e1000_hw* %22, i32* %6)
  %24 = load i32, i32* @E1000_I2C_T_LOW, align 4
  %25 = call i32 @usec_delay(i32 %24)
  br label %30

26:                                               ; preds = %2
  %27 = load i64, i64* @E1000_ERR_I2C, align 8
  store i64 %27, i64* %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_set_i2c_data(%struct.e1000_hw*, i32*, i32) #1

declare dso_local i32 @e1000_raise_i2c_clk(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @e1000_lower_i2c_clk(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
