; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_rx.c_r88e_get_rx_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_rx.c_r88e_get_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.ieee80211_rx_stats = type { i32, i32, i32 }
%struct.r88e_rx_phystat = type { i32 }

@IEEE80211_R_IEEE = common dso_local global i32 0, align 4
@IEEE80211_R_FREQ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r88e_get_rx_stats(%struct.rtwn_softc* %0, %struct.ieee80211_rx_stats* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca %struct.ieee80211_rx_stats*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.r88e_rx_phystat*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.r88e_rx_phystat*
  store %struct.r88e_rx_phystat* %11, %struct.r88e_rx_phystat** %9, align 8
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %13 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @r92c_get_rx_stats(%struct.rtwn_softc* %12, %struct.ieee80211_rx_stats* %13, i8* %14, i8* %15)
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %18 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @IEEE80211_R_IEEE, align 4
  %23 = load i32, i32* @IEEE80211_R_FREQ, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.r88e_rx_phystat*, %struct.r88e_rx_phystat** %9, align 8
  %30 = getelementptr inbounds %struct.r88e_rx_phystat, %struct.r88e_rx_phystat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %38 = call i32 @ieee80211_ieee2mhz(i32 %36, i32 %37)
  %39 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %21, %4
  ret void
}

declare dso_local i32 @r92c_get_rx_stats(%struct.rtwn_softc*, %struct.ieee80211_rx_stats*, i8*, i8*) #1

declare dso_local i32 @ieee80211_ieee2mhz(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
