; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_mbuf_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_mbuf_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32*, %struct.bwi_rxbuf_data, %struct.bwi_txbuf_data* }
%struct.bwi_rxbuf_data = type { %struct.bwi_rxbuf*, i32 }
%struct.bwi_rxbuf = type { i32, i32* }
%struct.bwi_txbuf_data = type { %struct.bwi_txbuf* }
%struct.bwi_txbuf = type { i32, i32*, i32* }

@BWI_TX_NDESC = common dso_local global i32 0, align 4
@BWI_RX_NDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i32, i32)* @bwi_dma_mbuf_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_dma_mbuf_destroy(%struct.bwi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwi_txbuf_data*, align 8
  %10 = alloca %struct.bwi_txbuf*, align 8
  %11 = alloca %struct.bwi_rxbuf_data*, align 8
  %12 = alloca %struct.bwi_rxbuf*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %141

18:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %79, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %19
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %24, i32 0, i32 2
  %26 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %26, i64 %28
  store %struct.bwi_txbuf_data* %29, %struct.bwi_txbuf_data** %9, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %75, %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @BWI_TX_NDESC, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %30
  %35 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %9, align 8
  %36 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %35, i32 0, i32 0
  %37 = load %struct.bwi_txbuf*, %struct.bwi_txbuf** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bwi_txbuf, %struct.bwi_txbuf* %37, i64 %39
  store %struct.bwi_txbuf* %40, %struct.bwi_txbuf** %10, align 8
  %41 = load %struct.bwi_txbuf*, %struct.bwi_txbuf** %10, align 8
  %42 = getelementptr inbounds %struct.bwi_txbuf, %struct.bwi_txbuf* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %34
  %46 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %47 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.bwi_txbuf*, %struct.bwi_txbuf** %10, align 8
  %50 = getelementptr inbounds %struct.bwi_txbuf, %struct.bwi_txbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bus_dmamap_unload(i32* %48, i32 %51)
  %53 = load %struct.bwi_txbuf*, %struct.bwi_txbuf** %10, align 8
  %54 = getelementptr inbounds %struct.bwi_txbuf, %struct.bwi_txbuf* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @m_freem(i32* %55)
  br label %57

57:                                               ; preds = %45, %34
  %58 = load %struct.bwi_txbuf*, %struct.bwi_txbuf** %10, align 8
  %59 = getelementptr inbounds %struct.bwi_txbuf, %struct.bwi_txbuf* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.bwi_txbuf*, %struct.bwi_txbuf** %10, align 8
  %64 = getelementptr inbounds %struct.bwi_txbuf, %struct.bwi_txbuf* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ieee80211_free_node(i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %69 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.bwi_txbuf*, %struct.bwi_txbuf** %10, align 8
  %72 = getelementptr inbounds %struct.bwi_txbuf, %struct.bwi_txbuf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bus_dmamap_destroy(i32* %70, i32 %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %30

78:                                               ; preds = %30
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %19

82:                                               ; preds = %19
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %134

85:                                               ; preds = %82
  %86 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %87 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %86, i32 0, i32 1
  store %struct.bwi_rxbuf_data* %87, %struct.bwi_rxbuf_data** %11, align 8
  %88 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %89 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.bwi_rxbuf_data*, %struct.bwi_rxbuf_data** %11, align 8
  %92 = getelementptr inbounds %struct.bwi_rxbuf_data, %struct.bwi_rxbuf_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bus_dmamap_destroy(i32* %90, i32 %93)
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %130, %85
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @BWI_RX_NDESC, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %133

99:                                               ; preds = %95
  %100 = load %struct.bwi_rxbuf_data*, %struct.bwi_rxbuf_data** %11, align 8
  %101 = getelementptr inbounds %struct.bwi_rxbuf_data, %struct.bwi_rxbuf_data* %100, i32 0, i32 0
  %102 = load %struct.bwi_rxbuf*, %struct.bwi_rxbuf** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.bwi_rxbuf, %struct.bwi_rxbuf* %102, i64 %104
  store %struct.bwi_rxbuf* %105, %struct.bwi_rxbuf** %12, align 8
  %106 = load %struct.bwi_rxbuf*, %struct.bwi_rxbuf** %12, align 8
  %107 = getelementptr inbounds %struct.bwi_rxbuf, %struct.bwi_rxbuf* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %99
  %111 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %112 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.bwi_rxbuf*, %struct.bwi_rxbuf** %12, align 8
  %115 = getelementptr inbounds %struct.bwi_rxbuf, %struct.bwi_rxbuf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @bus_dmamap_unload(i32* %113, i32 %116)
  %118 = load %struct.bwi_rxbuf*, %struct.bwi_rxbuf** %12, align 8
  %119 = getelementptr inbounds %struct.bwi_rxbuf, %struct.bwi_rxbuf* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @m_freem(i32* %120)
  br label %122

122:                                              ; preds = %110, %99
  %123 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %124 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.bwi_rxbuf*, %struct.bwi_rxbuf** %12, align 8
  %127 = getelementptr inbounds %struct.bwi_rxbuf, %struct.bwi_rxbuf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @bus_dmamap_destroy(i32* %125, i32 %128)
  br label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %95

133:                                              ; preds = %95
  br label %134

134:                                              ; preds = %133, %82
  %135 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %136 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @bus_dma_tag_destroy(i32* %137)
  %139 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %140 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %139, i32 0, i32 0
  store i32* null, i32** %140, align 8
  br label %141

141:                                              ; preds = %134, %17
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ieee80211_free_node(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
