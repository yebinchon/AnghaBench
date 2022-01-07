; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_update_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_update_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_node*, %struct.ieee80211_beacon_offsets, %struct.ieee80211com* }
%struct.ieee80211_node = type { i32 }
%struct.ieee80211_beacon_offsets = type { i32 }
%struct.ieee80211com = type { %struct.run_softc* }
%struct.run_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ieee80211vap*, i32 }
%struct.run_vap = type { i32* }

@RUN_DEBUG_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cmdq_store=%d\0A\00", align 1
@run_update_beacon_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, i32)* @run_update_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_update_beacon(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211_beacon_offsets*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.run_softc*, align 8
  %9 = alloca %struct.run_vap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 2
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %5, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 1
  store %struct.ieee80211_beacon_offsets* %16, %struct.ieee80211_beacon_offsets** %6, align 8
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %18, align 8
  store %struct.ieee80211_node* %19, %struct.ieee80211_node** %7, align 8
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 0
  %22 = load %struct.run_softc*, %struct.run_softc** %21, align 8
  store %struct.run_softc* %22, %struct.run_softc** %8, align 8
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %24 = call %struct.run_vap* @RUN_VAP(%struct.ieee80211vap* %23)
  store %struct.run_vap* %24, %struct.run_vap** %9, align 8
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %33 [
    i32 130, label %26
    i32 129, label %29
    i32 128, label %32
  ]

26:                                               ; preds = %2
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %28 = call i32 @run_updateslot(%struct.ieee80211com* %27)
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %31 = call i32 @run_updateprot(%struct.ieee80211com* %30)
  br label %34

32:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %32, %29, %26
  %35 = load %struct.ieee80211_beacon_offsets*, %struct.ieee80211_beacon_offsets** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_beacon_offsets, %struct.ieee80211_beacon_offsets* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @setbit(i32 %37, i32 %38)
  %40 = load %struct.run_vap*, %struct.run_vap** %9, align 8
  %41 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %34
  %45 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %46 = call i32* @ieee80211_beacon_alloc(%struct.ieee80211_node* %45)
  %47 = load %struct.run_vap*, %struct.run_vap** %9, align 8
  %48 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.run_vap*, %struct.run_vap** %9, align 8
  %50 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %87

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %57 = load %struct.run_vap*, %struct.run_vap** %9, align 8
  %58 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ieee80211_beacon_update(%struct.ieee80211_node* %56, i32* %59, i32 %60)
  %62 = load %struct.run_softc*, %struct.run_softc** %8, align 8
  %63 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %62, i32 0, i32 2
  %64 = call i64 @RUN_CMDQ_GET(i32* %63)
  store i64 %64, i64* %11, align 8
  %65 = load %struct.run_softc*, %struct.run_softc** %8, align 8
  %66 = load i32, i32* @RUN_DEBUG_BEACON, align 4
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @RUN_DPRINTF(%struct.run_softc* %65, i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @run_update_beacon_cb, align 4
  %70 = load %struct.run_softc*, %struct.run_softc** %8, align 8
  %71 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %69, i32* %75, align 8
  %76 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %77 = load %struct.run_softc*, %struct.run_softc** %8, align 8
  %78 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store %struct.ieee80211vap* %76, %struct.ieee80211vap** %82, align 8
  %83 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %84 = load %struct.run_softc*, %struct.run_softc** %8, align 8
  %85 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %84, i32 0, i32 0
  %86 = call i32 @ieee80211_runtask(%struct.ieee80211com* %83, i32* %85)
  br label %87

87:                                               ; preds = %55, %53
  ret void
}

declare dso_local %struct.run_vap* @RUN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @run_updateslot(%struct.ieee80211com*) #1

declare dso_local i32 @run_updateprot(%struct.ieee80211com*) #1

declare dso_local i32 @setbit(i32, i32) #1

declare dso_local i32* @ieee80211_beacon_alloc(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_beacon_update(%struct.ieee80211_node*, i32*, i32) #1

declare dso_local i64 @RUN_CMDQ_GET(i32*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i64) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
