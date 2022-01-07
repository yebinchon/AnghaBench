; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_free_txfrags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_free_txfrags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { %struct.wpi_tx_ring* }
%struct.wpi_tx_ring = type { i64, i64, i32, %struct.wpi_tx_data* }
%struct.wpi_tx_data = type { i32*, i32*, i32 }

@WPI_TX_RING_COUNT = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpi_softc*, i64)* @wpi_free_txfrags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_free_txfrags(%struct.wpi_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wpi_tx_ring*, align 8
  %6 = alloca %struct.wpi_tx_data*, align 8
  %7 = alloca i64, align 8
  store %struct.wpi_softc* %0, %struct.wpi_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %9 = call i32 @WPI_TXQ_LOCK(%struct.wpi_softc* %8)
  %10 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %10, i32 0, i32 0
  %12 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %12, i64 %13
  store %struct.wpi_tx_ring* %14, %struct.wpi_tx_ring** %5, align 8
  br label %15

15:                                               ; preds = %20, %2
  %16 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %17 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %15
  %21 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %22 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %26 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %29 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %27, %30
  %32 = load i64, i64* @WPI_TX_RING_COUNT, align 8
  %33 = urem i64 %31, %32
  store i64 %33, i64* %7, align 8
  %34 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %34, i32 0, i32 3
  %36 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %36, i64 %37
  store %struct.wpi_tx_data* %38, %struct.wpi_tx_data** %6, align 8
  %39 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %40 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %43 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %46 = call i32 @bus_dmamap_sync(i32 %41, i32 %44, i32 %45)
  %47 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %48 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %51 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bus_dmamap_unload(i32 %49, i32 %52)
  %54 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %55 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @m_freem(i32* %56)
  %58 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %59 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %61 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ieee80211_node_decref(i32* %62)
  %64 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %65 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %15

66:                                               ; preds = %15
  %67 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %68 = call i32 @WPI_TXQ_UNLOCK(%struct.wpi_softc* %67)
  ret void
}

declare dso_local i32 @WPI_TXQ_LOCK(%struct.wpi_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ieee80211_node_decref(i32*) #1

declare dso_local i32 @WPI_TXQ_UNLOCK(%struct.wpi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
