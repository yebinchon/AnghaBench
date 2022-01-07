; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, %struct.ieee80211_scan_state*, i32 }
%struct.ieee80211_scan_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_scan_state*)* }
%struct.TYPE_5__ = type { i32, i32 }

@ISCAN_ABORT = common dso_local global i32 0, align 4
@IEEE80211_F_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"scan still running\00", align 1
@M_80211_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @ieee80211_swscan_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_swscan_detach(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ieee80211_scan_state*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 1
  %6 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %5, align 8
  store %struct.ieee80211_scan_state* %6, %struct.ieee80211_scan_state** %3, align 8
  %7 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %8 = icmp ne %struct.ieee80211_scan_state* %7, null
  br i1 %8, label %9, label %54

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %11 = load i32, i32* @ISCAN_ABORT, align 4
  %12 = call i32 @scan_signal(%struct.ieee80211_scan_state* %10, i32 %11)
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %14 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %15 = call %struct.TYPE_5__* @SCAN_PRIVATE(%struct.ieee80211_scan_state* %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = call i32 @ieee80211_draintask(%struct.ieee80211com* %13, i32* %16)
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %22 = call %struct.TYPE_5__* @SCAN_PRIVATE(%struct.ieee80211_scan_state* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @taskqueue_drain_timeout(i32 %20, i32* %23)
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %9
  %38 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.ieee80211_scan_state*)*, i32 (%struct.ieee80211_scan_state*)** %41, align 8
  %43 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %44 = call i32 %42(%struct.ieee80211_scan_state* %43)
  %45 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %45, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %46, align 8
  br label %47

47:                                               ; preds = %37, %9
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %49 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %48, i32 0, i32 1
  store %struct.ieee80211_scan_state* null, %struct.ieee80211_scan_state** %49, align 8
  %50 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %51 = call %struct.TYPE_5__* @SCAN_PRIVATE(%struct.ieee80211_scan_state* %50)
  %52 = load i32, i32* @M_80211_SCAN, align 4
  %53 = call i32 @IEEE80211_FREE(%struct.TYPE_5__* %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %1
  ret void
}

declare dso_local i32 @scan_signal(%struct.ieee80211_scan_state*, i32) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local %struct.TYPE_5__* @SCAN_PRIVATE(%struct.ieee80211_scan_state*) #1

declare dso_local i32 @taskqueue_drain_timeout(i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_FREE(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
