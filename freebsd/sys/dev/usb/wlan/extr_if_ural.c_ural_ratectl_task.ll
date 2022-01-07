; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_ratectl_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_ratectl_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_vap = type { i32, %struct.ieee80211vap }
%struct.ieee80211vap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ural_softc* }
%struct.ural_softc = type { i32*, %struct.ieee80211_ratectl_tx_stats }
%struct.ieee80211_ratectl_tx_stats = type { i32, i32, i32, i32 }

@RAL_STA_CSR0 = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_TX_STATS_RETRIES = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ural_ratectl_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ural_ratectl_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_ratectl_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ural_vap*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.ural_softc*, align 8
  %8 = alloca %struct.ieee80211_ratectl_tx_stats*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.ural_vap*
  store %struct.ural_vap* %11, %struct.ural_vap** %5, align 8
  %12 = load %struct.ural_vap*, %struct.ural_vap** %5, align 8
  %13 = getelementptr inbounds %struct.ural_vap, %struct.ural_vap* %12, i32 0, i32 1
  store %struct.ieee80211vap* %13, %struct.ieee80211vap** %6, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ural_softc*, %struct.ural_softc** %17, align 8
  store %struct.ural_softc* %18, %struct.ural_softc** %7, align 8
  %19 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %20 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %19, i32 0, i32 1
  store %struct.ieee80211_ratectl_tx_stats* %20, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %21 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %22 = call i32 @RAL_LOCK(%struct.ural_softc* %21)
  %23 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %24 = load i32, i32* @RAL_STA_CSR0, align 4
  %25 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %26 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ural_read_multi(%struct.ural_softc* %23, i32 %24, i32* %27, i32 8)
  %29 = load i32, i32* @IEEE80211_RATECTL_TX_STATS_RETRIES, align 4
  %30 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %31 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %33 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %38 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %36, %41
  %43 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %46 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 9
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %51 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %58 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  %64 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %65 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %67 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %68 = call i32 @ieee80211_ratectl_tx_update(%struct.ieee80211vap* %66, %struct.ieee80211_ratectl_tx_stats* %67)
  %69 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @if_inc_counter(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.ural_vap*, %struct.ural_vap** %5, align 8
  %76 = getelementptr inbounds %struct.ural_vap, %struct.ural_vap* %75, i32 0, i32 0
  %77 = load i32, i32* @hz, align 4
  %78 = load i32, i32* @ural_ratectl_timeout, align 4
  %79 = load %struct.ural_vap*, %struct.ural_vap** %5, align 8
  %80 = call i32 @usb_callout_reset(i32* %76, i32 %77, i32 %78, %struct.ural_vap* %79)
  %81 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %82 = call i32 @RAL_UNLOCK(%struct.ural_softc* %81)
  ret void
}

declare dso_local i32 @RAL_LOCK(%struct.ural_softc*) #1

declare dso_local i32 @ural_read_multi(%struct.ural_softc*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ratectl_tx_update(%struct.ieee80211vap*, %struct.ieee80211_ratectl_tx_stats*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32, %struct.ural_vap*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.ural_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
