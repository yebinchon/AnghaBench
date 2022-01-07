; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_read_i2c_byte_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_read_i2c_byte_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_GLGEN_I2CCMD_REGADD_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CCMD_PHYADD_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CCMD_OP_MASK = common dso_local global i32 0, align 4
@IXL_DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"I2C byte read error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixl_read_i2c_byte_reg(%struct.ixl_pf* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %13 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %12, i32 0, i32 0
  store %struct.i40e_hw* %13, %struct.i40e_hw** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @I40E_GLGEN_I2CCMD_REGADD_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %10, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 1
  %22 = and i32 %21, 7
  %23 = load i32, i32* @I40E_GLGEN_I2CCMD_PHYADD_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @I40E_GLGEN_I2CCMD_OP_MASK, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %32 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @I40E_GLGEN_I2CCMD(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @wr32(%struct.i40e_hw* %30, i32 %35, i32 %36)
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %40 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ixl_wait_for_i2c_completion(%struct.i40e_hw* %38, i32 %42)
  store i64 %43, i64* %11, align 8
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %46 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @I40E_GLGEN_I2CCMD(i32 %48)
  %50 = call i32 @rd32(%struct.i40e_hw* %44, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 255
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %4
  %57 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %58 = load i32, i32* @IXL_DBG_I2C, align 4
  %59 = call i32 @ixl_dbg(%struct.ixl_pf* %57, i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %4
  %61 = load i64, i64* %11, align 8
  ret i64 %61
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_GLGEN_I2CCMD(i32) #1

declare dso_local i64 @ixl_wait_for_i2c_completion(%struct.i40e_hw*, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
