; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { %struct.et_txstatus_data, %struct.et_txbuf_data, %struct.et_txdesc_ring }
%struct.et_txstatus_data = type { i32, i32, i32 }
%struct.et_txbuf_data = type { i64, i64, i64 }
%struct.et_txdesc_ring = type { i32, i32, i32 }

@ET_TX_RING_SIZE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_init_tx_ring(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.et_txdesc_ring*, align 8
  %4 = alloca %struct.et_txbuf_data*, align 8
  %5 = alloca %struct.et_txstatus_data*, align 8
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %6 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %7 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %6, i32 0, i32 2
  store %struct.et_txdesc_ring* %7, %struct.et_txdesc_ring** %3, align 8
  %8 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %3, align 8
  %9 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ET_TX_RING_SIZE, align 4
  %12 = call i32 @bzero(i32 %10, i32 %11)
  %13 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %3, align 8
  %14 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %3, align 8
  %17 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %20 = call i32 @bus_dmamap_sync(i32 %15, i32 %18, i32 %19)
  %21 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %22 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %21, i32 0, i32 1
  store %struct.et_txbuf_data* %22, %struct.et_txbuf_data** %4, align 8
  %23 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %24 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %26 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %28 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %30 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %29, i32 0, i32 0
  store %struct.et_txstatus_data* %30, %struct.et_txstatus_data** %5, align 8
  %31 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %5, align 8
  %32 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bzero(i32 %33, i32 4)
  %35 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %5, align 8
  %36 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %5, align 8
  %39 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %42 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @bus_dmamap_sync(i32 %37, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
