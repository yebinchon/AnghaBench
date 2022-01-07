; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_i2c_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_i2c_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"e1000_set_i2c_data\00", align 1
@E1000_I2C_DATA_OUT = common dso_local global i32 0, align 4
@E1000_I2C_DATA_OE_N = common dso_local global i32 0, align 4
@E1000_I2C_CLK_OE_N = common dso_local global i32 0, align 4
@E1000_I2CPARAMS = common dso_local global i32 0, align 4
@E1000_I2C_T_RISE = common dso_local global i64 0, align 8
@E1000_I2C_T_FALL = common dso_local global i64 0, align 8
@E1000_I2C_T_SU_DATA = common dso_local global i64 0, align 8
@E1000_ERR_I2C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error - I2C data was not set to %X.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32*, i32)* @e1000_set_i2c_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_i2c_data(%struct.e1000_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* @E1000_I2C_DATA_OUT, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @E1000_I2C_DATA_OUT, align 4
  %19 = xor i32 %18, -1
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %17, %12
  %24 = load i32, i32* @E1000_I2C_DATA_OE_N, align 4
  %25 = xor i32 %24, -1
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @E1000_I2C_CLK_OE_N, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = load i32, i32* @E1000_I2CPARAMS, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %33, i32 %34, i32 %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %38)
  %40 = load i64, i64* @E1000_I2C_T_RISE, align 8
  %41 = load i64, i64* @E1000_I2C_T_FALL, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* @E1000_I2C_T_SU_DATA, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @usec_delay(i64 %44)
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %47 = load i32, i32* @E1000_I2CPARAMS, align 4
  %48 = call i32 @E1000_READ_REG(%struct.e1000_hw* %46, i32 %47)
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @e1000_get_i2c_data(i32* %51)
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %23
  %55 = load i32, i32* @E1000_ERR_I2C, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %23
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i64) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_get_i2c_data(i32*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
