; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_read_phy_register_clause22.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_read_phy_register_clause22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_ERR_TIMEOUT = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_DEVADD_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_PHYADD_SHIFT = common dso_local global i32 0, align 4
@I40E_MDIO_CLAUSE22_OPCODE_READ_MASK = common dso_local global i32 0, align 4
@I40E_MDIO_CLAUSE22_STCODE_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_MDICMD_MASK = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_DEBUG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"PHY: Can't write command to external PHY.\0A\00", align 1
@I40E_GLGEN_MSRWD_MDIRDDATA_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_MSRWD_MDIRDDATA_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_read_phy_register_clause22(%struct.i40e_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1000, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @I40E_GLGEN_MSCA_DEVADD_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @I40E_GLGEN_MSCA_PHYADD_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* @I40E_MDIO_CLAUSE22_OPCODE_READ_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @I40E_MDIO_CLAUSE22_STCODE_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @I40E_GLGEN_MSCA_MDICMD_MASK, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @I40E_GLGEN_MSCA(i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @wr32(%struct.i40e_hw* %31, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %51, %4
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @I40E_GLGEN_MSCA(i32 %38)
  %40 = call i32 @rd32(%struct.i40e_hw* %37, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @I40E_GLGEN_MSCA_MDICMD_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %46, i32* %9, align 4
  br label %54

47:                                               ; preds = %36
  %48 = call i32 @i40e_usec_delay(i32 10)
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %36, label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %59 = load i32, i32* @I40E_DEBUG_PHY, align 4
  %60 = call i32 @i40e_debug(%struct.i40e_hw* %58, i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %72

61:                                               ; preds = %54
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @I40E_GLGEN_MSRWD(i32 %63)
  %65 = call i32 @rd32(%struct.i40e_hw* %62, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @I40E_GLGEN_MSRWD_MDIRDDATA_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @I40E_GLGEN_MSRWD_MDIRDDATA_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %57
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_GLGEN_MSCA(i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*) #1

declare dso_local i32 @I40E_GLGEN_MSRWD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
