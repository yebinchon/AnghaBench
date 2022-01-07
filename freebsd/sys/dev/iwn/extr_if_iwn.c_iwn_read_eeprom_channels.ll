; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_read_eeprom_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_read_eeprom_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iwn_softc = type { i32*, %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32 }

@iwn_bands = common dso_local global %struct.TYPE_2__* null, align 8
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwn_softc*, i32, i32)* @iwn_read_eeprom_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_read_eeprom_channels(%struct.iwn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211com*, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %9 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %8, i32 0, i32 1
  store %struct.ieee80211com* %9, %struct.ieee80211com** %7, align 8
  %10 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %13 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwn_bands, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @iwn_read_prom_data(%struct.iwn_softc* %10, i32 %11, i32* %17, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %34, i32 0, i32 0
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iwn_read_eeprom_band(%struct.iwn_softc* %31, i32 %32, i32 %33, i32* %35, i32 %38)
  br label %50

40:                                               ; preds = %3
  %41 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %44, i32 0, i32 0
  %46 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @iwn_read_eeprom_ht40(%struct.iwn_softc* %41, i32 %42, i32 %43, i32* %45, i32 %48)
  br label %50

50:                                               ; preds = %40, %30
  %51 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ieee80211_sort_channels(i32 %53, i32 %56)
  ret void
}

declare dso_local i32 @iwn_read_prom_data(%struct.iwn_softc*, i32, i32*, i32) #1

declare dso_local i32 @iwn_read_eeprom_band(%struct.iwn_softc*, i32, i32, i32*, i32) #1

declare dso_local i32 @iwn_read_eeprom_ht40(%struct.iwn_softc*, i32, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_sort_channels(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
