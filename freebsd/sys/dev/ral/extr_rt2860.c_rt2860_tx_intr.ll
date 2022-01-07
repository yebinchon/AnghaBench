; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_tx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i64, i32, i32, %struct.rt2860_tx_ring* }
%struct.rt2860_tx_ring = type { i64, i32, %struct.rt2860_tx_data** }
%struct.rt2860_tx_data = type { i32*, i32*, i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@RT2860_TX_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*, i32)* @rt2860_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_tx_intr(%struct.rt2860_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2860_tx_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rt2860_tx_data*, align 8
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %8, i32 0, i32 4
  %10 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %10, i64 %12
  store %struct.rt2860_tx_ring* %13, %struct.rt2860_tx_ring** %5, align 8
  %14 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %15 = call i32 @rt2860_drain_stats_fifo(%struct.rt2860_softc* %14)
  %16 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @RT2860_TX_DTX_IDX(i32 %17)
  %19 = call i64 @RAL_READ(%struct.rt2860_softc* %16, i32 %18)
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %76, %2
  %21 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %22 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %90

26:                                               ; preds = %20
  %27 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %28 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %27, i32 0, i32 2
  %29 = load %struct.rt2860_tx_data**, %struct.rt2860_tx_data*** %28, align 8
  %30 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %31 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %29, i64 %32
  %34 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %33, align 8
  store %struct.rt2860_tx_data* %34, %struct.rt2860_tx_data** %7, align 8
  %35 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %7, align 8
  %36 = icmp ne %struct.rt2860_tx_data* %35, null
  br i1 %36, label %37, label %76

37:                                               ; preds = %26
  %38 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %39 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %7, align 8
  %42 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %45 = call i32 @bus_dmamap_sync(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %47 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %7, align 8
  %50 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bus_dmamap_unload(i32 %48, i32 %51)
  %53 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %7, align 8
  %54 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %7, align 8
  %57 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @ieee80211_tx_complete(i32* %55, i32* %58, i32 0)
  %60 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %7, align 8
  %61 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %7, align 8
  %63 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %65 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %64, i32 0, i32 2
  %66 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %7, align 8
  %67 = load i32, i32* @next, align 4
  %68 = call i32 @SLIST_INSERT_HEAD(i32* %65, %struct.rt2860_tx_data* %66, i32 %67)
  %69 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %70 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %69, i32 0, i32 2
  %71 = load %struct.rt2860_tx_data**, %struct.rt2860_tx_data*** %70, align 8
  %72 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %73 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %71, i64 %74
  store %struct.rt2860_tx_data* null, %struct.rt2860_tx_data** %75, align 8
  br label %76

76:                                               ; preds = %37, %26
  %77 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %78 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %82 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  %85 = load i32, i32* @RT2860_TX_RING_COUNT, align 4
  %86 = sext i32 %85 to i64
  %87 = urem i64 %84, %86
  %88 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %89 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %20

90:                                               ; preds = %20
  %91 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %92 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %94 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @RT2860_TX_RING_COUNT, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = load i32, i32* %4, align 4
  %100 = shl i32 1, %99
  %101 = xor i32 %100, -1
  %102 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %103 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %98, %90
  %107 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %108 = call i32 @rt2860_start(%struct.rt2860_softc* %107)
  ret void
}

declare dso_local i32 @rt2860_drain_stats_fifo(%struct.rt2860_softc*) #1

declare dso_local i64 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RT2860_TX_DTX_IDX(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @ieee80211_tx_complete(i32*, i32*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.rt2860_tx_data*, i32) #1

declare dso_local i32 @rt2860_start(%struct.rt2860_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
