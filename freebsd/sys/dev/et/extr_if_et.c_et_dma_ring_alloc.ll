; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_dma_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_dma_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i32 }
%struct.et_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not create %s dma tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"could not allocate DMA'able memory for %s\0A\00", align 1
@et_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"could not load DMA'able memory for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et_softc*, i32, i32, i32*, i32**, i32*, i64*, i8*)* @et_dma_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_dma_ring_alloc(%struct.et_softc* %0, i32 %1, i32 %2, i32* %3, i32** %4, i32* %5, i64* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.et_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.et_dmamap_arg, align 8
  %19 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32** %4, i32*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i8* %7, i8** %17, align 8
  %20 = load %struct.et_softc*, %struct.et_softc** %10, align 8
  %21 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %25 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @bus_dma_tag_create(i32 %22, i32 %23, i32 0, i32 %24, i32 %25, i32* null, i32* null, i32 %26, i32 1, i32 %27, i32 0, i32* null, i32* null, i32* %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %8
  %33 = load %struct.et_softc*, %struct.et_softc** %10, align 8
  %34 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %17, align 8
  %37 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %19, align 4
  store i32 %38, i32* %9, align 4
  br label %85

39:                                               ; preds = %8
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32**, i32*** %14, align 8
  %43 = bitcast i32** %42 to i8**
  %44 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %45 = load i32, i32* @BUS_DMA_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @bus_dmamem_alloc(i32 %41, i8** %43, i32 %48, i32* %49)
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = load %struct.et_softc*, %struct.et_softc** %10, align 8
  %55 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %17, align 8
  %58 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %19, align 4
  store i32 %59, i32* %9, align 4
  br label %85

60:                                               ; preds = %39
  %61 = getelementptr inbounds %struct.et_dmamap_arg, %struct.et_dmamap_arg* %18, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32**, i32*** %14, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @et_dma_map_addr, align 4
  %70 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %71 = call i32 @bus_dmamap_load(i32 %63, i32 %65, i32* %67, i32 %68, i32 %69, %struct.et_dmamap_arg* %18, i32 %70)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %60
  %75 = load %struct.et_softc*, %struct.et_softc** %10, align 8
  %76 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* %19, align 4
  store i32 %80, i32* %9, align 4
  br label %85

81:                                               ; preds = %60
  %82 = getelementptr inbounds %struct.et_dmamap_arg, %struct.et_dmamap_arg* %18, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %16, align 8
  store i64 %83, i64* %84, align 8
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %81, %74, %53, %32
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.et_dmamap_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
