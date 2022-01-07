; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_clock_out_i2c_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_clock_out_i2c_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_SUCCESS = common dso_local global i64 0, align 8
@IXL_I2C_T_HIGH = common dso_local global i32 0, align 4
@IXL_I2C_T_LOW = common dso_local global i32 0, align 4
@I40E_ERR_PHY = common dso_local global i64 0, align 8
@IXL_DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"I2C data was not set to %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixl_pf*, i32)* @ixl_clock_out_i2c_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixl_clock_out_i2c_bit(%struct.ixl_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 0
  store %struct.i40e_hw* %9, %struct.i40e_hw** %5, align 8
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %12 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %11)
  %13 = call i32 @rd32(%struct.i40e_hw* %10, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @ixl_set_i2c_data(%struct.ixl_pf* %14, i32* %7, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @I40E_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %22 = call i32 @ixl_raise_i2c_clk(%struct.ixl_pf* %21, i32* %7)
  %23 = load i32, i32* @IXL_I2C_T_HIGH, align 4
  %24 = call i32 @i40e_usec_delay(i32 %23)
  %25 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %26 = call i32 @ixl_lower_i2c_clk(%struct.ixl_pf* %25, i32* %7)
  %27 = load i32, i32* @IXL_I2C_T_LOW, align 4
  %28 = call i32 @i40e_usec_delay(i32 %27)
  br label %35

29:                                               ; preds = %2
  %30 = load i64, i64* @I40E_ERR_PHY, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %32 = load i32, i32* @IXL_DBG_I2C, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ixl_dbg(%struct.ixl_pf* %31, i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  %36 = load i64, i64* %6, align 8
  ret i64 %36
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @IXL_I2C_REG(%struct.i40e_hw*) #1

declare dso_local i64 @ixl_set_i2c_data(%struct.ixl_pf*, i32*, i32) #1

declare dso_local i32 @ixl_raise_i2c_clk(%struct.ixl_pf*, i32*) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

declare dso_local i32 @ixl_lower_i2c_clk(%struct.ixl_pf*, i32*) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
