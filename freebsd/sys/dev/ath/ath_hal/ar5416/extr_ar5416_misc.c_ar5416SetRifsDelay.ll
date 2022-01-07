; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416SetRifsDelay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416SetRifsDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AH_FALSE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i64 0, align 8
@AR_PHY_HEAVY_CLIP_FACTOR_RIFS = common dso_local global i32 0, align 4
@AR_PHY_RIFS_INIT_DELAY = common dso_local global i32 0, align 4
@AR_PHY_SEARCH_START_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar5416SetRifsDelay(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* @AH_FALSE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* @AH_FALSE, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %14 = icmp ne %struct.ieee80211_channel* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %16)
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %20 = icmp ne %struct.ieee80211_channel* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %23 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %22)
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @AH_FALSE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @HALASSERT(i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @AH_TRUE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i64, i64* @AH_FALSE, align 8
  store i64 %34, i64* %4, align 8
  br label %85

35:                                               ; preds = %24
  %36 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %37 = load i32, i32* @AR_PHY_HEAVY_CLIP_FACTOR_RIFS, align 4
  %38 = call i32 @OS_REG_READ(%struct.ath_hal* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @AR_PHY_RIFS_INIT_DELAY, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %44 = load i32, i32* @AR_PHY_HEAVY_CLIP_FACTOR_RIFS, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @OS_REG_WRITE(%struct.ath_hal* %43, i32 %44, i32 %45)
  %47 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %48 = call i32 @AR_SREV_SOWL(%struct.ath_hal* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %35
  %51 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %52 = call i32 @AR_SREV_HOWL(%struct.ath_hal* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* @AH_TRUE, align 8
  store i64 %55, i64* %4, align 8
  br label %85

56:                                               ; preds = %50, %35
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %64 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %65 = call i32 @OS_REG_WRITE(%struct.ath_hal* %63, i32 %64, i32 616)
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %68 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %69 = call i32 @OS_REG_WRITE(%struct.ath_hal* %67, i32 %68, i32 308)
  br label %70

70:                                               ; preds = %66, %62
  br label %83

71:                                               ; preds = %56
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %76 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %77 = call i32 @OS_REG_WRITE(%struct.ath_hal* %75, i32 %76, i32 880)
  br label %82

78:                                               ; preds = %71
  %79 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %80 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %81 = call i32 @OS_REG_WRITE(%struct.ath_hal* %79, i32 %80, i32 440)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i64, i64* @AH_TRUE, align 8
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %83, %54, %33
  %86 = load i64, i64* %4, align 8
  ret i64 %86
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_SREV_SOWL(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_HOWL(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
