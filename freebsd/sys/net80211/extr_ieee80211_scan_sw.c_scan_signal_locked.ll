; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_scan_signal_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_scan_signal_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }
%struct.scan_state = type { i32, %struct.timeout_task }
%struct.timeout_task = type { i32 }

@ISCAN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_scan_state*, i32)* @scan_signal_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_signal_locked(%struct.ieee80211_scan_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_scan_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scan_state*, align 8
  %6 = alloca %struct.timeout_task*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %9 = call %struct.scan_state* @SCAN_PRIVATE(%struct.ieee80211_scan_state* %8)
  store %struct.scan_state* %9, %struct.scan_state** %5, align 8
  %10 = load %struct.scan_state*, %struct.scan_state** %5, align 8
  %11 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %10, i32 0, i32 1
  store %struct.timeout_task* %11, %struct.timeout_task** %6, align 8
  %12 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %12, i32 0, i32 0
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %7, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %16 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.scan_state*, %struct.scan_state** %5, align 8
  %19 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.scan_state*, %struct.scan_state** %5, align 8
  %23 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ISCAN_RUNNING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %2
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.timeout_task*, %struct.timeout_task** %6, align 8
  %33 = call i64 @taskqueue_cancel_timeout(i32 %31, %struct.timeout_task* %32, i32* null)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.timeout_task*, %struct.timeout_task** %6, align 8
  %40 = call i32 @taskqueue_enqueue_timeout(i32 %38, %struct.timeout_task* %39, i32 0)
  br label %41

41:                                               ; preds = %35, %28
  br label %42

42:                                               ; preds = %41, %2
  ret void
}

declare dso_local %struct.scan_state* @SCAN_PRIVATE(%struct.ieee80211_scan_state*) #1

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i64 @taskqueue_cancel_timeout(i32, %struct.timeout_task*, i32*) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, %struct.timeout_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
