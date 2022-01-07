; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_alloc_tx_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_alloc_tx_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i32, i32, %struct.rt2860_tx_data*, i64, i32 }
%struct.rt2860_tx_data = type { i32, %struct.rt2860_txwi*, i32 }
%struct.rt2860_txwi = type { i32 }

@RT2860_TX_POOL_COUNT = common dso_local global i32 0, align 4
@RT2860_TXWI_DMASZ = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create txwi DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not allocate DMA memory\0A\00", align 1
@rt2860_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not load txwi DMA map\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"could not create DMA map\0A\00", align 1
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2860_alloc_tx_pool(%struct.rt2860_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt2860_tx_data*, align 8
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  %10 = load i32, i32* @RT2860_TX_POOL_COUNT, align 4
  %11 = load i32, i32* @RT2860_TXWI_DMASZ, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %14 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %13, i32 0, i32 0
  %15 = call i32 @SLIST_INIT(i32* %14)
  %16 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bus_get_dma_tag(i32 %18)
  %20 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %21 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %24, i32 0, i32 2
  %26 = call i32 @bus_dma_tag_create(i32 %19, i32 1, i32 0, i32 %20, i32 %21, i32* null, i32* null, i32 %22, i32 1, i32 %23, i32 0, i32* null, i32* null, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %134

34:                                               ; preds = %1
  %35 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %36 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %39 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %38, i32 0, i32 4
  %40 = bitcast i64* %39 to i8**
  %41 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %42 = load i32, i32* @BUS_DMA_ZERO, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %45 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %44, i32 0, i32 5
  %46 = call i32 @bus_dmamem_alloc(i32 %37, i8** %40, i32 %43, i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %34
  %50 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %51 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %134

54:                                               ; preds = %34
  %55 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %56 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %59 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %62 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @rt2860_dma_map_addr, align 4
  %66 = call i32 @bus_dmamap_load(i32 %57, i32 %60, i64 %63, i32 %64, i32 %65, i32* %5, i32 0)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %54
  %70 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %71 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %134

74:                                               ; preds = %54
  %75 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %76 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %79 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %82 = call i32 @bus_dmamap_sync(i32 %77, i32 %80, i32 %81)
  %83 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %84 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %130, %74
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @RT2860_TX_POOL_COUNT, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %133

90:                                               ; preds = %86
  %91 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %92 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %91, i32 0, i32 3
  %93 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %93, i64 %95
  store %struct.rt2860_tx_data* %96, %struct.rt2860_tx_data** %9, align 8
  %97 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %98 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %9, align 8
  %101 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %100, i32 0, i32 2
  %102 = call i32 @bus_dmamap_create(i32 %99, i32 0, i32* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %90
  %106 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %107 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %134

110:                                              ; preds = %90
  %111 = load i64, i64* %4, align 8
  %112 = inttoptr i64 %111 to %struct.rt2860_txwi*
  %113 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %9, align 8
  %114 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %113, i32 0, i32 1
  store %struct.rt2860_txwi* %112, %struct.rt2860_txwi** %114, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %9, align 8
  %117 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @RT2860_TXWI_DMASZ, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %4, align 8
  %121 = add nsw i64 %120, %119
  store i64 %121, i64* %4, align 8
  %122 = load i32, i32* @RT2860_TXWI_DMASZ, align 4
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %5, align 4
  %125 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %126 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %125, i32 0, i32 0
  %127 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %9, align 8
  %128 = load i32, i32* @next, align 4
  %129 = call i32 @SLIST_INSERT_HEAD(i32* %126, %struct.rt2860_tx_data* %127, i32 %128)
  br label %130

130:                                              ; preds = %110
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %86

133:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  br label %138

134:                                              ; preds = %105, %69, %49, %29
  %135 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %136 = call i32 @rt2860_free_tx_pool(%struct.rt2860_softc* %135)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %133
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.rt2860_tx_data*, i32) #1

declare dso_local i32 @rt2860_free_tx_pool(%struct.rt2860_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
