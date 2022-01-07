; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ixgbe_i2c_stop\00", align 1
@IXGBE_I2C_T_SU_STO = common dso_local global i32 0, align 4
@IXGBE_I2C_T_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_i2c_stop(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = call i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw* %8)
  %10 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %7, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = call i32 @IXGBE_I2C_DATA_OE_N_EN_BY_MAC(%struct.ixgbe_hw* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = call i32 @IXGBE_I2C_CLK_OE_N_EN_BY_MAC(%struct.ixgbe_hw* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = call i32 @IXGBE_I2C_BB_EN_BY_MAC(%struct.ixgbe_hw* %15)
  store i32 %16, i32* %6, align 4
  %17 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %19 = call i32 @ixgbe_set_i2c_data(%struct.ixgbe_hw* %18, i32* %3, i32 0)
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = call i32 @ixgbe_raise_i2c_clk(%struct.ixgbe_hw* %20, i32* %3)
  %22 = load i32, i32* @IXGBE_I2C_T_SU_STO, align 4
  %23 = call i32 @usec_delay(i32 %22)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = call i32 @ixgbe_set_i2c_data(%struct.ixgbe_hw* %24, i32* %3, i32 1)
  %26 = load i32, i32* @IXGBE_I2C_T_BUF, align 4
  %27 = call i32 @usec_delay(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33, %30, %1
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %48 = call i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw* %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %46, i32 %48, i32 %49)
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %52 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %51)
  br label %53

53:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_I2C_DATA_OE_N_EN_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_I2C_CLK_OE_N_EN_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_I2C_BB_EN_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_set_i2c_data(%struct.ixgbe_hw*, i32*, i32) #1

declare dso_local i32 @ixgbe_raise_i2c_clk(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
