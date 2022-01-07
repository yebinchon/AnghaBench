; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_updatestats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_updatestats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@IEEE80211_M_STA = common dso_local global i64 0, align 8
@RT2860_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CTS-to-self livelock detected\0A\00", align 1
@RT2860_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_MAC_SRST = common dso_local global i32 0, align 4
@RT2860_MAC_RX_EN = common dso_local global i32 0, align 4
@RT2860_MAC_TX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt2860_updatestats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_updatestats(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %5 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %5, i32 0, i32 0
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IEEE80211_M_STA, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %14 = load i32, i32* @RT2860_DEBUG, align 4
  %15 = call i32 @RAL_READ(%struct.rt2860_softc* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 536870912
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 160
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = call i32 @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %26 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %27 = load i32, i32* @RT2860_MAC_SRST, align 4
  %28 = call i32 @RAL_WRITE(%struct.rt2860_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %30 = call i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc* %29)
  %31 = call i32 @DELAY(i32 1)
  %32 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %33 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %34 = load i32, i32* @RT2860_MAC_RX_EN, align 4
  %35 = load i32, i32* @RT2860_MAC_TX_EN, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @RAL_WRITE(%struct.rt2860_softc* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %23, %19, %12
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
