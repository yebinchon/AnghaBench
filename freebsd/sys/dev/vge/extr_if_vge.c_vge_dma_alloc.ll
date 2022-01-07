; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.vge_rxdesc*, i32*, i32, %struct.vge_txdesc*, i32, i32, i32, i32, i32, i32 }
%struct.vge_rxdesc = type { i32*, i32* }
%struct.vge_txdesc = type { i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }
%struct.vge_dmamap_arg = type { i64 }

@VGE_FLAG_PCIE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not create parent DMA tag.\0A\00", align 1
@VGE_TX_RING_ALIGN = common dso_local global i32 0, align 4
@VGE_TX_LIST_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not allocate Tx ring DMA tag.\0A\00", align 1
@VGE_RX_RING_ALIGN = common dso_local global i32 0, align 4
@VGE_RX_LIST_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"could not allocate Rx ring DMA tag.\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Tx ring.\0A\00", align 1
@vge_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for Tx ring.\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Rx ring.\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for Rx ring.\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"4GB boundary crossed, switching to 32bit DMA address mode.\0A\00", align 1
@VGE_BUF_DMA_MAXADDR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"could not create parent buffer DMA tag.\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@VGE_MAXTXSEGS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"could not create Tx DMA tag.\0A\00", align 1
@VGE_RX_BUF_ALIGN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"could not create Rx DMA tag.\0A\00", align 1
@VGE_TX_DESC_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"could not create Tx dmamap.\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"could not create spare Rx dmamap.\0A\00", align 1
@VGE_RX_DESC_CNT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"could not create Rx dmamap.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vge_softc*)* @vge_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vge_dma_alloc(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca %struct.vge_dmamap_arg, align 8
  %4 = alloca %struct.vge_txdesc*, align 8
  %5 = alloca %struct.vge_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %11 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VGE_FLAG_PCIE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  store i32 %18, i32* %6, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %244, %21
  %23 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %24 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bus_get_dma_tag(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %29 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %30 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %31 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 10
  %34 = call i32 @bus_dma_tag_create(i32 %26, i32 1, i32 0, i32 %27, i32 %28, i32* null, i32* null, i32 %29, i32 0, i32 %30, i32 0, i32* null, i32* null, i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %39 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %413

42:                                               ; preds = %22
  %43 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %44 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VGE_TX_RING_ALIGN, align 4
  %48 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %49 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %50 = load i32, i32* @VGE_TX_LIST_SZ, align 4
  %51 = load i32, i32* @VGE_TX_LIST_SZ, align 4
  %52 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %53 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 9
  %55 = call i32 @bus_dma_tag_create(i32 %46, i32 %47, i32 0, i32 %48, i32 %49, i32* null, i32* null, i32 %50, i32 1, i32 %51, i32 0, i32* null, i32* null, i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %42
  %59 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %60 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %413

63:                                               ; preds = %42
  %64 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %65 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VGE_RX_RING_ALIGN, align 4
  %69 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %70 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %71 = load i32, i32* @VGE_RX_LIST_SZ, align 4
  %72 = load i32, i32* @VGE_RX_LIST_SZ, align 4
  %73 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %74 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 7
  %76 = call i32 @bus_dma_tag_create(i32 %67, i32 %68, i32 0, i32 %69, i32 %70, i32* null, i32* null, i32 %71, i32 1, i32 %72, i32 0, i32* null, i32* null, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %63
  %80 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %81 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %413

84:                                               ; preds = %63
  %85 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %86 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %90 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = bitcast i32* %91 to i8**
  %93 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %94 = load i32, i32* @BUS_DMA_ZERO, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %99 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 8
  %101 = call i32 @bus_dmamem_alloc(i32 %88, i8** %92, i32 %97, i32* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %84
  %105 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %106 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %413

109:                                              ; preds = %84
  %110 = getelementptr inbounds %struct.vge_dmamap_arg, %struct.vge_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %112 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %116 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %120 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @VGE_TX_LIST_SZ, align 4
  %124 = load i32, i32* @vge_dmamap_cb, align 4
  %125 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %126 = call i32 @bus_dmamap_load(i32 %114, i32 %118, i32 %122, i32 %123, i32 %124, %struct.vge_dmamap_arg* %3, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %109
  %130 = getelementptr inbounds %struct.vge_dmamap_arg, %struct.vge_dmamap_arg* %3, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129, %109
  %134 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %135 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @device_printf(i32 %136, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %413

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.vge_dmamap_arg, %struct.vge_dmamap_arg* %3, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %142 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  %144 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %145 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %149 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = bitcast i32* %150 to i8**
  %152 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %153 = load i32, i32* @BUS_DMA_ZERO, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %158 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 6
  %160 = call i32 @bus_dmamem_alloc(i32 %147, i8** %151, i32 %156, i32* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %138
  %164 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %165 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %413

168:                                              ; preds = %138
  %169 = getelementptr inbounds %struct.vge_dmamap_arg, %struct.vge_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %169, align 8
  %170 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %171 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %175 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %179 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @VGE_RX_LIST_SZ, align 4
  %183 = load i32, i32* @vge_dmamap_cb, align 4
  %184 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %185 = call i32 @bus_dmamap_load(i32 %173, i32 %177, i32 %181, i32 %182, i32 %183, %struct.vge_dmamap_arg* %3, i32 %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %168
  %189 = getelementptr inbounds %struct.vge_dmamap_arg, %struct.vge_dmamap_arg* %3, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188, %168
  %193 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %194 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @device_printf(i32 %195, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %413

197:                                              ; preds = %188
  %198 = getelementptr inbounds %struct.vge_dmamap_arg, %struct.vge_dmamap_arg* %3, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %201 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  store i64 %199, i64* %202, align 8
  %203 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %204 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @VGE_TX_LIST_SZ, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %206, %208
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %7, align 4
  %211 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %212 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* @VGE_RX_LIST_SZ, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %214, %216
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %7, align 4
  %220 = call i64 @VGE_ADDR_HI(i32 %219)
  %221 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %222 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i64 @VGE_ADDR_HI(i32 %225)
  %227 = icmp ne i64 %220, %226
  br i1 %227, label %244, label %228

228:                                              ; preds = %197
  %229 = load i32, i32* %8, align 4
  %230 = call i64 @VGE_ADDR_HI(i32 %229)
  %231 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %232 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i64 @VGE_ADDR_HI(i32 %235)
  %237 = icmp ne i64 %230, %236
  br i1 %237, label %244, label %238

238:                                              ; preds = %228
  %239 = load i32, i32* %7, align 4
  %240 = call i64 @VGE_ADDR_HI(i32 %239)
  %241 = load i32, i32* %8, align 4
  %242 = call i64 @VGE_ADDR_HI(i32 %241)
  %243 = icmp ne i64 %240, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %238, %228, %197
  %245 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %246 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @device_printf(i32 %247, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %249 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %250 = call i32 @vge_dma_free(%struct.vge_softc* %249)
  %251 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  store i32 %251, i32* %6, align 4
  br label %22

252:                                              ; preds = %238
  %253 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %254 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @VGE_FLAG_PCIE, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = load i32, i32* @VGE_BUF_DMA_MAXADDR, align 4
  store i32 %260, i32* %6, align 4
  br label %263

261:                                              ; preds = %252
  %262 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  store i32 %262, i32* %6, align 4
  br label %263

263:                                              ; preds = %261, %259
  %264 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %265 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @bus_get_dma_tag(i32 %266)
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %270 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %271 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %272 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %273 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 5
  %275 = call i32 @bus_dma_tag_create(i32 %267, i32 1, i32 0, i32 %268, i32 %269, i32* null, i32* null, i32 %270, i32 0, i32 %271, i32 0, i32* null, i32* null, i32* %274)
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %9, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %263
  %279 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %280 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @device_printf(i32 %281, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %413

283:                                              ; preds = %263
  %284 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %285 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %289 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %290 = load i32, i32* @MCLBYTES, align 4
  %291 = load i32, i32* @VGE_MAXTXSEGS, align 4
  %292 = mul nsw i32 %290, %291
  %293 = load i32, i32* @VGE_MAXTXSEGS, align 4
  %294 = load i32, i32* @MCLBYTES, align 4
  %295 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %296 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 3
  %298 = call i32 @bus_dma_tag_create(i32 %287, i32 1, i32 0, i32 %288, i32 %289, i32* null, i32* null, i32 %292, i32 %293, i32 %294, i32 0, i32* null, i32* null, i32* %297)
  store i32 %298, i32* %9, align 4
  %299 = load i32, i32* %9, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %283
  %302 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %303 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @device_printf(i32 %304, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %413

306:                                              ; preds = %283
  %307 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %308 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @VGE_RX_BUF_ALIGN, align 4
  %312 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %313 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %314 = load i32, i32* @MCLBYTES, align 4
  %315 = load i32, i32* @MCLBYTES, align 4
  %316 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %317 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = call i32 @bus_dma_tag_create(i32 %310, i32 %311, i32 0, i32 %312, i32 %313, i32* null, i32* null, i32 %314, i32 1, i32 %315, i32 0, i32* null, i32* null, i32* %318)
  store i32 %319, i32* %9, align 4
  %320 = load i32, i32* %9, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %306
  %323 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %324 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @device_printf(i32 %325, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %413

327:                                              ; preds = %306
  store i32 0, i32* %10, align 4
  br label %328

328:                                              ; preds = %359, %327
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* @VGE_TX_DESC_CNT, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %362

332:                                              ; preds = %328
  %333 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %334 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 4
  %336 = load %struct.vge_txdesc*, %struct.vge_txdesc** %335, align 8
  %337 = load i32, i32* %10, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %336, i64 %338
  store %struct.vge_txdesc* %339, %struct.vge_txdesc** %4, align 8
  %340 = load %struct.vge_txdesc*, %struct.vge_txdesc** %4, align 8
  %341 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %340, i32 0, i32 1
  store i32* null, i32** %341, align 8
  %342 = load %struct.vge_txdesc*, %struct.vge_txdesc** %4, align 8
  %343 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %342, i32 0, i32 0
  store i32* null, i32** %343, align 8
  %344 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %345 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.vge_txdesc*, %struct.vge_txdesc** %4, align 8
  %349 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %348, i32 0, i32 0
  %350 = call i32 @bus_dmamap_create(i32 %347, i32 0, i32** %349)
  store i32 %350, i32* %9, align 4
  %351 = load i32, i32* %9, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %332
  %354 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %355 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @device_printf(i32 %356, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %413

358:                                              ; preds = %332
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %10, align 4
  br label %328

362:                                              ; preds = %328
  %363 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %364 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %368 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 2
  %370 = call i32 @bus_dmamap_create(i32 %366, i32 0, i32** %369)
  store i32 %370, i32* %9, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %362
  %373 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %374 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @device_printf(i32 %375, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %413

377:                                              ; preds = %362
  store i32 0, i32* %10, align 4
  br label %378

378:                                              ; preds = %409, %377
  %379 = load i32, i32* %10, align 4
  %380 = load i32, i32* @VGE_RX_DESC_CNT, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %412

382:                                              ; preds = %378
  %383 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %384 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %385, align 8
  %387 = load i32, i32* %10, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %386, i64 %388
  store %struct.vge_rxdesc* %389, %struct.vge_rxdesc** %5, align 8
  %390 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %5, align 8
  %391 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %390, i32 0, i32 1
  store i32* null, i32** %391, align 8
  %392 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %5, align 8
  %393 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %392, i32 0, i32 0
  store i32* null, i32** %393, align 8
  %394 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %395 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %5, align 8
  %399 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %398, i32 0, i32 0
  %400 = call i32 @bus_dmamap_create(i32 %397, i32 0, i32** %399)
  store i32 %400, i32* %9, align 4
  %401 = load i32, i32* %9, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %382
  %404 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %405 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @device_printf(i32 %406, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %413

408:                                              ; preds = %382
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %10, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %10, align 4
  br label %378

412:                                              ; preds = %378
  br label %413

413:                                              ; preds = %412, %403, %372, %353, %322, %301, %278, %192, %163, %133, %104, %79, %58, %37
  %414 = load i32, i32* %9, align 4
  ret i32 %414
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.vge_dmamap_arg*, i32) #1

declare dso_local i64 @VGE_ADDR_HI(i32) #1

declare dso_local i32 @vge_dma_free(%struct.vge_softc*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
