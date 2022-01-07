; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c___e1000_read_phy_reg_hv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c___e1000_read_phy_reg_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [24 x i8] c"__e1000_read_phy_reg_hv\00", align 1
@BM_WUC_PAGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HV_INTC_FC_PAGE_START = common dso_local global i32 0, align 4
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i32 0, align 4
@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"reading PHY page %d (or 0x%x shifted) reg 0x%x\0A\00", align 1
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32*, i32, i32)* @__e1000_read_phy_reg_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__e1000_read_phy_reg_hv(%struct.e1000_hw* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @BM_PHY_REG_PAGE(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @BM_PHY_REG_NUM(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @e1000_get_phy_addr_for_hv_page(i32 %20)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  store i32 %21, i32* %15, align 4
  %25 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %5
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.1*
  %36 = call i64 %33(%struct.e1000_hw.1* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %6, align 8
  br label %120

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @BM_WUC_PAGE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %47, i32 %48, i32* %49, i32 %50, i32 %51)
  store i64 %52, i64* %12, align 8
  br label %106

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @HV_INTC_FC_PAGE_START, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @TRUE, align 4
  %65 = call i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw* %61, i32 %62, i32* %63, i32 %64)
  store i64 %65, i64* %12, align 8
  br label %106

66:                                               ; preds = %56, %53
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @HV_INTC_FC_PAGE_START, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @MAX_PHY_MULTI_PAGE_REG, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = call i64 @e1000_set_page_igp(%struct.e1000_hw* %79, i32 %82)
  store i64 %83, i64* %12, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %106

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %74
  br label %93

93:                                               ; preds = %92, %66
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %97, i32 %98)
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %101 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %102 = load i32, i32* %14, align 4
  %103 = and i32 %101, %102
  %104 = load i32*, i32** %9, align 8
  %105 = call i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw* %100, i32 %103, i32* %104)
  store i64 %105, i64* %12, align 8
  br label %106

106:                                              ; preds = %93, %90, %60, %46
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %106
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %111 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %113, align 8
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %116 = bitcast %struct.e1000_hw* %115 to %struct.e1000_hw.0*
  %117 = call i32 %114(%struct.e1000_hw.0* %116)
  br label %118

118:                                              ; preds = %109, %106
  %119 = load i64, i64* %12, align 8
  store i64 %119, i64* %6, align 8
  br label %120

120:                                              ; preds = %118, %39
  %121 = load i64, i64* %6, align 8
  ret i64 %121
}

declare dso_local i32 @BM_PHY_REG_PAGE(i32) #1

declare dso_local i32 @BM_PHY_REG_NUM(i32) #1

declare dso_local i32 @e1000_get_phy_addr_for_hv_page(i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw*, i32, i32*, i32, i32) #1

declare dso_local i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw*, i32, i32*, i32) #1

declare dso_local i64 @e1000_set_page_igp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT3(i8*, i32, i32, i32) #1

declare dso_local i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
