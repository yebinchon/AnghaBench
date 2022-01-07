; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32, i32, %struct.bfe_rx_data*, i32*, i32, %struct.bfe_tx_data*, i8*, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.bfe_rx_data = type { i32*, i64, i32* }
%struct.bfe_tx_data = type { i32*, i32* }
%struct.bfe_dmamap_arg = type { i64 }

@BFE_DMA_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot create parent DMA tag.\0A\00", align 1
@BFE_TX_RING_ALIGN = common dso_local global i32 0, align 4
@BFE_TX_LIST_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot create Tx ring DMA tag.\0A\00", align 1
@BFE_RX_RING_ALIGN = common dso_local global i32 0, align 4
@BFE_RX_LIST_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot create Rx ring DMA tag.\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@BFE_MAXTXSEGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"cannot create Tx buffer DMA tag.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"cannot create Rx buffer DMA tag.\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"cannot allocate DMA'able memory for Tx ring.\0A\00", align 1
@bfe_dma_map = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"cannot load DMA'able memory for Tx ring.\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"cannot allocate DMA'able memory for Rx ring.\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"cannot load DMA'able memory for Rx ring.\0A\00", align 1
@BFE_TX_LIST_CNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"cannot create DMA map for Tx.\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"cannot create spare DMA map for Rx.\0A\00", align 1
@BFE_RX_LIST_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"cannot create DMA map for Rx.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfe_softc*)* @bfe_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_dma_alloc(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca %struct.bfe_dmamap_arg, align 8
  %4 = alloca %struct.bfe_rx_data*, align 8
  %5 = alloca %struct.bfe_tx_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %8 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bus_get_dma_tag(i32 %10)
  %12 = load i32, i32* @BFE_DMA_MAXADDR, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %16 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %16, i32 0, i32 14
  %18 = call i32 @bus_dma_tag_create(i32 %11, i32 1, i32 0, i32 %12, i32 %13, i32* null, i32* null, i32 %14, i32 0, i32 %15, i32 0, i32* null, i32* null, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %292

26:                                               ; preds = %1
  %27 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %27, i32 0, i32 14
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BFE_TX_RING_ALIGN, align 4
  %31 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %32 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %33 = load i32, i32* @BFE_TX_LIST_SIZE, align 4
  %34 = load i32, i32* @BFE_TX_LIST_SIZE, align 4
  %35 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %36 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %35, i32 0, i32 13
  %37 = call i32 @bus_dma_tag_create(i32 %29, i32 %30, i32 0, i32 %31, i32 %32, i32* null, i32* null, i32 %33, i32 1, i32 %34, i32 0, i32* null, i32* null, i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %42 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %292

45:                                               ; preds = %26
  %46 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %47 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BFE_RX_RING_ALIGN, align 4
  %50 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %51 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %52 = load i32, i32* @BFE_RX_LIST_SIZE, align 4
  %53 = load i32, i32* @BFE_RX_LIST_SIZE, align 4
  %54 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %54, i32 0, i32 9
  %56 = call i32 @bus_dma_tag_create(i32 %48, i32 %49, i32 0, i32 %50, i32 %51, i32* null, i32* null, i32 %52, i32 1, i32 %53, i32 0, i32* null, i32* null, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %61 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %292

64:                                               ; preds = %45
  %65 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %65, i32 0, i32 14
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %69 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %70 = load i32, i32* @MCLBYTES, align 4
  %71 = load i32, i32* @BFE_MAXTXSEGS, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* @BFE_MAXTXSEGS, align 4
  %74 = load i32, i32* @MCLBYTES, align 4
  %75 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %76 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %75, i32 0, i32 4
  %77 = call i32 @bus_dma_tag_create(i32 %67, i32 1, i32 0, i32 %68, i32 %69, i32* null, i32* null, i32 %72, i32 %73, i32 %74, i32 0, i32* null, i32* null, i32* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %64
  %81 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %82 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %292

85:                                               ; preds = %64
  %86 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %86, i32 0, i32 14
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %90 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %91 = load i32, i32* @MCLBYTES, align 4
  %92 = load i32, i32* @MCLBYTES, align 4
  %93 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %94 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %93, i32 0, i32 1
  %95 = call i32 @bus_dma_tag_create(i32 %88, i32 1, i32 0, i32 %89, i32 %90, i32* null, i32* null, i32 %91, i32 1, i32 %92, i32 0, i32* null, i32* null, i32* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %100 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %292

103:                                              ; preds = %85
  %104 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %105 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %108 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %107, i32 0, i32 11
  %109 = bitcast i32* %108 to i8*
  %110 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %111 = load i32, i32* @BUS_DMA_ZERO, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %116 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %115, i32 0, i32 12
  %117 = call i32 @bus_dmamem_alloc(i32 %106, i8* %109, i32 %114, i32* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %103
  %121 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %122 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @device_printf(i32 %123, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %292

125:                                              ; preds = %103
  %126 = getelementptr inbounds %struct.bfe_dmamap_arg, %struct.bfe_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %128 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %127, i32 0, i32 13
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %131 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %134 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %133, i32 0, i32 11
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @BFE_TX_LIST_SIZE, align 4
  %137 = load i32, i32* @bfe_dma_map, align 4
  %138 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %139 = call i32 @bus_dmamap_load(i32 %129, i32 %132, i32 %135, i32 %136, i32 %137, %struct.bfe_dmamap_arg* %3, i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %125
  %143 = getelementptr inbounds %struct.bfe_dmamap_arg, %struct.bfe_dmamap_arg* %3, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %142, %125
  %147 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %148 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %292

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.bfe_dmamap_arg, %struct.bfe_dmamap_arg* %3, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i8* @BFE_ADDR_LO(i64 %153)
  %155 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %156 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %155, i32 0, i32 10
  store i8* %154, i8** %156, align 8
  %157 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %158 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %161 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %160, i32 0, i32 7
  %162 = bitcast i32* %161 to i8*
  %163 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %164 = load i32, i32* @BUS_DMA_ZERO, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %169 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %168, i32 0, i32 8
  %170 = call i32 @bus_dmamem_alloc(i32 %159, i8* %162, i32 %167, i32* %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %151
  %174 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %175 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @device_printf(i32 %176, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %292

178:                                              ; preds = %151
  %179 = getelementptr inbounds %struct.bfe_dmamap_arg, %struct.bfe_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %179, align 8
  %180 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %181 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %184 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %187 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @BFE_RX_LIST_SIZE, align 4
  %190 = load i32, i32* @bfe_dma_map, align 4
  %191 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %192 = call i32 @bus_dmamap_load(i32 %182, i32 %185, i32 %188, i32 %189, i32 %190, %struct.bfe_dmamap_arg* %3, i32 %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %178
  %196 = getelementptr inbounds %struct.bfe_dmamap_arg, %struct.bfe_dmamap_arg* %3, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %195, %178
  %200 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %201 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @device_printf(i32 %202, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %292

204:                                              ; preds = %195
  %205 = getelementptr inbounds %struct.bfe_dmamap_arg, %struct.bfe_dmamap_arg* %3, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i8* @BFE_ADDR_LO(i64 %206)
  %208 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %209 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %208, i32 0, i32 6
  store i8* %207, i8** %209, align 8
  store i32 0, i32* %7, align 4
  br label %210

210:                                              ; preds = %239, %204
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @BFE_TX_LIST_CNT, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %242

214:                                              ; preds = %210
  %215 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %216 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %215, i32 0, i32 5
  %217 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %217, i64 %219
  store %struct.bfe_tx_data* %220, %struct.bfe_tx_data** %5, align 8
  %221 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %5, align 8
  %222 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %221, i32 0, i32 1
  store i32* null, i32** %222, align 8
  %223 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %5, align 8
  %224 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %223, i32 0, i32 0
  store i32* null, i32** %224, align 8
  %225 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %226 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %5, align 8
  %229 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %228, i32 0, i32 0
  %230 = call i32 @bus_dmamap_create(i32 %227, i32 0, i32** %229)
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %214
  %234 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %235 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @device_printf(i32 %236, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %292

238:                                              ; preds = %214
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %7, align 4
  br label %210

242:                                              ; preds = %210
  %243 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %244 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %247 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %246, i32 0, i32 3
  %248 = call i32 @bus_dmamap_create(i32 %245, i32 0, i32** %247)
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %242
  %252 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %253 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @device_printf(i32 %254, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  br label %292

256:                                              ; preds = %242
  store i32 0, i32* %7, align 4
  br label %257

257:                                              ; preds = %288, %256
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @BFE_RX_LIST_CNT, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %291

261:                                              ; preds = %257
  %262 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %263 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %262, i32 0, i32 2
  %264 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %264, i64 %266
  store %struct.bfe_rx_data* %267, %struct.bfe_rx_data** %4, align 8
  %268 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %4, align 8
  %269 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %268, i32 0, i32 2
  store i32* null, i32** %269, align 8
  %270 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %4, align 8
  %271 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %270, i32 0, i32 0
  store i32* null, i32** %271, align 8
  %272 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %4, align 8
  %273 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %272, i32 0, i32 1
  store i64 0, i64* %273, align 8
  %274 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %275 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %4, align 8
  %278 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %277, i32 0, i32 0
  %279 = call i32 @bus_dmamap_create(i32 %276, i32 0, i32** %278)
  store i32 %279, i32* %6, align 4
  %280 = load i32, i32* %6, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %261
  %283 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %284 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @device_printf(i32 %285, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %292

287:                                              ; preds = %261
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %7, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %7, align 4
  br label %257

291:                                              ; preds = %257
  br label %292

292:                                              ; preds = %291, %282, %251, %233, %199, %173, %146, %120, %98, %80, %59, %40, %21
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8*, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.bfe_dmamap_arg*, i32) #1

declare dso_local i8* @BFE_ADDR_LO(i64) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
