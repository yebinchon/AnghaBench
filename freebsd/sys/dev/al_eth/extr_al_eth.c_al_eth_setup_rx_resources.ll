; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { %struct.TYPE_4__*, i32, %struct.al_eth_ring* }
%struct.TYPE_4__ = type { i32 }
%struct.al_eth_ring = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_5__, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.al_udma_q_params, %struct.device* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.al_udma_q_params = type { i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32 }
%struct.device = type { i32 }

@M_IFAL = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@al_eth_rx_recv_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"al_rx_enque\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s rxeq\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@AL_TSO_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to allocate RX dma_buf_tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to map DMA RX buffer memory\0A\00", align 1
@IFCAP_LRO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"LRO[%d] Initialization failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"RX Soft LRO[%d] Initialized\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_adapter*, i32)* @al_eth_setup_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_setup_rx_resources(%struct.al_eth_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_ring*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.al_udma_q_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %12, i32 0, i32 2
  %14 = load %struct.al_eth_ring*, %struct.al_eth_ring** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %14, i64 %16
  store %struct.al_eth_ring* %17, %struct.al_eth_ring** %6, align 8
  %18 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %19 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %18, i32 0, i32 13
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %22 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %21, i32 0, i32 12
  store %struct.al_udma_q_params* %22, %struct.al_udma_q_params** %8, align 8
  %23 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %24 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @M_IFAL, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.TYPE_6__* @malloc(i32 %31, i32 %32, i32 %35)
  %37 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %38 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %37, i32 0, i32 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %38, align 8
  %39 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %40 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %39, i32 0, i32 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %3, align 4
  br label %233

45:                                               ; preds = %2
  %46 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %47 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %53 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %55 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %58 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %61 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %60, i32 0, i32 9
  %62 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %63 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %62, i32 0, i32 8
  %64 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %65 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %64, i32 0, i32 7
  %66 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %67 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %66, i32 0, i32 6
  %68 = bitcast i32** %67 to i8**
  %69 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %70 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @al_dma_alloc_coherent(%struct.device* %59, i32* %61, i32* %63, i32* %65, i8** %68, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %74 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %45
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %45
  %81 = load i32, i32* @ENOMEM, align 4
  store i32 %81, i32* %3, align 4
  br label %233

82:                                               ; preds = %77
  %83 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %84 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %83, i32 0, i32 1
  store i32 16, i32* %84, align 4
  %85 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %86 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %89 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %93 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.device*, %struct.device** %7, align 8
  %95 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %96 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %95, i32 0, i32 5
  %97 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %98 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %97, i32 0, i32 4
  %99 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %100 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %99, i32 0, i32 3
  %101 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %102 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %101, i32 0, i32 2
  %103 = bitcast i32** %102 to i8**
  %104 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %105 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @al_dma_alloc_coherent(%struct.device* %94, i32* %96, i32* %98, i32* %100, i8** %103, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %109 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %82
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112, %82
  %116 = load i32, i32* @ENOMEM, align 4
  store i32 %116, i32* %3, align 4
  br label %233

117:                                              ; preds = %112
  %118 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %119 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %118, i32 0, i32 11
  %120 = load i32, i32* @al_eth_rx_recv_work, align 4
  %121 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %122 = call i32 @TASK_INIT(i32* %119, i32 0, i32 %120, %struct.al_eth_ring* %121)
  %123 = load i32, i32* @M_NOWAIT, align 4
  %124 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %125 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %126 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %125, i32 0, i32 10
  %127 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %124, i32* %126)
  %128 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %129 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %128, i32 0, i32 10
  store i32 %127, i32* %129, align 4
  %130 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %131 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %130, i32 0, i32 10
  %132 = load i32, i32* @PI_NET, align 4
  %133 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %134 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_get_nameunit(i32 %135)
  %137 = call i32 @taskqueue_start_threads(i32* %131, i32 1, i32 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load %struct.device*, %struct.device** %7, align 8
  %139 = call i32 @bus_get_dma_tag(%struct.device* %138)
  %140 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %141 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %142 = load i32, i32* @AL_TSO_SIZE, align 4
  %143 = load i32, i32* @AL_TSO_SIZE, align 4
  %144 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %145 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %144, i32 0, i32 9
  %146 = call i32 @bus_dma_tag_create(i32 %139, i32 1, i32 0, i32 %140, i32 %141, i32* null, i32* null, i32 %142, i32 1, i32 %143, i32 0, i32* null, i32* null, i32* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %117
  %150 = load %struct.device*, %struct.device** %7, align 8
  %151 = ptrtoint %struct.device* %150 to i32
  %152 = call i32 (i32, i8*, ...) @device_printf(i32 %151, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %3, align 4
  br label %233

154:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %155

155:                                              ; preds = %181, %154
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %158 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %184

161:                                              ; preds = %155
  %162 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %163 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %166 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %165, i32 0, i32 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = call i32 @bus_dmamap_create(i32 %164, i32 0, i32* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %161
  %176 = load %struct.device*, %struct.device** %7, align 8
  %177 = ptrtoint %struct.device* %176 to i32
  %178 = call i32 (i32, i8*, ...) @device_printf(i32 %177, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %3, align 4
  br label %233

180:                                              ; preds = %161
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %155

184:                                              ; preds = %155
  %185 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %186 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %189 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @memset(i32* %187, i32 0, i32 %190)
  %192 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %193 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %192, i32 0, i32 0
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @IFCAP_LRO, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %228

200:                                              ; preds = %184
  %201 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %202 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %201, i32 0, i32 6
  %203 = call i32 @tcp_lro_init(%struct.TYPE_5__* %202)
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %200
  %207 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %208 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = call i32 (i32, i8*, ...) @device_printf(i32 %209, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %210)
  br label %227

212:                                              ; preds = %200
  %213 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %214 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @device_printf_dbg(i32 %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* @TRUE, align 4
  %219 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %220 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %219, i32 0, i32 7
  store i32 %218, i32* %220, align 8
  %221 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %222 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %221, i32 0, i32 0
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %225 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %224, i32 0, i32 6
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  store %struct.TYPE_4__* %223, %struct.TYPE_4__** %226, align 8
  br label %227

227:                                              ; preds = %212, %206
  br label %228

228:                                              ; preds = %227, %184
  %229 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %230 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %229, i32 0, i32 5
  store i64 0, i64* %230, align 8
  %231 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %232 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %231, i32 0, i32 4
  store i64 0, i64* %232, align 8
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %228, %175, %149, %115, %80, %43
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @al_dma_alloc_coherent(%struct.device*, i32*, i32*, i32*, i8**, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.al_eth_ring*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(%struct.device*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tcp_lro_init(%struct.TYPE_5__*) #1

declare dso_local i32 @device_printf_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
