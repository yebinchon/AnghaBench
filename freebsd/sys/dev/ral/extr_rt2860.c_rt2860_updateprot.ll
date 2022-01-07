; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_updateprot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_updateprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rt2860_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32, i64, i32 }

@RT2860_RTSTH_EN = common dso_local global i32 0, align 4
@RT2860_PROT_NAV_SHORT = common dso_local global i32 0, align 4
@RT2860_TXOP_ALLOW_ALL = common dso_local global i32 0, align 4
@rt2860_rates = common dso_local global %struct.TYPE_2__* null, align 8
@RT2860_RIDX_OFDM6 = common dso_local global i64 0, align 8
@RT2860_RIDX_CCK11 = common dso_local global i64 0, align 8
@RT2860_CCK_PROT_CFG = common dso_local global i32 0, align 4
@IEEE80211_F_USEPROT = common dso_local global i32 0, align 4
@IEEE80211_PROT_RTSCTS = common dso_local global i64 0, align 8
@RT2860_PROT_CTRL_RTS_CTS = common dso_local global i32 0, align 4
@IEEE80211_PROT_CTSONLY = common dso_local global i64 0, align 8
@RT2860_PROT_CTRL_CTS = common dso_local global i32 0, align 4
@RT2860_OFDM_PROT_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt2860_updateprot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_updateprot(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %5 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %5, i32 0, i32 0
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load i32, i32* @RT2860_RTSTH_EN, align 4
  %8 = load i32, i32* @RT2860_PROT_NAV_SHORT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @RT2860_TXOP_ALLOW_ALL, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @IEEE80211_IS_CHAN_5GHZ(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt2860_rates, align 8
  %19 = load i64, i64* @RT2860_RIDX_OFDM6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt2860_rates, align 8
  %25 = load i64, i64* @RT2860_RIDX_CCK11, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i32 [ %22, %17 ], [ %28, %23 ]
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %34 = load i32, i32* @RT2860_CCK_PROT_CFG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @RAL_WRITE(%struct.rt2860_softc* %33, i32 %34, i32 %35)
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IEEE80211_F_USEPROT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %29
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IEEE80211_PROT_RTSCTS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @RT2860_PROT_CTRL_RTS_CTS, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %43
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IEEE80211_PROT_CTSONLY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @RT2860_PROT_CTRL_CTS, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %29
  %66 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %67 = load i32, i32* @RT2860_OFDM_PROT_CFG, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @RAL_WRITE(%struct.rt2860_softc* %66, i32 %67, i32 %68)
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
