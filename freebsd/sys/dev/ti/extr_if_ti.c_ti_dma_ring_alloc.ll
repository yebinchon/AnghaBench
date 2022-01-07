; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_dma_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_dma_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ti_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not create %s dma tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"could not allocate DMA'able memory for %s\0A\00", align 1
@ti_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"could not load DMA'able memory for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_softc*, i32, i32, i32*, i32**, i32*, i64*, i8*)* @ti_dma_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_dma_ring_alloc(%struct.ti_softc* %0, i32 %1, i32 %2, i32* %3, i32** %4, i32* %5, i64* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ti_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ti_dmamap_arg, align 8
  %19 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32** %4, i32*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i8* %7, i8** %17, align 8
  %20 = load %struct.ti_softc*, %struct.ti_softc** %10, align 8
  %21 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %26 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @bus_dma_tag_create(i32 %23, i32 %24, i32 0, i32 %25, i32 %26, i32* null, i32* null, i32 %27, i32 1, i32 %28, i32 0, i32* null, i32* null, i32* %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %8
  %34 = load %struct.ti_softc*, %struct.ti_softc** %10, align 8
  %35 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %17, align 8
  %38 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* %19, align 4
  store i32 %39, i32* %9, align 4
  br label %86

40:                                               ; preds = %8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32**, i32*** %14, align 8
  %44 = bitcast i32** %43 to i8**
  %45 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %46 = load i32, i32* @BUS_DMA_ZERO, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %49 = or i32 %47, %48
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @bus_dmamem_alloc(i32 %42, i8** %44, i32 %49, i32* %50)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.ti_softc*, %struct.ti_softc** %10, align 8
  %56 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* %19, align 4
  store i32 %60, i32* %9, align 4
  br label %86

61:                                               ; preds = %40
  %62 = getelementptr inbounds %struct.ti_dmamap_arg, %struct.ti_dmamap_arg* %18, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32**, i32*** %14, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @ti_dma_map_addr, align 4
  %71 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %72 = call i32 @bus_dmamap_load(i32 %64, i32 %66, i32* %68, i32 %69, i32 %70, %struct.ti_dmamap_arg* %18, i32 %71)
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %61
  %76 = load %struct.ti_softc*, %struct.ti_softc** %10, align 8
  %77 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %17, align 8
  %80 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %19, align 4
  store i32 %81, i32* %9, align 4
  br label %86

82:                                               ; preds = %61
  %83 = getelementptr inbounds %struct.ti_dmamap_arg, %struct.ti_dmamap_arg* %18, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %16, align 8
  store i64 %84, i64* %85, align 8
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %82, %75, %54, %33
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.ti_dmamap_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
