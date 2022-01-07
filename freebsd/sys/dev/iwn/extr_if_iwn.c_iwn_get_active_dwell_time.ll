; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_get_active_dwell_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_get_active_dwell_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IWN_ACTIVE_DWELL_TIME_2GHZ = common dso_local global i64 0, align 8
@IWN_ACTIVE_DWELL_FACTOR_2GHZ = common dso_local global i32 0, align 4
@IWN_ACTIVE_DWELL_TIME_5GHZ = common dso_local global i64 0, align 8
@IWN_ACTIVE_DWELL_FACTOR_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwn_softc*, %struct.ieee80211_channel*, i32)* @iwn_get_active_dwell_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwn_get_active_dwell_time(%struct.iwn_softc* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.iwn_softc*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.iwn_softc* %0, %struct.iwn_softc** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %9 = icmp eq %struct.ieee80211_channel* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %12 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10, %3
  %15 = load i64, i64* @IWN_ACTIVE_DWELL_TIME_2GHZ, align 8
  %16 = load i32, i32* @IWN_ACTIVE_DWELL_FACTOR_2GHZ, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = mul nsw i32 %16, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %15, %20
  store i64 %21, i64* %4, align 8
  br label %30

22:                                               ; preds = %10
  %23 = load i64, i64* @IWN_ACTIVE_DWELL_TIME_5GHZ, align 8
  %24 = load i32, i32* @IWN_ACTIVE_DWELL_FACTOR_5GHZ, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = mul nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %23, %28
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %22, %14
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
