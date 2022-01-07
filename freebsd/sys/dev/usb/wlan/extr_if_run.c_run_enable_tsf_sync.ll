; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_enable_tsf_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_enable_tsf_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64, i32 }
%struct.ieee80211vap = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RUN_DEBUG_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"rvp_id=%d ic_opmode=%d\0A\00", align 1
@RT2860_BCN_TIME_CFG = common dso_local global i32 0, align 4
@RT2860_TSF_TIMER_EN = common dso_local global i32 0, align 4
@RT2860_TBTT_TIMER_EN = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@RT2860_TSF_SYNC_MODE_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@RT2860_BCN_TX_EN = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Enabling TSF failed. undefined opmode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_enable_tsf_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_enable_tsf_sync(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %6 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %7 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %6, i32 0, i32 0
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 1
  %10 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %9)
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %4, align 8
  %11 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %12 = load i32, i32* @RUN_DEBUG_BEACON, align 4
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %14 = call %struct.TYPE_4__* @RUN_VAP(%struct.ieee80211vap* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (%struct.run_softc*, i32, i8*, ...) @RUN_DPRINTF(%struct.run_softc* %11, i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19)
  %21 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %22 = load i32, i32* @RT2860_BCN_TIME_CFG, align 4
  %23 = call i32 @run_read(%struct.run_softc* %21, i32 %22, i32* %5)
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, -2097152
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 16
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @RT2860_TSF_TIMER_EN, align 4
  %35 = load i32, i32* @RT2860_TBTT_TIMER_EN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IEEE80211_M_STA, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load i32, i32* @RT2860_TSF_SYNC_MODE_SHIFT, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %89

49:                                               ; preds = %1
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* @RT2860_BCN_TX_EN, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @RT2860_TSF_SYNC_MODE_SHIFT, align 4
  %60 = shl i32 2, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %88

63:                                               ; preds = %49
  %64 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %65 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %71 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69, %63
  %76 = load i32, i32* @RT2860_BCN_TX_EN, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @RT2860_TSF_SYNC_MODE_SHIFT, align 4
  %80 = shl i32 3, %79
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %87

83:                                               ; preds = %69
  %84 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %85 = load i32, i32* @RUN_DEBUG_BEACON, align 4
  %86 = call i32 (%struct.run_softc*, i32, i8*, ...) @RUN_DPRINTF(%struct.run_softc* %84, i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %94

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %55
  br label %89

89:                                               ; preds = %88, %44
  %90 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %91 = load i32, i32* @RT2860_BCN_TIME_CFG, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @run_write(%struct.run_softc* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %83
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @RUN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
