; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32 }
%struct.rt_softc_tx_ring = type { i32, i64, i64, i64, i32, %struct.rt_softc_tx_data*, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.rt_softc_tx_data = type { i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@RT_SOFTC_TX_RING_DESC_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not create Tx desc DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not allocate Tx desc DMA memory\0A\00", align 1
@rt_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"could not load Tx desc DMA map\0A\00", align 1
@RT_SOFTC_TX_RING_DATA_COUNT = common dso_local global i32 0, align 4
@RT_TX_DATA_SEG0_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"could not create Tx seg0 DMA tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"could not allocate Tx seg0 DMA memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"could not load Tx seg0 DMA map\0A\00", align 1
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@RT_SOFTC_MAX_SCATTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"could not create Tx data DMA tag\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"could not create Tx data DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_softc*, %struct.rt_softc_tx_ring*, i32)* @rt_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_alloc_tx_ring(%struct.rt_softc* %0, %struct.rt_softc_tx_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt_softc*, align 8
  %6 = alloca %struct.rt_softc_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt_softc_tx_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt_softc* %0, %struct.rt_softc** %5, align 8
  store %struct.rt_softc_tx_ring* %1, %struct.rt_softc_tx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %12 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %11, i32 0, i32 17
  %13 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %14 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_get_nameunit(i32 %15)
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* %12, i32 %16, i32* null, i32 %17)
  %19 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %20 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_get_dma_tag(i32 %21)
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %25 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %26 = load i32, i32* @RT_SOFTC_TX_RING_DESC_COUNT, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @RT_SOFTC_TX_RING_DESC_COUNT, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %34, i32 0, i32 16
  %36 = call i32 @bus_dma_tag_create(i32 %22, i32 %23, i32 0, i32 %24, i32 %25, i32* null, i32* null, i32 %29, i32 1, i32 %33, i32 0, i32* null, i32* null, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %41 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %223

44:                                               ; preds = %3
  %45 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %46 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %49 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %48, i32 0, i32 14
  %50 = bitcast i32* %49 to i8**
  %51 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %52 = load i32, i32* @BUS_DMA_ZERO, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %55 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %54, i32 0, i32 15
  %56 = call i32 @bus_dmamem_alloc(i32 %47, i8** %50, i32 %53, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %44
  %60 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %61 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %223

64:                                               ; preds = %44
  %65 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %66 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %65, i32 0, i32 16
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %69 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %68, i32 0, i32 15
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %72 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %71, i32 0, i32 14
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RT_SOFTC_TX_RING_DESC_COUNT, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @rt_dma_map_addr, align 4
  %79 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %80 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %79, i32 0, i32 13
  %81 = call i32 @bus_dmamap_load(i32 %67, i32 %70, i32 %73, i32 %77, i32 %78, i32* %80, i32 0)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %64
  %85 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %86 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %223

89:                                               ; preds = %64
  %90 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %91 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %90, i32 0, i32 12
  store i64 0, i64* %91, align 8
  %92 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %93 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %92, i32 0, i32 11
  store i64 0, i64* %93, align 8
  %94 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %95 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %94, i32 0, i32 10
  store i64 0, i64* %95, align 8
  %96 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %97 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bus_get_dma_tag(i32 %98)
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %102 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %103 = load i32, i32* @RT_SOFTC_TX_RING_DATA_COUNT, align 4
  %104 = load i32, i32* @RT_TX_DATA_SEG0_SIZE, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* @RT_SOFTC_TX_RING_DATA_COUNT, align 4
  %107 = load i32, i32* @RT_TX_DATA_SEG0_SIZE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %110 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %109, i32 0, i32 9
  %111 = call i32 @bus_dma_tag_create(i32 %99, i32 %100, i32 0, i32 %101, i32 %102, i32* null, i32* null, i32 %105, i32 1, i32 %108, i32 0, i32* null, i32* null, i32* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %89
  %115 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %116 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %223

119:                                              ; preds = %89
  %120 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %121 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %124 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %123, i32 0, i32 7
  %125 = bitcast i32* %124 to i8**
  %126 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %127 = load i32, i32* @BUS_DMA_ZERO, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %130 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %129, i32 0, i32 8
  %131 = call i32 @bus_dmamem_alloc(i32 %122, i8** %125, i32 %128, i32* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %119
  %135 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %136 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @device_printf(i32 %137, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %223

139:                                              ; preds = %119
  %140 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %141 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %144 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %147 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @RT_SOFTC_TX_RING_DATA_COUNT, align 4
  %150 = load i32, i32* @RT_TX_DATA_SEG0_SIZE, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* @rt_dma_map_addr, align 4
  %153 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %154 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %153, i32 0, i32 6
  %155 = call i32 @bus_dmamap_load(i32 %142, i32 %145, i32 %148, i32 %151, i32 %152, i32* %154, i32 0)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %139
  %159 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %160 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @device_printf(i32 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %223

163:                                              ; preds = %139
  %164 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %165 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @bus_get_dma_tag(i32 %166)
  %168 = load i32, i32* @PAGE_SIZE, align 4
  %169 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %170 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %171 = load i32, i32* @MJUMPAGESIZE, align 4
  %172 = load i32, i32* @RT_SOFTC_MAX_SCATTER, align 4
  %173 = load i32, i32* @MJUMPAGESIZE, align 4
  %174 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %175 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %174, i32 0, i32 4
  %176 = call i32 @bus_dma_tag_create(i32 %167, i32 %168, i32 0, i32 %169, i32 %170, i32* null, i32* null, i32 %171, i32 %172, i32 %173, i32 0, i32* null, i32* null, i32* %175)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %163
  %180 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %181 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @device_printf(i32 %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %223

184:                                              ; preds = %163
  store i32 0, i32* %10, align 4
  br label %185

185:                                              ; preds = %210, %184
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @RT_SOFTC_TX_RING_DATA_COUNT, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %213

189:                                              ; preds = %185
  %190 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %191 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %190, i32 0, i32 5
  %192 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %192, i64 %194
  store %struct.rt_softc_tx_data* %195, %struct.rt_softc_tx_data** %8, align 8
  %196 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %197 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %8, align 8
  %200 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %199, i32 0, i32 0
  %201 = call i32 @bus_dmamap_create(i32 %198, i32 0, i32* %200)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %189
  %205 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %206 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @device_printf(i32 %207, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %223

209:                                              ; preds = %189
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %185

213:                                              ; preds = %185
  %214 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %215 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %214, i32 0, i32 3
  store i64 0, i64* %215, align 8
  %216 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %217 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %216, i32 0, i32 2
  store i64 0, i64* %217, align 8
  %218 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %219 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %218, i32 0, i32 1
  store i64 0, i64* %219, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %222 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  store i32 0, i32* %4, align 4
  br label %228

223:                                              ; preds = %204, %179, %158, %134, %114, %84, %59, %39
  %224 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %225 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %6, align 8
  %226 = call i32 @rt_free_tx_ring(%struct.rt_softc* %224, %struct.rt_softc_tx_ring* %225)
  %227 = load i32, i32* %9, align 4
  store i32 %227, i32* %4, align 4
  br label %228

228:                                              ; preds = %223, %213
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @rt_free_tx_ring(%struct.rt_softc*, %struct.rt_softc_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
