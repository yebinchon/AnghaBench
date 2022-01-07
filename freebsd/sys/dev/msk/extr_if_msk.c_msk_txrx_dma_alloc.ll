; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_txrx_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_txrx_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, %struct.msk_rxdesc*, i32*, i32, %struct.msk_txdesc*, i32, i32, i32, i32, i32 }
%struct.msk_rxdesc = type { i32*, i32* }
%struct.msk_txdesc = type { i32*, i32* }
%struct.TYPE_4__ = type { i64, i32, i64, i32 }
%struct.msk_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to create parent DMA tag\0A\00", align 1
@MSK_RING_ALIGN = common dso_local global i32 0, align 4
@MSK_TX_RING_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create Tx ring DMA tag\0A\00", align 1
@MSK_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create Rx ring DMA tag\0A\00", align 1
@MSK_TSO_MAXSIZE = common dso_local global i32 0, align 4
@MSK_MAXTXSEGS = common dso_local global i32 0, align 4
@MSK_TSO_MAXSGSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to create Tx DMA tag\0A\00", align 1
@MSK_FLAG_RAMBUF = common dso_local global i32 0, align 4
@MSK_RX_BUF_ALIGN = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create Rx DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Tx ring\0A\00", align 1
@msk_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Tx ring\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Rx ring\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Rx ring\0A\00", align 1
@MSK_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to create Tx dmamap\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to create spare Rx dmamap\0A\00", align 1
@MSK_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"failed to create Rx dmamap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msk_if_softc*)* @msk_txrx_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_txrx_dma_alloc(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_dmamap_arg, align 8
  %4 = alloca %struct.msk_txdesc*, align 8
  %5 = alloca %struct.msk_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %9 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %10 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bus_get_dma_tag(i32 %11)
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %16 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %17 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %18 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 9
  %20 = call i32 @bus_dma_tag_create(i32 %12, i32 1, i32 0, i32 %13, i32 %14, i32* null, i32* null, i32 %15, i32 0, i32 %16, i32 0, i32* null, i32* null, i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %25 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %317

28:                                               ; preds = %1
  %29 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %30 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MSK_RING_ALIGN, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %36 = load i32, i32* @MSK_TX_RING_SZ, align 4
  %37 = load i32, i32* @MSK_TX_RING_SZ, align 4
  %38 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %39 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 8
  %41 = call i32 @bus_dma_tag_create(i32 %32, i32 %33, i32 0, i32 %34, i32 %35, i32* null, i32* null, i32 %36, i32 1, i32 %37, i32 0, i32* null, i32* null, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %46 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %317

49:                                               ; preds = %28
  %50 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %51 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MSK_RING_ALIGN, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %56 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %57 = load i32, i32* @MSK_RX_RING_SZ, align 4
  %58 = load i32, i32* @MSK_RX_RING_SZ, align 4
  %59 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %60 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  %62 = call i32 @bus_dma_tag_create(i32 %53, i32 %54, i32 0, i32 %55, i32 %56, i32* null, i32* null, i32 %57, i32 1, i32 %58, i32 0, i32* null, i32* null, i32* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %67 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %317

70:                                               ; preds = %49
  %71 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %72 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %76 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %77 = load i32, i32* @MSK_TSO_MAXSIZE, align 4
  %78 = load i32, i32* @MSK_MAXTXSEGS, align 4
  %79 = load i32, i32* @MSK_TSO_MAXSGSIZE, align 4
  %80 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %81 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = call i32 @bus_dma_tag_create(i32 %74, i32 1, i32 0, i32 %75, i32 %76, i32* null, i32* null, i32 %77, i32 %78, i32 %79, i32 0, i32* null, i32* null, i32* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %70
  %87 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %88 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %317

91:                                               ; preds = %70
  store i32 1, i32* %6, align 4
  %92 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %93 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MSK_FLAG_RAMBUF, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @MSK_RX_BUF_ALIGN, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %91
  %101 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %102 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %107 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %108 = load i32, i32* @MCLBYTES, align 4
  %109 = load i32, i32* @MCLBYTES, align 4
  %110 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %111 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = call i32 @bus_dma_tag_create(i32 %104, i32 %105, i32 0, i32 %106, i32 %107, i32* null, i32* null, i32 %108, i32 1, i32 %109, i32 0, i32* null, i32* null, i32* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %100
  %117 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %118 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %317

121:                                              ; preds = %100
  %122 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %123 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %127 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = bitcast i32* %128 to i8**
  %130 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %131 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @BUS_DMA_ZERO, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %136 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 7
  %138 = call i32 @bus_dmamem_alloc(i32 %125, i8** %129, i32 %134, i32* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %121
  %142 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %143 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @device_printf(i32 %144, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %317

146:                                              ; preds = %121
  %147 = getelementptr inbounds %struct.msk_dmamap_arg, %struct.msk_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %147, align 8
  %148 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %149 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %153 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %157 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @MSK_TX_RING_SZ, align 4
  %161 = load i32, i32* @msk_dmamap_cb, align 4
  %162 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %163 = call i32 @bus_dmamap_load(i32 %151, i32 %155, i32 %159, i32 %160, i32 %161, %struct.msk_dmamap_arg* %3, i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %146
  %167 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %168 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @device_printf(i32 %169, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %317

171:                                              ; preds = %146
  %172 = getelementptr inbounds %struct.msk_dmamap_arg, %struct.msk_dmamap_arg* %3, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %175 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  store i64 %173, i64* %176, align 8
  %177 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %178 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %182 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = bitcast i32* %183 to i8**
  %185 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %186 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @BUS_DMA_ZERO, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %191 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 5
  %193 = call i32 @bus_dmamem_alloc(i32 %180, i8** %184, i32 %189, i32* %192)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %171
  %197 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %198 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @device_printf(i32 %199, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %317

201:                                              ; preds = %171
  %202 = getelementptr inbounds %struct.msk_dmamap_arg, %struct.msk_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %202, align 8
  %203 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %204 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %208 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %212 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @MSK_RX_RING_SZ, align 4
  %216 = load i32, i32* @msk_dmamap_cb, align 4
  %217 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %218 = call i32 @bus_dmamap_load(i32 %206, i32 %210, i32 %214, i32 %215, i32 %216, %struct.msk_dmamap_arg* %3, i32 %217)
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %201
  %222 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %223 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @device_printf(i32 %224, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %317

226:                                              ; preds = %201
  %227 = getelementptr inbounds %struct.msk_dmamap_arg, %struct.msk_dmamap_arg* %3, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %230 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  store i64 %228, i64* %231, align 8
  store i32 0, i32* %8, align 4
  br label %232

232:                                              ; preds = %263, %226
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* @MSK_TX_RING_CNT, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %266

236:                                              ; preds = %232
  %237 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %238 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 4
  %240 = load %struct.msk_txdesc*, %struct.msk_txdesc** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %240, i64 %242
  store %struct.msk_txdesc* %243, %struct.msk_txdesc** %4, align 8
  %244 = load %struct.msk_txdesc*, %struct.msk_txdesc** %4, align 8
  %245 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %244, i32 0, i32 1
  store i32* null, i32** %245, align 8
  %246 = load %struct.msk_txdesc*, %struct.msk_txdesc** %4, align 8
  %247 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %246, i32 0, i32 0
  store i32* null, i32** %247, align 8
  %248 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %249 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.msk_txdesc*, %struct.msk_txdesc** %4, align 8
  %253 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %252, i32 0, i32 0
  %254 = call i32 @bus_dmamap_create(i32 %251, i32 0, i32** %253)
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %236
  %258 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %259 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @device_printf(i32 %260, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %317

262:                                              ; preds = %236
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %232

266:                                              ; preds = %232
  %267 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %268 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %272 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 2
  %274 = call i32 @bus_dmamap_create(i32 %270, i32 0, i32** %273)
  store i32 %274, i32* %7, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %266
  %277 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %278 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @device_printf(i32 %279, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %317

281:                                              ; preds = %266
  store i32 0, i32* %8, align 4
  br label %282

282:                                              ; preds = %313, %281
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %316

286:                                              ; preds = %282
  %287 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %288 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 1
  %290 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %290, i64 %292
  store %struct.msk_rxdesc* %293, %struct.msk_rxdesc** %5, align 8
  %294 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %295 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %294, i32 0, i32 1
  store i32* null, i32** %295, align 8
  %296 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %297 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %296, i32 0, i32 0
  store i32* null, i32** %297, align 8
  %298 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %299 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %303 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %302, i32 0, i32 0
  %304 = call i32 @bus_dmamap_create(i32 %301, i32 0, i32** %303)
  store i32 %304, i32* %7, align 4
  %305 = load i32, i32* %7, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %286
  %308 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %309 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @device_printf(i32 %310, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %317

312:                                              ; preds = %286
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %8, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %8, align 4
  br label %282

316:                                              ; preds = %282
  br label %317

317:                                              ; preds = %316, %307, %276, %257, %221, %196, %166, %141, %116, %86, %65, %44, %23
  %318 = load i32, i32* %7, align 4
  ret i32 %318
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.msk_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
