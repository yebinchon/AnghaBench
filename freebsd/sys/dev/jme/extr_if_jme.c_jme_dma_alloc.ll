; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.jme_rxdesc*, i32*, i32, %struct.jme_txdesc*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.jme_rxdesc = type { i32*, i32* }
%struct.jme_txdesc = type { i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32, i32 }
%struct.jme_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR = common dso_local global i64 0, align 8
@JME_FLAG_DMA32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"could not create parent ring DMA tag.\0A\00", align 1
@JME_TX_RING_ALIGN = common dso_local global i32 0, align 4
@JME_TX_RING_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"could not allocate Tx ring DMA tag.\0A\00", align 1
@JME_RX_RING_ALIGN = common dso_local global i32 0, align 4
@JME_RX_RING_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"could not allocate Rx ring DMA tag.\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Tx ring.\0A\00", align 1
@jme_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for Tx ring.\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Rx ring.\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for Rx ring.\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"4GB boundary crossed, switching to 32bit DMA address mode.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"could not create parent buffer DMA tag.\0A\00", align 1
@JME_SSB_ALIGN = common dso_local global i32 0, align 4
@JME_SSB_SIZE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [47 x i8] c"could not create shared status block DMA tag.\0A\00", align 1
@JME_TSO_MAXSIZE = common dso_local global i64 0, align 8
@JME_MAXTXSEGS = common dso_local global i32 0, align 4
@JME_TSO_MAXSEGSIZE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"could not create Tx DMA tag.\0A\00", align 1
@JME_RX_BUF_ALIGN = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"could not create Rx DMA tag.\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"could not allocate DMA'able memory for shared status block.\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"could not load DMA'able memory for shared status block.\0A\00", align 1
@JME_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"could not create Tx dmamap.\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"could not create spare Rx dmamap.\0A\00", align 1
@JME_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"could not create Rx dmamap.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_softc*)* @jme_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_dma_alloc(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca %struct.jme_dmamap_arg, align 8
  %4 = alloca %struct.jme_txdesc*, align 8
  %5 = alloca %struct.jme_rxdesc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %11 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %13 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @JME_FLAG_DMA32BIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %18, %1
  br label %21

