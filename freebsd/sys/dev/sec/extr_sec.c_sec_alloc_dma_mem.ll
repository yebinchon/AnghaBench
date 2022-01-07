; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_alloc_dma_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_alloc_dma_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32 }
%struct.sec_dma_mem = type { i32*, i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@SEC_DMA_ALIGNMENT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to allocate busdma tag, error %i!\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to allocate DMA safe memory, error %i!\0A\00", align 1
@sec_alloc_dma_mem_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"cannot get address of the DMA memory, error %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_softc*, %struct.sec_dma_mem*, i32)* @sec_alloc_dma_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_alloc_dma_mem(%struct.sec_softc* %0, %struct.sec_dma_mem* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sec_softc*, align 8
  %6 = alloca %struct.sec_dma_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sec_softc* %0, %struct.sec_softc** %5, align 8
  store %struct.sec_dma_mem* %1, %struct.sec_dma_mem** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %10 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EBUSY, align 4
  store i32 %14, i32* %4, align 4
  br label %98

15:                                               ; preds = %3
  %16 = load i32, i32* @SEC_DMA_ALIGNMENT, align 4
  %17 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %18 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %22 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %21, i32 0, i32 1
  %23 = call i32 @bus_dma_tag_create(i32* null, i32 %16, i32 0, i32 %17, i32 %18, i32* null, i32* null, i32 %19, i32 1, i32 %20, i32 0, i32* null, i32* null, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %28 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %94

32:                                               ; preds = %15
  %33 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %34 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %37 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %36, i32 0, i32 0
  %38 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %39 = load i32, i32* @BUS_DMA_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %42 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %41, i32 0, i32 2
  %43 = call i32 @bus_dmamem_alloc(i32 %35, i32** %37, i32 %40, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %48 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %89

52:                                               ; preds = %32
  %53 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %54 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %57 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %60 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @sec_alloc_dma_mem_cb, align 4
  %64 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %65 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %66 = call i32 @bus_dmamap_load(i32 %55, i32 %58, i32* %61, i32 %62, i32 %63, %struct.sec_dma_mem* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %52
  %70 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %71 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %78

75:                                               ; preds = %52
  %76 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %77 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  store i32 0, i32* %4, align 4
  br label %98

78:                                               ; preds = %69
  %79 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %80 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %83 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %86 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bus_dmamem_free(i32 %81, i32* %84, i32 %87)
  br label %89

89:                                               ; preds = %78, %46
  %90 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %91 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @bus_dma_tag_destroy(i32 %92)
  br label %94

94:                                               ; preds = %89, %26
  %95 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %6, align 8
  %96 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %75, %13
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @bus_dma_tag_create(i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i32**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.sec_dma_mem*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
