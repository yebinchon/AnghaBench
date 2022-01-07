; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_phy_reg_bm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_phy_reg_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@IGP_PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"e1000_write_phy_reg_bm\00", align 1
@BM_WUC_PAGE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i64 0, align 8
@BM_PHY_PAGE_SELECT = common dso_local global i64 0, align 8
@MAX_PHY_REG_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_write_phy_reg_bm(%struct.e1000_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @IGP_PAGE_SHIFT, align 8
  %14 = ashr i64 %12, %13
  store i64 %14, i64* %9, align 8
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
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
  br label %86

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @BM_WUC_PAGE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %33, i64 %34, i64* %7, i32 %35, i32 0)
  store i64 %36, i64* %8, align 8
  br label %76

37:                                               ; preds = %28
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @e1000_get_phy_addr_for_bm_page(i64 %38, i64 %39)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @MAX_PHY_MULTI_PAGE_REG, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %37
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i64, i64* @IGP_PAGE_SHIFT, align 8
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* @IGP01E1000_PHY_PAGE_SELECT, align 8
  store i64 %55, i64* %11, align 8
  br label %58

56:                                               ; preds = %47
  store i64 0, i64* %10, align 8
  %57 = load i64, i64* @BM_PHY_PAGE_SELECT, align 8
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = shl i64 %61, %62
  %64 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %59, i64 %60, i64 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %76

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %37
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %71 = load i64, i64* @MAX_PHY_REG_ADDRESS, align 8
  %72 = load i64, i64* %6, align 8
  %73 = and i64 %71, %72
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %70, i64 %73, i64 %74)
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %69, %67, %32
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %78 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %80, align 8
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %83 = bitcast %struct.e1000_hw* %82 to %struct.e1000_hw.0*
  %84 = call i32 %81(%struct.e1000_hw.0* %83)
  %85 = load i64, i64* %8, align 8
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %76, %26
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw*, i64, i64*, i32, i32) #1

declare dso_local i32 @e1000_get_phy_addr_for_bm_page(i64, i64) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
