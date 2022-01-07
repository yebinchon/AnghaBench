; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan.c_ieee80211_scan_vdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan.c_ieee80211_scan_vdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.TYPE_4__*, %struct.ieee80211_scan_state* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211vap*)* }
%struct.ieee80211_scan_state = type { %struct.ieee80211vap*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_scan_state*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_scan_vdetach(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_scan_state*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 0
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %9 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %8)
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %11, align 8
  store %struct.ieee80211_scan_state* %12, %struct.ieee80211_scan_state** %4, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*)** %16, align 8
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %19 = call i32 %17(%struct.ieee80211vap* %18)
  %20 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %21 = icmp ne %struct.ieee80211_scan_state* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %1
  %23 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %23, i32 0, i32 0
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %24, align 8
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %27 = icmp eq %struct.ieee80211vap* %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.ieee80211_scan_state*)*, i32 (%struct.ieee80211_scan_state*)** %37, align 8
  %39 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %40 = call i32 %38(%struct.ieee80211_scan_state* %39)
  %41 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %41, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %42, align 8
  br label %43

43:                                               ; preds = %33, %28
  %44 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %44, i32 0, i32 0
  store %struct.ieee80211vap* null, %struct.ieee80211vap** %45, align 8
  br label %46

46:                                               ; preds = %43, %22, %1
  %47 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %48 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %47)
  ret void
}

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
