; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_enable_tsf_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_enable_tsf_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RT2860_BCN_TIME_CFG = common dso_local global i32 0, align 4
@RT2860_TSF_TIMER_EN = common dso_local global i32 0, align 4
@RT2860_TBTT_TIMER_EN = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@RT2860_TSF_SYNC_MODE_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@RT2860_BCN_TX_EN = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt2860_enable_tsf_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_enable_tsf_sync(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %6 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %6, i32 0, i32 0
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 0
  %10 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %9)
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %4, align 8
  %11 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %12 = load i32, i32* @RT2860_BCN_TIME_CFG, align 4
  %13 = call i32 @RAL_READ(%struct.rt2860_softc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, -2097152
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 16
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @RT2860_TSF_TIMER_EN, align 4
  %25 = load i32, i32* @RT2860_TBTT_TIMER_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_M_STA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load i32, i32* @RT2860_TSF_SYNC_MODE_SHIFT, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %75

39:                                               ; preds = %1
  %40 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @RT2860_BCN_TX_EN, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @RT2860_TSF_SYNC_MODE_SHIFT, align 4
  %56 = shl i32 2, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %74

59:                                               ; preds = %45
  %60 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %61 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32, i32* @RT2860_BCN_TX_EN, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @RT2860_TSF_SYNC_MODE_SHIFT, align 4
  %70 = shl i32 3, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %65, %59
  br label %74

74:                                               ; preds = %73, %51
  br label %75

75:                                               ; preds = %74, %34
  %76 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %77 = load i32, i32* @RT2860_BCN_TIME_CFG, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @RAL_WRITE(%struct.rt2860_softc* %76, i32 %77, i32 %78)
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
