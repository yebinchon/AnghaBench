; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_set_i2c_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_set_i2c_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ixl_set_i2c_data\00", align 1
@I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK = common dso_local global i32 0, align 4
@IXL_I2C_T_RISE = common dso_local global i64 0, align 8
@IXL_I2C_T_FALL = common dso_local global i64 0, align 8
@IXL_I2C_T_SU_DATA = common dso_local global i64 0, align 8
@I40E_ERR_PHY = common dso_local global i32 0, align 4
@IXL_DBG_I2C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error - I2C data was not set to %X.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*, i32*, i32)* @ixl_set_i2c_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_set_i2c_data(%struct.ixl_pf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ixl_pf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %10 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %9, i32 0, i32 0
  store %struct.i40e_hw* %10, %struct.i40e_hw** %7, align 8
  %11 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %22
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* @I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %34 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wr32(%struct.i40e_hw* %32, i32 %34, i32 %36)
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %39 = call i32 @ixl_flush(%struct.i40e_hw* %38)
  %40 = load i64, i64* @IXL_I2C_T_RISE, align 8
  %41 = load i64, i64* @IXL_I2C_T_FALL, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* @IXL_I2C_T_SU_DATA, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @i40e_usec_delay(i64 %44)
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %47 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %48 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %47)
  %49 = call i32 @rd32(%struct.i40e_hw* %46, i32 %48)
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @ixl_get_i2c_data(%struct.ixl_pf* %52, i32* %53)
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %26
  %57 = load i32, i32* @I40E_ERR_PHY, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %59 = load i32, i32* @IXL_DBG_I2C, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ixl_dbg(%struct.ixl_pf* %58, i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %26
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @IXL_I2C_REG(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_usec_delay(i64) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @ixl_get_i2c_data(%struct.ixl_pf*, i32*) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
