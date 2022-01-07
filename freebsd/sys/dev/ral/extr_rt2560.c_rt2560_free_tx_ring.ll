; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32 }
%struct.rt2560_tx_ring = type { i32, i32*, %struct.rt2560_tx_data*, i32*, i32*, i32* }
%struct.rt2560_tx_data = type { i32*, i32*, i32* }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*, %struct.rt2560_tx_ring*)* @rt2560_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_free_tx_ring(%struct.rt2560_softc* %0, %struct.rt2560_tx_ring* %1) #0 {
  %3 = alloca %struct.rt2560_softc*, align 8
  %4 = alloca %struct.rt2560_tx_ring*, align 8
  %5 = alloca %struct.rt2560_tx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %3, align 8
  store %struct.rt2560_tx_ring* %1, %struct.rt2560_tx_ring** %4, align 8
  %7 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %8 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %19 = call i32 @bus_dmamap_sync(i32* %14, i32* %17, i32 %18)
  %20 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_dmamap_unload(i32* %22, i32* %25)
  %27 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %28 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_dmamem_free(i32* %29, i32* %32, i32* %35)
  br label %37

37:                                               ; preds = %11, %2
  %38 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %44 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_dma_tag_destroy(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %49 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %48, i32 0, i32 2
  %50 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %49, align 8
  %51 = icmp ne %struct.rt2560_tx_data* %50, null
  br i1 %51, label %52, label %123

52:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %114, %52
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %56 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %117

59:                                               ; preds = %53
  %60 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %61 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %60, i32 0, i32 2
  %62 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %62, i64 %64
  store %struct.rt2560_tx_data* %65, %struct.rt2560_tx_data** %5, align 8
  %66 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %5, align 8
  %67 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %59
  %71 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %72 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %5, align 8
  %75 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %78 = call i32 @bus_dmamap_sync(i32* %73, i32* %76, i32 %77)
  %79 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %80 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %5, align 8
  %83 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @bus_dmamap_unload(i32* %81, i32* %84)
  %86 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %5, align 8
  %87 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @m_freem(i32* %88)
  br label %90

90:                                               ; preds = %70, %59
  %91 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %5, align 8
  %92 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %5, align 8
  %97 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @ieee80211_free_node(i32* %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %5, align 8
  %102 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %107 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %5, align 8
  %110 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @bus_dmamap_destroy(i32* %108, i32* %111)
  br label %113

113:                                              ; preds = %105, %100
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %53

117:                                              ; preds = %53
  %118 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %119 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %118, i32 0, i32 2
  %120 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %119, align 8
  %121 = load i32, i32* @M_DEVBUF, align 4
  %122 = call i32 @free(%struct.rt2560_tx_data* %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %47
  %124 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %125 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %130 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @bus_dma_tag_destroy(i32* %131)
  br label %133

133:                                              ; preds = %128, %123
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ieee80211_free_node(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @free(%struct.rt2560_tx_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
