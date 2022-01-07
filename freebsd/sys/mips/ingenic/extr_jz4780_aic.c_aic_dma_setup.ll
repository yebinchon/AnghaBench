; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aic_dma_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aic_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic_softc = type { i32, i32, i32, i32, i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot create bus dma tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot allocate memory\0A\00", align 1
@aic_dmamap_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot load DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aic_softc*)* @aic_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic_dma_setup(%struct.aic_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aic_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aic_softc* %0, %struct.aic_softc** %3, align 8
  %6 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %7 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %10 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %9, i32 0, i32 0
  store i32 131072, i32* %10, align 4
  %11 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %12 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bus_get_dma_tag(i32 %13)
  %15 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %16 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %19 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %20 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %21 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %24 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %27 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %26, i32 0, i32 4
  %28 = call i32 @bus_dma_tag_create(i32 %14, i32 4, i32 %17, i32 %18, i32 %19, i32* null, i32* null, i32 %22, i32 1, i32 %25, i32 0, i32* null, i32* null, i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %83

34:                                               ; preds = %1
  %35 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %36 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %39 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %38, i32 0, i32 1
  %40 = bitcast i32* %39 to i8**
  %41 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %42 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %45 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %44, i32 0, i32 3
  %46 = call i32 @bus_dmamem_alloc(i32 %37, i8** %40, i32 %43, i32* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %83

52:                                               ; preds = %34
  %53 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %54 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %57 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %60 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %63 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @aic_dmamap_cb, align 4
  %66 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %67 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %66, i32 0, i32 2
  %68 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %69 = call i32 @bus_dmamap_load(i32 %55, i32 %58, i32 %61, i32 %64, i32 %65, i32* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %52
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %83

75:                                               ; preds = %52
  %76 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %77 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %80 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bzero(i32 %78, i32 %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %75, %72, %49, %31
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
