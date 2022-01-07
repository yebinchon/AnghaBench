; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_cal.c_ar9285_hw_clc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_cal.c_ar9285_hw_clc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AH_TRUE = common dso_local global i64 0, align 8
@AH_FALSE = common dso_local global i64 0, align 8
@AR_PHY_TX_PWRCTRL7 = common dso_local global i64 0, align 8
@AR_PHY_TX_PWRCTRL_TX_GAIN_TAB_MAX = common dso_local global i32 0, align 4
@AR_PHY_TX_GAIN_TBL1 = common dso_local global i64 0, align 8
@AR_PHY_TX_GAIN_CLC = common dso_local global i32 0, align 4
@AR_PHY_TX_GAIN_CLC_S = common dso_local global i32 0, align 4
@AR_PHY_CLC_TBL1 = common dso_local global i64 0, align 8
@AR_PHY_CLC_I0 = common dso_local global i32 0, align 4
@AR_PHY_CLC_I0_S = common dso_local global i32 0, align 4
@AR_PHY_CLC_Q0 = common dso_local global i32 0, align 4
@AR_PHY_CLC_Q0_S = common dso_local global i32 0, align 4
@AR9285_CLCAL_REDO_THRESH = common dso_local global i32 0, align 4
@AR9285_RF2G5 = common dso_local global i64 0, align 8
@AR9285_RF2G5_IC50TX = common dso_local global i32 0, align 4
@AR9285_RF2G5_IC50TX_XE_SET = common dso_local global i32 0, align 4
@AR9285_RF2G5_IC50TX_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9285_hw_clc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ar9285_hw_clc(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i64, i64* @AH_TRUE, align 8
  store i64 %18, i64* %17, align 8
  %19 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %21 = call i64 @ar9285_hw_cl_cal(%struct.ath_hal* %19, %struct.ieee80211_channel* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* @AH_FALSE, align 8
  store i64 %24, i64* %3, align 8
  br label %149

25:                                               ; preds = %2
  %26 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %27 = load i64, i64* @AR_PHY_TX_PWRCTRL7, align 8
  %28 = call i32 @OS_REG_READ(%struct.ath_hal* %26, i64 %27)
  %29 = load i32, i32* @AR_PHY_TX_PWRCTRL_TX_GAIN_TAB_MAX, align 4
  %30 = call i32 @MS(i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %61, %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %38 = load i64, i64* @AR_PHY_TX_GAIN_TBL1, align 8
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i32 @OS_REG_READ(%struct.ath_hal* %37, i64 %42)
  %44 = load i32, i32* @AR_PHY_TX_GAIN_CLC, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @AR_PHY_TX_GAIN_CLC_S, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 1, %54
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %53, %36
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %31

64:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %104, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %65
  %70 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %71 = load i64, i64* @AR_PHY_CLC_TBL1, align 8
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = call i32 @OS_REG_READ(%struct.ath_hal* %70, i64 %75)
  %77 = load i32, i32* @AR_PHY_CLC_I0, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @AR_PHY_CLC_I0_S, align 4
  %80 = ashr i32 %78, %79
  store i32 %80, i32* %11, align 4
  %81 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %82 = load i64, i64* @AR_PHY_CLC_TBL1, align 8
  %83 = load i32, i32* %6, align 4
  %84 = shl i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = call i32 @OS_REG_READ(%struct.ath_hal* %81, i64 %86)
  %88 = load i32, i32* @AR_PHY_CLC_Q0, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @AR_PHY_CLC_Q0_S, align 4
  %91 = ashr i32 %89, %90
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %69
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %94, %69
  %98 = load i32, i32* %12, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %65

107:                                              ; preds = %65
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @AR9285_CLCAL_REDO_THRESH, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %147

114:                                              ; preds = %107
  %115 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %116 = load i64, i64* @AR9285_RF2G5, align 8
  %117 = call i32 @OS_REG_READ(%struct.ath_hal* %115, i64 %116)
  store i32 %117, i32* %16, align 4
  %118 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %119 = call i64 @AR_SREV_9285E_20(%struct.ath_hal* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %123 = load i64, i64* @AR9285_RF2G5, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* @AR9285_RF2G5_IC50TX, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @AR9285_RF2G5_IC50TX_XE_SET, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @OS_REG_WRITE(%struct.ath_hal* %122, i64 %123, i32 %128)
  br label %139

130:                                              ; preds = %114
  %131 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %132 = load i64, i64* @AR9285_RF2G5, align 8
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* @AR9285_RF2G5_IC50TX, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @AR9285_RF2G5_IC50TX_SET, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @OS_REG_WRITE(%struct.ath_hal* %131, i64 %132, i32 %137)
  br label %139

139:                                              ; preds = %130, %121
  %140 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %141 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %142 = call i64 @ar9285_hw_cl_cal(%struct.ath_hal* %140, %struct.ieee80211_channel* %141)
  store i64 %142, i64* %17, align 8
  %143 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %144 = load i64, i64* @AR9285_RF2G5, align 8
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @OS_REG_WRITE(%struct.ath_hal* %143, i64 %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %107
  %148 = load i64, i64* %17, align 8
  store i64 %148, i64* %3, align 8
  br label %149

149:                                              ; preds = %147, %23
  %150 = load i64, i64* %3, align 8
  ret i64 %150
}

declare dso_local i64 @ar9285_hw_cl_cal(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i64) #1

declare dso_local i64 @AR_SREV_9285E_20(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
