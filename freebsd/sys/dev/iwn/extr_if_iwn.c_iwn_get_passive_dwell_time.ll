; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_get_passive_dwell_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_get_passive_dwell_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IWN_PASSIVE_DWELL_BASE = common dso_local global i64 0, align 8
@IWN_PASSIVE_DWELL_TIME_2GHZ = common dso_local global i64 0, align 8
@IWN_PASSIVE_DWELL_TIME_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwn_softc*, %struct.ieee80211_channel*)* @iwn_get_passive_dwell_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwn_get_passive_dwell_time(%struct.iwn_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.iwn_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i64, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %7 = icmp eq %struct.ieee80211_channel* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %10 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %2
  %13 = load i64, i64* @IWN_PASSIVE_DWELL_BASE, align 8
  %14 = load i64, i64* @IWN_PASSIVE_DWELL_TIME_2GHZ, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %5, align 8
  br label %20

16:                                               ; preds = %8
  %17 = load i64, i64* @IWN_PASSIVE_DWELL_BASE, align 8
  %18 = load i64, i64* @IWN_PASSIVE_DWELL_TIME_5GHZ, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @iwn_limit_dwell(%struct.iwn_softc* %21, i64 %22)
  ret i64 %23
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @iwn_limit_dwell(%struct.iwn_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
