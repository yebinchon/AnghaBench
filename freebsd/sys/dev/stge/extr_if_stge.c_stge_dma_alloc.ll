; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, %struct.stge_rxdesc*, i64, i32, %struct.stge_txdesc*, i32, i32, i32, i32, i32 }
%struct.stge_rxdesc = type { i64, i32* }
%struct.stge_txdesc = type { i64, i32* }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.stge_dmamap_arg = type { i64 }

@STGE_DMA_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to create parent DMA tag\0A\00", align 1
@STGE_RING_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@STGE_TX_RING_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to allocate Tx ring DMA tag\0A\00", align 1
@STGE_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to allocate Rx ring DMA tag\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@STGE_MAXTXSEGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to allocate Tx DMA tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to allocate Rx DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Tx ring\0A\00", align 1
@stge_dmamap_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Tx ring\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Rx ring\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Rx ring\0A\00", align 1
@STGE_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to create Tx dmamap\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to create spare Rx dmamap\0A\00", align 1
@STGE_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"failed to create Rx dmamap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stge_softc*)* @stge_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_dma_alloc(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca %struct.stge_dmamap_arg, align 8
  %4 = alloca %struct.stge_txdesc*, align 8
  %5 = alloca %struct.stge_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %8 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bus_get_dma_tag(i32 %10)
  %12 = load i32, i32* @STGE_DMA_MAXADDR, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %16 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 9
  %19 = call i32 @bus_dma_tag_create(i32 %11, i32 1, i32 0, i32 %12, i32 %13, i32* null, i32* null, i32 %14, i32 0, i32 %15, i32 0, i32* null, i32* null, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %24 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %316

27:                                               ; preds = %1
  %28 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %29 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @STGE_RING_ALIGN, align 4
  %33 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* @STGE_TX_RING_SZ, align 4
  %36 = load i32, i32* @STGE_TX_RING_SZ, align 4
  %37 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %38 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 8
  %40 = call i32 @bus_dma_tag_create(i32 %31, i32 %32, i32 0, i32 %33, i32 %34, i32* null, i32* null, i32 %35, i32 1, i32 %36, i32 0, i32* null, i32* null, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %45 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %316

48:                                               ; preds = %27
  %49 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %50 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @STGE_RING_ALIGN, align 4
  %54 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %56 = load i32, i32* @STGE_RX_RING_SZ, align 4
  %57 = load i32, i32* @STGE_RX_RING_SZ, align 4
  %58 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %59 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 6
  %61 = call i32 @bus_dma_tag_create(i32 %52, i32 %53, i32 0, i32 %54, i32 %55, i32* null, i32* null, i32 %56, i32 1, i32 %57, i32 0, i32* null, i32* null, i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %316

69:                                               ; preds = %48
  %70 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %71 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %75 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %76 = load i32, i32* @MCLBYTES, align 4
  %77 = load i32, i32* @STGE_MAXTXSEGS, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* @STGE_MAXTXSEGS, align 4
  %80 = load i32, i32* @MCLBYTES, align 4
  %81 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %82 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = call i32 @bus_dma_tag_create(i32 %73, i32 1, i32 0, i32 %74, i32 %75, i32* null, i32* null, i32 %78, i32 %79, i32 %80, i32 0, i32* null, i32* null, i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %69
  %88 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %89 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %316

92:                                               ; preds = %69
  %93 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %94 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %98 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %99 = load i32, i32* @MCLBYTES, align 4
  %100 = load i32, i32* @MCLBYTES, align 4
  %101 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %102 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = call i32 @bus_dma_tag_create(i32 %96, i32 1, i32 0, i32 %97, i32 %98, i32* null, i32* null, i32 %99, i32 1, i32 %100, i32 0, i32* null, i32* null, i32* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %92
  %108 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %109 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %316

112:                                              ; preds = %92
  %113 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %114 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %118 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = bitcast i32* %119 to i8**
  %121 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %122 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @BUS_DMA_ZERO, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %127 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 7
  %129 = call i32 @bus_dmamem_alloc(i32 %116, i8** %120, i32 %125, i32* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %112
  %133 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %134 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %316

137:                                              ; preds = %112
  %138 = getelementptr inbounds %struct.stge_dmamap_arg, %struct.stge_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %140 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %144 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %148 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @STGE_TX_RING_SZ, align 4
  %152 = load i32, i32* @stge_dmamap_cb, align 4
  %153 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %154 = call i32 @bus_dmamap_load(i32 %142, i32 %146, i32 %150, i32 %151, i32 %152, %struct.stge_dmamap_arg* %3, i32 %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %137
  %158 = getelementptr inbounds %struct.stge_dmamap_arg, %struct.stge_dmamap_arg* %3, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157, %137
  %162 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %163 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @device_printf(i32 %164, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %316

166:                                              ; preds = %157
  %167 = getelementptr inbounds %struct.stge_dmamap_arg, %struct.stge_dmamap_arg* %3, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %170 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i64 %168, i64* %171, align 8
  %172 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %173 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %177 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = bitcast i32* %178 to i8**
  %180 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %181 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @BUS_DMA_ZERO, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %186 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 5
  %188 = call i32 @bus_dmamem_alloc(i32 %175, i8** %179, i32 %184, i32* %187)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %166
  %192 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %193 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @device_printf(i32 %194, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %316

196:                                              ; preds = %166
  %197 = getelementptr inbounds %struct.stge_dmamap_arg, %struct.stge_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %197, align 8
  %198 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %199 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %203 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %207 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @STGE_RX_RING_SZ, align 4
  %211 = load i32, i32* @stge_dmamap_cb, align 4
  %212 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %213 = call i32 @bus_dmamap_load(i32 %201, i32 %205, i32 %209, i32 %210, i32 %211, %struct.stge_dmamap_arg* %3, i32 %212)
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %196
  %217 = getelementptr inbounds %struct.stge_dmamap_arg, %struct.stge_dmamap_arg* %3, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %216, %196
  %221 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %222 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @device_printf(i32 %223, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %316

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.stge_dmamap_arg, %struct.stge_dmamap_arg* %3, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %229 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  store i64 %227, i64* %230, align 8
  store i32 0, i32* %7, align 4
  br label %231

231:                                              ; preds = %262, %225
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @STGE_TX_RING_CNT, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %265

235:                                              ; preds = %231
  %236 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %237 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 4
  %239 = load %struct.stge_txdesc*, %struct.stge_txdesc** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %239, i64 %241
  store %struct.stge_txdesc* %242, %struct.stge_txdesc** %4, align 8
  %243 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %244 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %243, i32 0, i32 1
  store i32* null, i32** %244, align 8
  %245 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %246 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %245, i32 0, i32 0
  store i64 0, i64* %246, align 8
  %247 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %248 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %252 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %251, i32 0, i32 0
  %253 = call i32 @bus_dmamap_create(i32 %250, i32 0, i64* %252)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %235
  %257 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %258 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @device_printf(i32 %259, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %316

261:                                              ; preds = %235
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %7, align 4
  br label %231

265:                                              ; preds = %231
  %266 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %267 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %271 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 2
  %273 = call i32 @bus_dmamap_create(i32 %269, i32 0, i64* %272)
  store i32 %273, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %265
  %276 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %277 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @device_printf(i32 %278, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %316

280:                                              ; preds = %265
  store i32 0, i32* %7, align 4
  br label %281

281:                                              ; preds = %312, %280
  %282 = load i32, i32* %7, align 4
  %283 = load i32, i32* @STGE_RX_RING_CNT, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %315

285:                                              ; preds = %281
  %286 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %287 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 1
  %289 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %288, align 8
  %290 = load i32, i32* %7, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %289, i64 %291
  store %struct.stge_rxdesc* %292, %struct.stge_rxdesc** %5, align 8
  %293 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %5, align 8
  %294 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %293, i32 0, i32 1
  store i32* null, i32** %294, align 8
  %295 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %5, align 8
  %296 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %295, i32 0, i32 0
  store i64 0, i64* %296, align 8
  %297 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %298 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %5, align 8
  %302 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %301, i32 0, i32 0
  %303 = call i32 @bus_dmamap_create(i32 %300, i32 0, i64* %302)
  store i32 %303, i32* %6, align 4
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %285
  %307 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %308 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @device_printf(i32 %309, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %316

311:                                              ; preds = %285
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %7, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %7, align 4
  br label %281

315:                                              ; preds = %281
  br label %316

316:                                              ; preds = %315, %306, %275, %256, %220, %191, %161, %132, %107, %87, %64, %43, %22
  %317 = load i32, i32* %6, align 4
  ret i32 %317
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.stge_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
