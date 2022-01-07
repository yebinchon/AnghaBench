; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i32* }
%struct.rt2860_tx_ring = type { %struct.rt2860_tx_data**, i32*, i32, i32* }
%struct.rt2860_tx_data = type { i32*, i32*, i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@RT2860_TX_RING_COUNT = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2860_free_tx_ring(%struct.rt2860_softc* %0, %struct.rt2860_tx_ring* %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca %struct.rt2860_tx_ring*, align 8
  %5 = alloca %struct.rt2860_tx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store %struct.rt2860_tx_ring* %1, %struct.rt2860_tx_ring** %4, align 8
  %7 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %8 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %19 = call i32 @bus_dmamap_sync(i32* %14, i32 %17, i32 %18)
  %20 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bus_dmamap_unload(i32* %22, i32 %25)
  %27 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %28 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bus_dmamem_free(i32* %29, i32* %32, i32 %35)
  br label %37

37:                                               ; preds = %11, %2
  %38 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %44 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_dma_tag_destroy(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %103, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @RT2860_TX_RING_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %106

52:                                               ; preds = %48
  %53 = load %struct.rt2860_tx_ring*, %struct.rt2860_tx_ring** %4, align 8
  %54 = getelementptr inbounds %struct.rt2860_tx_ring, %struct.rt2860_tx_ring* %53, i32 0, i32 0
  %55 = load %struct.rt2860_tx_data**, %struct.rt2860_tx_data*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %55, i64 %57
  %59 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %58, align 8
  store %struct.rt2860_tx_data* %59, %struct.rt2860_tx_data** %5, align 8
  %60 = icmp eq %struct.rt2860_tx_data* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %103

62:                                               ; preds = %52
  %63 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %5, align 8
  %64 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %69 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %5, align 8
  %72 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %75 = call i32 @bus_dmamap_sync(i32* %70, i32 %73, i32 %74)
  %76 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %77 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %5, align 8
  %80 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @bus_dmamap_unload(i32* %78, i32 %81)
  %83 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %5, align 8
  %84 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @m_freem(i32* %85)
  br label %87

87:                                               ; preds = %67, %62
  %88 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %5, align 8
  %89 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %5, align 8
  %94 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @ieee80211_free_node(i32* %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %99 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %98, i32 0, i32 0
  %100 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %5, align 8
  %101 = load i32, i32* @next, align 4
  %102 = call i32 @SLIST_INSERT_HEAD(i32* %99, %struct.rt2860_tx_data* %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %61
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %48

106:                                              ; preds = %48
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ieee80211_free_node(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.rt2860_tx_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
