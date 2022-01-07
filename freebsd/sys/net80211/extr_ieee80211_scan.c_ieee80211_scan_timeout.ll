; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan.c_ieee80211_scan_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan.c_ieee80211_scan_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.ieee80211_scan_state* }
%struct.ieee80211_scan_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ieee80211_scan_state*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_scan_timeout(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ieee80211_scan_state*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 0
  %6 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %5, align 8
  store %struct.ieee80211_scan_state* %6, %struct.ieee80211_scan_state** %3, align 8
  %7 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ieee80211_scan_state*)*, i32 (%struct.ieee80211_scan_state*)** %15, align 8
  %17 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %18 = call i32 %16(%struct.ieee80211_scan_state* %17)
  br label %19

19:                                               ; preds = %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
