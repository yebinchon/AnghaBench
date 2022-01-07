; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_monitor_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_monitor_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.rtwn_softc* }
%struct.rtwn_softc = type { i32, i32 }
%struct.rtwn_vap = type { i32 (%struct.ieee80211vap.0*, i32, i32)* }
%struct.ieee80211vap.0 = type opaque

@RTWN_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@ieee80211_state_name = common dso_local global i32* null, align 8
@RTWN_LED_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32, i32)* @rtwn_monitor_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_monitor_newstate(%struct.ieee80211vap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.rtwn_softc*, align 8
  %9 = alloca %struct.rtwn_vap*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %7, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %14, align 8
  store %struct.rtwn_softc* %15, %struct.rtwn_softc** %8, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %17 = call %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap* %16)
  store %struct.rtwn_vap* %17, %struct.rtwn_vap** %9, align 8
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %19 = load i32, i32* @RTWN_DEBUG_STATE, align 4
  %20 = load i32*, i32** @ieee80211_state_name, align 8
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @ieee80211_state_name, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @RTWN_DPRINTF(%struct.rtwn_softc* %18, i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30)
  %32 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %3
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %40 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %39)
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %42 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %41)
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %80 [
    i32 129, label %44
    i32 128, label %62
  ]

44:                                               ; preds = %38
  %45 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %46 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %50 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %54 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %59 = load i32, i32* @RTWN_LED_LINK, align 4
  %60 = call i32 @rtwn_set_led(%struct.rtwn_softc* %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %57, %44
  br label %81

62:                                               ; preds = %38
  %63 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %64 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %68 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %72 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %62
  %76 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %77 = load i32, i32* @RTWN_LED_LINK, align 4
  %78 = call i32 @rtwn_set_led(%struct.rtwn_softc* %76, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %75, %62
  br label %81

80:                                               ; preds = %38
  br label %81

81:                                               ; preds = %80, %79, %61
  %82 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %83 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %82)
  %84 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %85 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %84)
  br label %86

86:                                               ; preds = %81, %3
  %87 = load %struct.rtwn_vap*, %struct.rtwn_vap** %9, align 8
  %88 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %87, i32 0, i32 0
  %89 = load i32 (%struct.ieee80211vap.0*, i32, i32)*, i32 (%struct.ieee80211vap.0*, i32, i32)** %88, align 8
  %90 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %91 = bitcast %struct.ieee80211vap* %90 to %struct.ieee80211vap.0*
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 %89(%struct.ieee80211vap.0* %91, i32 %92, i32 %93)
  ret i32 %94
}

declare dso_local %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RTWN_DPRINTF(%struct.rtwn_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_set_led(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
