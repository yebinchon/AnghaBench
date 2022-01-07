; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_dma_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_dma_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safe_softc = type { i32 }
%struct.safe_dma_alloc = type { i32*, i32, i32, i64, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"safe_dma_malloc: bus_dma_tag_create failed; error %u\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"safe_dma_malloc: bus_dmammem_alloc failed; size %ju, error %u\0A\00", align 1
@safe_dmamap_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"safe_dma_malloc: bus_dmamap_load failed; error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safe_softc*, i64, %struct.safe_dma_alloc*, i32)* @safe_dma_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_dma_malloc(%struct.safe_softc* %0, i64 %1, %struct.safe_dma_alloc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.safe_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.safe_dma_alloc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.safe_softc* %0, %struct.safe_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.safe_dma_alloc* %2, %struct.safe_dma_alloc** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.safe_softc*, %struct.safe_softc** %6, align 8
  %12 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bus_get_dma_tag(i32 %13)
  %15 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %16 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %20 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %21 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %20, i32 0, i32 0
  %22 = call i32 @bus_dma_tag_create(i32 %14, i32 4, i32 0, i32 %15, i32 %16, i32* null, i32* null, i64 %17, i32 1, i64 %18, i32 %19, i32* null, i32* null, i32** %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.safe_softc*, %struct.safe_softc** %6, align 8
  %27 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %98

31:                                               ; preds = %4
  %32 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %33 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %36 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %35, i32 0, i32 2
  %37 = bitcast i32* %36 to i8**
  %38 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %39 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %40 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %39, i32 0, i32 1
  %41 = call i32 @bus_dmamem_alloc(i32* %34, i8** %37, i32 %38, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.safe_softc*, %struct.safe_softc** %6, align 8
  %46 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  br label %93

52:                                               ; preds = %31
  %53 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %54 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %57 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %60 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* @safe_dmamap_cb, align 4
  %64 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %65 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %64, i32 0, i32 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @bus_dmamap_load(i32* %55, i32 %58, i32 %61, i64 %62, i32 %63, i32* %65, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %52
  %73 = load %struct.safe_softc*, %struct.safe_softc** %6, align 8
  %74 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %82

78:                                               ; preds = %52
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %81 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  store i32 0, i32* %5, align 4
  br label %102

82:                                               ; preds = %72
  %83 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %84 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %87 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %90 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @bus_dmamem_free(i32* %85, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %82, %44
  %94 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %95 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @bus_dma_tag_destroy(i32* %96)
  br label %98

98:                                               ; preds = %93, %25
  %99 = load %struct.safe_dma_alloc*, %struct.safe_dma_alloc** %8, align 8
  %100 = getelementptr inbounds %struct.safe_dma_alloc, %struct.safe_dma_alloc* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %78
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32**) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @bus_dmamem_alloc(i32*, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32*, i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
