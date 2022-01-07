; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_updateprot_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_updateprot_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ieee80211com = type { i64, i32, i64, %struct.run_softc* }
%struct.run_softc = type { i32 }

@RT2860_RTSTH_EN = common dso_local global i32 0, align 4
@RT2860_PROT_NAV_SHORT = common dso_local global i32 0, align 4
@RT2860_TXOP_ALLOW_ALL = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@rt2860_rates = common dso_local global %struct.TYPE_2__* null, align 8
@RT2860_RIDX_OFDM6 = common dso_local global i64 0, align 8
@RT2860_PHY_OFDM = common dso_local global i32 0, align 4
@RT2860_RIDX_CCK11 = common dso_local global i64 0, align 8
@RT2860_CCK_PROT_CFG = common dso_local global i32 0, align 4
@IEEE80211_F_USEPROT = common dso_local global i32 0, align 4
@IEEE80211_PROT_RTSCTS = common dso_local global i64 0, align 8
@RT2860_PROT_CTRL_RTS_CTS = common dso_local global i32 0, align 4
@IEEE80211_PROT_CTSONLY = common dso_local global i64 0, align 8
@RT2860_PROT_CTRL_CTS = common dso_local global i32 0, align 4
@RT2860_OFDM_PROT_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_updateprot_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_updateprot_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.run_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ieee80211com*
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 3
  %10 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  store %struct.run_softc* %10, %struct.run_softc** %4, align 8
  %11 = load i32, i32* @RT2860_RTSTH_EN, align 4
  %12 = load i32, i32* @RT2860_PROT_NAV_SHORT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RT2860_TXOP_ALLOW_ALL, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt2860_rates, align 8
  %23 = load i64, i64* @RT2860_RIDX_OFDM6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RT2860_PHY_OFDM, align 4
  %28 = or i32 %26, %27
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt2860_rates, align 8
  %31 = load i64, i64* @RT2860_RIDX_CCK11, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %29, %21
  %36 = phi i32 [ %28, %21 ], [ %34, %29 ]
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %40 = load i32, i32* @RT2860_CCK_PROT_CFG, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @run_write(%struct.run_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IEEE80211_F_USEPROT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %35
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IEEE80211_PROT_RTSCTS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @RT2860_PROT_CTRL_RTS_CTS, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %70

59:                                               ; preds = %49
  %60 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %61 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IEEE80211_PROT_CTSONLY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @RT2860_PROT_CTRL_CTS, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %69, %55
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %73 = load i32, i32* @RT2860_OFDM_PROT_CFG, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @run_write(%struct.run_softc* %72, i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
