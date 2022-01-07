; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, i64, %struct.al_eth_ring* }
%struct.al_eth_ring = type { i32, i32, i32, i64, i64, %struct.TYPE_2__*, i32, i8*, i32, i8*, i32, i32*, i32, %struct.al_udma_q_params, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.al_udma_q_params = type { i32, i32, i32*, i32*, i32, i32, i32 }
%struct.device = type { i32 }

@M_IFAL = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to al_dma_alloc_coherent, ret = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Initializing ring queues %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"AlRingMtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@AL_BR_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Critical Failure setting up buf ring\0A\00", align 1
@al_eth_start_xmit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"al_tx_enque\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%s txeq\00", align 1
@al_eth_tx_cmpl_work = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"al_tx_cmpl\00", align 1
@PI_REALTIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"%s txcq\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@AL_TSO_SIZE = common dso_local global i32 0, align 4
@AL_ETH_PKT_MAX_BUFS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Unable to allocate dma_buf_tag, ret = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Unable to map DMA TX buffer memory [iter=%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_adapter*, i32)* @al_eth_setup_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_setup_tx_resources(%struct.al_eth_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_ring*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.al_udma_q_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %11, i32 0, i32 2
  %13 = load %struct.al_eth_ring*, %struct.al_eth_ring** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %13, i64 %15
  store %struct.al_eth_ring* %16, %struct.al_eth_ring** %6, align 8
  %17 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %18 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %17, i32 0, i32 14
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %21 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %20, i32 0, i32 13
  store %struct.al_udma_q_params* %21, %struct.al_udma_q_params** %8, align 8
  %22 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %211

27:                                               ; preds = %2
  %28 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %29 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @M_IFAL, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.TYPE_2__* @malloc(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %41 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %40, i32 0, i32 5
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %41, align 8
  %42 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %43 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp eq %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %3, align 4
  br label %211

48:                                               ; preds = %27
  %49 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %50 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %56 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %58 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %61 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %64 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %63, i32 0, i32 6
  %65 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %66 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %65, i32 0, i32 5
  %67 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %68 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %67, i32 0, i32 4
  %69 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %70 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %69, i32 0, i32 3
  %71 = bitcast i32** %70 to i8**
  %72 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %73 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @al_dma_alloc_coherent(%struct.device* %62, i32* %64, i32* %66, i32* %68, i8** %71, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %48
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (%struct.device*, i8*, ...) @device_printf(%struct.device* %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENOMEM, align 4
  store i32 %82, i32* %3, align 4
  br label %211

83:                                               ; preds = %48
  %84 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %85 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %3, align 4
  br label %211

90:                                               ; preds = %83
  %91 = load %struct.device*, %struct.device** %7, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @device_printf_dbg(%struct.device* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %95 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %94, i32 0, i32 12
  %96 = load i32, i32* @MTX_DEF, align 4
  %97 = call i32 @mtx_init(i32* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %96)
  %98 = load i32, i32* @AL_BR_SIZE, align 4
  %99 = load i32, i32* @M_DEVBUF, align 4
  %100 = load i32, i32* @M_WAITOK, align 4
  %101 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %102 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %101, i32 0, i32 12
  %103 = call i32* @buf_ring_alloc(i32 %98, i32 %99, i32 %100, i32* %102)
  %104 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %105 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %104, i32 0, i32 11
  store i32* %103, i32** %105, align 8
  %106 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %107 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %106, i32 0, i32 11
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %90
  %111 = load %struct.device*, %struct.device** %7, align 8
  %112 = call i32 (%struct.device*, i8*, ...) @device_printf(%struct.device* %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @ENOMEM, align 4
  store i32 %113, i32* %3, align 4
  br label %211

114:                                              ; preds = %90
  %115 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %116 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %115, i32 0, i32 10
  %117 = load i32, i32* @al_eth_start_xmit, align 4
  %118 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %119 = call i32 @TASK_INIT(i32* %116, i32 0, i32 %117, %struct.al_eth_ring* %118)
  %120 = load i32, i32* @M_NOWAIT, align 4
  %121 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %122 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %123 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %122, i32 0, i32 9
  %124 = call i8* @taskqueue_create_fast(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %121, i8** %123)
  %125 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %126 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %125, i32 0, i32 9
  store i8* %124, i8** %126, align 8
  %127 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %128 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %127, i32 0, i32 9
  %129 = load i32, i32* @PI_NET, align 4
  %130 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %131 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @device_get_nameunit(i32 %132)
  %134 = call i32 @taskqueue_start_threads(i8** %128, i32 1, i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  %135 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %136 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %135, i32 0, i32 8
  %137 = load i32, i32* @al_eth_tx_cmpl_work, align 4
  %138 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %139 = call i32 @TASK_INIT(i32* %136, i32 0, i32 %137, %struct.al_eth_ring* %138)
  %140 = load i32, i32* @M_NOWAIT, align 4
  %141 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %142 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %143 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %142, i32 0, i32 7
  %144 = call i8* @taskqueue_create_fast(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %140, i32 %141, i8** %143)
  %145 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %146 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %145, i32 0, i32 7
  store i8* %144, i8** %146, align 8
  %147 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %148 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %147, i32 0, i32 7
  %149 = load i32, i32* @PI_REALTIME, align 4
  %150 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %151 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @device_get_nameunit(i32 %152)
  %154 = call i32 @taskqueue_start_threads(i8** %148, i32 1, i32 %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  %155 = load %struct.device*, %struct.device** %7, align 8
  %156 = call i32 @bus_get_dma_tag(%struct.device* %155)
  %157 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %158 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %159 = load i32, i32* @AL_TSO_SIZE, align 4
  %160 = load i32, i32* @AL_ETH_PKT_MAX_BUFS, align 4
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %163 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %162, i32 0, i32 6
  %164 = call i32 @bus_dma_tag_create(i32 %156, i32 1, i32 0, i32 %157, i32 %158, i32* null, i32* null, i32 %159, i32 %160, i32 %161, i32 0, i32* null, i32* null, i32* %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %114
  %168 = load %struct.device*, %struct.device** %7, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 (%struct.device*, i8*, ...) @device_printf(%struct.device* %168, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %3, align 4
  br label %211

172:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  br label %173

173:                                              ; preds = %199, %172
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %176 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %202

179:                                              ; preds = %173
  %180 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %181 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %184 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %183, i32 0, i32 5
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = call i32 @bus_dmamap_create(i32 %182, i32 0, i32* %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %179
  %194 = load %struct.device*, %struct.device** %7, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 (%struct.device*, i8*, ...) @device_printf(%struct.device* %194, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %10, align 4
  store i32 %197, i32* %3, align 4
  br label %211

198:                                              ; preds = %179
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %173

202:                                              ; preds = %173
  %203 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %204 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %203, i32 0, i32 2
  store i32* null, i32** %204, align 8
  %205 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %8, align 8
  %206 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %205, i32 0, i32 1
  store i32 8, i32* %206, align 4
  %207 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %208 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %207, i32 0, i32 4
  store i64 0, i64* %208, align 8
  %209 = load %struct.al_eth_ring*, %struct.al_eth_ring** %6, align 8
  %210 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %209, i32 0, i32 3
  store i64 0, i64* %210, align 8
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %202, %193, %167, %110, %88, %78, %46, %26
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i32 @al_dma_alloc_coherent(%struct.device*, i32*, i32*, i32*, i8**, i32) #1

declare dso_local i32 @device_printf(%struct.device*, i8*, ...) #1

declare dso_local i32 @device_printf_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32* @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.al_eth_ring*) #1

declare dso_local i8* @taskqueue_create_fast(i8*, i32, i32, i8**) #1

declare dso_local i32 @taskqueue_start_threads(i8**, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(%struct.device*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
