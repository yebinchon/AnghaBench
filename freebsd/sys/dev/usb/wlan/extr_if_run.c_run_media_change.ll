; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ifnet = type { i32, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32, %struct.ieee80211_txparam*, %struct.ieee80211com* }
%struct.ieee80211_txparam = type { i64 }
%struct.ieee80211com = type { i64, %struct.TYPE_3__*, i32, %struct.run_softc* }
%struct.TYPE_3__ = type { i64* }
%struct.run_softc = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.run_node = type { i64 }

@ENETRESET = common dso_local global i32 0, align 4
@IEEE80211_FIXED_RATE_NONE = common dso_local global i64 0, align 8
@IEEE80211_RATE_VAL = common dso_local global i64 0, align 8
@RT2860_RIDX_MAX = common dso_local global i64 0, align 8
@rt2860_rates = common dso_local global %struct.TYPE_4__* null, align 8
@RUN_DEBUG_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"rate=%d, fix_ridx=%d\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@RUN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @run_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_media_change(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211_txparam*, align 8
  %7 = alloca %struct.run_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_node*, align 8
  %12 = alloca %struct.run_node*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 2
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  store %struct.ieee80211vap* %15, %struct.ieee80211vap** %4, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 2
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %17, align 8
  store %struct.ieee80211com* %18, %struct.ieee80211com** %5, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 3
  %21 = load %struct.run_softc*, %struct.run_softc** %20, align 8
  store %struct.run_softc* %21, %struct.run_softc** %7, align 8
  %22 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %23 = call i32 @RUN_LOCK(%struct.run_softc* %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = call i32 @ieee80211_media_change(%struct.ifnet* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @ENETRESET, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %31 = call i32 @RUN_UNLOCK(%struct.run_softc* %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %2, align 4
  br label %103

33:                                               ; preds = %1
  %34 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %34, i32 0, i32 1
  %36 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %35, align 8
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @ieee80211_chan2mode(i32 %39)
  %41 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %36, i64 %40
  store %struct.ieee80211_txparam* %41, %struct.ieee80211_txparam** %6, align 8
  %42 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IEEE80211_FIXED_RATE_NONE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %100

47:                                               ; preds = %33
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IEEE80211_RATE_VAL, align 8
  %63 = and i64 %61, %62
  store i64 %63, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %64

64:                                               ; preds = %78, %47
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @RT2860_RIDX_MAX, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt2860_rates, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %81

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %64

81:                                               ; preds = %76, %64
  %82 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %84)
  store %struct.ieee80211_node* %85, %struct.ieee80211_node** %11, align 8
  %86 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %87 = call %struct.run_node* @RUN_NODE(%struct.ieee80211_node* %86)
  store %struct.run_node* %87, %struct.run_node** %12, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.run_node*, %struct.run_node** %12, align 8
  %90 = getelementptr inbounds %struct.run_node, %struct.run_node* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %92 = load i32, i32* @RUN_DEBUG_RATE, align 4
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.run_node*, %struct.run_node** %12, align 8
  %95 = getelementptr inbounds %struct.run_node, %struct.run_node* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @RUN_DPRINTF(%struct.run_softc* %91, i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %93, i64 %96)
  %98 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %99 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %98)
  br label %100

100:                                              ; preds = %81, %33
  %101 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %102 = call i32 @RUN_UNLOCK(%struct.run_softc* %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %29
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @ieee80211_media_change(%struct.ifnet*) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local i64 @ieee80211_chan2mode(i32) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #1

declare dso_local %struct.run_node* @RUN_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i64, i64) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
