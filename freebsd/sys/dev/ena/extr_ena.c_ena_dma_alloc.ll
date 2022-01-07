; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32*, i32 }
%struct.ena_adapter = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i64 0, align 8
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@ENA_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bus_dma_tag_create failed: %d\0A\00", align 1
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"bus_dmamem_alloc(%ju) failed: %d\0A\00", align 1
@ena_dmamap_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c": bus_dmamap_load failed: %d\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_dma_alloc(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ena_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.ena_adapter* @device_get_softc(i32 %14)
  store %struct.ena_adapter* %15, %struct.ena_adapter** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sdiv i32 %17, %18
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %24 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ENA_DMA_BIT_MASK(i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %32, %4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @bus_get_dma_tag(i32 %35)
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = call i32 @bus_dma_tag_create(i32 %36, i32 8, i32 0, i64 %37, i64 %38, i32* null, i32* null, i32 %39, i32 1, i32 %40, i32 %41, i32* null, i32* null, i32** %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %34
  %51 = load i32, i32* @ENA_ALERT, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 (i32, i8*, i32, ...) @ena_trace(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %138

54:                                               ; preds = %34
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = bitcast i32** %59 to i8**
  %61 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %62 = load i32, i32* @BUS_DMA_ZERO, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = call i32 @bus_dmamem_alloc(i32* %57, i8** %60, i32 %63, i32* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %54
  %73 = load i32, i32* @ENA_ALERT, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 (i32, i8*, i32, ...) @ena_trace(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  br label %133

77:                                               ; preds = %54
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ena_dmamap_callback, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @bus_dmamap_load(i32* %82, i32 %85, i32* %88, i32 %89, i32 %90, i64* %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %77
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br label %102

102:                                              ; preds = %97, %77
  %103 = phi i1 [ true, %77 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @ENA_ALERT, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 (i32, i8*, i32, ...) @ena_trace(i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %122

111:                                              ; preds = %102
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %119 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @bus_dmamap_sync(i32* %114, i32 %117, i32 %120)
  store i32 0, i32* %5, align 4
  br label %146

122:                                              ; preds = %107
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bus_dmamem_free(i32* %125, i32* %128, i32 %131)
  br label %133

133:                                              ; preds = %122, %72
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @bus_dma_tag_destroy(i32* %136)
  br label %138

138:                                              ; preds = %133, %50
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  store i32* null, i32** %140, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i32* null, i32** %142, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %138, %111
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local %struct.ena_adapter* @device_get_softc(i32) #1

declare dso_local i64 @ENA_DMA_BIT_MASK(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i64, i64, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @ena_trace(i32, i8*, i32, ...) #1

declare dso_local i32 @bus_dmamem_alloc(i32*, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32*, i32, i32*, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
