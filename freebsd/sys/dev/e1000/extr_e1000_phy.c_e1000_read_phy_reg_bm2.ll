; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_read_phy_reg_bm2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_read_phy_reg_bm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"e1000_read_phy_reg_bm2\00", align 1
@BM_WUC_PAGE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i32 0, align 4
@BM_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_read_phy_reg_bm2(%struct.e1000_hw* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %12 = ashr i32 %10, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.1*
  %22 = call i64 %19(%struct.e1000_hw.1* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %4, align 8
  br label %71

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @BM_WUC_PAGE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i64*, i64** %7, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %32, i32 %33, i64* %34, i32 %35, i32 %36)
  store i64 %37, i64* %8, align 8
  br label %61

38:                                               ; preds = %27
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MAX_PHY_MULTI_PAGE_REG, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %47 = load i32, i32* @BM_PHY_PAGE_SELECT, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %46, i32 %47, i64 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %61

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %56 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %56, %57
  %59 = load i64*, i64** %7, align 8
  %60 = call i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw* %55, i32 %58, i64* %59)
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %54, %52, %31
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.0*
  %69 = call i32 %66(%struct.e1000_hw.0* %68)
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %61, %25
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw*, i32, i64*, i32, i32) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i32, i64) #1

declare dso_local i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
