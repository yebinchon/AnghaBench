; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_ani.c_ar5416AniCckErrTrigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_ani.c_ar5416AniCckErrTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { %struct.ar5212AniState* }
%struct.ar5212AniState = type { i64, i64, %struct.ar5212AniParams* }
%struct.ar5212AniParams = type { i64, i64, i64 }
%struct.TYPE_3__ = type { %struct.ieee80211_channel* }
%struct.TYPE_4__ = type { i32 }

@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@HAL_ANI_NOISE_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@HAL_ANI_FIRSTEP_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar5416AniCckErrTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416AniCckErrTrigger(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5212*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ar5212AniState*, align 8
  %6 = alloca %struct.ar5212AniParams*, align 8
  %7 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %9 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %8)
  store %struct.ath_hal_5212* %9, %struct.ath_hal_5212** %3, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = call %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  store %struct.ieee80211_channel* %13, %struct.ieee80211_channel** %4, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %16 = icmp ne %struct.ieee80211_channel* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @HALASSERT(i32 %17)
  %19 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %20 = call i32 @ANI_ENA(%struct.ath_hal* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %100

23:                                               ; preds = %1
  %24 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %25 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %24, i32 0, i32 0
  %26 = load %struct.ar5212AniState*, %struct.ar5212AniState** %25, align 8
  store %struct.ar5212AniState* %26, %struct.ar5212AniState** %5, align 8
  %27 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %28 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %27, i32 0, i32 2
  %29 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %28, align 8
  store %struct.ar5212AniParams* %29, %struct.ar5212AniParams** %6, align 8
  %30 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %31 = call %struct.TYPE_4__* @AH5416(%struct.ath_hal* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HAL_ANI_NOISE_IMMUNITY_LEVEL, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %23
  %39 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %40 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %44 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %49 = load i32, i32* @HAL_ANI_NOISE_IMMUNITY_LEVEL, align 4
  %50 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %51 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @ar5416AniControl(%struct.ath_hal* %48, i32 %49, i64 %53)
  br label %100

55:                                               ; preds = %38, %23
  %56 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %57 = call i64 @ANI_ENA_RSSI(%struct.ath_hal* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %55
  %60 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %61 = call i64 @BEACON_RSSI(%struct.ath_hal_5212* %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %64 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %59
  %68 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %69 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %72 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %67
  %76 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %77 = load i32, i32* @HAL_ANI_FIRSTEP_LEVEL, align 4
  %78 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %79 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  %82 = call i32 @ar5416AniControl(%struct.ath_hal* %76, i32 %77, i64 %81)
  br label %83

83:                                               ; preds = %75, %67
  br label %99

84:                                               ; preds = %59
  %85 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %86 = call i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %90 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %95 = load i32, i32* @HAL_ANI_FIRSTEP_LEVEL, align 4
  %96 = call i32 @ar5416AniControl(%struct.ath_hal* %94, i32 %95, i64 0)
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97, %84
  br label %99

99:                                               ; preds = %98, %83
  br label %100

100:                                              ; preds = %22, %47, %99, %55
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @ANI_ENA(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @ar5416AniControl(%struct.ath_hal*, i32, i64) #1

declare dso_local i64 @ANI_ENA_RSSI(%struct.ath_hal*) #1

declare dso_local i64 @BEACON_RSSI(%struct.ath_hal_5212*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
