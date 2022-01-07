; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan.c_ieee80211_scan_iterate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan.c_ieee80211_scan_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_scan_state* }
%struct.ieee80211_scan_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_scan_state*, i32*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_scan_iterate(%struct.ieee80211vap* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_scan_state*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %11, align 8
  store %struct.ieee80211_scan_state* %12, %struct.ieee80211_scan_state** %7, align 8
  %13 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ieee80211_scan_state*, i32*, i8*)*, i32 (%struct.ieee80211_scan_state*, i32*, i8*)** %21, align 8
  %23 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 %22(%struct.ieee80211_scan_state* %23, i32* %24, i8* %25)
  br label %27

27:                                               ; preds = %17, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
