; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32 }
%struct.rt_softc_tx_ring = type { i32, i32*, %struct.rt_softc_tx_data*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.rt_softc_tx_data = type { i32*, i32* }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@RT_SOFTC_TX_RING_DATA_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_softc*, %struct.rt_softc_tx_ring*)* @rt_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_free_tx_ring(%struct.rt_softc* %0, %struct.rt_softc_tx_ring* %1) #0 {
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca %struct.rt_softc_tx_ring*, align 8
  %5 = alloca %struct.rt_softc_tx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.rt_softc* %0, %struct.rt_softc** %3, align 8
  store %struct.rt_softc_tx_ring* %1, %struct.rt_softc_tx_ring** %4, align 8
  %7 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %8 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %7, i32 0, i32 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %19 = call i32 @bus_dmamap_sync(i32* %14, i32* %17, i32 %18)
  %20 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_dmamap_unload(i32* %22, i32* %25)
  %27 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %28 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_dmamem_free(i32* %29, i32* %32, i32* %35)
  br label %37

37:                                               ; preds = %11, %2
  %38 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %44 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_dma_tag_destroy(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %49 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %78

52:                                               ; preds = %47
  %53 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %54 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %57 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %60 = call i32 @bus_dmamap_sync(i32* %55, i32* %58, i32 %59)
  %61 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %65 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @bus_dmamap_unload(i32* %63, i32* %66)
  %68 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %69 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %72 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %75 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @bus_dmamem_free(i32* %70, i32* %73, i32* %76)
  br label %78

78:                                               ; preds = %52, %47
  %79 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %80 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %85 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @bus_dma_tag_destroy(i32* %86)
  br label %88

88:                                               ; preds = %83, %78
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %138, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @RT_SOFTC_TX_RING_DATA_COUNT, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %141

93:                                               ; preds = %89
  %94 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %95 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %94, i32 0, i32 2
  %96 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %96, i64 %98
  store %struct.rt_softc_tx_data* %99, %struct.rt_softc_tx_data** %5, align 8
  %100 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %101 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %124

104:                                              ; preds = %93
  %105 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %106 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %109 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %112 = call i32 @bus_dmamap_sync(i32* %107, i32* %110, i32 %111)
  %113 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %114 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %117 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @bus_dmamap_unload(i32* %115, i32* %118)
  %120 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %121 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @m_freem(i32* %122)
  br label %124

124:                                              ; preds = %104, %93
  %125 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %126 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %131 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %134 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @bus_dmamap_destroy(i32* %132, i32* %135)
  br label %137

137:                                              ; preds = %129, %124
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %89

141:                                              ; preds = %89
  %142 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %143 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %148 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @bus_dma_tag_destroy(i32* %149)
  br label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %153 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %152, i32 0, i32 0
  %154 = call i32 @mtx_destroy(i32* %153)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
