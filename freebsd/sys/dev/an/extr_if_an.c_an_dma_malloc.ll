; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_dma_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_dma_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32 }
%struct.an_dma_alloc = type { i32, i32, i32, i32 }

@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@an_dma_malloc_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.an_softc*, i32, %struct.an_dma_alloc*, i32)* @an_dma_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_dma_malloc(%struct.an_softc* %0, i32 %1, %struct.an_dma_alloc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.an_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.an_dma_alloc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.an_dma_alloc* %2, %struct.an_dma_alloc** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %12 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.an_dma_alloc*, %struct.an_dma_alloc** %8, align 8
  %15 = getelementptr inbounds %struct.an_dma_alloc, %struct.an_dma_alloc* %14, i32 0, i32 1
  %16 = bitcast i32* %15 to i8**
  %17 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %18 = load %struct.an_dma_alloc*, %struct.an_dma_alloc** %8, align 8
  %19 = getelementptr inbounds %struct.an_dma_alloc, %struct.an_dma_alloc* %18, i32 0, i32 0
  %20 = call i32 @bus_dmamem_alloc(i32 %13, i8** %16, i32 %17, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %57

24:                                               ; preds = %4
  %25 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %26 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.an_dma_alloc*, %struct.an_dma_alloc** %8, align 8
  %29 = getelementptr inbounds %struct.an_dma_alloc, %struct.an_dma_alloc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.an_dma_alloc*, %struct.an_dma_alloc** %8, align 8
  %32 = getelementptr inbounds %struct.an_dma_alloc, %struct.an_dma_alloc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @an_dma_malloc_cb, align 4
  %36 = load %struct.an_dma_alloc*, %struct.an_dma_alloc** %8, align 8
  %37 = getelementptr inbounds %struct.an_dma_alloc, %struct.an_dma_alloc* %36, i32 0, i32 3
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @bus_dmamap_load(i32 %27, i32 %30, i32 %33, i32 %34, i32 %35, i32* %37, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %49

45:                                               ; preds = %24
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.an_dma_alloc*, %struct.an_dma_alloc** %8, align 8
  %48 = getelementptr inbounds %struct.an_dma_alloc, %struct.an_dma_alloc* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %69

49:                                               ; preds = %44
  %50 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %51 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.an_dma_alloc*, %struct.an_dma_alloc** %8, align 8
  %54 = getelementptr inbounds %struct.an_dma_alloc, %struct.an_dma_alloc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bus_dmamap_unload(i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %49, %23
  %58 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %59 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.an_dma_alloc*, %struct.an_dma_alloc** %8, align 8
  %62 = getelementptr inbounds %struct.an_dma_alloc, %struct.an_dma_alloc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.an_dma_alloc*, %struct.an_dma_alloc** %8, align 8
  %65 = getelementptr inbounds %struct.an_dma_alloc, %struct.an_dma_alloc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bus_dmamem_free(i32 %60, i32 %63, i32 %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %57, %45
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
