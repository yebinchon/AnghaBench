; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_radio_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_radio_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"RF switch: radio disabled\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@wpi_watchdog_rfkill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @wpi_radio_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_radio_off(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpi_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.wpi_softc*
  store %struct.wpi_softc* %9, %struct.wpi_softc** %5, align 8
  %10 = load %struct.wpi_softc*, %struct.wpi_softc** %5, align 8
  %11 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %10, i32 0, i32 2
  store %struct.ieee80211com* %11, %struct.ieee80211com** %6, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %13)
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %7, align 8
  %15 = load %struct.wpi_softc*, %struct.wpi_softc** %5, align 8
  %16 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %20 = call i32 @ieee80211_notify_radio(%struct.ieee80211com* %19, i32 0)
  %21 = load %struct.wpi_softc*, %struct.wpi_softc** %5, align 8
  %22 = call i32 @wpi_stop(%struct.wpi_softc* %21)
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %24 = icmp ne %struct.ieee80211vap* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %27 = call i32 @ieee80211_stop(%struct.ieee80211vap* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.wpi_softc*, %struct.wpi_softc** %5, align 8
  %30 = call i32 @WPI_LOCK(%struct.wpi_softc* %29)
  %31 = load %struct.wpi_softc*, %struct.wpi_softc** %5, align 8
  %32 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %31, i32 0, i32 0
  %33 = load i32, i32* @hz, align 4
  %34 = load i32, i32* @wpi_watchdog_rfkill, align 4
  %35 = load %struct.wpi_softc*, %struct.wpi_softc** %5, align 8
  %36 = call i32 @callout_reset(i32* %32, i32 %33, i32 %34, %struct.wpi_softc* %35)
  %37 = load %struct.wpi_softc*, %struct.wpi_softc** %5, align 8
  %38 = call i32 @WPI_UNLOCK(%struct.wpi_softc* %37)
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ieee80211_notify_radio(%struct.ieee80211com*, i32) #1

declare dso_local i32 @wpi_stop(%struct.wpi_softc*) #1

declare dso_local i32 @ieee80211_stop(%struct.ieee80211vap*) #1

declare dso_local i32 @WPI_LOCK(%struct.wpi_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.wpi_softc*) #1

declare dso_local i32 @WPI_UNLOCK(%struct.wpi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
