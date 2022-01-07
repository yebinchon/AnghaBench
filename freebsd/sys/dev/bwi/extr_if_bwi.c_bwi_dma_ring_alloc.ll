; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }
%struct.bwi_ring_data = type { i32, i32*, i32, i32 }

@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't allocate DMA mem\0A\00", align 1
@bwi_dma_ring_addr = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"can't load DMA mem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*, i32, %struct.bwi_ring_data*, i32, i32)* @bwi_dma_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_dma_ring_alloc(%struct.bwi_softc* %0, i32 %1, %struct.bwi_ring_data* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwi_ring_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.bwi_ring_data* %2, %struct.bwi_ring_data** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %9, align 8
  %15 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %14, i32 0, i32 1
  %16 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %17 = load i32, i32* @BUS_DMA_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %9, align 8
  %20 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %19, i32 0, i32 2
  %21 = call i32 @bus_dmamem_alloc(i32 %13, i32** %15, i32 %18, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load %struct.bwi_softc*, %struct.bwi_softc** %7, align 8
  %26 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %66

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %9, align 8
  %33 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %9, align 8
  %36 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @bwi_dma_ring_addr, align 4
  %40 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %9, align 8
  %41 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %40, i32 0, i32 3
  %42 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %43 = call i32 @bus_dmamap_load(i32 %31, i32 %34, i32* %37, i32 %38, i32 %39, i32* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %30
  %47 = load %struct.bwi_softc*, %struct.bwi_softc** %7, align 8
  %48 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %9, align 8
  %53 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %9, align 8
  %56 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bus_dmamem_free(i32 %51, i32* %54, i32 %57)
  %59 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %9, align 8
  %60 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %30
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %9, align 8
  %65 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %46, %24
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @bus_dmamem_alloc(i32, i32**, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
