; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_power_is_radar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_power_is_radar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.iwm_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { %struct.ieee80211_channel* }

@FALSE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANYC = common dso_local global %struct.ieee80211_channel* null, align 8
@IEEE80211_CHAN_DFS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*)* @iwm_mvm_power_is_radar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_power_is_radar(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %7 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %6, i32 0, i32 0
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  store %struct.ieee80211_channel* %11, %struct.ieee80211_channel** %4, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @IEEE80211_CHAN_ANYC, align 8
  %14 = icmp eq %struct.ieee80211_channel* %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_CHAN_DFS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %1
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
