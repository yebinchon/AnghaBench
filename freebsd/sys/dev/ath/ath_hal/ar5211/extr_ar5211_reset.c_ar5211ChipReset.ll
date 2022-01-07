; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211ChipReset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211ChipReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i64 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@AR_PHY_TURBO = common dso_local global i32 0, align 4
@AR_PHY_FC_TURBO_MODE = common dso_local global i32 0, align 4
@AR_PHY_FC_TURBO_SHORT = common dso_local global i32 0, align 4
@AR5211_PHY_MODE = common dso_local global i32 0, align 4
@AR5211_PHY_MODE_CCK = common dso_local global i32 0, align 4
@AR5211_PHY_MODE_RF2GHZ = common dso_local global i32 0, align 4
@AR_PHY_PLL_CTL = common dso_local global i32 0, align 4
@AR_PHY_PLL_CTL_44 = common dso_local global i32 0, align 4
@DELAY_PLL_SETTLE = common dso_local global i32 0, align 4
@AR5211_DEVID = common dso_local global i64 0, align 8
@AR_PHY_PLL_CTL_40 = common dso_local global i32 0, align 4
@AR5211_PHY_MODE_OFDM = common dso_local global i32 0, align 4
@AR5211_PHY_MODE_RF5GHZ = common dso_local global i32 0, align 4
@AR_RC_MAC = common dso_local global i32 0, align 4
@AR_RC_BB = common dso_local global i32 0, align 4
@AR_RC_PCI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5211ChipReset(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %7 = load i32, i32* @HAL_PM_AWAKE, align 4
  %8 = load i32, i32* @AH_TRUE, align 4
  %9 = call i32 @ar5211SetPowerMode(%struct.ath_hal* %6, i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @AH_FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %100

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %16 = icmp ne %struct.ieee80211_channel* %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %13
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = load i32, i32* @AR_PHY_TURBO, align 4
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %21 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @AR_PHY_FC_TURBO_MODE, align 4
  %25 = load i32, i32* @AR_PHY_FC_TURBO_SHORT, align 4
  %26 = or i32 %24, %25
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 0, %27 ]
  %30 = call i32 @OS_REG_WRITE(%struct.ath_hal* %18, i32 %19, i32 %29)
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %32 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %36 = load i32, i32* @AR5211_PHY_MODE, align 4
  %37 = load i32, i32* @AR5211_PHY_MODE_CCK, align 4
  %38 = load i32, i32* @AR5211_PHY_MODE_RF2GHZ, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @OS_REG_WRITE(%struct.ath_hal* %35, i32 %36, i32 %39)
  %41 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %42 = load i32, i32* @AR_PHY_PLL_CTL, align 4
  %43 = load i32, i32* @AR_PHY_PLL_CTL_44, align 4
  %44 = call i32 @OS_REG_WRITE(%struct.ath_hal* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @DELAY_PLL_SETTLE, align 4
  %46 = call i32 @OS_DELAY(i32 %45)
  br label %76

47:                                               ; preds = %28
  %48 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %49 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AR5211_DEVID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %56 = load i32, i32* @AR_PHY_PLL_CTL, align 4
  %57 = load i32, i32* @AR_PHY_PLL_CTL_40, align 4
  %58 = call i32 @OS_REG_WRITE(%struct.ath_hal* %55, i32 %56, i32 %57)
  %59 = load i32, i32* @DELAY_PLL_SETTLE, align 4
  %60 = call i32 @OS_DELAY(i32 %59)
  %61 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %62 = load i32, i32* @AR5211_PHY_MODE, align 4
  %63 = load i32, i32* @AR5211_PHY_MODE_OFDM, align 4
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %65 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* @AR5211_PHY_MODE_RF2GHZ, align 4
  br label %71

69:                                               ; preds = %54
  %70 = load i32, i32* @AR5211_PHY_MODE_RF5GHZ, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = or i32 %63, %72
  %74 = call i32 @OS_REG_WRITE(%struct.ath_hal* %61, i32 %62, i32 %73)
  br label %75

75:                                               ; preds = %71, %47
  br label %76

76:                                               ; preds = %75, %34
  br label %77

77:                                               ; preds = %76, %13
  %78 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %79 = load i32, i32* @AR_RC_MAC, align 4
  %80 = load i32, i32* @AR_RC_BB, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @AR_RC_PCI, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @ar5211SetResetReg(%struct.ath_hal* %78, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* @AH_FALSE, align 4
  store i32 %87, i32* %3, align 4
  br label %100

88:                                               ; preds = %77
  %89 = call i32 @OS_DELAY(i32 2100)
  %90 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %91 = load i32, i32* @HAL_PM_AWAKE, align 4
  %92 = load i32, i32* @AH_TRUE, align 4
  %93 = call i32 @ar5211SetPowerMode(%struct.ath_hal* %90, i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @AH_FALSE, align 4
  store i32 %96, i32* %3, align 4
  br label %100

97:                                               ; preds = %88
  %98 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %99 = call i32 @ar5211SetResetReg(%struct.ath_hal* %98, i32 0)
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %95, %86, %11
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @ar5211SetPowerMode(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @ar5211SetResetReg(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
