; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_clock_in_i2c_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_clock_in_i2c_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ixl_clock_in_i2c_bit\00", align 1
@IXL_I2C_T_HIGH = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK = common dso_local global i32 0, align 4
@IXL_I2C_T_LOW = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*, i32*)* @ixl_clock_in_i2c_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_clock_in_i2c_bit(%struct.ixl_pf* %0, i32* %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %8 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %7, i32 0, i32 0
  store %struct.i40e_hw* %8, %struct.i40e_hw** %5, align 8
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %11 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %10)
  %12 = call i32 @rd32(%struct.i40e_hw* %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %15 = call i32 @ixl_raise_i2c_clk(%struct.ixl_pf* %14, i32* %6)
  %16 = load i32, i32* @IXL_I2C_T_HIGH, align 4
  %17 = call i32 @i40e_usec_delay(i32 %16)
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %20 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %19)
  %21 = call i32 @rd32(%struct.i40e_hw* %18, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %27 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @wr32(%struct.i40e_hw* %25, i32 %27, i32 %28)
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %31 = call i32 @ixl_flush(%struct.i40e_hw* %30)
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %34 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %33)
  %35 = call i32 @rd32(%struct.i40e_hw* %32, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %37 = call i32 @ixl_get_i2c_data(%struct.ixl_pf* %36, i32* %6)
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %40 = call i32 @ixl_lower_i2c_clk(%struct.ixl_pf* %39, i32* %6)
  %41 = load i32, i32* @IXL_I2C_T_LOW, align 4
  %42 = call i32 @i40e_usec_delay(i32 %41)
  %43 = load i32, i32* @I40E_SUCCESS, align 4
  ret i32 %43
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @IXL_I2C_REG(%struct.i40e_hw*) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixl_raise_i2c_clk(%struct.ixl_pf*, i32*) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_get_i2c_data(%struct.ixl_pf*, i32*) #1

declare dso_local i32 @ixl_lower_i2c_clk(%struct.ixl_pf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
