; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetAntennaSwitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetAntennaSwitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32, i64, i32 }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }

@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@HAL_ANT_VARIABLE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212SetAntennaSwitch(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath_hal_5212*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %8)
  store %struct.ath_hal_5212* %9, %struct.ath_hal_5212** %6, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %11 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  store %struct.ieee80211_channel* %13, %struct.ieee80211_channel** %7, align 8
  %14 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %15 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %21 = icmp eq %struct.ieee80211_channel* %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18, %2
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %25 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @HAL_ANT_VARIABLE, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %31 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @AH_TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %18
  %34 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %37 = call i32 @ar5212SetAntennaSwitchInternal(%struct.ath_hal* %34, i64 %35, %struct.ieee80211_channel* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ar5212SetAntennaSwitchInternal(%struct.ath_hal*, i64, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
