; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }
%struct.rt2860_rx_ring = type { i32*, %struct.rt2860_rx_data*, i32*, i32*, i32* }
%struct.rt2860_rx_data = type { i32*, i32* }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@RT2860_RX_RING_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2860_free_rx_ring(%struct.rt2860_softc* %0, %struct.rt2860_rx_ring* %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca %struct.rt2860_rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2860_rx_data*, align 8
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store %struct.rt2860_rx_ring* %1, %struct.rt2860_rx_ring** %4, align 8
  %7 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %8 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %19 = call i32 @bus_dmamap_sync(i32* %14, i32* %17, i32 %18)
  %20 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_dmamap_unload(i32* %22, i32* %25)
  %27 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %28 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_dmamem_free(i32* %29, i32* %32, i32* %35)
  br label %37

37:                                               ; preds = %11, %2
  %38 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %44 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_dma_tag_destroy(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %97, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @RT2860_RX_RING_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %100

52:                                               ; preds = %48
  %53 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %54 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %53, i32 0, i32 1
  %55 = load %struct.rt2860_rx_data*, %struct.rt2860_rx_data** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rt2860_rx_data, %struct.rt2860_rx_data* %55, i64 %57
  store %struct.rt2860_rx_data* %58, %struct.rt2860_rx_data** %6, align 8
  %59 = load %struct.rt2860_rx_data*, %struct.rt2860_rx_data** %6, align 8
  %60 = getelementptr inbounds %struct.rt2860_rx_data, %struct.rt2860_rx_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %52
  %64 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %65 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.rt2860_rx_data*, %struct.rt2860_rx_data** %6, align 8
  %68 = getelementptr inbounds %struct.rt2860_rx_data, %struct.rt2860_rx_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %71 = call i32 @bus_dmamap_sync(i32* %66, i32* %69, i32 %70)
  %72 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %73 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.rt2860_rx_data*, %struct.rt2860_rx_data** %6, align 8
  %76 = getelementptr inbounds %struct.rt2860_rx_data, %struct.rt2860_rx_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_dmamap_unload(i32* %74, i32* %77)
  %79 = load %struct.rt2860_rx_data*, %struct.rt2860_rx_data** %6, align 8
  %80 = getelementptr inbounds %struct.rt2860_rx_data, %struct.rt2860_rx_data* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @m_freem(i32* %81)
  br label %83

83:                                               ; preds = %63, %52
  %84 = load %struct.rt2860_rx_data*, %struct.rt2860_rx_data** %6, align 8
  %85 = getelementptr inbounds %struct.rt2860_rx_data, %struct.rt2860_rx_data* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %90 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.rt2860_rx_data*, %struct.rt2860_rx_data** %6, align 8
  %93 = getelementptr inbounds %struct.rt2860_rx_data, %struct.rt2860_rx_data* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @bus_dmamap_destroy(i32* %91, i32* %94)
  br label %96

96:                                               ; preds = %88, %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %48

100:                                              ; preds = %48
  %101 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %102 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.rt2860_rx_ring*, %struct.rt2860_rx_ring** %4, align 8
  %107 = getelementptr inbounds %struct.rt2860_rx_ring, %struct.rt2860_rx_ring* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @bus_dma_tag_destroy(i32* %108)
  br label %110

110:                                              ; preds = %105, %100
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
