; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_getradiocaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_getradiocaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.wpi_softc* }
%struct.wpi_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@WPI_CHAN_BANDS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32, i32*, %struct.ieee80211_channel*)* @wpi_getradiocaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_getradiocaps(%struct.ieee80211com* %0, i32 %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.wpi_softc*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load %struct.wpi_softc*, %struct.wpi_softc** %12, align 8
  store %struct.wpi_softc* %13, %struct.wpi_softc** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %32, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @WPI_CHAN_BANDS_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  %26 = load %struct.wpi_softc*, %struct.wpi_softc** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %31 = call i32 @wpi_read_eeprom_band(%struct.wpi_softc* %26, i32 %27, i32 %28, i32* %29, %struct.ieee80211_channel* %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %14

35:                                               ; preds = %23
  ret void
}

declare dso_local i32 @wpi_read_eeprom_band(%struct.wpi_softc*, i32, i32, i32*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
