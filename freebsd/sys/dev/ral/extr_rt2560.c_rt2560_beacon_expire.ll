; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_beacon_expire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_beacon_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { %struct.TYPE_2__, %struct.ieee80211com }
%struct.TYPE_2__ = type { i64, i32, %struct.rt2560_tx_data* }
%struct.rt2560_tx_data = type { i32*, i32, i32 }
%struct.ieee80211com = type { i64 }

@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"beacon expired\0A\00", align 1
@RT2560_BEACON_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*)* @rt2560_beacon_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_beacon_expire(%struct.rt2560_softc* %0) #0 {
  %2 = alloca %struct.rt2560_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.rt2560_tx_data*, align 8
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %2, align 8
  %5 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %5, i32 0, i32 1
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %86

25:                                               ; preds = %18, %12, %1
  %26 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %27 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %28, align 8
  %30 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %31 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %29, i64 %33
  store %struct.rt2560_tx_data* %34, %struct.rt2560_tx_data** %4, align 8
  %35 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %4, align 8
  %36 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %86

40:                                               ; preds = %25
  %41 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %42 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %4, align 8
  %46 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %49 = call i32 @bus_dmamap_sync(i32 %44, i32 %47, i32 %48)
  %50 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %51 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %4, align 8
  %55 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bus_dmamap_unload(i32 %53, i32 %56)
  %58 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %4, align 8
  %59 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %4, align 8
  %62 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ieee80211_beacon_update(i32* %60, i32 %63, i32 1)
  %65 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %66 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %4, align 8
  %67 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %4, align 8
  %70 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @rt2560_tx_bcn(%struct.rt2560_softc* %65, i32 %68, i32* %71)
  %73 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %74 = call i32 @DPRINTFN(%struct.rt2560_softc* %73, i32 15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %76 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  %80 = load i32, i32* @RT2560_BEACON_RING_COUNT, align 4
  %81 = sext i32 %80 to i64
  %82 = urem i64 %79, %81
  %83 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %84 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  br label %86

86:                                               ; preds = %40, %39, %24
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @ieee80211_beacon_update(i32*, i32, i32) #1

declare dso_local i32 @rt2560_tx_bcn(%struct.rt2560_softc*, i32, i32*) #1

declare dso_local i32 @DPRINTFN(%struct.rt2560_softc*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
