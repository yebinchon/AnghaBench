; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c___e1000_write_phy_reg_hv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c___e1000_write_phy_reg_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [25 x i8] c"__e1000_write_phy_reg_hv\00", align 1
@BM_WUC_PAGE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HV_INTC_FC_PAGE_START = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i32 0, align 4
@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"writing PHY page %d (or 0x%x shifted) reg 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32, i32, i32)* @__e1000_write_phy_reg_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__e1000_write_phy_reg_hv(%struct.e1000_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BM_PHY_REG_PAGE(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @BM_PHY_REG_NUM(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @e1000_get_phy_addr_for_hv_page(i32 %21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  store i32 %22, i32* %15, align 4
  %26 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %5
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %33, align 8
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %36 = bitcast %struct.e1000_hw* %35 to %struct.e1000_hw.1*
  %37 = call i64 %34(%struct.e1000_hw.1* %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i64, i64* %12, align 8
  store i64 %41, i64* %6, align 8
  br label %155

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %5
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @BM_WUC_PAGE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %48, i32 %49, i32* %9, i32 %50, i32 %51)
  store i64 %52, i64* %12, align 8
  br label %141

53:                                               ; preds = %43
  %54 = load i32, i32* %13, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @HV_INTC_FC_PAGE_START, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw* %61, i32 %62, i32* %9, i32 %63)
  store i64 %64, i64* %12, align 8
  br label %141

65:                                               ; preds = %56, %53
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %128, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @HV_INTC_FC_PAGE_START, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @e1000_phy_82578, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %109

80:                                               ; preds = %73
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 1
  br i1 %85, label %86, label %109

86:                                               ; preds = %80
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %109

92:                                               ; preds = %86
  %93 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %94 = load i32, i32* %14, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 2048
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  store i32 32511, i32* %16, align 4
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw* %102, i32 67, i32* %16, i32 %103)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %141

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %97, %92, %86, %80, %73
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @MAX_PHY_MULTI_PAGE_REG, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = call i64 @e1000_set_page_igp(%struct.e1000_hw* %114, i32 %117)
  store i64 %118, i64* %12, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %121 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  br label %141

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126, %109
  br label %128

128:                                              ; preds = %127, %65
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %132, i32 %133)
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %136 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %137 = load i32, i32* %14, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* %9, align 4
  %140 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %135, i32 %138, i32 %139)
  store i64 %140, i64* %12, align 8
  br label %141

141:                                              ; preds = %128, %125, %107, %60, %47
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %141
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %146 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %148, align 8
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %151 = bitcast %struct.e1000_hw* %150 to %struct.e1000_hw.0*
  %152 = call i32 %149(%struct.e1000_hw.0* %151)
  br label %153

153:                                              ; preds = %144, %141
  %154 = load i64, i64* %12, align 8
  store i64 %154, i64* %6, align 8
  br label %155

155:                                              ; preds = %153, %40
  %156 = load i64, i64* %6, align 8
  ret i64 %156
}

declare dso_local i32 @BM_PHY_REG_PAGE(i32) #1

declare dso_local i32 @BM_PHY_REG_NUM(i32) #1

declare dso_local i32 @e1000_get_phy_addr_for_hv_page(i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw*, i32, i32*, i32, i32) #1

declare dso_local i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw*, i32, i32*, i32) #1

declare dso_local i64 @e1000_set_page_igp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT3(i8*, i32, i32, i32) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
