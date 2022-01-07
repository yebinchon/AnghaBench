; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_allocringmemory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_allocringmemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_dma_ring = type { i32, i32, i32, i32, %struct.bwn_mac* }
%struct.bwn_mac = type { %struct.bwn_softc*, %struct.TYPE_2__ }
%struct.bwn_softc = type { i32 }
%struct.TYPE_2__ = type { %struct.bwn_dma }
%struct.bwn_dma = type { i32 }

@BWN_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BWN_DMA_RINGMEMSIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"can't create TX ring DMA tag: TODO frees\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"can't allocate DMA mem: TODO frees\0A\00", align 1
@bwn_dma_ring_addr = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"can't load DMA mem: TODO free\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_dma_ring*)* @bwn_dma_allocringmemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_dma_allocringmemory(%struct.bwn_dma_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_dma_ring*, align 8
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca %struct.bwn_dma*, align 8
  %6 = alloca %struct.bwn_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.bwn_dma_ring* %0, %struct.bwn_dma_ring** %3, align 8
  %8 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %8, i32 0, i32 4
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %9, align 8
  store %struct.bwn_mac* %10, %struct.bwn_mac** %4, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.bwn_dma* %13, %struct.bwn_dma** %5, align 8
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %14, i32 0, i32 0
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %15, align 8
  store %struct.bwn_softc* %16, %struct.bwn_softc** %6, align 8
  %17 = load %struct.bwn_dma*, %struct.bwn_dma** %5, align 8
  %18 = getelementptr inbounds %struct.bwn_dma, %struct.bwn_dma* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BWN_ALIGN, align 4
  %21 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %22 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %23 = load i32, i32* @BWN_DMA_RINGMEMSIZE, align 4
  %24 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %25 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %3, align 8
  %26 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %25, i32 0, i32 3
  %27 = call i32 @bus_dma_tag_create(i32 %19, i32 %20, i32 0, i32 %21, i32 %22, i32* null, i32* null, i32 %23, i32 1, i32 %24, i32 0, i32* null, i32* null, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %32 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

35:                                               ; preds = %1
  %36 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %3, align 8
  %37 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %3, align 8
  %40 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %39, i32 0, i32 1
  %41 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %42 = load i32, i32* @BUS_DMA_ZERO, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %3, align 8
  %45 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %44, i32 0, i32 2
  %46 = call i32 @bus_dmamem_alloc(i32 %38, i32* %40, i32 %43, i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %51 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

54:                                               ; preds = %35
  %55 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %3, align 8
  %56 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %3, align 8
  %59 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %3, align 8
  %62 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BWN_DMA_RINGMEMSIZE, align 4
  %65 = load i32, i32* @bwn_dma_ring_addr, align 4
  %66 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %3, align 8
  %67 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %66, i32 0, i32 0
  %68 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %69 = call i32 @bus_dmamap_load(i32 %57, i32 %60, i32 %63, i32 %64, i32 %65, i32* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %54
  %73 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %74 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

77:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %72, %49, %30
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i32*, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
