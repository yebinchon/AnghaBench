; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_vdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_vdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32, %struct.ieee80211_scan_state* }
%struct.ieee80211_scan_state = type { %struct.ieee80211vap* }

@IEEE80211_F_SCAN = common dso_local global i32 0, align 4
@ISCAN_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @ieee80211_swscan_vdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_swscan_vdetach(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_scan_state*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 0
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 1
  %10 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %9, align 8
  store %struct.ieee80211_scan_state* %10, %struct.ieee80211_scan_state** %4, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %12 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %11)
  %13 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %14 = icmp ne %struct.ieee80211_scan_state* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %16, i32 0, i32 0
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %20 = icmp eq %struct.ieee80211vap* %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %30 = load i32, i32* @ISCAN_ABORT, align 4
  %31 = call i32 @scan_signal_locked(%struct.ieee80211_scan_state* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %21, %15, %1
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i32 @scan_signal_locked(%struct.ieee80211_scan_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
