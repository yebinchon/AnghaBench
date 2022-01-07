; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to allocate parent DMA tag\0A\00", align 1
@DC_LIST_ALIGN = common dso_local global i32 0, align 4
@DC_RX_LIST_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create RX list DMA tag\0A\00", align 1
@DC_TX_LIST_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create TX list DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for RX list\0A\00", align 1
@dc_dma_map_addr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for RX list\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for TX list\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"cannot load DMA'able memory for TX list\0A\00", align 1
@DC_SFRAME_LEN = common dso_local global i32 0, align 4
@DC_MIN_FRAMELEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"failed to create DMA tag for setup frame\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"failed to allocate DMA'able memory for setup frame\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"cannot load DMA'able memory for setup frame\0A\00", align 1
@DC_RXBUF_ALIGN = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to create RX mbuf tag\0A\00", align 1
@DC_MAXFRAGS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"failed to create TX mbuf tag\0A\00", align 1
@DC_TX_LIST_CNT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"failed to create TX mbuf dmamap\0A\00", align 1
@DC_RX_LIST_CNT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"failed to create RX mbuf dmamap\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"failed to create spare RX mbuf dmamap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*)* @dc_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_dma_alloc(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %5 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @bus_get_dma_tag(i32 %7)
  %9 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %10 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %11 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %12 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %13 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %13, i32 0, i32 5
  %15 = call i32 @bus_dma_tag_create(i32 %8, i32 1, i32 0, i32 %9, i32 %10, i32* null, i32* null, i32 %11, i32 0, i32 %12, i32 0, i32* null, i32* null, i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %334

23:                                               ; preds = %1
  %24 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %25 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DC_LIST_ALIGN, align 4
  %28 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %29 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %30 = load i32, i32* @DC_RX_LIST_SZ, align 4
  %31 = load i32, i32* @DC_RX_LIST_SZ, align 4
  %32 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %32, i32 0, i32 13
  %34 = call i32 @bus_dma_tag_create(i32 %26, i32 %27, i32 0, i32 %28, i32 %29, i32* null, i32* null, i32 %30, i32 1, i32 %31, i32 0, i32* null, i32* null, i32* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %39 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %334

42:                                               ; preds = %23
  %43 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %44 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DC_LIST_ALIGN, align 4
  %47 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %48 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %49 = load i32, i32* @DC_TX_LIST_SZ, align 4
  %50 = load i32, i32* @DC_TX_LIST_SZ, align 4
  %51 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %52 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %51, i32 0, i32 11
  %53 = call i32 @bus_dma_tag_create(i32 %45, i32 %46, i32 0, i32 %47, i32 %48, i32* null, i32* null, i32 %49, i32 1, i32 %50, i32 0, i32* null, i32* null, i32* %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %58 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %334

61:                                               ; preds = %42
  %62 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %63 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %66 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %65, i32 0, i32 9
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = bitcast i32* %67 to i8**
  %69 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %70 = load i32, i32* @BUS_DMA_ZERO, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %75 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %74, i32 0, i32 12
  %76 = call i32 @bus_dmamem_alloc(i32 %64, i8** %68, i32 %73, i32* %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %61
  %80 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %81 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %334

84:                                               ; preds = %61
  %85 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %86 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %85, i32 0, i32 13
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %89 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %92 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DC_RX_LIST_SZ, align 4
  %96 = load i32, i32* @dc_dma_map_addr, align 4
  %97 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %98 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %97, i32 0, i32 9
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %101 = call i32 @bus_dmamap_load(i32 %87, i32 %90, i32 %94, i32 %95, i32 %96, i32* %99, i32 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %84
  %105 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %106 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %334

109:                                              ; preds = %84
  %110 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %111 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %114 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %113, i32 0, i32 9
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = bitcast i32* %115 to i8**
  %117 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %118 = load i32, i32* @BUS_DMA_ZERO, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %123 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %122, i32 0, i32 10
  %124 = call i32 @bus_dmamem_alloc(i32 %112, i8** %116, i32 %121, i32* %123)
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* %3, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %109
  %128 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %129 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @device_printf(i32 %130, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %334

132:                                              ; preds = %109
  %133 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %134 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %133, i32 0, i32 11
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %137 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %140 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %139, i32 0, i32 9
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @DC_TX_LIST_SZ, align 4
  %144 = load i32, i32* @dc_dma_map_addr, align 4
  %145 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %146 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %145, i32 0, i32 9
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %149 = call i32 @bus_dmamap_load(i32 %135, i32 %138, i32 %142, i32 %143, i32 %144, i32* %147, i32 %148)
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* %3, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %132
  %153 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %154 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @device_printf(i32 %155, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %334

157:                                              ; preds = %132
  %158 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %159 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @DC_LIST_ALIGN, align 4
  %162 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %163 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %164 = load i32, i32* @DC_SFRAME_LEN, align 4
  %165 = load i32, i32* @DC_MIN_FRAMELEN, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* @DC_SFRAME_LEN, align 4
  %168 = load i32, i32* @DC_MIN_FRAMELEN, align 4
  %169 = add nsw i32 %167, %168
  %170 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %171 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %170, i32 0, i32 8
  %172 = call i32 @bus_dma_tag_create(i32 %160, i32 %161, i32 0, i32 %162, i32 %163, i32* null, i32* null, i32 %166, i32 1, i32 %169, i32 0, i32* null, i32* null, i32* %171)
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %157
  %176 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %177 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @device_printf(i32 %178, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %334

180:                                              ; preds = %157
  %181 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %182 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %185 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = bitcast i32* %186 to i8**
  %188 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %189 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %190 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %189, i32 0, i32 7
  %191 = call i32 @bus_dmamem_alloc(i32 %183, i8** %187, i32 %188, i32* %190)
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* %3, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %180
  %195 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %196 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @device_printf(i32 %197, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  br label %334

199:                                              ; preds = %180
  %200 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %201 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %200, i32 0, i32 8
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %204 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %207 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @DC_SFRAME_LEN, align 4
  %211 = load i32, i32* @dc_dma_map_addr, align 4
  %212 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %213 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %212, i32 0, i32 6
  %214 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %215 = call i32 @bus_dmamap_load(i32 %202, i32 %205, i32 %209, i32 %210, i32 %211, i32* %213, i32 %214)
  store i32 %215, i32* %3, align 4
  %216 = load i32, i32* %3, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %199
  %219 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %220 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @device_printf(i32 %221, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %334

223:                                              ; preds = %199
  %224 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %225 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @DC_RXBUF_ALIGN, align 4
  %228 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %229 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %230 = load i32, i32* @MCLBYTES, align 4
  %231 = load i32, i32* @MCLBYTES, align 4
  %232 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %233 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %232, i32 0, i32 2
  %234 = call i32 @bus_dma_tag_create(i32 %226, i32 %227, i32 0, i32 %228, i32 %229, i32* null, i32* null, i32 %230, i32 1, i32 %231, i32 0, i32* null, i32* null, i32* %233)
  store i32 %234, i32* %3, align 4
  %235 = load i32, i32* %3, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %223
  %238 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %239 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @device_printf(i32 %240, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %334

242:                                              ; preds = %223
  %243 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %244 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %247 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %248 = load i32, i32* @MCLBYTES, align 4
  %249 = load i32, i32* @DC_MAXFRAGS, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* @DC_MAXFRAGS, align 4
  %252 = load i32, i32* @MCLBYTES, align 4
  %253 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %254 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %253, i32 0, i32 4
  %255 = call i32 @bus_dma_tag_create(i32 %245, i32 1, i32 0, i32 %246, i32 %247, i32* null, i32* null, i32 %250, i32 %251, i32 %252, i32 0, i32* null, i32* null, i32* %254)
  store i32 %255, i32* %3, align 4
  %256 = load i32, i32* %3, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %242
  %259 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %260 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @device_printf(i32 %261, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %334

263:                                              ; preds = %242
  store i32 0, i32* %4, align 4
  br label %264

264:                                              ; preds = %288, %263
  %265 = load i32, i32* %4, align 4
  %266 = load i32, i32* @DC_TX_LIST_CNT, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %291

268:                                              ; preds = %264
  %269 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %270 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %273 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %4, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = call i32 @bus_dmamap_create(i32 %271, i32 0, i32* %278)
  store i32 %279, i32* %3, align 4
  %280 = load i32, i32* %3, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %268
  %283 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %284 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @device_printf(i32 %285, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %334

287:                                              ; preds = %268
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %4, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %4, align 4
  br label %264

291:                                              ; preds = %264
  store i32 0, i32* %4, align 4
  br label %292

292:                                              ; preds = %316, %291
  %293 = load i32, i32* %4, align 4
  %294 = load i32, i32* @DC_RX_LIST_CNT, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %319

296:                                              ; preds = %292
  %297 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %298 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %301 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %4, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = call i32 @bus_dmamap_create(i32 %299, i32 0, i32* %306)
  store i32 %307, i32* %3, align 4
  %308 = load i32, i32* %3, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %296
  %311 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %312 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @device_printf(i32 %313, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %334

315:                                              ; preds = %296
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %4, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %4, align 4
  br label %292

319:                                              ; preds = %292
  %320 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %321 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %324 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %323, i32 0, i32 1
  %325 = call i32 @bus_dmamap_create(i32 %322, i32 0, i32* %324)
  store i32 %325, i32* %3, align 4
  %326 = load i32, i32* %3, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %319
  %329 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %330 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @device_printf(i32 %331, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  br label %334

333:                                              ; preds = %319
  br label %334

334:                                              ; preds = %333, %328, %310, %282, %258, %237, %218, %194, %175, %152, %127, %104, %79, %56, %37, %18
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
