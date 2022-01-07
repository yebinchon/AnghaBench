; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan.c_ieee80211_add_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan.c_ieee80211_add_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_scanparams = type { i32 }
%struct.ieee80211_frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_add_scan(%struct.ieee80211vap* %0, %struct.ieee80211_channel* %1, %struct.ieee80211_scanparams* %2, %struct.ieee80211_frame* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211vap*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca %struct.ieee80211_scanparams*, align 8
  %11 = alloca %struct.ieee80211_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_scanparams* %2, %struct.ieee80211_scanparams** %10, align 8
  store %struct.ieee80211_frame* %3, %struct.ieee80211_frame** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 0
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %17, align 8
  store %struct.ieee80211com* %18, %struct.ieee80211com** %15, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %15, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to void (%struct.ieee80211vap*, %struct.ieee80211_channel*, %struct.ieee80211_scanparams*, %struct.ieee80211_frame*, i32, i32, i32)**
  %24 = load void (%struct.ieee80211vap*, %struct.ieee80211_channel*, %struct.ieee80211_scanparams*, %struct.ieee80211_frame*, i32, i32, i32)*, void (%struct.ieee80211vap*, %struct.ieee80211_channel*, %struct.ieee80211_scanparams*, %struct.ieee80211_frame*, i32, i32, i32)** %23, align 8
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %27 = load %struct.ieee80211_scanparams*, %struct.ieee80211_scanparams** %10, align 8
  %28 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  call void %24(%struct.ieee80211vap* %25, %struct.ieee80211_channel* %26, %struct.ieee80211_scanparams* %27, %struct.ieee80211_frame* %28, i32 %29, i32 %30, i32 %31)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
