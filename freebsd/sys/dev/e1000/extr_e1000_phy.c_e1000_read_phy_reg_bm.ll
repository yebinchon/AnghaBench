; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_read_phy_reg_bm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_read_phy_reg_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@IGP_PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"e1000_read_phy_reg_bm\00", align 1
@BM_WUC_PAGE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i64 0, align 8
@BM_PHY_PAGE_SELECT = common dso_local global i64 0, align 8
@MAX_PHY_REG_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_read_phy_reg_bm(%struct.e1000_hw* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @IGP_PAGE_SHIFT, align 8
  %14 = ashr i64 %12, %13
  store i64 %14, i64* %9, align 8
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.1*
  %23 = call i64 %20(%struct.e1000_hw.1* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %4, align 8
  br label %88

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @BM_WUC_PAGE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %33, i64 %34, i32* %35, i32 %36, i32 %37)
  store i64 %38, i64* %8, align 8
  br label %78

39:                                               ; preds = %28
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @e1000_get_phy_addr_for_bm_page(i64 %40, i64 %41)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @MAX_PHY_MULTI_PAGE_REG, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %39
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, i64* @IGP_PAGE_SHIFT, align 8
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* @IGP01E1000_PHY_PAGE_SELECT, align 8
  store i64 %57, i64* %11, align 8
  br label %60

58:                                               ; preds = %49
  store i64 0, i64* %10, align 8
  %59 = load i64, i64* @BM_PHY_PAGE_SELECT, align 8
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = shl i64 %63, %64
  %66 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %61, i64 %62, i64 %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %78

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %39
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %73 = load i64, i64* @MAX_PHY_REG_ADDRESS, align 8
  %74 = load i64, i64* %6, align 8
  %75 = and i64 %73, %74
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw* %72, i64 %75, i32* %76)
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %71, %69, %32
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %82, align 8
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %85 = bitcast %struct.e1000_hw* %84 to %struct.e1000_hw.0*
  %86 = call i32 %83(%struct.e1000_hw.0* %85)
  %87 = load i64, i64* %8, align 8
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %78, %26
  %89 = load i64, i64* %4, align 8
  ret i64 %89
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw*, i64, i32*, i32, i32) #1

declare dso_local i32 @e1000_get_phy_addr_for_bm_page(i64, i64) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i64, i64) #1

declare dso_local i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
