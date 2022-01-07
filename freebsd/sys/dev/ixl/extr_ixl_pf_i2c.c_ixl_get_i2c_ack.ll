; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_get_i2c_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_get_i2c_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@IXL_I2C_T_HIGH = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK = common dso_local global i64 0, align 8
@IXL_DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"I2C ack was not received.\0A\00", align 1
@I40E_ERR_PHY = common dso_local global i32 0, align 4
@IXL_I2C_T_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*)* @ixl_get_i2c_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_get_i2c_ack(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %10 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %9, i32 0, i32 0
  store %struct.i40e_hw* %10, %struct.i40e_hw** %3, align 8
  %11 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %11, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %14 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %13)
  %15 = call i64 @rd32(%struct.i40e_hw* %12, i32 %14)
  store i64 %15, i64* %6, align 8
  store i64 10, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %16 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %17 = call i32 @ixl_raise_i2c_clk(%struct.ixl_pf* %16, i64* %6)
  %18 = load i32, i32* @IXL_I2C_T_HIGH, align 4
  %19 = call i32 @i40e_usec_delay(i32 %18)
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %22 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %21)
  %23 = call i64 @rd32(%struct.i40e_hw* %20, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* @I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK, align 8
  %25 = load i64, i64* %6, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %29 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %28)
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @wr32(%struct.i40e_hw* %27, i32 %29, i64 %30)
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %33 = call i32 @ixl_flush(%struct.i40e_hw* %32)
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %50, %1
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %41 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %40)
  %42 = call i64 @rd32(%struct.i40e_hw* %39, i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %44 = call i32 @ixl_get_i2c_data(%struct.ixl_pf* %43, i64* %6)
  store i32 %44, i32* %8, align 4
  %45 = call i32 @i40e_usec_delay(i32 1)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %5, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %34

53:                                               ; preds = %48, %34
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %58 = load i32, i32* @IXL_DBG_I2C, align 4
  %59 = call i32 @ixl_dbg(%struct.ixl_pf* %57, i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @I40E_ERR_PHY, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %63 = call i32 @ixl_lower_i2c_clk(%struct.ixl_pf* %62, i64* %6)
  %64 = load i32, i32* @IXL_I2C_T_LOW, align 4
  %65 = call i32 @i40e_usec_delay(i32 %64)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @IXL_I2C_REG(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_raise_i2c_clk(%struct.ixl_pf*, i64*) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i64) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_get_i2c_data(%struct.ixl_pf*, i64*) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*) #1

declare dso_local i32 @ixl_lower_i2c_clk(%struct.ixl_pf*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
