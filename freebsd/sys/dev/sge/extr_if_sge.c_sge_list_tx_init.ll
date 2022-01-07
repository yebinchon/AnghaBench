; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_list_tx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_list_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { %struct.sge_chain_data, %struct.sge_list_data }
%struct.sge_chain_data = type { i64, i64, i64, i32, i32 }
%struct.sge_list_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SGE_TX_RING_SZ = common dso_local global i32 0, align 4
@RING_END = common dso_local global i32 0, align 4
@SGE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_softc*)* @sge_list_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_list_tx_init(%struct.sge_softc* %0) #0 {
  %2 = alloca %struct.sge_softc*, align 8
  %3 = alloca %struct.sge_list_data*, align 8
  %4 = alloca %struct.sge_chain_data*, align 8
  store %struct.sge_softc* %0, %struct.sge_softc** %2, align 8
  %5 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %6 = call i32 @SGE_LOCK_ASSERT(%struct.sge_softc* %5)
  %7 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %7, i32 0, i32 1
  store %struct.sge_list_data* %8, %struct.sge_list_data** %3, align 8
  %9 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %9, i32 0, i32 0
  store %struct.sge_chain_data* %10, %struct.sge_chain_data** %4, align 8
  %11 = load %struct.sge_list_data*, %struct.sge_list_data** %3, align 8
  %12 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* @SGE_TX_RING_SZ, align 4
  %15 = call i32 @bzero(%struct.TYPE_2__* %13, i32 %14)
  %16 = load i32, i32* @RING_END, align 4
  %17 = call i32 @htole32(i32 %16)
  %18 = load %struct.sge_list_data*, %struct.sge_list_data** %3, align 8
  %19 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* @SGE_TX_RING_CNT, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %17, i32* %25, align 4
  %26 = load %struct.sge_chain_data*, %struct.sge_chain_data** %4, align 8
  %27 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sge_chain_data*, %struct.sge_chain_data** %4, align 8
  %30 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %33 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @bus_dmamap_sync(i32 %28, i32 %31, i32 %34)
  %36 = load %struct.sge_chain_data*, %struct.sge_chain_data** %4, align 8
  %37 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.sge_chain_data*, %struct.sge_chain_data** %4, align 8
  %39 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.sge_chain_data*, %struct.sge_chain_data** %4, align 8
  %41 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  ret i32 0
}

declare dso_local i32 @SGE_LOCK_ASSERT(%struct.sge_softc*) #1

declare dso_local i32 @bzero(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
