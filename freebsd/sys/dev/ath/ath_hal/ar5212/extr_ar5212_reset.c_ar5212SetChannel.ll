; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetChannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ath_hal_5212 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath_hal*, %struct.ieee80211_channel*)* }

@AH_FALSE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212SetChannel(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %8 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %7)
  store %struct.ath_hal_5212* %8, %struct.ath_hal_5212** %6, align 8
  %9 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %10 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ath_hal*, %struct.ieee80211_channel*)*, i32 (%struct.ath_hal*, %struct.ieee80211_channel*)** %12, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %16 = call i32 %13(%struct.ath_hal* %14, %struct.ieee80211_channel* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @AH_FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @AH_TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
