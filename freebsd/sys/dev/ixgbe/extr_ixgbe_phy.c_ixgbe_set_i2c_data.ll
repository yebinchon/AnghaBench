; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_set_i2c_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_set_i2c_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ixgbe_set_i2c_data\00", align 1
@IXGBE_I2C_T_RISE = common dso_local global i64 0, align 8
@IXGBE_I2C_T_FALL = common dso_local global i64 0, align 8
@IXGBE_I2C_T_SU_DATA = common dso_local global i64 0, align 8
@IXGBE_ERR_I2C = common dso_local global i32 0, align 4
@IXGBE_ERROR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error - I2C data was not set to %X.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*, i32)* @ixgbe_set_i2c_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_i2c_data(%struct.ixgbe_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %11 = call i32 @IXGBE_I2C_DATA_OE_N_EN_BY_MAC(%struct.ixgbe_hw* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %12, i32* %9, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = call i32 @IXGBE_I2C_DATA_OUT_BY_MAC(%struct.ixgbe_hw* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = call i32 @IXGBE_I2C_DATA_OUT_BY_MAC(%struct.ixgbe_hw* %23)
  %25 = xor i32 %24, -1
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* %8, align 4
  %31 = xor i32 %30, -1
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = call i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %35, i32 %37, i32 %39)
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %42 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %41)
  %43 = load i64, i64* @IXGBE_I2C_T_RISE, align 8
  %44 = load i64, i64* @IXGBE_I2C_T_FALL, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @IXGBE_I2C_T_SU_DATA, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @usec_delay(i64 %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %29
  %52 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %52, i32* %4, align 4
  br label %87

53:                                               ; preds = %29
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %63 = call i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %61, i32 %63, i32 %65)
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %68 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %67)
  br label %69

69:                                               ; preds = %56, %53
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %72 = call i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw* %71)
  %73 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %70, i32 %72)
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @ixgbe_get_i2c_data(%struct.ixgbe_hw* %76, i32* %77)
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load i32, i32* @IXGBE_ERR_I2C, align 4
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @ERROR_REPORT2(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %80, %69
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %51
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @IXGBE_I2C_DATA_OE_N_EN_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_I2C_DATA_OUT_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usec_delay(i64) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_get_i2c_data(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
