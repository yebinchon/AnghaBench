; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }
%struct.rt2860_tx_ring = type { i32, i32, i32, i32 }

@RT2860_TX_RING_COUNT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create desc DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not allocate DMA memory\0A\00", align 1
@rt2860_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not load desc DMA map\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2860_softc*, %struct.rt2860_tx_ring*)* @rt2860_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2860_alloc_tx_ring(%struct.rt2860_softc* %0, %struct.rt2860_tx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2860_softc*, align 8
  %5 = alloca %struct.rt2860_tx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %4, align 8
  store %struct.rt2860_tx_ring* %1, %struct.rt2860_tx_ring** %5, align 8
  %8 = load i32, i32* @RT2860_TX_RING_COUNT, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %13 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bus_get_dma_tag(i32 %14)
  %16 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %17 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %21 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %20, i32 0, i32 1
  %22 = call i32 @bus_dma_tag_create(i32 %15, i32 16, i32 0, i32 %16, i32 %17, i32* null, i32* null, i32 %18, i32 1, i32 %19, i32 0, i32* null, i32* null, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %27 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %81

30:                                               ; preds = %2
  %31 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %32 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %34, i32 0, i32 3
  %36 = bitcast i32* %35 to i8**
  %37 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %38 = load i32, i32* @BUS_DMA_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %40, i32 0, i32 0
  %42 = call i32 @bus_dmamem_alloc(i32 %33, i8** %36, i32 %39, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %47 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %81

50:                                               ; preds = %30
  %51 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %52 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %55 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %58 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @rt2860_dma_map_addr, align 4
  %62 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %63 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %62, i32 0, i32 2
  %64 = call i32 @bus_dmamap_load(i32 %53, i32 %56, i32 %59, i32 %60, i32 %61, i32* %63, i32 0)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %69 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %81

72:                                               ; preds = %50
  %73 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %74 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %77 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %80 = call i32 @bus_dmamap_sync(i32 %75, i32 %78, i32 %79)
  store i32 0, i32* %3, align 4
  br label %86

81:                                               ; preds = %67, %45, %25
  %82 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %83 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %5, align 8
  %84 = call i32 @rt2860_free_tx_ring(%struct.rt2860_softc* %82, %struct.rt2860_tx_ring* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %72
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @rt2860_free_tx_ring(%struct.rt2860_softc*, %struct.rt2860_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
