; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_dma = type { i64, i32, i32, i32, i32, %struct.bxe_softc* }

@.str = private unnamed_addr constant [37 x i8] c"dma block '%s' already has size %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BCM_PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to create dma tag for '%s' (%d)\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to alloc dma mem for '%s' (%d)\0A\00", align 1
@bxe_dma_map_addr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to load dma map for '%s' (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bxe_dma_alloc(%struct.bxe_softc* %0, i64 %1, %struct.bxe_dma* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bxe_dma*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.bxe_dma* %2, %struct.bxe_dma** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %12 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %19 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @BLOGE(%struct.bxe_softc* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %21)
  store i32 1, i32* %5, align 4
  br label %123

23:                                               ; preds = %4
  %24 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %25 = call i32 @memset(%struct.bxe_dma* %24, i32 0, i32 32)
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %27 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %28 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %27, i32 0, i32 5
  store %struct.bxe_softc* %26, %struct.bxe_softc** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %31 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %33 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %38 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %41 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %42 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %46 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %47 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %46, i32 0, i32 1
  %48 = call i32 @bus_dma_tag_create(i32 %39, i32 %40, i32 0, i32 %41, i32 %42, i32* null, i32* null, i64 %43, i32 1, i64 %44, i32 %45, i32* null, i32* null, i32* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %23
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @BLOGE(%struct.bxe_softc* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 %54)
  %56 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %57 = call i32 @memset(%struct.bxe_dma* %56, i32 0, i32 32)
  store i32 1, i32* %5, align 4
  br label %123

58:                                               ; preds = %23
  %59 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %60 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %63 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %62, i32 0, i32 3
  %64 = bitcast i32* %63 to i8**
  %65 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %66 = load i32, i32* @BUS_DMA_ZERO, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %69 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %68, i32 0, i32 2
  %70 = call i32 @bus_dmamem_alloc(i32 %61, i8** %64, i32 %67, i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %58
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @BLOGE(%struct.bxe_softc* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %75, i32 %76)
  %78 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %79 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bus_dma_tag_destroy(i32 %80)
  %82 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %83 = call i32 @memset(%struct.bxe_dma* %82, i32 0, i32 32)
  store i32 1, i32* %5, align 4
  br label %123

84:                                               ; preds = %58
  %85 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %86 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %89 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %92 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i32, i32* @bxe_dma_map_addr, align 4
  %96 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %97 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %98 = call i32 @bus_dmamap_load(i32 %87, i32 %90, i32 %93, i64 %94, i32 %95, %struct.bxe_dma* %96, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %84
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @BLOGE(%struct.bxe_softc* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %103, i32 %104)
  %106 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %107 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %110 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %113 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bus_dmamem_free(i32 %108, i32 %111, i32 %114)
  %116 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %117 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @bus_dma_tag_destroy(i32 %118)
  %120 = load %struct.bxe_dma*, %struct.bxe_dma** %8, align 8
  %121 = call i32 @memset(%struct.bxe_dma* %120, i32 0, i32 32)
  store i32 1, i32* %5, align 4
  br label %123

122:                                              ; preds = %84
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %101, %73, %51, %15
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.bxe_dma*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i64, i32, %struct.bxe_dma*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
