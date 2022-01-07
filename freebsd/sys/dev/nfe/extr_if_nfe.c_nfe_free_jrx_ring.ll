; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_free_jrx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_free_jrx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32 }
%struct.nfe_jrx_ring = type { i32*, i32*, i32*, i32, i32*, i32*, %struct.nfe_rx_data* }
%struct.nfe_rx_data = type { i32*, i32* }

@NFE_JUMBO_SUP = common dso_local global i32 0, align 4
@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_JUMBO_RX_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*, %struct.nfe_jrx_ring*)* @nfe_free_jrx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_free_jrx_ring(%struct.nfe_softc* %0, %struct.nfe_jrx_ring* %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.nfe_jrx_ring*, align 8
  %5 = alloca %struct.nfe_rx_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store %struct.nfe_jrx_ring* %1, %struct.nfe_jrx_ring** %4, align 8
  %9 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %10 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %137

16:                                               ; preds = %2
  %17 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %18 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %25 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %6, align 8
  store i32 4, i32* %8, align 4
  br label %33

28:                                               ; preds = %16
  %29 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %6, align 8
  store i32 4, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %23
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %72, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @NFE_JUMBO_RX_RING_COUNT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %40 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %39, i32 0, i32 6
  %41 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %41, i64 %43
  store %struct.nfe_rx_data* %44, %struct.nfe_rx_data** %5, align 8
  %45 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %46 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %38
  %50 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %54 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_dmamap_destroy(i32* %52, i32* %55)
  %57 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %58 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %49, %38
  %60 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %61 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %66 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @m_freem(i32* %67)
  %69 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %70 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %59
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %34

75:                                               ; preds = %34
  %76 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %77 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %82 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %87 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %90 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @bus_dmamap_destroy(i32* %88, i32* %91)
  %93 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %94 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %93, i32 0, i32 5
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %85, %80
  %96 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %97 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_dma_tag_destroy(i32* %98)
  %100 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %101 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %100, i32 0, i32 4
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %95, %75
  %103 = load i8*, i8** %6, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %125

105:                                              ; preds = %102
  %106 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %107 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %110 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bus_dmamap_unload(i32* %108, i32 %111)
  %113 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %114 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %118 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @bus_dmamem_free(i32* %115, i8* %116, i32 %119)
  %121 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %122 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  %123 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %124 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  br label %125

125:                                              ; preds = %105, %102
  %126 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %127 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %132 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @bus_dma_tag_destroy(i32* %133)
  %135 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %136 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %135, i32 0, i32 0
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %15, %130, %125
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
