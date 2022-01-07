; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_vap_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_vap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32, %struct.rtwn_softc* }
%struct.rtwn_softc = type { i32 }
%struct.rtwn_vap = type { i32, i32, i32, i32* }

@RTWN_RUNNING = common dso_local global i32 0, align 4
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@M_80211_VAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @rtwn_vap_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_vap_delete(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca %struct.rtwn_vap*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %6, i32 0, i32 2
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  store %struct.ieee80211com* %8, %struct.ieee80211com** %3, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 1
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %10, align 8
  store %struct.rtwn_softc* %11, %struct.rtwn_softc** %4, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %13 = call %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap* %12)
  store %struct.rtwn_vap* %13, %struct.rtwn_vap** %5, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %15 = call i32 @ieee80211_stop(%struct.ieee80211vap* %14)
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 1
  %19 = call i32 @ieee80211_draintask(%struct.ieee80211com* %16, i32* %18)
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 0
  %23 = call i32 @ieee80211_draintask(%struct.ieee80211com* %20, i32* %22)
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %25 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %24)
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %28 = call i32 @rtwn_reset_lists(%struct.rtwn_softc* %26, %struct.ieee80211vap* %27)
  %29 = load %struct.rtwn_vap*, %struct.rtwn_vap** %5, align 8
  %30 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.rtwn_vap*, %struct.rtwn_vap** %5, align 8
  %35 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @m_freem(i32* %36)
  br label %38

38:                                               ; preds = %33, %1
  %39 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %40 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %41 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rtwn_vap*, %struct.rtwn_vap** %5, align 8
  %44 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @rtwn_vap_decrement_counters(%struct.rtwn_softc* %39, i64 %42, i32 %45)
  %47 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %48 = call i32 @rtwn_set_ic_opmode(%struct.rtwn_softc* %47)
  %49 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %50 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RTWN_RUNNING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %57 = call i32 @rtwn_rxfilter_update(%struct.rtwn_softc* %56)
  br label %58

58:                                               ; preds = %55, %38
  %59 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %60 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %59)
  %61 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %62 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %68 = load %struct.rtwn_vap*, %struct.rtwn_vap** %5, align 8
  %69 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %68, i32 0, i32 1
  %70 = call i32 @ieee80211_draintask(%struct.ieee80211com* %67, i32* %69)
  %71 = load %struct.rtwn_vap*, %struct.rtwn_vap** %5, align 8
  %72 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %71, i32 0, i32 0
  %73 = call i32 @callout_drain(i32* %72)
  br label %74

74:                                               ; preds = %66, %58
  %75 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %76 = call i32 @ieee80211_ratectl_deinit(%struct.ieee80211vap* %75)
  %77 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %78 = call i32 @ieee80211_vap_detach(%struct.ieee80211vap* %77)
  %79 = load %struct.rtwn_vap*, %struct.rtwn_vap** %5, align 8
  %80 = load i32, i32* @M_80211_VAP, align 4
  %81 = call i32 @free(%struct.rtwn_vap* %79, i32 %80)
  ret void
}

declare dso_local %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_stop(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_reset_lists(%struct.rtwn_softc*, %struct.ieee80211vap*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @rtwn_vap_decrement_counters(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i32 @rtwn_set_ic_opmode(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_rxfilter_update(%struct.rtwn_softc*) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ieee80211_ratectl_deinit(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_vap_detach(%struct.ieee80211vap*) #1

declare dso_local i32 @free(%struct.rtwn_vap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
