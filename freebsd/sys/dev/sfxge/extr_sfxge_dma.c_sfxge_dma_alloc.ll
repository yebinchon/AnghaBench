; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_dma.c_sfxge_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_dma.c_sfxge_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't allocate txq DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Couldn't allocate DMA memory\0A\00", align 1
@sfxge_dma_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Couldn't load DMA mapping\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_dma_alloc(%struct.sfxge_softc* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %10 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = call i32 @MIN(i32 -1, i32 %13)
  %15 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = call i64 @bus_dma_tag_create(i32 %11, i32 %12, i32 0, i32 %14, i32 %15, i32* null, i32* null, i32 %16, i32 1, i32 %17, i32 0, i32* null, i32* null, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %24 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %92

27:                                               ; preds = %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %32 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BUS_DMA_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = call i64 @bus_dmamem_alloc(i32 %30, i8** %8, i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %42 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %87

45:                                               ; preds = %27
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @sfxge_dma_cb, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i64 @bus_dmamap_load(i32 %48, i32 %51, i8* %52, i32 %53, i32 %54, i64* %56, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %61 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %78

64:                                               ; preds = %45
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %77

70:                                               ; preds = %64
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %4, align 4
  br label %94

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bus_dmamem_free(i32 %81, i8* %82, i32 %85)
  br label %87

87:                                               ; preds = %78, %40
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bus_dma_tag_destroy(i32 %90)
  br label %92

92:                                               ; preds = %87, %22
  %93 = load i32, i32* @ENOMEM, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %70
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i8*, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
