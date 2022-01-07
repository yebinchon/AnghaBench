; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_rxtx.c_lio_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_rxtx.c_lio_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { i32*, i32*, %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.lio_instr_queue = type { i32, i32, %struct.lio_request_list*, %struct.TYPE_22__, %struct.octeon_device* }
%struct.lio_request_list = type { %struct.lio_mbuf_free_info, i32 }
%struct.lio_mbuf_free_info = type { %struct.lio_gather*, %struct.mbuf*, i32 }
%struct.lio_gather = type { i32, i8*, %struct.lio_data_pkt* }
%struct.lio_data_pkt = type { i32, i64, %struct.TYPE_18__, i32, i8**, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32*, i32, i8* }
%struct.mbuf = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_23__** }
%struct.TYPE_23__ = type { %struct.lio_iq_stats }
%struct.lio_iq_stats = type { i32, i32, i64, i32, i32, i32, i32 }
%union.lio_cmd_setup = type { i64, [16 x i8] }
%struct.octeon_instr_irh = type { i32, i32 }
%union.lio_tx_info = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@LIO_MAX_SG = common dso_local global i32 0, align 4
@LIO_IFSTATE_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Transmit failed link_status : %d\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Transmit failed iq:%d full\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"bus_dmamap_load_mbuf_sg failed with error %d. iq:%d\00", align 1
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_IP_TCP = common dso_local global i32 0, align 4
@CSUM_IP6_TCP = common dso_local global i32 0, align 4
@CSUM_IP_UDP = common dso_local global i32 0, align 4
@CSUM_IP6_UDP = common dso_local global i32 0, align 4
@LIO_REQTYPE_NORESP_NET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Transmit scatter gather: glist null!\0A\00", align 1
@LIO_REQTYPE_NORESP_NET_SG = common dso_local global i32 0, align 4
@CSUM_IP_TSO = common dso_local global i32 0, align 4
@CSUM_IP6_TSO = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@LIO_IQ_SEND_FAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"IQ%d Transmit dropped: %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_xmit(%struct.lio* %0, %struct.lio_instr_queue* %1, %struct.mbuf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lio*, align 8
  %6 = alloca %struct.lio_instr_queue*, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca %struct.lio_data_pkt, align 8
  %9 = alloca %union.lio_cmd_setup, align 8
  %10 = alloca %struct.lio_mbuf_free_info*, align 8
  %11 = alloca %struct.octeon_device*, align 8
  %12 = alloca %struct.lio_iq_stats*, align 8
  %13 = alloca %struct.octeon_instr_irh*, align 8
  %14 = alloca %struct.lio_request_list*, align 8
  %15 = alloca %union.lio_tx_info*, align 8
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.mbuf*, align 8
  %27 = alloca %struct.lio_gather*, align 8
  %28 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %5, align 8
  store %struct.lio_instr_queue* %1, %struct.lio_instr_queue** %6, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  store %struct.lio_mbuf_free_info* null, %struct.lio_mbuf_free_info** %10, align 8
  %29 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %6, align 8
  %30 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %29, i32 0, i32 4
  %31 = load %struct.octeon_device*, %struct.octeon_device** %30, align 8
  store %struct.octeon_device* %31, %struct.octeon_device** %11, align 8
  %32 = load i32, i32* @LIO_MAX_SG, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %17, align 8
  %35 = alloca %struct.TYPE_17__, i64 %33, align 16
  store i64 %33, i64* %18, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  %36 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %6, align 8
  %37 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %22, align 4
  store i32 %41, i32* %21, align 4
  %42 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %43 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %43, align 8
  %45 = load i32, i32* %22, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %44, i64 %46
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  store %struct.lio_iq_stats* %49, %struct.lio_iq_stats** %12, align 8
  %50 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %6, align 8
  %51 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %50, i32 0, i32 2
  %52 = load %struct.lio_request_list*, %struct.lio_request_list** %51, align 8
  %53 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %6, align 8
  %54 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.lio_request_list, %struct.lio_request_list* %52, i64 %56
  store %struct.lio_request_list* %57, %struct.lio_request_list** %14, align 8
  %58 = load %struct.lio*, %struct.lio** %5, align 8
  %59 = getelementptr inbounds %struct.lio, %struct.lio* %58, i32 0, i32 3
  %60 = call i32 @atomic_load_acq_int(i32* %59)
  %61 = load i32, i32* @LIO_IFSTATE_RUNNING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %3
  %65 = load %struct.lio*, %struct.lio** %5, align 8
  %66 = getelementptr inbounds %struct.lio, %struct.lio* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %64, %3
  %73 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %74 = load %struct.lio*, %struct.lio** %5, align 8
  %75 = getelementptr inbounds %struct.lio, %struct.lio* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @lio_dev_info(%struct.octeon_device* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @ENETDOWN, align 4
  store i32 %81, i32* %24, align 4
  br label %437

82:                                               ; preds = %64
  %83 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %84 = load i32, i32* %22, align 4
  %85 = call i64 @lio_iq_is_full(%struct.octeon_device* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %89 = load i32, i32* %22, align 4
  %90 = call i32 (%struct.octeon_device*, i8*, i32, ...) @lio_dev_dbg(%struct.octeon_device* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.lio_iq_stats*, %struct.lio_iq_stats** %12, align 8
  %92 = getelementptr inbounds %struct.lio_iq_stats, %struct.lio_iq_stats* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @ENOBUFS, align 4
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %454

96:                                               ; preds = %82
  %97 = load %struct.lio_request_list*, %struct.lio_request_list** %14, align 8
  %98 = getelementptr inbounds %struct.lio_request_list, %struct.lio_request_list* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %19, align 4
  %100 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %6, align 8
  %101 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %19, align 4
  %104 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %104, align 8
  %106 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %107 = call i32 @bus_dmamap_load_mbuf_sg(i32 %102, i32 %103, %struct.mbuf* %105, %struct.TYPE_17__* %35, i32* %23, i32 %106)
  store i32 %107, i32* %24, align 4
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* @EFBIG, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %96
  %112 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %113 = load %struct.mbuf*, %struct.mbuf** %112, align 8
  %114 = load i32, i32* @M_NOWAIT, align 4
  %115 = call %struct.mbuf* @m_defrag(%struct.mbuf* %113, i32 %114)
  store %struct.mbuf* %115, %struct.mbuf** %26, align 8
  %116 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %117 = icmp eq %struct.mbuf* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.lio_iq_stats*, %struct.lio_iq_stats** %12, align 8
  %120 = getelementptr inbounds %struct.lio_iq_stats, %struct.lio_iq_stats* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %437

123:                                              ; preds = %111
  %124 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %125 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %124, %struct.mbuf** %125, align 8
  %126 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %6, align 8
  %127 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %131 = load %struct.mbuf*, %struct.mbuf** %130, align 8
  %132 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %133 = call i32 @bus_dmamap_load_mbuf_sg(i32 %128, i32 %129, %struct.mbuf* %131, %struct.TYPE_17__* %35, i32* %23, i32 %132)
  store i32 %133, i32* %24, align 4
  br label %134

134:                                              ; preds = %123, %96
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %435

139:                                              ; preds = %134
  %140 = load i32, i32* %24, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load %struct.lio_iq_stats*, %struct.lio_iq_stats** %12, align 8
  %144 = getelementptr inbounds %struct.lio_iq_stats, %struct.lio_iq_stats* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* %22, align 4
  %150 = call i32 (%struct.octeon_device*, i8*, i32, ...) @lio_dev_dbg(%struct.octeon_device* %147, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %149)
  br label %437

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %154 = load %struct.mbuf*, %struct.mbuf** %153, align 8
  store %struct.mbuf* %154, %struct.mbuf** %16, align 8
  %155 = load %struct.lio_request_list*, %struct.lio_request_list** %14, align 8
  %156 = getelementptr inbounds %struct.lio_request_list, %struct.lio_request_list* %155, i32 0, i32 0
  store %struct.lio_mbuf_free_info* %156, %struct.lio_mbuf_free_info** %10, align 8
  %157 = load i32, i32* %19, align 4
  %158 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %10, align 8
  %159 = getelementptr inbounds %struct.lio_mbuf_free_info, %struct.lio_mbuf_free_info* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %161 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %10, align 8
  %162 = getelementptr inbounds %struct.lio_mbuf_free_info, %struct.lio_mbuf_free_info* %161, i32 0, i32 1
  store %struct.mbuf* %160, %struct.mbuf** %162, align 8
  %163 = call i32 @bzero(%struct.lio_data_pkt* %8, i32 64)
  %164 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %10, align 8
  %165 = bitcast %struct.lio_mbuf_free_info* %164 to i8*
  %166 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 5
  store i8* %165, i8** %166, align 8
  %167 = load i32, i32* %22, align 4
  %168 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 0
  store i32 %167, i32* %168, align 8
  %169 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %170 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 1
  store i64 %172, i64* %173, align 8
  %174 = bitcast %union.lio_cmd_setup* %9 to i64*
  store i64 0, i64* %174, align 8
  %175 = load i32, i32* %22, align 4
  %176 = bitcast %union.lio_cmd_setup* %9 to %struct.TYPE_15__*
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %179 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @CSUM_IP, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %152
  %186 = bitcast %union.lio_cmd_setup* %9 to %struct.TYPE_15__*
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  store i32 1, i32* %187, align 4
  br label %188

188:                                              ; preds = %185, %152
  %189 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %190 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @CSUM_IP_TCP, align 4
  %194 = load i32, i32* @CSUM_IP6_TCP, align 4
  %195 = or i32 %193, %194
  %196 = and i32 %192, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %188
  %199 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %200 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @CSUM_IP_UDP, align 4
  %204 = load i32, i32* @CSUM_IP6_UDP, align 4
  %205 = or i32 %203, %204
  %206 = and i32 %202, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %198, %188
  %209 = bitcast %union.lio_cmd_setup* %9 to %struct.TYPE_15__*
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 2
  store i32 1, i32* %210, align 8
  br label %211

211:                                              ; preds = %208, %198
  %212 = load i32, i32* %23, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %234

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i64 0
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 16
  %218 = bitcast %union.lio_cmd_setup* %9 to %struct.TYPE_15__*
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 1
  store i32 %217, i32* %220, align 4
  %221 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %222 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 2
  %223 = load i32, i32* %21, align 4
  %224 = call i32 @lio_prepare_pci_cmd(%struct.octeon_device* %221, %struct.TYPE_18__* %222, %union.lio_cmd_setup* %9, i32 %223)
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i64 0
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  store i8* %227, i8** %20, align 8
  %228 = load i8*, i8** %20, align 8
  %229 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 2
  store i8* %228, i8** %231, align 8
  %232 = load i32, i32* @LIO_REQTYPE_NORESP_NET, align 4
  %233 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 3
  store i32 %232, i32* %233, align 8
  br label %333

234:                                              ; preds = %211
  %235 = load %struct.lio*, %struct.lio** %5, align 8
  %236 = getelementptr inbounds %struct.lio, %struct.lio* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %22, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = call i32 @mtx_lock(i32* %240)
  %242 = load %struct.lio*, %struct.lio** %5, align 8
  %243 = getelementptr inbounds %struct.lio, %struct.lio* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %22, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = call i64 @lio_delete_first_node(i32* %247)
  %249 = inttoptr i64 %248 to %struct.lio_gather*
  store %struct.lio_gather* %249, %struct.lio_gather** %27, align 8
  %250 = load %struct.lio*, %struct.lio** %5, align 8
  %251 = getelementptr inbounds %struct.lio, %struct.lio* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %22, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = call i32 @mtx_unlock(i32* %255)
  %257 = load %struct.lio_gather*, %struct.lio_gather** %27, align 8
  %258 = icmp eq %struct.lio_gather* %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %234
  %260 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %261 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %260, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %435

262:                                              ; preds = %234
  %263 = bitcast %union.lio_cmd_setup* %9 to %struct.TYPE_15__*
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 3
  store i32 1, i32* %264, align 4
  %265 = load i32, i32* %23, align 4
  %266 = bitcast %union.lio_cmd_setup* %9 to %struct.TYPE_15__*
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  store i32 %265, i32* %268, align 8
  %269 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %270 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 2
  %271 = load i32, i32* %21, align 4
  %272 = call i32 @lio_prepare_pci_cmd(%struct.octeon_device* %269, %struct.TYPE_18__* %270, %union.lio_cmd_setup* %9, i32 %271)
  %273 = load %struct.lio_gather*, %struct.lio_gather** %27, align 8
  %274 = getelementptr inbounds %struct.lio_gather, %struct.lio_gather* %273, i32 0, i32 2
  %275 = load %struct.lio_data_pkt*, %struct.lio_data_pkt** %274, align 8
  %276 = load %struct.lio_gather*, %struct.lio_gather** %27, align 8
  %277 = getelementptr inbounds %struct.lio_gather, %struct.lio_gather* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @bzero(%struct.lio_data_pkt* %275, i32 %278)
  store i32 0, i32* %28, align 4
  br label %280

280:                                              ; preds = %284, %262
  %281 = load i32, i32* %23, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %23, align 4
  %283 = icmp ne i32 %281, 0
  br i1 %283, label %284, label %320

284:                                              ; preds = %280
  %285 = load i32, i32* %28, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 1
  %289 = load i8*, i8** %288, align 8
  %290 = load %struct.lio_gather*, %struct.lio_gather** %27, align 8
  %291 = getelementptr inbounds %struct.lio_gather, %struct.lio_gather* %290, i32 0, i32 2
  %292 = load %struct.lio_data_pkt*, %struct.lio_data_pkt** %291, align 8
  %293 = load i32, i32* %28, align 4
  %294 = ashr i32 %293, 2
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %292, i64 %295
  %297 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %296, i32 0, i32 4
  %298 = load i8**, i8*** %297, align 8
  %299 = load i32, i32* %28, align 4
  %300 = and i32 %299, 3
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8*, i8** %298, i64 %301
  store i8* %289, i8** %302, align 8
  %303 = load %struct.lio_gather*, %struct.lio_gather** %27, align 8
  %304 = getelementptr inbounds %struct.lio_gather, %struct.lio_gather* %303, i32 0, i32 2
  %305 = load %struct.lio_data_pkt*, %struct.lio_data_pkt** %304, align 8
  %306 = load i32, i32* %28, align 4
  %307 = ashr i32 %306, 2
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %305, i64 %308
  %310 = load i32, i32* %28, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 16
  %315 = load i32, i32* %28, align 4
  %316 = and i32 %315, 3
  %317 = call i32 @lio_add_sg_size(%struct.lio_data_pkt* %309, i32 %314, i32 %316)
  %318 = load i32, i32* %28, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %28, align 4
  br label %280

320:                                              ; preds = %280
  %321 = load %struct.lio_gather*, %struct.lio_gather** %27, align 8
  %322 = getelementptr inbounds %struct.lio_gather, %struct.lio_gather* %321, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  store i8* %323, i8** %20, align 8
  %324 = load i8*, i8** %20, align 8
  %325 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 2
  store i8* %324, i8** %327, align 8
  %328 = load %struct.lio_gather*, %struct.lio_gather** %27, align 8
  %329 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %10, align 8
  %330 = getelementptr inbounds %struct.lio_mbuf_free_info, %struct.lio_mbuf_free_info* %329, i32 0, i32 0
  store %struct.lio_gather* %328, %struct.lio_gather** %330, align 8
  %331 = load i32, i32* @LIO_REQTYPE_NORESP_NET_SG, align 4
  %332 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 3
  store i32 %331, i32* %332, align 8
  br label %333

333:                                              ; preds = %320, %214
  %334 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 1
  %337 = bitcast i32* %336 to %struct.octeon_instr_irh*
  store %struct.octeon_instr_irh* %337, %struct.octeon_instr_irh** %13, align 8
  %338 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 0
  %343 = bitcast i32* %342 to %union.lio_tx_info*
  store %union.lio_tx_info* %343, %union.lio_tx_info** %15, align 8
  %344 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %345 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @CSUM_IP_TSO, align 4
  %349 = load i32, i32* @CSUM_IP6_TSO, align 4
  %350 = or i32 %348, %349
  %351 = and i32 %347, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %377

353:                                              ; preds = %333
  %354 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %355 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = load %union.lio_tx_info*, %union.lio_tx_info** %15, align 8
  %359 = bitcast %union.lio_tx_info* %358 to %struct.TYPE_20__*
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 1
  store i32 %357, i32* %360, align 8
  %361 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %362 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %362, i32 0, i32 3
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %366 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = call i64 @howmany(i64 %364, i32 %368)
  %370 = load %union.lio_tx_info*, %union.lio_tx_info** %15, align 8
  %371 = bitcast %union.lio_tx_info* %370 to %struct.TYPE_20__*
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 0
  store i64 %369, i64* %372, align 8
  %373 = load %struct.lio_iq_stats*, %struct.lio_iq_stats** %12, align 8
  %374 = getelementptr inbounds %struct.lio_iq_stats, %struct.lio_iq_stats* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 8
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %374, align 8
  br label %377

377:                                              ; preds = %353, %333
  %378 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %379 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @M_VLANTAG, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %399

384:                                              ; preds = %377
  %385 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %386 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = ashr i32 %388, 13
  %390 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %13, align 8
  %391 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %390, i32 0, i32 0
  store i32 %389, i32* %391, align 4
  %392 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %393 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = and i32 %395, 4095
  %397 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %13, align 8
  %398 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %397, i32 0, i32 1
  store i32 %396, i32* %398, align 4
  br label %399

399:                                              ; preds = %384, %377
  %400 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %401 = call i32 @lio_send_data_pkt(%struct.octeon_device* %400, %struct.lio_data_pkt* %8)
  store i32 %401, i32* %24, align 4
  %402 = load i32, i32* %24, align 4
  %403 = load i32, i32* @LIO_IQ_SEND_FAILED, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %406

405:                                              ; preds = %399
  br label %435

406:                                              ; preds = %399
  %407 = load %union.lio_tx_info*, %union.lio_tx_info** %15, align 8
  %408 = bitcast %union.lio_tx_info* %407 to %struct.TYPE_20__*
  %409 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %421

412:                                              ; preds = %406
  %413 = load %union.lio_tx_info*, %union.lio_tx_info** %15, align 8
  %414 = bitcast %union.lio_tx_info* %413 to %struct.TYPE_20__*
  %415 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.lio_iq_stats*, %struct.lio_iq_stats** %12, align 8
  %418 = getelementptr inbounds %struct.lio_iq_stats, %struct.lio_iq_stats* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = add nsw i64 %419, %416
  store i64 %420, i64* %418, align 8
  br label %426

421:                                              ; preds = %406
  %422 = load %struct.lio_iq_stats*, %struct.lio_iq_stats** %12, align 8
  %423 = getelementptr inbounds %struct.lio_iq_stats, %struct.lio_iq_stats* %422, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = add nsw i64 %424, 1
  store i64 %425, i64* %423, align 8
  br label %426

426:                                              ; preds = %421, %412
  %427 = getelementptr inbounds %struct.lio_data_pkt, %struct.lio_data_pkt* %8, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.lio_iq_stats*, %struct.lio_iq_stats** %12, align 8
  %430 = getelementptr inbounds %struct.lio_iq_stats, %struct.lio_iq_stats* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = sext i32 %431 to i64
  %433 = add nsw i64 %432, %428
  %434 = trunc i64 %433 to i32
  store i32 %434, i32* %430, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %454

435:                                              ; preds = %405, %259, %138
  %436 = load i32, i32* @ENOBUFS, align 4
  store i32 %436, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %454

437:                                              ; preds = %142, %118, %72
  %438 = load %struct.lio_iq_stats*, %struct.lio_iq_stats** %12, align 8
  %439 = getelementptr inbounds %struct.lio_iq_stats, %struct.lio_iq_stats* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %439, align 8
  %442 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %443 = load i32, i32* %22, align 4
  %444 = load %struct.lio_iq_stats*, %struct.lio_iq_stats** %12, align 8
  %445 = getelementptr inbounds %struct.lio_iq_stats, %struct.lio_iq_stats* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = call i32 @LIO_CAST64(i32 %446)
  %448 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %442, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %443, i32 %447)
  %449 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %450 = load %struct.mbuf*, %struct.mbuf** %449, align 8
  %451 = call i32 @m_freem(%struct.mbuf* %450)
  %452 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %452, align 8
  %453 = load i32, i32* %24, align 4
  store i32 %453, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %454

454:                                              ; preds = %437, %435, %426, %87
  %455 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %455)
  %456 = load i32, i32* %4, align 4
  ret i32 %456
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atomic_load_acq_int(i32*) #2

declare dso_local i32 @lio_dev_info(%struct.octeon_device*, i8*, i32) #2

declare dso_local i64 @lio_iq_is_full(%struct.octeon_device*, i32) #2

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i32, ...) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_17__*, i32*, i32) #2

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #2

declare dso_local i32 @bzero(%struct.lio_data_pkt*, i32) #2

declare dso_local i32 @lio_prepare_pci_cmd(%struct.octeon_device*, %struct.TYPE_18__*, %union.lio_cmd_setup*, i32) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i64 @lio_delete_first_node(i32*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, ...) #2

declare dso_local i32 @lio_add_sg_size(%struct.lio_data_pkt*, i32, i32) #2

declare dso_local i64 @howmany(i64, i32) #2

declare dso_local i32 @lio_send_data_pkt(%struct.octeon_device*, %struct.lio_data_pkt*) #2

declare dso_local i32 @LIO_CAST64(i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
