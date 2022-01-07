; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416Set11nRegs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416Set11nRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR_PHY_TURBO = common dso_local global i32 0, align 4
@AR_PHY_FC_ENABLE_DAC_FIFO = common dso_local global i32 0, align 4
@AR_PHY_FC_HT_EN = common dso_local global i32 0, align 4
@AR_PHY_FC_SHORT_GI_40 = common dso_local global i32 0, align 4
@AR_PHY_FC_SINGLE_HT_LTF1 = common dso_local global i32 0, align 4
@AR_PHY_FC_WALSH = common dso_local global i32 0, align 4
@AR_PHY_FC_DYN2040_EN = common dso_local global i32 0, align 4
@AR_PHY_FC_DYN2040_PRI_CH = common dso_local global i32 0, align 4
@HAL_HT_MACMODE_2040 = common dso_local global i32 0, align 4
@HAL_HT_MACMODE_20 = common dso_local global i32 0, align 4
@AR_GTXTO = common dso_local global i32 0, align 4
@AR_GTXTO_TIMEOUT_LIMIT_S = common dso_local global i32 0, align 4
@AR_GTTM = common dso_local global i32 0, align 4
@AR_GTTM_CST_USEC = common dso_local global i32 0, align 4
@AR_CST = common dso_local global i32 0, align 4
@AR_CST_TIMEOUT_LIMIT_S = common dso_local global i32 0, align 4
@AR_PHY_FC_DYN2040_EXT_CH = common dso_local global i32 0, align 4
@HAL_HT_EXTPROTSPACING_25 = common dso_local global i64 0, align 8
@ht = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar5416Set11nRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416Set11nRegs(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = call i64 @AR_SREV_KITE_10_OR_LATER(%struct.ath_hal* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = load i32, i32* @AR_PHY_TURBO, align 4
  %14 = call i32 @OS_REG_READ(%struct.ath_hal* %12, i32 %13)
  %15 = load i32, i32* @AR_PHY_FC_ENABLE_DAC_FIFO, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @AR_PHY_FC_HT_EN, align 4
  %19 = load i32, i32* @AR_PHY_FC_SHORT_GI_40, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @AR_PHY_FC_SINGLE_HT_LTF1, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @AR_PHY_FC_WALSH, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %28 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %17
  %31 = load i32, i32* @AR_PHY_FC_DYN2040_EN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %35 = call i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @AR_PHY_FC_DYN2040_PRI_CH, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* @HAL_HT_MACMODE_2040, align 4
  store i32 %42, i32* %7, align 4
  br label %45

43:                                               ; preds = %17
  %44 = load i32, i32* @HAL_HT_MACMODE_20, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = load i32, i32* @AR_PHY_TURBO, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @OS_REG_WRITE(%struct.ath_hal* %46, i32 %47, i32 %48)
  %50 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ar5416Set11nMac2040(%struct.ath_hal* %50, i32 %51)
  %53 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %54 = load i32, i32* @AR_GTXTO, align 4
  %55 = load i32, i32* @AR_GTXTO_TIMEOUT_LIMIT_S, align 4
  %56 = shl i32 25, %55
  %57 = call i32 @OS_REG_WRITE(%struct.ath_hal* %53, i32 %54, i32 %56)
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @AR_GTTM, align 4
  %60 = load i32, i32* @AR_GTTM_CST_USEC, align 4
  %61 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %58, i32 %59, i32 %60)
  %62 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %63 = load i32, i32* @AR_CST, align 4
  %64 = load i32, i32* @AR_CST_TIMEOUT_LIMIT_S, align 4
  %65 = shl i32 15, %64
  %66 = call i32 @OS_REG_WRITE(%struct.ath_hal* %62, i32 %63, i32 %65)
  ret void
}

declare dso_local i64 @AR_SREV_KITE_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5416Set11nMac2040(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
