; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxsb_softc = type { i32, i32, %struct.glxsb_dma_map }
%struct.glxsb_dma_map = type { i32, i32, i32, i32, i32 }

@GLXSB_MAX_AES_LEN = common dso_local global i32 0, align 4
@SB_AES_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot allocate DMA tag (%d)\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot allocate DMA memory of %d bytes (%d)\0A\00", align 1
@glxsb_dmamap_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"cannot load DMA memory for %d bytes (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glxsb_softc*)* @glxsb_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxsb_dma_alloc(%struct.glxsb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.glxsb_softc*, align 8
  %4 = alloca %struct.glxsb_dma_map*, align 8
  %5 = alloca i32, align 4
  store %struct.glxsb_softc* %0, %struct.glxsb_softc** %3, align 8
  %6 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %7 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %6, i32 0, i32 2
  store %struct.glxsb_dma_map* %7, %struct.glxsb_dma_map** %4, align 8
  %8 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %9 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @GLXSB_MAX_AES_LEN, align 4
  %11 = mul nsw i32 %10, 2
  %12 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %13 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bus_get_dma_tag(i32 %16)
  %18 = load i32, i32* @SB_AES_ALIGN, align 4
  %19 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %20 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %21 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %22 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %25 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %28 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %31 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %31, i32 0, i32 0
  %33 = call i32 @bus_dma_tag_create(i32 %17, i32 %18, i32 0, i32 %19, i32 %20, i32* null, i32* null, i32 %23, i32 %26, i32 %29, i32 %30, i32* null, i32* null, i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %112

43:                                               ; preds = %1
  %44 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %45 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %48 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %47, i32 0, i32 3
  %49 = bitcast i32* %48 to i8**
  %50 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %51 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %52 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %51, i32 0, i32 2
  %53 = call i32 @bus_dmamem_alloc(i32 %46, i8** %49, i32 %50, i32* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %43
  %57 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %58 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %61 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  br label %106

65:                                               ; preds = %43
  %66 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %67 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %70 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %73 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %76 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @glxsb_dmamap_cb, align 4
  %79 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %80 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %79, i32 0, i32 4
  %81 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %82 = call i32 @bus_dmamap_load(i32 %68, i32 %71, i32 %74, i32 %77, i32 %78, i32* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %65
  %86 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %87 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %90 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92)
  br label %95

94:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %112

95:                                               ; preds = %85
  %96 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %97 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %100 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.glxsb_dma_map*, %struct.glxsb_dma_map** %4, align 8
  %103 = getelementptr inbounds %struct.glxsb_dma_map, %struct.glxsb_dma_map* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bus_dmamem_free(i32 %98, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %95, %56
  %107 = load %struct.glxsb_softc*, %struct.glxsb_softc** %3, align 8
  %108 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @bus_dma_tag_destroy(i32 %109)
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %106, %94, %36
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
