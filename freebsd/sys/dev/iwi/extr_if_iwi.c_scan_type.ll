; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_scan_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_scan_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { i64, i32 }
%struct.ieee80211_channel = type { i32 }

@IWI_SCAN_TYPE_BDIRECTED = common dso_local global i32 0, align 4
@IEEE80211_SCAN_ACTIVE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE = common dso_local global i32 0, align 4
@IWI_SCAN_TYPE_BROADCAST = common dso_local global i32 0, align 4
@IWI_SCAN_TYPE_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_scan_state*, %struct.ieee80211_channel*)* @scan_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_type(%struct.ieee80211_scan_state* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_scan_state*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %6 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @IWI_SCAN_TYPE_BDIRECTED, align 4
  store i32 %11, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IEEE80211_SCAN_ACTIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_CHAN_PASSIVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @IWI_SCAN_TYPE_BROADCAST, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %19, %12
  %29 = load i32, i32* @IWI_SCAN_TYPE_PASSIVE, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %26, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
