; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.ieee80211com }
%struct.ieee80211com = type { i32* }

@RAL_EEPROM_CONFIG0 = common dso_local global i32 0, align 4
@RAL_EEPROM_ADDRESS = common dso_local global i32 0, align 4
@RAL_EEPROM_BBP_BASE = common dso_local global i32 0, align 4
@RAL_EEPROM_TXPOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*)* @ural_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_read_eeprom(%struct.ural_softc* %0) #0 {
  %2 = alloca %struct.ural_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %2, align 8
  %5 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %5, i32 0, i32 8
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %8 = load i32, i32* @RAL_EEPROM_CONFIG0, align 4
  %9 = call i32 @ural_eeprom_read(%struct.ural_softc* %7, i32 %8, i32* %4, i32 2)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @le16toh(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 11
  %14 = and i32 %13, 7
  %15 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 10
  %19 = and i32 %18, 1
  %20 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 6
  %24 = and i32 %23, 7
  %25 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 3
  %30 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 2
  %34 = and i32 %33, 3
  %35 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 3
  %39 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %42 = load i32, i32* @RAL_EEPROM_ADDRESS, align 4
  %43 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ural_eeprom_read(%struct.ural_softc* %41, i32 %42, i32* %45, i32 6)
  %47 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %48 = load i32, i32* @RAL_EEPROM_BBP_BASE, align 4
  %49 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ural_eeprom_read(%struct.ural_softc* %47, i32 %48, i32* %51, i32 32)
  %53 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %54 = load i32, i32* @RAL_EEPROM_TXPOWER, align 4
  %55 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @ural_eeprom_read(%struct.ural_softc* %53, i32 %54, i32* %57, i32 14)
  ret void
}

declare dso_local i32 @ural_eeprom_read(%struct.ural_softc*, i32, i32*, i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
