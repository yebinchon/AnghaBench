; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_alloc_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_alloc_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32 }
%struct.rt_softc_rx_ring = type { i32, i32, i32, i32, i32, %struct.rt_softc_rx_data*, %struct.rt_rxdesc*, i32 }
%struct.rt_softc_rx_data = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rt_rxdesc = type { i8*, i8* }
%struct.TYPE_7__ = type { i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@RT_SOFTC_RX_RING_DATA_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not create Rx desc DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not allocate Rx desc DMA memory\0A\00", align 1
@rt_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"could not load Rx desc DMA map\0A\00", align 1
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"could not create Rx data DMA tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"could not create Rx data DMA map\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"could not allocate Rx mbuf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"could not load Rx mbuf DMA map\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: too many DMA segments\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"could not create Rx spare DMA map\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_softc*, %struct.rt_softc_rx_ring*, i32)* @rt_alloc_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_alloc_rx_ring(%struct.rt_softc* %0, %struct.rt_softc_rx_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt_softc*, align 8
  %6 = alloca %struct.rt_softc_rx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt_rxdesc*, align 8
  %9 = alloca %struct.rt_softc_rx_data*, align 8
  %10 = alloca [1 x %struct.TYPE_7__], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rt_softc* %0, %struct.rt_softc** %5, align 8
  store %struct.rt_softc_rx_ring* %1, %struct.rt_softc_rx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %15 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bus_get_dma_tag(i32 %16)
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %20 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %21 = load i32, i32* @RT_SOFTC_RX_RING_DATA_COUNT, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 16
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @RT_SOFTC_RX_RING_DATA_COUNT, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 16
  %28 = trunc i64 %27 to i32
  %29 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %29, i32 0, i32 2
  %31 = call i32 @bus_dma_tag_create(i32 %17, i32 %18, i32 0, i32 %19, i32 %20, i32* null, i32* null, i32 %24, i32 1, i32 %28, i32 0, i32* null, i32* null, i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %36 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %239

39:                                               ; preds = %3
  %40 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %41 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %44 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %43, i32 0, i32 6
  %45 = bitcast %struct.rt_rxdesc** %44 to i8**
  %46 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %47 = load i32, i32* @BUS_DMA_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %50 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %49, i32 0, i32 1
  %51 = call i32 @bus_dmamem_alloc(i32 %42, i8** %45, i32 %48, i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %56 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %239

59:                                               ; preds = %39
  %60 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %61 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %64 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %67 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %66, i32 0, i32 6
  %68 = load %struct.rt_rxdesc*, %struct.rt_rxdesc** %67, align 8
  %69 = load i32, i32* @RT_SOFTC_RX_RING_DATA_COUNT, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 16
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @rt_dma_map_addr, align 4
  %74 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %75 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %74, i32 0, i32 7
  %76 = call i32 @bus_dmamap_load(i32 %62, i32 %65, %struct.rt_rxdesc* %68, i32 %72, i32 %73, i32* %75, i32 0)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %59
  %80 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %81 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %239

84:                                               ; preds = %59
  %85 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %86 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bus_get_dma_tag(i32 %87)
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %91 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %92 = load i32, i32* @MJUMPAGESIZE, align 4
  %93 = load i32, i32* @MJUMPAGESIZE, align 4
  %94 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %95 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %94, i32 0, i32 4
  %96 = call i32 @bus_dma_tag_create(i32 %88, i32 %89, i32 0, i32 %90, i32 %91, i32* null, i32* null, i32 %92, i32 1, i32 %93, i32 0, i32* null, i32* null, i32* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %84
  %100 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %101 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %239

104:                                              ; preds = %84
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %208, %104
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @RT_SOFTC_RX_RING_DATA_COUNT, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %211

109:                                              ; preds = %105
  %110 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %111 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %110, i32 0, i32 6
  %112 = load %struct.rt_rxdesc*, %struct.rt_rxdesc** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.rt_rxdesc, %struct.rt_rxdesc* %112, i64 %114
  store %struct.rt_rxdesc* %115, %struct.rt_rxdesc** %8, align 8
  %116 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %117 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %116, i32 0, i32 5
  %118 = load %struct.rt_softc_rx_data*, %struct.rt_softc_rx_data** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.rt_softc_rx_data, %struct.rt_softc_rx_data* %118, i64 %120
  store %struct.rt_softc_rx_data* %121, %struct.rt_softc_rx_data** %9, align 8
  %122 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %123 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.rt_softc_rx_data*, %struct.rt_softc_rx_data** %9, align 8
  %126 = getelementptr inbounds %struct.rt_softc_rx_data, %struct.rt_softc_rx_data* %125, i32 0, i32 1
  %127 = call i32 @bus_dmamap_create(i32 %124, i32 0, i32* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %109
  %131 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %132 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %239

135:                                              ; preds = %109
  %136 = load i32, i32* @M_NOWAIT, align 4
  %137 = load i32, i32* @MT_DATA, align 4
  %138 = load i32, i32* @M_PKTHDR, align 4
  %139 = load i32, i32* @MJUMPAGESIZE, align 4
  %140 = call %struct.TYPE_8__* @m_getjcl(i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.rt_softc_rx_data*, %struct.rt_softc_rx_data** %9, align 8
  %142 = getelementptr inbounds %struct.rt_softc_rx_data, %struct.rt_softc_rx_data* %141, i32 0, i32 0
  store %struct.TYPE_8__* %140, %struct.TYPE_8__** %142, align 8
  %143 = load %struct.rt_softc_rx_data*, %struct.rt_softc_rx_data** %9, align 8
  %144 = getelementptr inbounds %struct.rt_softc_rx_data, %struct.rt_softc_rx_data* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = icmp eq %struct.TYPE_8__* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %135
  %148 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %149 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %152 = load i32, i32* @ENOMEM, align 4
  store i32 %152, i32* %13, align 4
  br label %239

153:                                              ; preds = %135
  %154 = load i32, i32* @MJUMPAGESIZE, align 4
  %155 = load %struct.rt_softc_rx_data*, %struct.rt_softc_rx_data** %9, align 8
  %156 = getelementptr inbounds %struct.rt_softc_rx_data, %struct.rt_softc_rx_data* %155, i32 0, i32 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i32 %154, i32* %159, align 4
  %160 = load %struct.rt_softc_rx_data*, %struct.rt_softc_rx_data** %9, align 8
  %161 = getelementptr inbounds %struct.rt_softc_rx_data, %struct.rt_softc_rx_data* %160, i32 0, i32 0
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 %154, i32* %163, align 4
  %164 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %165 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.rt_softc_rx_data*, %struct.rt_softc_rx_data** %9, align 8
  %168 = getelementptr inbounds %struct.rt_softc_rx_data, %struct.rt_softc_rx_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.rt_softc_rx_data*, %struct.rt_softc_rx_data** %9, align 8
  %171 = getelementptr inbounds %struct.rt_softc_rx_data, %struct.rt_softc_rx_data* %170, i32 0, i32 0
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %174 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %175 = call i32 @bus_dmamap_load_mbuf_sg(i32 %166, i32 %169, %struct.TYPE_8__* %172, %struct.TYPE_7__* %173, i32* %12, i32 %174)
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %153
  %179 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %180 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @device_printf(i32 %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %239

183:                                              ; preds = %153
  %184 = load i32, i32* %12, align 4
  %185 = icmp eq i32 %184, 1
  %186 = zext i1 %185 to i32
  %187 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %188 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @device_get_nameunit(i32 %189)
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 @KASSERT(i32 %186, i8* %192)
  %194 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 2
  %198 = call i8* @htole32(i64 %197)
  %199 = load %struct.rt_rxdesc*, %struct.rt_rxdesc** %8, align 8
  %200 = getelementptr inbounds %struct.rt_rxdesc, %struct.rt_rxdesc* %199, i32 0, i32 1
  store i8* %198, i8** %200, align 8
  %201 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 16
  %204 = sub nsw i64 %203, 2
  %205 = call i8* @htole32(i64 %204)
  %206 = load %struct.rt_rxdesc*, %struct.rt_rxdesc** %8, align 8
  %207 = getelementptr inbounds %struct.rt_rxdesc, %struct.rt_rxdesc* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %183
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %105

211:                                              ; preds = %105
  %212 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %213 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %216 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %215, i32 0, i32 3
  %217 = call i32 @bus_dmamap_create(i32 %214, i32 0, i32* %216)
  store i32 %217, i32* %13, align 4
  %218 = load i32, i32* %13, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %211
  %221 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %222 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @device_printf(i32 %223, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %239

225:                                              ; preds = %211
  %226 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %227 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %230 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %233 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @bus_dmamap_sync(i32 %228, i32 %231, i32 %234)
  %236 = load i32, i32* %7, align 4
  %237 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %238 = getelementptr inbounds %struct.rt_softc_rx_ring, %struct.rt_softc_rx_ring* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  store i32 0, i32* %4, align 4
  br label %244

239:                                              ; preds = %220, %178, %147, %130, %99, %79, %54, %34
  %240 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %241 = load %struct.rt_softc_rx_ring*, %struct.rt_softc_rx_ring** %6, align 8
  %242 = call i32 @rt_free_rx_ring(%struct.rt_softc* %240, %struct.rt_softc_rx_ring* %241)
  %243 = load i32, i32* %13, align 4
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %239, %225
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, %struct.rt_rxdesc*, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @m_getjcl(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i8* @htole32(i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @rt_free_rx_ring(%struct.rt_softc*, %struct.rt_softc_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
