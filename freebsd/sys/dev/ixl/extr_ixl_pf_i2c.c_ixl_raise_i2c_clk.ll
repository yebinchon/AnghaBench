; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_raise_i2c_clk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_raise_i2c_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@IXL_I2C_CLOCK_STRETCHING_TIMEOUT = common dso_local global i64 0, align 8
@I40E_GLGEN_I2CPARAMS_CLK_MASK = common dso_local global i64 0, align 8
@I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK = common dso_local global i64 0, align 8
@IXL_I2C_T_RISE = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CPARAMS_CLK_IN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, i64*)* @ixl_raise_i2c_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_raise_i2c_clk(%struct.ixl_pf* %0, i64* %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %9, i32 0, i32 0
  store %struct.i40e_hw* %10, %struct.i40e_hw** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i64, i64* @IXL_I2C_CLOCK_STRETCHING_TIMEOUT, align 8
  store i64 %11, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %46, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load i64, i64* @I40E_GLGEN_I2CPARAMS_CLK_MASK, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %18, align 8
  %20 = or i64 %19, %17
  store i64 %20, i64* %18, align 8
  %21 = load i64, i64* @I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK, align 8
  %22 = xor i64 %21, -1
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, %22
  store i64 %25, i64* %23, align 8
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %28 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %27)
  %29 = load i64*, i64** %4, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wr32(%struct.i40e_hw* %26, i32 %28, i64 %30)
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %33 = call i32 @ixl_flush(%struct.i40e_hw* %32)
  %34 = load i32, i32* @IXL_I2C_T_RISE, align 4
  %35 = call i32 @i40e_usec_delay(i32 %34)
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %38 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %37)
  %39 = call i64 @rd32(%struct.i40e_hw* %36, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @I40E_GLGEN_I2CPARAMS_CLK_IN_MASK, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %16
  br label %49

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %12

49:                                               ; preds = %44, %12
  ret void
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i64) #1

declare dso_local i32 @IXL_I2C_REG(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
