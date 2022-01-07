; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_get_i2c_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_get_i2c_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@E1000_I2CPARAMS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"e1000_get_i2c_ack\00", align 1
@E1000_I2C_T_HIGH = common dso_local global i32 0, align 4
@E1000_I2C_CLK_IN = common dso_local global i64 0, align 8
@E1000_ERR_I2C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"I2C ack was not received.\0A\00", align 1
@E1000_I2C_T_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_get_i2c_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_i2c_ack(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %9, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @E1000_I2CPARAMS, align 4
  %12 = call i64 @E1000_READ_REG(%struct.e1000_hw* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  store i64 10, i64* %7, align 8
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %8, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = call i32 @e1000_raise_i2c_clk(%struct.e1000_hw* %15, i64* %6)
  %17 = load i32, i32* @E1000_I2C_T_HIGH, align 4
  %18 = call i32 @usec_delay(i32 %17)
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %34, %1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = call i32 @usec_delay(i32 1)
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = load i32, i32* @E1000_I2CPARAMS, align 4
  %27 = call i64 @E1000_READ_REG(%struct.e1000_hw* %25, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @E1000_I2C_CLK_IN, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %37

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %19

37:                                               ; preds = %32, %19
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @E1000_I2C_CLK_IN, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @E1000_ERR_I2C, align 4
  store i32 %43, i32* %2, align 4
  br label %57

44:                                               ; preds = %37
  %45 = call i32 @e1000_get_i2c_data(i64* %6)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @E1000_ERR_I2C, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = call i32 @e1000_lower_i2c_clk(%struct.e1000_hw* %52, i64* %6)
  %54 = load i32, i32* @E1000_I2C_T_LOW, align 4
  %55 = call i32 @usec_delay(i32 %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %42
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_raise_i2c_clk(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @e1000_get_i2c_data(i64*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_lower_i2c_clk(%struct.e1000_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
