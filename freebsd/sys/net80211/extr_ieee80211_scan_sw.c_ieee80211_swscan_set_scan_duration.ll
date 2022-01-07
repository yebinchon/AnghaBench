; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_set_scan_duration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_set_scan_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.ieee80211_scan_state* }
%struct.ieee80211_scan_state = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ISCAN_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, i32)* @ieee80211_swscan_set_scan_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_swscan_set_scan_duration(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211_scan_state*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  store %struct.ieee80211com* %9, %struct.ieee80211com** %5, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %11, align 8
  store %struct.ieee80211_scan_state* %12, %struct.ieee80211_scan_state** %6, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %14 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %13)
  %15 = load i32, i32* @ISCAN_DISCARD, align 4
  %16 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %6, align 8
  %17 = call %struct.TYPE_2__* @SCAN_PRIVATE(%struct.ieee80211_scan_state* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %15
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %6, align 8
  %23 = call %struct.TYPE_2__* @SCAN_PRIVATE(%struct.ieee80211_scan_state* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local %struct.TYPE_2__* @SCAN_PRIVATE(%struct.ieee80211_scan_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