21:                                               ; preds = %235, %20
  %22 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %23 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bus_get_dma_tag(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %28 = load i64, i64* @BUS_SPACE_MAXSIZE_32BIT, align 8
  %29 = load i64, i64* @BUS_SPACE_MAXSIZE_32BIT, align 8
  %30 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %31 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 12
  %33 = call i32 @bus_dma_tag_create(i32 %25, i32 1, i32 0, i64 %26, i64 %27, i32* null, i32* null, i64 %28, i32 0, i64 %29, i32 0, i32* null, i32* null, i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %38 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %482

41:                                               ; preds = %21
  %42 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %43 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @JME_TX_RING_ALIGN, align 4
  %47 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %48 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %49 = load i64, i64* @JME_TX_RING_SIZE, align 8
  %50 = load i64, i64* @JME_TX_RING_SIZE, align 8
  %51 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %52 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 11
  %54 = call i32 @bus_dma_tag_create(i32 %45, i32 %46, i32 0, i64 %47, i64 %48, i32* null, i32* null, i64 %49, i32 1, i64 %50, i32 0, i32* null, i32* null, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %41
  %58 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %59 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %482

62:                                               ; preds = %41
  %63 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %64 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @JME_RX_RING_ALIGN, align 4
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %70 = load i64, i64* @JME_RX_RING_SIZE, align 8
  %71 = load i64, i64* @JME_RX_RING_SIZE, align 8
  %72 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %73 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 9
  %75 = call i32 @bus_dma_tag_create(i32 %66, i32 %67, i32 0, i64 %68, i64 %69, i32* null, i32* null, i64 %70, i32 1, i64 %71, i32 0, i32* null, i32* null, i32* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %62
  %79 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %80 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %482

83:                                               ; preds = %62
  %84 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %85 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %89 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  %91 = bitcast i32* %90 to i8**
  %92 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %93 = load i32, i32* @BUS_DMA_ZERO, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %98 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 10
  %100 = call i32 @bus_dmamem_alloc(i32 %87, i8** %91, i32 %96, i32* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %83
  %104 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %105 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @device_printf(i32 %106, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %482

108:                                              ; preds = %83
  %109 = getelementptr inbounds %struct.jme_dmamap_arg, %struct.jme_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %111 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %115 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %119 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* @JME_TX_RING_SIZE, align 8
  %123 = load i32, i32* @jme_dmamap_cb, align 4
  %124 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %125 = call i32 @bus_dmamap_load(i32 %113, i32 %117, i32 %121, i64 %122, i32 %123, %struct.jme_dmamap_arg* %3, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %108
  %129 = getelementptr inbounds %struct.jme_dmamap_arg, %struct.jme_dmamap_arg* %3, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128, %108
  %133 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %134 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %482

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.jme_dmamap_arg, %struct.jme_dmamap_arg* %3, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %141 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  %143 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %144 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %148 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  %150 = bitcast i32* %149 to i8**
  %151 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %152 = load i32, i32* @BUS_DMA_ZERO, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %157 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 8
  %159 = call i32 @bus_dmamem_alloc(i32 %146, i8** %150, i32 %155, i32* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %137
  %163 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %164 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @device_printf(i32 %165, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %482

167:                                              ; preds = %137
  %168 = getelementptr inbounds %struct.jme_dmamap_arg, %struct.jme_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %170 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %174 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %178 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load i64, i64* @JME_RX_RING_SIZE, align 8
  %182 = load i32, i32* @jme_dmamap_cb, align 4
  %183 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %184 = call i32 @bus_dmamap_load(i32 %172, i32 %176, i32 %180, i64 %181, i32 %182, %struct.jme_dmamap_arg* %3, i32 %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %167
  %188 = getelementptr inbounds %struct.jme_dmamap_arg, %struct.jme_dmamap_arg* %3, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %187, %167
  %192 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %193 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @device_printf(i32 %194, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %482

196:                                              ; preds = %187
  %197 = getelementptr inbounds %struct.jme_dmamap_arg, %struct.jme_dmamap_arg* %3, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %200 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  store i64 %198, i64* %201, align 8
  %202 = load i64, i64* %6, align 8
  %203 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %244

205:                                              ; preds = %196
  %206 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %207 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @JME_TX_RING_SIZE, align 8
  %211 = add nsw i64 %209, %210
  store i64 %211, i64* %8, align 8
  %212 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %213 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @JME_RX_RING_SIZE, align 8
  %217 = add nsw i64 %215, %216
  store i64 %217, i64* %7, align 8
  %218 = load i64, i64* %8, align 8
  %219 = call i64 @JME_ADDR_HI(i64 %218)
  %220 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %221 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i64 @JME_ADDR_HI(i64 %223)
  %225 = icmp ne i64 %219, %224
  br i1 %225, label %235, label %226

226:                                              ; preds = %205
  %227 = load i64, i64* %7, align 8
  %228 = call i64 @JME_ADDR_HI(i64 %227)
  %229 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %230 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = call i64 @JME_ADDR_HI(i64 %232)
  %234 = icmp ne i64 %228, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %226, %205
  %236 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %237 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @device_printf(i32 %238, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %240 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %241 = call i32 @jme_dma_free(%struct.jme_softc* %240)
  %242 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  store i64 %242, i64* %6, align 8
  br label %21

243:                                              ; preds = %226
  br label %244

244:                                              ; preds = %243, %196
  %245 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  store i64 %245, i64* %6, align 8
  %246 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %247 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @JME_FLAG_DMA32BIT, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %244
  %253 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  store i64 %253, i64* %6, align 8
  br label %254

254:                                              ; preds = %252, %244
  %255 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %256 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @bus_get_dma_tag(i32 %257)
  %259 = load i64, i64* %6, align 8
  %260 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %261 = load i64, i64* @BUS_SPACE_MAXSIZE_32BIT, align 8
  %262 = load i64, i64* @BUS_SPACE_MAXSIZE_32BIT, align 8
  %263 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %264 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 7
  %266 = call i32 @bus_dma_tag_create(i32 %258, i32 1, i32 0, i64 %259, i64 %260, i32* null, i32* null, i64 %261, i32 0, i64 %262, i32 0, i32* null, i32* null, i32* %265)
  store i32 %266, i32* %9, align 4
  %267 = load i32, i32* %9, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %254
  %270 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %271 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @device_printf(i32 %272, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %482

274:                                              ; preds = %254
  %275 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %276 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 7
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @JME_SSB_ALIGN, align 4
  %280 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %281 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %282 = load i64, i64* @JME_SSB_SIZE, align 8
  %283 = load i64, i64* @JME_SSB_SIZE, align 8
  %284 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %285 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 6
  %287 = call i32 @bus_dma_tag_create(i32 %278, i32 %279, i32 0, i64 %280, i64 %281, i32* null, i32* null, i64 %282, i32 1, i64 %283, i32 0, i32* null, i32* null, i32* %286)
  store i32 %287, i32* %9, align 4
  %288 = load i32, i32* %9, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %274
  %291 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %292 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @device_printf(i32 %293, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  br label %482

295:                                              ; preds = %274
  %296 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %297 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 8
  %300 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %301 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %302 = load i64, i64* @JME_TSO_MAXSIZE, align 8
  %303 = load i32, i32* @JME_MAXTXSEGS, align 4
  %304 = load i64, i64* @JME_TSO_MAXSEGSIZE, align 8
  %305 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %306 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 3
  %308 = call i32 @bus_dma_tag_create(i32 %299, i32 1, i32 0, i64 %300, i64 %301, i32* null, i32* null, i64 %302, i32 %303, i64 %304, i32 0, i32* null, i32* null, i32* %307)
  store i32 %308, i32* %9, align 4
  %309 = load i32, i32* %9, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %295
  %312 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %313 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @device_printf(i32 %314, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %482

316:                                              ; preds = %295
  %317 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %318 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @JME_RX_BUF_ALIGN, align 4
  %322 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %323 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %324 = load i64, i64* @MCLBYTES, align 8
  %325 = load i64, i64* @MCLBYTES, align 8
  %326 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %327 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 0
  %329 = call i32 @bus_dma_tag_create(i32 %320, i32 %321, i32 0, i64 %322, i64 %323, i32* null, i32* null, i64 %324, i32 1, i64 %325, i32 0, i32* null, i32* null, i32* %328)
  store i32 %329, i32* %9, align 4
  %330 = load i32, i32* %9, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %316
  %333 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %334 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @device_printf(i32 %335, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %482

337:                                              ; preds = %316
  %338 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %339 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %343 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 3
  %345 = bitcast i32* %344 to i8**
  %346 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %347 = load i32, i32* @BUS_DMA_ZERO, align 4
  %348 = or i32 %346, %347
  %349 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %350 = or i32 %348, %349
  %351 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %352 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 5
  %354 = call i32 @bus_dmamem_alloc(i32 %341, i8** %345, i32 %350, i32* %353)
  store i32 %354, i32* %9, align 4
  %355 = load i32, i32* %9, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %337
  %358 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %359 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @device_printf(i32 %360, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0))
  br label %482

362:                                              ; preds = %337
  %363 = getelementptr inbounds %struct.jme_dmamap_arg, %struct.jme_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %363, align 8
  %364 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %365 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %369 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 5
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %373 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %372, i32 0, i32 3
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 8
  %376 = load i64, i64* @JME_SSB_SIZE, align 8
  %377 = load i32, i32* @jme_dmamap_cb, align 4
  %378 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %379 = call i32 @bus_dmamap_load(i32 %367, i32 %371, i32 %375, i64 %376, i32 %377, %struct.jme_dmamap_arg* %3, i32 %378)
  store i32 %379, i32* %9, align 4
  %380 = load i32, i32* %9, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %362
  %383 = getelementptr inbounds %struct.jme_dmamap_arg, %struct.jme_dmamap_arg* %3, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %382, %362
  %387 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %388 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @device_printf(i32 %389, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0))
  br label %482

391:                                              ; preds = %382
  %392 = getelementptr inbounds %struct.jme_dmamap_arg, %struct.jme_dmamap_arg* %3, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %395 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %394, i32 0, i32 3
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 2
  store i64 %393, i64* %396, align 8
  store i32 0, i32* %10, align 4
  br label %397

397:                                              ; preds = %428, %391
  %398 = load i32, i32* %10, align 4
  %399 = load i32, i32* @JME_TX_RING_CNT, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %431

401:                                              ; preds = %397
  %402 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %403 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 4
  %405 = load %struct.jme_txdesc*, %struct.jme_txdesc** %404, align 8
  %406 = load i32, i32* %10, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %405, i64 %407
  store %struct.jme_txdesc* %408, %struct.jme_txdesc** %4, align 8
  %409 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %410 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %409, i32 0, i32 1
  store i32* null, i32** %410, align 8
  %411 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %412 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %411, i32 0, i32 0
  store i32* null, i32** %412, align 8
  %413 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %414 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %413, i32 0, i32 2
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %418 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %417, i32 0, i32 0
  %419 = call i32 @bus_dmamap_create(i32 %416, i32 0, i32** %418)
  store i32 %419, i32* %9, align 4
  %420 = load i32, i32* %9, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %427

422:                                              ; preds = %401
  %423 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %424 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @device_printf(i32 %425, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  br label %482

427:                                              ; preds = %401
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %10, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %10, align 4
  br label %397

431:                                              ; preds = %397
  %432 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %433 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %437 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 2
  %439 = call i32 @bus_dmamap_create(i32 %435, i32 0, i32** %438)
  store i32 %439, i32* %9, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %431
  %442 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %443 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @device_printf(i32 %444, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  br label %482

446:                                              ; preds = %431
  store i32 0, i32* %10, align 4
  br label %447

447:                                              ; preds = %478, %446
  %448 = load i32, i32* %10, align 4
  %449 = load i32, i32* @JME_RX_RING_CNT, align 4
  %450 = icmp slt i32 %448, %449
  br i1 %450, label %451, label %481

451:                                              ; preds = %447
  %452 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %453 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %452, i32 0, i32 2
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 1
  %455 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %454, align 8
  %456 = load i32, i32* %10, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %455, i64 %457
  store %struct.jme_rxdesc* %458, %struct.jme_rxdesc** %5, align 8
  %459 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %460 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %459, i32 0, i32 1
  store i32* null, i32** %460, align 8
  %461 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %462 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %461, i32 0, i32 0
  store i32* null, i32** %462, align 8
  %463 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %464 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %468 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %467, i32 0, i32 0
  %469 = call i32 @bus_dmamap_create(i32 %466, i32 0, i32** %468)
  store i32 %469, i32* %9, align 4
  %470 = load i32, i32* %9, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %477

472:                                              ; preds = %451
  %473 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %474 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @device_printf(i32 %475, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %482

477:                                              ; preds = %451
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %10, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %10, align 4
  br label %447

481:                                              ; preds = %447
  br label %482

482:                                              ; preds = %481, %472, %441, %422, %386, %357, %332, %311, %290, %269, %191, %162, %132, %103, %78, %57, %36
  %483 = load i32, i32* %9, align 4
  ret i32 %483
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i64, i64, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i64, i32, %struct.jme_dmamap_arg*, i32) #1

declare dso_local i64 @JME_ADDR_HI(i64) #1

declare dso_local i32 @jme_dma_free(%struct.jme_softc*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
