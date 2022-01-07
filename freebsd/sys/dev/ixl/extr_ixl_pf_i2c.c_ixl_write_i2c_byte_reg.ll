; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_write_i2c_byte_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_write_i2c_byte_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_SUCCESS = common dso_local global i64 0, align 8
@I40E_GLGEN_I2CCMD_PHYADD_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CCMD_PHYADD_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CCMD_REGADD_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CCMD_REGADD_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CCMD_DATA_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CCMD_DATA_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CCMD_OP_MASK = common dso_local global i32 0, align 4
@IXL_DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"I2C byte write error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixl_write_i2c_byte_reg(%struct.ixl_pf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %15 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %14, i32 0, i32 0
  store %struct.i40e_hw* %15, %struct.i40e_hw** %9, align 8
  %16 = load i64, i64* @I40E_SUCCESS, align 8
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @ixl_read_i2c_byte_reg(%struct.ixl_pf* %17, i32 %19, i32 %20, i32* %12)
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* %12, align 4
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %28 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @I40E_GLGEN_I2CCMD(i32 %30)
  %32 = call i32 @rd32(%struct.i40e_hw* %26, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @I40E_GLGEN_I2CCMD_PHYADD_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 1
  %39 = and i32 %38, 7
  %40 = load i32, i32* @I40E_GLGEN_I2CCMD_PHYADD_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @I40E_GLGEN_I2CCMD_REGADD_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @I40E_GLGEN_I2CCMD_REGADD_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @I40E_GLGEN_I2CCMD_DATA_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @I40E_GLGEN_I2CCMD_DATA_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @I40E_GLGEN_I2CCMD_OP_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %68 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @I40E_GLGEN_I2CCMD(i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @wr32(%struct.i40e_hw* %66, i32 %71, i32 %72)
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %75 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %76 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ixl_wait_for_i2c_completion(%struct.i40e_hw* %74, i32 %78)
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %4
  %83 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %84 = load i32, i32* @IXL_DBG_I2C, align 4
  %85 = call i32 @ixl_dbg(%struct.ixl_pf* %83, i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %4
  %87 = load i64, i64* %10, align 8
  ret i64 %87
}

declare dso_local i64 @ixl_read_i2c_byte_reg(%struct.ixl_pf*, i32, i32, i32*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_GLGEN_I2CCMD(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i64 @ixl_wait_for_i2c_completion(%struct.i40e_hw*, i32) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
