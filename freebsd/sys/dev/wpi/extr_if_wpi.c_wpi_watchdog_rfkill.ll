; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_watchdog_rfkill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_watchdog_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@WPI_DEBUG_WATCHDOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RFkill Watchdog: tick\0A\00", align 1
@WPI_APMG_RFKILL = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wpi_watchdog_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_watchdog_rfkill(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.wpi_softc*
  store %struct.wpi_softc* %6, %struct.wpi_softc** %3, align 8
  %7 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %7, i32 0, i32 2
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %10 = load i32, i32* @WPI_DEBUG_WATCHDOG, align 4
  %11 = call i32 @DPRINTF(%struct.wpi_softc* %9, i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %13 = load i32, i32* @WPI_APMG_RFKILL, align 4
  %14 = call i32 @wpi_prph_read(%struct.wpi_softc* %12, i32 %13)
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %18, i32 0, i32 1
  %20 = load i32, i32* @hz, align 4
  %21 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %22 = call i32 @callout_reset(i32* %19, i32 %20, void (i8*)* @wpi_watchdog_rfkill, %struct.wpi_softc* %21)
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %25 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %25, i32 0, i32 0
  %27 = call i32 @ieee80211_runtask(%struct.ieee80211com* %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @DPRINTF(%struct.wpi_softc*, i32, i8*) #1

declare dso_local i32 @wpi_prph_read(%struct.wpi_softc*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.wpi_softc*) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
