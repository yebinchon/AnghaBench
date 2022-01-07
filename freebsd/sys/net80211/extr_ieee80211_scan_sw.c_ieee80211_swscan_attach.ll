; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { %struct.ieee80211com* }
%struct.scan_state = type { %struct.TYPE_2__, i32, i32 }

@swscan_methods = common dso_local global i32 0, align 4
@M_80211_SCAN = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_M_ZERO = common dso_local global i32 0, align 4
@scan_start = common dso_local global i32 0, align 4
@scan_curchan_task = common dso_local global i32 0, align 4
@scan_curchan = common dso_local global i32 0, align 4
@scan_mindwell = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_swscan_attach(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.scan_state*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 4
  store i32* @swscan_methods, i32** %5, align 8
  %6 = load i32, i32* @M_80211_SCAN, align 4
  %7 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %8 = load i32, i32* @IEEE80211_M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call i64 @IEEE80211_MALLOC(i32 16, i32 %6, i32 %9)
  %11 = inttoptr i64 %10 to %struct.scan_state*
  store %struct.scan_state* %11, %struct.scan_state** %3, align 8
  %12 = load %struct.scan_state*, %struct.scan_state** %3, align 8
  %13 = icmp eq %struct.scan_state* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %16, align 8
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.scan_state*, %struct.scan_state** %3, align 8
  %19 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %18, i32 0, i32 2
  %20 = load i32, i32* @scan_start, align 4
  %21 = load %struct.scan_state*, %struct.scan_state** %3, align 8
  %22 = call i32 @TASK_INIT(i32* %19, i32 0, i32 %20, %struct.scan_state* %21)
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.scan_state*, %struct.scan_state** %3, align 8
  %27 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %26, i32 0, i32 1
  %28 = load i32, i32* @scan_curchan_task, align 4
  %29 = load %struct.scan_state*, %struct.scan_state** %3, align 8
  %30 = call i32 @TIMEOUT_TASK_INIT(i32 %25, i32* %27, i32 0, i32 %28, %struct.scan_state* %29)
  %31 = load %struct.scan_state*, %struct.scan_state** %3, align 8
  %32 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %31, i32 0, i32 0
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %33, i32 0, i32 2
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %36 = load %struct.scan_state*, %struct.scan_state** %3, align 8
  %37 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.ieee80211com* %35, %struct.ieee80211com** %38, align 8
  %39 = load i32, i32* @scan_curchan, align 4
  %40 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %41 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @scan_mindwell, align 4
  %43 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %17, %14
  ret void
}

declare dso_local i64 @IEEE80211_MALLOC(i32, i32, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.scan_state*) #1

declare dso_local i32 @TIMEOUT_TASK_INIT(i32, i32*, i32, i32, %struct.scan_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
