; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_getrssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_getrssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32*, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 (i32*)*, i32 }
%struct.rssiinfo = type { i32, i32 }

@get_adhoc_rssi = common dso_local global i32 0, align 4
@get_hostap_rssi = common dso_local global i32 0, align 4
@get_mesh_rssi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_getrssi(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.rssiinfo, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 2
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %4, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %4, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %26 [
    i32 131, label %13
    i32 133, label %13
    i32 132, label %19
    i32 129, label %25
    i32 128, label %25
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 1
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %17 = load i32, i32* @get_adhoc_rssi, align 4
  %18 = call i32 @ieee80211_iterate_nodes_vap(i32* %15, %struct.ieee80211vap* %16, i32 %17, %struct.rssiinfo* %4)
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 1
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %23 = load i32, i32* @get_hostap_rssi, align 4
  %24 = call i32 @ieee80211_iterate_nodes_vap(i32* %21, %struct.ieee80211vap* %22, i32 %23, %struct.rssiinfo* %4)
  br label %42

25:                                               ; preds = %1, %1
  br label %26

26:                                               ; preds = %1, %25
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 0
  %34 = load i32 (i32*)*, i32 (i32*)** %33, align 8
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 %34(i32* %37)
  %39 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %4, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %26
  %41 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %4, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %19, %13
  %43 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %4, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %52

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %4, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ 1, %48 ], [ %51, %49 ]
  %54 = sdiv i32 %44, %53
  ret i32 %54
}

declare dso_local i32 @ieee80211_iterate_nodes_vap(i32*, %struct.ieee80211vap*, i32, %struct.rssiinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
