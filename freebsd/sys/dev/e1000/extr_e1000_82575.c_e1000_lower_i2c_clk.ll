; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_lower_i2c_clk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_lower_i2c_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"e1000_lower_i2c_clk\00", align 1
@E1000_I2C_CLK_OUT = common dso_local global i32 0, align 4
@E1000_I2C_CLK_OE_N = common dso_local global i32 0, align 4
@E1000_I2CPARAMS = common dso_local global i32 0, align 4
@E1000_I2C_T_FALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32*)* @e1000_lower_i2c_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_lower_i2c_clk(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @E1000_I2C_CLK_OUT, align 4
  %7 = xor i32 %6, -1
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %7
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @E1000_I2C_CLK_OE_N, align 4
  %12 = xor i32 %11, -1
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %12
  store i32 %15, i32* %13, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = load i32, i32* @E1000_I2CPARAMS, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %16, i32 %17, i32 %19)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %21)
  %23 = load i32, i32* @E1000_I2C_T_FALL, align 4
  %24 = call i32 @usec_delay(i32 %23)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
