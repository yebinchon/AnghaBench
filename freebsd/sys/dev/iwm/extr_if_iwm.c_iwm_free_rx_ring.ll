; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwm_rx_ring = type { i32*, i32*, %struct.iwm_rx_data*, i32, i32, i32 }
%struct.iwm_rx_data = type { i32*, i32* }

@IWM_RX_MQ_RING_COUNT = common dso_local global i32 0, align 4
@IWM_RX_LEGACY_RING_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*, %struct.iwm_rx_ring*)* @iwm_free_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_free_rx_ring(%struct.iwm_softc* %0, %struct.iwm_rx_ring* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwm_rx_data*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_rx_ring* %1, %struct.iwm_rx_ring** %4, align 8
  %8 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %8, i32 0, i32 5
  %10 = call i32 @iwm_dma_contig_free(i32* %9)
  %11 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %12 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %11, i32 0, i32 4
  %13 = call i32 @iwm_dma_contig_free(i32* %12)
  %14 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %14, i32 0, i32 3
  %16 = call i32 @iwm_dma_contig_free(i32* %15)
  %17 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %18 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IWM_RX_MQ_RING_COUNT, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IWM_RX_LEGACY_RING_COUNT, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %82, %27
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %29
  %34 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %35 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %34, i32 0, i32 2
  %36 = load %struct.iwm_rx_data*, %struct.iwm_rx_data** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.iwm_rx_data, %struct.iwm_rx_data* %36, i64 %38
  store %struct.iwm_rx_data* %39, %struct.iwm_rx_data** %7, align 8
  %40 = load %struct.iwm_rx_data*, %struct.iwm_rx_data** %7, align 8
  %41 = getelementptr inbounds %struct.iwm_rx_data, %struct.iwm_rx_data* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %33
  %45 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %46 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.iwm_rx_data*, %struct.iwm_rx_data** %7, align 8
  %49 = getelementptr inbounds %struct.iwm_rx_data, %struct.iwm_rx_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %52 = call i32 @bus_dmamap_sync(i32* %47, i32* %50, i32 %51)
  %53 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %54 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.iwm_rx_data*, %struct.iwm_rx_data** %7, align 8
  %57 = getelementptr inbounds %struct.iwm_rx_data, %struct.iwm_rx_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @bus_dmamap_unload(i32* %55, i32* %58)
  %60 = load %struct.iwm_rx_data*, %struct.iwm_rx_data** %7, align 8
  %61 = getelementptr inbounds %struct.iwm_rx_data, %struct.iwm_rx_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @m_freem(i32* %62)
  %64 = load %struct.iwm_rx_data*, %struct.iwm_rx_data** %7, align 8
  %65 = getelementptr inbounds %struct.iwm_rx_data, %struct.iwm_rx_data* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %44, %33
  %67 = load %struct.iwm_rx_data*, %struct.iwm_rx_data** %7, align 8
  %68 = getelementptr inbounds %struct.iwm_rx_data, %struct.iwm_rx_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %73 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.iwm_rx_data*, %struct.iwm_rx_data** %7, align 8
  %76 = getelementptr inbounds %struct.iwm_rx_data, %struct.iwm_rx_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_dmamap_destroy(i32* %74, i32* %77)
  %79 = load %struct.iwm_rx_data*, %struct.iwm_rx_data** %7, align 8
  %80 = getelementptr inbounds %struct.iwm_rx_data, %struct.iwm_rx_data* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %71, %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %29

85:                                               ; preds = %29
  %86 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %87 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %92 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %95 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @bus_dmamap_destroy(i32* %93, i32* %96)
  %98 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %99 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %90, %85
  %101 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %102 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %107 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @bus_dma_tag_destroy(i32* %108)
  %110 = load %struct.iwm_rx_ring*, %struct.iwm_rx_ring** %4, align 8
  %111 = getelementptr inbounds %struct.iwm_rx_ring, %struct.iwm_rx_ring* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %105, %100
  ret void
}

declare dso_local i32 @iwm_dma_contig_free(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
