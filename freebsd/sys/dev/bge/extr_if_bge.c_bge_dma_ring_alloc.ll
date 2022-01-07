; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_dma_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_dma_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bge_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"could not create %s dma tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"could not allocate DMA'able memory for %s\0A\00", align 1
@bge_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"could not load DMA'able memory for %s\0A\00", align 1
@BGE_FLAG_4G_BNDRY_BUG = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"4GB boundary crossed, limit DMA address space to 32bit for %s\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*, i64, i64, i32**, i32**, i32**, i64*, i8*)* @bge_dma_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_dma_ring_alloc(%struct.bge_softc* %0, i64 %1, i64 %2, i32** %3, i32** %4, i32** %5, i64* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.bge_softc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.bge_dmamap_arg, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32** %3, i32*** %13, align 8
  store i32** %4, i32*** %14, align 8
  store i32** %5, i32*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i8* %7, i8** %17, align 8
  %22 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  store i64 %22, i64* %19, align 8
  br label %23

23:                                               ; preds = %131, %8
  %24 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %25 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %19, align 8
  %30 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i32**, i32*** %13, align 8
  %34 = call i32 @bus_dma_tag_create(i32 %27, i64 %28, i32 0, i64 %29, i64 %30, i32* null, i32* null, i64 %31, i32 1, i64 %32, i32 0, i32* null, i32* null, i32** %33)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %21, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %39 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %17, align 8
  %42 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %9, align 4
  br label %137

44:                                               ; preds = %23
  %45 = load i32**, i32*** %13, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32**, i32*** %14, align 8
  %48 = bitcast i32** %47 to i8**
  %49 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %50 = load i32, i32* @BUS_DMA_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %53 = or i32 %51, %52
  %54 = load i32**, i32*** %15, align 8
  %55 = call i32 @bus_dmamem_alloc(i32* %46, i8** %48, i32 %53, i32** %54)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %60 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %17, align 8
  %63 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* %9, align 4
  br label %137

65:                                               ; preds = %44
  %66 = getelementptr inbounds %struct.bge_dmamap_arg, %struct.bge_dmamap_arg* %18, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load i32**, i32*** %13, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = load i32**, i32*** %15, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i32**, i32*** %14, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* @bge_dma_map_addr, align 4
  %75 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %76 = call i32 @bus_dmamap_load(i32* %68, i32* %70, i32* %72, i64 %73, i32 %74, %struct.bge_dmamap_arg* %18, i32 %75)
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %21, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %65
  %80 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %81 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %17, align 8
  %84 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @ENOMEM, align 4
  store i32 %85, i32* %9, align 4
  br label %137

86:                                               ; preds = %65
  %87 = getelementptr inbounds %struct.bge_dmamap_arg, %struct.bge_dmamap_arg* %18, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %16, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i64*, i64** %16, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = add nsw i64 %91, %92
  store i64 %93, i64* %20, align 8
  %94 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %95 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @BGE_FLAG_4G_BNDRY_BUG, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %86
  %101 = load i64*, i64** %16, align 8
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @BGE_ADDR_HI(i64 %102)
  %104 = load i64, i64* %20, align 8
  %105 = call i64 @BGE_ADDR_HI(i64 %104)
  %106 = icmp ne i64 %103, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %100
  %108 = load i32**, i32*** %13, align 8
  %109 = load i32*, i32** %108, align 8
  %110 = load i32**, i32*** %15, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @bus_dmamap_unload(i32* %109, i32* %111)
  %113 = load i32**, i32*** %13, align 8
  %114 = load i32*, i32** %113, align 8
  %115 = load i32**, i32*** %14, align 8
  %116 = load i32*, i32** %115, align 8
  %117 = load i32**, i32*** %15, align 8
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @bus_dmamem_free(i32* %114, i32* %116, i32* %118)
  %120 = load i32**, i32*** %13, align 8
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @bus_dma_tag_destroy(i32* %121)
  %123 = load i64, i64* @bootverbose, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %107
  %126 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %127 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %17, align 8
  %130 = call i32 @device_printf(i32 %128, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %125, %107
  %132 = load i32**, i32*** %14, align 8
  store i32* null, i32** %132, align 8
  %133 = load i32**, i32*** %13, align 8
  store i32* null, i32** %133, align 8
  %134 = load i32**, i32*** %15, align 8
  store i32* null, i32** %134, align 8
  %135 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  store i64 %135, i64* %19, align 8
  br label %23

136:                                              ; preds = %100, %86
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %136, %79, %58, %37
  %138 = load i32, i32* %9, align 4
  ret i32 %138
}

declare dso_local i32 @bus_dma_tag_create(i32, i64, i32, i64, i64, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32**) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32*, i8**, i32, i32**) #1

declare dso_local i32 @bus_dmamap_load(i32*, i32*, i32*, i64, i32, %struct.bge_dmamap_arg*, i32) #1

declare dso_local i64 @BGE_ADDR_HI(i64) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
