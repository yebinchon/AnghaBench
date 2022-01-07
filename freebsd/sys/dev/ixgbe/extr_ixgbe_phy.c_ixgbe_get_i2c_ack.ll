; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_get_i2c_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_get_i2c_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ixgbe_get_i2c_ack\00", align 1
@IXGBE_I2C_T_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"I2C ack was not received.\0A\00", align 1
@IXGBE_ERR_I2C = common dso_local global i32 0, align 4
@IXGBE_I2C_T_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_get_i2c_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = call i32 @IXGBE_I2C_DATA_OE_N_EN_BY_MAC(%struct.ixgbe_hw* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = call i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw* %13)
  %15 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %12, i32 %14)
  store i32 %15, i32* %6, align 4
  store i32 10, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %16 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = call i32 @IXGBE_I2C_DATA_OUT_BY_MAC(%struct.ixgbe_hw* %20)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = call i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw* %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %27, i32 %29, i32 %30)
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %32)
  br label %34

34:                                               ; preds = %19, %1
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = call i32 @ixgbe_raise_i2c_clk(%struct.ixgbe_hw* %35, i32* %6)
  %37 = load i32, i32* @IXGBE_I2C_T_HIGH, align 4
  %38 = call i32 @usec_delay(i32 %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %55, %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = call i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw* %45)
  %47 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %44, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = call i32 @ixgbe_get_i2c_data(%struct.ixgbe_hw* %48, i32* %6)
  store i32 %49, i32* %8, align 4
  %50 = call i32 @usec_delay(i32 1)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %58

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %39

58:                                               ; preds = %53, %39
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @IXGBE_ERR_I2C, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %66 = call i32 @ixgbe_lower_i2c_clk(%struct.ixgbe_hw* %65, i32* %6)
  %67 = load i32, i32* @IXGBE_I2C_T_LOW, align 4
  %68 = call i32 @usec_delay(i32 %67)
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @IXGBE_I2C_DATA_OE_N_EN_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_I2C_DATA_OUT_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_raise_i2c_clk(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @ixgbe_get_i2c_data(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @ixgbe_lower_i2c_clk(%struct.ixgbe_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
