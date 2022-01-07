; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, %struct.vte_rxdesc*, i32*, i32, %struct.vte_txdesc*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vte_rxdesc = type { i32*, i32* }
%struct.vte_txdesc = type { i32*, i32* }
%struct.vte_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not create parent DMA tag.\0A\00", align 1
@VTE_TX_RING_ALIGN = common dso_local global i32 0, align 4
@VTE_TX_RING_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not create TX ring DMA tag.\0A\00", align 1
@VTE_RX_RING_ALIGN = common dso_local global i32 0, align 4
@VTE_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"could not create RX ring DMA tag.\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for TX ring.\0A\00", align 1
@vte_dmamap_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for TX ring.\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for RX ring.\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for RX ring.\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"could not create parent buffer DMA tag.\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"could not create TX DMA tag.\0A\00", align 1
@VTE_RX_BUF_ALIGN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"could not create RX DMA tag.\0A\00", align 1
@VTE_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"could not create TX dmamap.\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"could not create spare RX dmamap.\0A\00", align 1
@VTE_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"could not create RX dmamap.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vte_softc*)* @vte_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vte_dma_alloc(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca %struct.vte_txdesc*, align 8
  %4 = alloca %struct.vte_rxdesc*, align 8
  %5 = alloca %struct.vte_dmamap_arg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %8 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bus_get_dma_tag(i32 %10)
  %12 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %16 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %17 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 14
  %19 = call i32 @bus_dma_tag_create(i32 %11, i32 1, i32 0, i32 %12, i32 %13, i32* null, i32* null, i32 %14, i32 0, i32 %15, i32 0, i32* null, i32* null, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %24 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %332

27:                                               ; preds = %1
  %28 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %29 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VTE_TX_RING_ALIGN, align 4
  %33 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* @VTE_TX_RING_SZ, align 4
  %36 = load i32, i32* @VTE_TX_RING_SZ, align 4
  %37 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %38 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 13
  %40 = call i32 @bus_dma_tag_create(i32 %31, i32 %32, i32 0, i32 %33, i32 %34, i32* null, i32* null, i32 %35, i32 1, i32 %36, i32 0, i32* null, i32* null, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %45 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %332

48:                                               ; preds = %27
  %49 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %50 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 14
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VTE_RX_RING_ALIGN, align 4
  %54 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %56 = load i32, i32* @VTE_RX_RING_SZ, align 4
  %57 = load i32, i32* @VTE_RX_RING_SZ, align 4
  %58 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %59 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 10
  %61 = call i32 @bus_dma_tag_create(i32 %52, i32 %53, i32 0, i32 %54, i32 %55, i32* null, i32* null, i32 %56, i32 1, i32 %57, i32 0, i32* null, i32* null, i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %66 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %332

69:                                               ; preds = %48
  %70 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %71 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 13
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %75 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 11
  %77 = bitcast i32* %76 to i8**
  %78 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %79 = load i32, i32* @BUS_DMA_ZERO, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %84 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 12
  %86 = call i32 @bus_dmamem_alloc(i32 %73, i8** %77, i32 %82, i32* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %69
  %90 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %91 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %332

94:                                               ; preds = %69
  %95 = getelementptr inbounds %struct.vte_dmamap_arg, %struct.vte_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %97 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %101 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 12
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %105 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @VTE_TX_RING_SZ, align 4
  %109 = load i32, i32* @vte_dmamap_cb, align 4
  %110 = call i32 @bus_dmamap_load(i32 %99, i32 %103, i32 %107, i32 %108, i32 %109, %struct.vte_dmamap_arg* %5, i32 0)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %94
  %114 = getelementptr inbounds %struct.vte_dmamap_arg, %struct.vte_dmamap_arg* %5, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113, %94
  %118 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %119 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %332

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.vte_dmamap_arg, %struct.vte_dmamap_arg* %5, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %126 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  %128 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %129 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %133 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 8
  %135 = bitcast i32* %134 to i8**
  %136 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %137 = load i32, i32* @BUS_DMA_ZERO, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %142 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 9
  %144 = call i32 @bus_dmamem_alloc(i32 %131, i8** %135, i32 %140, i32* %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %122
  %148 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %149 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %332

152:                                              ; preds = %122
  %153 = getelementptr inbounds %struct.vte_dmamap_arg, %struct.vte_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %153, align 8
  %154 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %155 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %159 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %163 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @VTE_RX_RING_SZ, align 4
  %167 = load i32, i32* @vte_dmamap_cb, align 4
  %168 = call i32 @bus_dmamap_load(i32 %157, i32 %161, i32 %165, i32 %166, i32 %167, %struct.vte_dmamap_arg* %5, i32 0)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %152
  %172 = getelementptr inbounds %struct.vte_dmamap_arg, %struct.vte_dmamap_arg* %5, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171, %152
  %176 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %177 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @device_printf(i32 %178, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %332

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.vte_dmamap_arg, %struct.vte_dmamap_arg* %5, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %184 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  store i64 %182, i64* %185, align 8
  %186 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %187 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @bus_get_dma_tag(i32 %188)
  %190 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %191 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %192 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %193 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %194 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %195 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 7
  %197 = call i32 @bus_dma_tag_create(i32 %189, i32 1, i32 0, i32 %190, i32 %191, i32* null, i32* null, i32 %192, i32 0, i32 %193, i32 0, i32* null, i32* null, i32* %196)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %180
  %201 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %202 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @device_printf(i32 %203, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %332

205:                                              ; preds = %180
  %206 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %207 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %211 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %212 = load i32, i32* @MCLBYTES, align 4
  %213 = load i32, i32* @MCLBYTES, align 4
  %214 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %215 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 5
  %217 = call i32 @bus_dma_tag_create(i32 %209, i32 1, i32 0, i32 %210, i32 %211, i32* null, i32* null, i32 %212, i32 1, i32 %213, i32 0, i32* null, i32* null, i32* %216)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %205
  %221 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %222 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @device_printf(i32 %223, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %332

225:                                              ; preds = %205
  %226 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %227 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @VTE_RX_BUF_ALIGN, align 4
  %231 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %232 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %233 = load i32, i32* @MCLBYTES, align 4
  %234 = load i32, i32* @MCLBYTES, align 4
  %235 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %236 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 2
  %238 = call i32 @bus_dma_tag_create(i32 %229, i32 %230, i32 0, i32 %231, i32 %232, i32* null, i32* null, i32 %233, i32 1, i32 %234, i32 0, i32* null, i32* null, i32* %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %225
  %242 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %243 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @device_printf(i32 %244, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %332

246:                                              ; preds = %225
  store i32 0, i32* %7, align 4
  br label %247

247:                                              ; preds = %278, %246
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* @VTE_TX_RING_CNT, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %281

251:                                              ; preds = %247
  %252 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %253 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 6
  %255 = load %struct.vte_txdesc*, %struct.vte_txdesc** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %255, i64 %257
  store %struct.vte_txdesc* %258, %struct.vte_txdesc** %3, align 8
  %259 = load %struct.vte_txdesc*, %struct.vte_txdesc** %3, align 8
  %260 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %259, i32 0, i32 1
  store i32* null, i32** %260, align 8
  %261 = load %struct.vte_txdesc*, %struct.vte_txdesc** %3, align 8
  %262 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %261, i32 0, i32 0
  store i32* null, i32** %262, align 8
  %263 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %264 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.vte_txdesc*, %struct.vte_txdesc** %3, align 8
  %268 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %267, i32 0, i32 0
  %269 = call i32 @bus_dmamap_create(i32 %266, i32 0, i32** %268)
  store i32 %269, i32* %6, align 4
  %270 = load i32, i32* %6, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %251
  %273 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %274 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @device_printf(i32 %275, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %332

277:                                              ; preds = %251
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %7, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %7, align 4
  br label %247

281:                                              ; preds = %247
  %282 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %283 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %287 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 4
  %289 = call i32 @bus_dmamap_create(i32 %285, i32 0, i32** %288)
  store i32 %289, i32* %6, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %281
  %292 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %293 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @device_printf(i32 %294, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %332

296:                                              ; preds = %281
  store i32 0, i32* %7, align 4
  br label %297

297:                                              ; preds = %328, %296
  %298 = load i32, i32* %7, align 4
  %299 = load i32, i32* @VTE_RX_RING_CNT, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %331

301:                                              ; preds = %297
  %302 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %303 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 3
  %305 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %304, align 8
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %305, i64 %307
  store %struct.vte_rxdesc* %308, %struct.vte_rxdesc** %4, align 8
  %309 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %310 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %309, i32 0, i32 1
  store i32* null, i32** %310, align 8
  %311 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %312 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %311, i32 0, i32 0
  store i32* null, i32** %312, align 8
  %313 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %314 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %318 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %317, i32 0, i32 0
  %319 = call i32 @bus_dmamap_create(i32 %316, i32 0, i32** %318)
  store i32 %319, i32* %6, align 4
  %320 = load i32, i32* %6, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %301
  %323 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %324 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @device_printf(i32 %325, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %332

327:                                              ; preds = %301
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %7, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %7, align 4
  br label %297

331:                                              ; preds = %297
  br label %332

332:                                              ; preds = %331, %322, %291, %272, %241, %220, %200, %175, %147, %117, %89, %64, %43, %22
  %333 = load i32, i32* %6, align 4
  ret i32 %333
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.vte_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
