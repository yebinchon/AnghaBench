; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_hal_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_hal_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { %struct.mwl_hal*, i32, i32, %struct.ieee80211com }
%struct.mwl_hal = type { i32 }
%struct.ieee80211com = type { i32, i32, i32 }

@WL_ANTENNATYPE_RX = common dso_local global i32 0, align 4
@WL_ANTENNATYPE_TX = common dso_local global i32 0, align 4
@WL_AUTO_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_F_WME = common dso_local global i32 0, align 4
@IEEE80211_F_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_softc*)* @mwl_hal_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_hal_reset(%struct.mwl_softc* %0) #0 {
  %2 = alloca %struct.mwl_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.mwl_hal*, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %2, align 8
  %5 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %5, i32 0, i32 3
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %7, i32 0, i32 0
  %9 = load %struct.mwl_hal*, %struct.mwl_hal** %8, align 8
  store %struct.mwl_hal* %9, %struct.mwl_hal** %4, align 8
  %10 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %11 = load i32, i32* @WL_ANTENNATYPE_RX, align 4
  %12 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mwl_hal_setantenna(%struct.mwl_hal* %10, i32 %11, i32 %14)
  %16 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %17 = load i32, i32* @WL_ANTENNATYPE_TX, align 4
  %18 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mwl_hal_setantenna(%struct.mwl_hal* %16, i32 %17, i32 %20)
  %22 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %23 = load i32, i32* @WL_AUTO_PREAMBLE, align 4
  %24 = call i32 @mwl_hal_setradio(%struct.mwl_hal* %22, i32 1, i32 %23)
  %25 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %25, i32 0, i32 0
  %27 = load %struct.mwl_hal*, %struct.mwl_hal** %26, align 8
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IEEE80211_F_WME, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @mwl_hal_setwmm(%struct.mwl_hal* %27, i32 %34)
  %36 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mwl_chan_set(%struct.mwl_softc* %36, i32 %39)
  %41 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %42 = call i32 @mwl_hal_setrateadaptmode(%struct.mwl_hal* %41, i32 0)
  %43 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_F_BURST, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @mwl_hal_setoptimizationlevel(%struct.mwl_hal* %43, i32 %50)
  %52 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %53 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %54 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %53, i32 0, i32 1
  %55 = call i32 @mwl_map2regioncode(i32* %54)
  %56 = call i32 @mwl_hal_setregioncode(%struct.mwl_hal* %52, i32 %55)
  %57 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %58 = call i32 @mwl_hal_setaggampduratemode(%struct.mwl_hal* %57, i32 1, i32 80)
  %59 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %60 = call i32 @mwl_hal_setcfend(%struct.mwl_hal* %59, i32 0)
  ret i32 1
}

declare dso_local i32 @mwl_hal_setantenna(%struct.mwl_hal*, i32, i32) #1

declare dso_local i32 @mwl_hal_setradio(%struct.mwl_hal*, i32, i32) #1

declare dso_local i32 @mwl_hal_setwmm(%struct.mwl_hal*, i32) #1

declare dso_local i32 @mwl_chan_set(%struct.mwl_softc*, i32) #1

declare dso_local i32 @mwl_hal_setrateadaptmode(%struct.mwl_hal*, i32) #1

declare dso_local i32 @mwl_hal_setoptimizationlevel(%struct.mwl_hal*, i32) #1

declare dso_local i32 @mwl_hal_setregioncode(%struct.mwl_hal*, i32) #1

declare dso_local i32 @mwl_map2regioncode(i32*) #1

declare dso_local i32 @mwl_hal_setaggampduratemode(%struct.mwl_hal*, i32, i32) #1

declare dso_local i32 @mwl_hal_setcfend(%struct.mwl_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
