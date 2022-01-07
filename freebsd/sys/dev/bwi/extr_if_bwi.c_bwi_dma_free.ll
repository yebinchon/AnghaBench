; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32*, i32*, %struct.bwi_ring_data, i32*, %struct.bwi_ring_data* }
%struct.bwi_ring_data = type { i32, i32* }

@BWI_TX_NRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*)* @bwi_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_dma_free(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwi_ring_data*, align 8
  %5 = alloca %struct.bwi_ring_data*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  %6 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %45, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @BWI_TX_NRING, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %16, i32 0, i32 4
  %18 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %18, i64 %20
  store %struct.bwi_ring_data* %21, %struct.bwi_ring_data** %4, align 8
  %22 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %4, align 8
  %23 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %15
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %4, align 8
  %31 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bus_dmamap_unload(i32* %29, i32 %32)
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %35 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %4, align 8
  %38 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %4, align 8
  %41 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bus_dmamem_free(i32* %36, i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %26, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %11

48:                                               ; preds = %11
  %49 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_dma_tag_destroy(i32* %51)
  br label %53

53:                                               ; preds = %48, %1
  %54 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %88

58:                                               ; preds = %53
  %59 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %60 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %59, i32 0, i32 2
  store %struct.bwi_ring_data* %60, %struct.bwi_ring_data** %5, align 8
  %61 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %5, align 8
  %62 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %67 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %5, align 8
  %70 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bus_dmamap_unload(i32* %68, i32 %71)
  %73 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %74 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %5, align 8
  %77 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %5, align 8
  %80 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @bus_dmamem_free(i32* %75, i32* %78, i32 %81)
  br label %83

83:                                               ; preds = %65, %58
  %84 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %85 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @bus_dma_tag_destroy(i32* %86)
  br label %88

88:                                               ; preds = %83, %53
  %89 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %90 = call i32 @bwi_dma_txstats_free(%struct.bwi_softc* %89)
  %91 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %92 = load i32, i32* @BWI_TX_NRING, align 4
  %93 = call i32 @bwi_dma_mbuf_destroy(%struct.bwi_softc* %91, i32 %92, i32 1)
  %94 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %95 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %100 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @bus_dma_tag_destroy(i32* %101)
  br label %103

103:                                              ; preds = %98, %88
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bwi_dma_txstats_free(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_dma_mbuf_destroy(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
