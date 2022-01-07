; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_tx_ring_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_tx_ring_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32*, i32*, i32, %struct.hn_tx_ring* }
%struct.hn_tx_ring = type { i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, %struct.hn_txdesc*, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.hn_softc* }
%struct.hn_txdesc = type { i32, i32, i32, i32, i32, i32, i32, %struct.hn_tx_ring* }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"hn txlist\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"hn tx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@HN_TX_DESC_CNT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@hn_tx_taskq_mode = common dso_local global i64 0, align 8
@HN_TX_TASKQ_M_EVTTQ = common dso_local global i64 0, align 8
@hn_tx_taskq_cnt = common dso_local global i32 0, align 4
@hn_xmit_txeof = common dso_local global i32 0, align 4
@hn_xmit_taskfunc = common dso_local global i32 0, align 4
@hn_xmit_txeof_taskfunc = common dso_local global i32 0, align 4
@hn_direct_tx_size = common dso_local global i32 0, align 4
@HN_RNDIS_PKT_ALIGN = common dso_local global i32 0, align 4
@HN_RNDIS_PKT_BOUNDARY = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@HN_RNDIS_PKT_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to create rndis dmatag\0A\00", align 1
@HN_TX_DATA_BOUNDARY = common dso_local global i32 0, align 4
@HN_TX_DATA_MAXSIZE = common dso_local global i32 0, align 4
@HN_TX_DATA_SEGCNT_MAX = common dso_local global i32 0, align 4
@HN_TX_DATA_SEGSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to create data dmatag\0A\00", align 1
@HN_NVS_CHIM_IDX_INVALID = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to allocate rndis_packet_msg, %d\0A\00", align 1
@hyperv_dma_map_paddr = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to load rndis_packet_msg, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"failed to allocate tx data dmamap\0A\00", align 1
@HN_TXD_FLAG_ONLIST = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"oactive\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"over active\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"packets\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"# of packets transmitted\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"sends\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"# of sends\00", align 1
@hn_start_taskfunc = common dso_local global i32 0, align 4
@hn_start_txeof = common dso_local global i32 0, align 4
@hn_start_txeof_taskfunc = common dso_local global i32 0, align 4
@hn_use_if_start = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*, i32)* @hn_tx_ring_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_tx_ring_create(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hn_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hn_txdesc*, align 8
  %13 = alloca %struct.sysctl_oid_list*, align 8
  %14 = alloca %struct.sysctl_ctx_list*, align 8
  %15 = alloca [16 x i8], align 16
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %17 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %16, i32 0, i32 3
  %18 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %18, i64 %20
  store %struct.hn_tx_ring* %21, %struct.hn_tx_ring** %6, align 8
  %22 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %23 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %26 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %27 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %26, i32 0, i32 21
  store %struct.hn_softc* %25, %struct.hn_softc** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %32 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %31, i32 0, i32 20
  %33 = load i32, i32* @MTX_SPIN, align 4
  %34 = call i32 @mtx_init(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %33)
  %35 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %36 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %35, i32 0, i32 14
  %37 = load i32, i32* @MTX_DEF, align 4
  %38 = call i32 @mtx_init(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %37)
  %39 = load i32, i32* @HN_TX_DESC_CNT, align 4
  %40 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %41 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %43 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 40, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @M_DEVBUF, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = load i32, i32* @M_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.hn_txdesc* @malloc(i32 %47, i32 %48, i32 %51)
  %53 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %54 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %53, i32 0, i32 12
  store %struct.hn_txdesc* %52, %struct.hn_txdesc** %54, align 8
  %55 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %56 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %55, i32 0, i32 9
  %57 = call i32 @SLIST_INIT(i32* %56)
  %58 = load i64, i64* @hn_tx_taskq_mode, align 8
  %59 = load i64, i64* @HN_TX_TASKQ_M_EVTTQ, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %2
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @device_get_parent(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @HN_RING_IDX2CPU(%struct.hn_softc* %65, i32 %66)
  %68 = call i32 @VMBUS_GET_EVENT_TASKQ(i32 %63, i32 %64, i32 %67)
  %69 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %70 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %69, i32 0, i32 19
  store i32 %68, i32* %70, align 4
  br label %83

71:                                               ; preds = %2
  %72 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %73 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @hn_tx_taskq_cnt, align 4
  %77 = srem i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %82 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %81, i32 0, i32 19
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %71, %61
  %84 = load i32, i32* @hn_xmit_txeof, align 4
  %85 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %86 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %85, i32 0, i32 18
  store i32 %84, i32* %86, align 8
  %87 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %88 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %87, i32 0, i32 17
  %89 = load i32, i32* @hn_xmit_taskfunc, align 4
  %90 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %91 = call i32 @TASK_INIT(i32* %88, i32 0, i32 %89, %struct.hn_tx_ring* %90)
  %92 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %93 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %92, i32 0, i32 16
  %94 = load i32, i32* @hn_xmit_txeof_taskfunc, align 4
  %95 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %96 = call i32 @TASK_INIT(i32* %93, i32 0, i32 %94, %struct.hn_tx_ring* %95)
  %97 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %98 = call i32 @hn_get_txswq_depth(%struct.hn_tx_ring* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @M_DEVBUF, align 4
  %101 = load i32, i32* @M_WAITOK, align 4
  %102 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %103 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %102, i32 0, i32 14
  %104 = call i8* @buf_ring_alloc(i32 %99, i32 %100, i32 %101, i32* %103)
  %105 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %106 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %105, i32 0, i32 15
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @hn_direct_tx_size, align 4
  %108 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %109 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %108, i32 0, i32 13
  store i32 %107, i32* %109, align 8
  %110 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %111 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @bus_get_dma_tag(i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @HN_RNDIS_PKT_ALIGN, align 4
  %116 = load i32, i32* @HN_RNDIS_PKT_BOUNDARY, align 4
  %117 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %118 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %119 = load i32, i32* @HN_RNDIS_PKT_LEN, align 4
  %120 = load i32, i32* @HN_RNDIS_PKT_LEN, align 4
  %121 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %122 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %121, i32 0, i32 10
  %123 = call i32 @bus_dma_tag_create(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32* null, i32* null, i32 %119, i32 1, i32 %120, i32 0, i32* null, i32* null, i32* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %83
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i32, i8*, ...) @device_printf(i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %330

130:                                              ; preds = %83
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @HN_TX_DATA_BOUNDARY, align 4
  %133 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %134 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %135 = load i32, i32* @HN_TX_DATA_MAXSIZE, align 4
  %136 = load i32, i32* @HN_TX_DATA_SEGCNT_MAX, align 4
  %137 = load i32, i32* @HN_TX_DATA_SEGSIZE, align 4
  %138 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %139 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %138, i32 0, i32 11
  %140 = call i32 @bus_dma_tag_create(i32 %131, i32 1, i32 %132, i32 %133, i32 %134, i32* null, i32* null, i32 %135, i32 %136, i32 %137, i32 0, i32* null, i32* null, i32* %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %130
  %144 = load i32, i32* %7, align 4
  %145 = call i32 (i32, i8*, ...) @device_printf(i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %3, align 4
  br label %330

147:                                              ; preds = %130
  store i32 0, i32* %10, align 4
  br label %148

148:                                              ; preds = %265, %147
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %151 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %268

154:                                              ; preds = %148
  %155 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %156 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %155, i32 0, i32 12
  %157 = load %struct.hn_txdesc*, %struct.hn_txdesc** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %157, i64 %159
  store %struct.hn_txdesc* %160, %struct.hn_txdesc** %12, align 8
  %161 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %162 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %163 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %162, i32 0, i32 7
  store %struct.hn_tx_ring* %161, %struct.hn_tx_ring** %163, align 8
  %164 = load i32, i32* @HN_NVS_CHIM_IDX_INVALID, align 4
  %165 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %166 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 8
  %167 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %168 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %167, i32 0, i32 5
  %169 = call i32 @STAILQ_INIT(i32* %168)
  %170 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %171 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %174 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %173, i32 0, i32 2
  %175 = bitcast i32* %174 to i8**
  %176 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %177 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @BUS_DMA_ZERO, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %182 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %181, i32 0, i32 1
  %183 = call i32 @bus_dmamem_alloc(i32 %172, i8** %175, i32 %180, i32* %182)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %154
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 (i32, i8*, ...) @device_printf(i32 %187, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %3, align 4
  br label %330

191:                                              ; preds = %154
  %192 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %193 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %192, i32 0, i32 10
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %196 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %199 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @HN_RNDIS_PKT_LEN, align 4
  %202 = load i32, i32* @hyperv_dma_map_paddr, align 4
  %203 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %204 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %203, i32 0, i32 4
  %205 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %206 = call i32 @bus_dmamap_load(i32 %194, i32 %197, i32 %200, i32 %201, i32 %202, i32* %204, i32 %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %191
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 (i32, i8*, ...) @device_printf(i32 %210, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %211)
  %213 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %214 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %217 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %220 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @bus_dmamem_free(i32 %215, i32 %218, i32 %221)
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %3, align 4
  br label %330

224:                                              ; preds = %191
  %225 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %226 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %225, i32 0, i32 11
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %229 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %228, i32 0, i32 3
  %230 = call i32 @bus_dmamap_create(i32 %227, i32 0, i32* %229)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %254

233:                                              ; preds = %224
  %234 = load i32, i32* %7, align 4
  %235 = call i32 (i32, i8*, ...) @device_printf(i32 %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %236 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %237 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %236, i32 0, i32 10
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %240 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @bus_dmamap_unload(i32 %238, i32 %241)
  %243 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %244 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %243, i32 0, i32 10
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %247 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %250 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @bus_dmamem_free(i32 %245, i32 %248, i32 %251)
  %253 = load i32, i32* %9, align 4
  store i32 %253, i32* %3, align 4
  br label %330

254:                                              ; preds = %224
  %255 = load i32, i32* @HN_TXD_FLAG_ONLIST, align 4
  %256 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %257 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %261 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %260, i32 0, i32 9
  %262 = load %struct.hn_txdesc*, %struct.hn_txdesc** %12, align 8
  %263 = load i32, i32* @link, align 4
  %264 = call i32 @SLIST_INSERT_HEAD(i32* %261, %struct.hn_txdesc* %262, i32 %263)
  br label %265

265:                                              ; preds = %254
  %266 = load i32, i32* %10, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %10, align 4
  br label %148

268:                                              ; preds = %148
  %269 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %270 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %273 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %272, i32 0, i32 3
  store i32 %271, i32* %273, align 4
  %274 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %275 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %329

278:                                              ; preds = %268
  %279 = load i32, i32* %7, align 4
  %280 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %279)
  store %struct.sysctl_ctx_list* %280, %struct.sysctl_ctx_list** %14, align 8
  %281 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %282 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32* %283)
  store %struct.sysctl_oid_list* %284, %struct.sysctl_oid_list** %13, align 8
  %285 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %286 = load i32, i32* %5, align 4
  %287 = call i32 @snprintf(i8* %285, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %286)
  %288 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %289 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %290 = load i32, i32* @OID_AUTO, align 4
  %291 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %292 = load i32, i32* @CTLFLAG_RD, align 4
  %293 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %294 = or i32 %292, %293
  %295 = call i32* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %288, %struct.sysctl_oid_list* %289, i32 %290, i8* %291, i32 %294, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %296 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %297 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %296, i32 0, i32 7
  store i32* %295, i32** %297, align 8
  %298 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %299 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %298, i32 0, i32 7
  %300 = load i32*, i32** %299, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %328

302:                                              ; preds = %278
  %303 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %304 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %303, i32 0, i32 7
  %305 = load i32*, i32** %304, align 8
  %306 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32* %305)
  store %struct.sysctl_oid_list* %306, %struct.sysctl_oid_list** %13, align 8
  %307 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %308 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %309 = load i32, i32* @OID_AUTO, align 4
  %310 = load i32, i32* @CTLFLAG_RD, align 4
  %311 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %312 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %311, i32 0, i32 4
  %313 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %307, %struct.sysctl_oid_list* %308, i32 %309, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %310, i32* %312, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %314 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %315 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %316 = load i32, i32* @OID_AUTO, align 4
  %317 = load i32, i32* @CTLFLAG_RW, align 4
  %318 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %319 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %318, i32 0, i32 6
  %320 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %314, %struct.sysctl_oid_list* %315, i32 %316, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %317, i32* %319, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %321 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %322 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %323 = load i32, i32* @OID_AUTO, align 4
  %324 = load i32, i32* @CTLFLAG_RW, align 4
  %325 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %326 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %325, i32 0, i32 5
  %327 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %321, %struct.sysctl_oid_list* %322, i32 %323, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %324, i32* %326, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %328

328:                                              ; preds = %302, %278
  br label %329

329:                                              ; preds = %328, %268
  store i32 0, i32* %3, align 4
  br label %330

330:                                              ; preds = %329, %233, %209, %186, %143, %126
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.hn_txdesc* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @VMBUS_GET_EVENT_TASKQ(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @HN_RING_IDX2CPU(%struct.hn_softc*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.hn_tx_ring*) #1

declare dso_local i32 @hn_get_txswq_depth(%struct.hn_tx_ring*) #1

declare dso_local i8* @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.hn_txdesc*, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
