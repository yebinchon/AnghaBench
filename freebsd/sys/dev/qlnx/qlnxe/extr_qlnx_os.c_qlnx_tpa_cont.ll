; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_tpa_cont.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_tpa_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.qlnx_fastpath = type { i32, i32, i32 }
%struct.qlnx_rx_queue = type { i64, %struct.TYPE_6__*, i32, %struct.sw_rx_data* }
%struct.TYPE_6__ = type { i64, %struct.mbuf* }
%struct.mbuf = type { i64, %struct.mbuf*, i32 }
%struct.sw_rx_data = type { %struct.mbuf*, i32 }
%struct.eth_fast_path_rx_tpa_cont_cqe = type { i64, i64*, i32 }

@.str = private unnamed_addr constant [312 x i8] c"[%d]: enter\0A                 \09 type = 0x%x\0A                 \09 tpa_agg_index = 0x%x\0A                 \09 len_list[0] = 0x%x\0A                 \09 len_list[1] = 0x%x\0A                 \09 len_list[2] = 0x%x\0A                 \09 len_list[3] = 0x%x\0A                 \09 len_list[4] = 0x%x\0A                 \09 len_list[5] = 0x%x\0A\00", align 1
@ETH_TPA_MAX_AGGS_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"[%d]: 0\0A \00", align 1
@ETH_TPA_CQE_CONT_LEN_LIST_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"[%d]: 1\0A \00", align 1
@QLNX_AGG_STATE_START = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"[%d]: mpc = NULL\0A\00", align 1
@QLNX_AGG_STATE_ERROR = common dso_local global i8* null, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [85 x i8] c"[%d]: New buffer allocation failed, dropping incoming packet and reusing its buffer\0A\00", align 1
@M_PKTHDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"[%d]: 2\0A\09mpf = %p mpl = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.qlnx_fastpath*, %struct.qlnx_rx_queue*, %struct.eth_fast_path_rx_tpa_cont_cqe*)* @qlnx_tpa_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_tpa_cont(%struct.TYPE_7__* %0, %struct.qlnx_fastpath* %1, %struct.qlnx_rx_queue* %2, %struct.eth_fast_path_rx_tpa_cont_cqe* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.qlnx_fastpath*, align 8
  %7 = alloca %struct.qlnx_rx_queue*, align 8
  %8 = alloca %struct.eth_fast_path_rx_tpa_cont_cqe*, align 8
  %9 = alloca %struct.sw_rx_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.qlnx_fastpath* %1, %struct.qlnx_fastpath** %6, align 8
  store %struct.qlnx_rx_queue* %2, %struct.qlnx_rx_queue** %7, align 8
  store %struct.eth_fast_path_rx_tpa_cont_cqe* %3, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %22 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %25 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %28 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %31 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %36 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %41 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %46 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %51 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %56 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 5
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @QL_DPRINT7(%struct.TYPE_7__* %20, i8* getelementptr inbounds ([312 x i8], [312 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i64 %29, i64 %34, i64 %39, i64 %44, i64 %49, i64 %54, i64 %59)
  %61 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %62 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* @ETH_TPA_MAX_AGGS_NUM, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %70 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @QL_DPRINT7(%struct.TYPE_7__* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %74 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %291

77:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %254, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @ETH_TPA_CQE_CONT_LEN_LIST_SIZE, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %257

82:                                               ; preds = %78
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %85 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @QL_DPRINT7(%struct.TYPE_7__* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %89 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %257

97:                                               ; preds = %82
  %98 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %99 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i64, i64* %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @QLNX_AGG_STATE_START, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %109 = call i32 @qlnx_reuse_rx_data(%struct.qlnx_rx_queue* %108)
  br label %254

110:                                              ; preds = %97
  %111 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %112 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %111, i32 0, i32 3
  %113 = load %struct.sw_rx_data*, %struct.sw_rx_data** %112, align 8
  %114 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %115 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %113, i64 %116
  store %struct.sw_rx_data* %117, %struct.sw_rx_data** %9, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %122 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %125 = call i32 @bus_dmamap_sync(i32 %120, i32 %123, i32 %124)
  %126 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %127 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %126, i32 0, i32 0
  %128 = load %struct.mbuf*, %struct.mbuf** %127, align 8
  store %struct.mbuf* %128, %struct.mbuf** %13, align 8
  %129 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %130 = icmp eq %struct.mbuf* %129, null
  br i1 %130, label %131, label %168

131:                                              ; preds = %110
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %134 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @QL_DPRINT7(%struct.TYPE_7__* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %138 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %142 = icmp ne %struct.mbuf* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %145 = call i32 @m_freem(%struct.mbuf* %144)
  br label %146

146:                                              ; preds = %143, %131
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  %147 = load i8*, i8** @QLNX_AGG_STATE_ERROR, align 8
  %148 = ptrtoint i8* %147 to i64
  %149 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %150 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i64, i64* %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i64 %148, i64* %154, align 8
  %155 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %156 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %155, i32 0, i32 2
  %157 = call i32 @ecore_chain_consume(i32* %156)
  %158 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %159 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, 1
  %162 = load i32, i32* @RX_RING_SIZE, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = and i64 %161, %164
  %166 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %167 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %254

168:                                              ; preds = %110
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %171 = call i64 @qlnx_alloc_rx_buffer(%struct.TYPE_7__* %169, %struct.qlnx_rx_queue* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %208

173:                                              ; preds = %168
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %175 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %176 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @QL_DPRINT7(%struct.TYPE_7__* %174, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %180 = call i32 @qlnx_reuse_rx_data(%struct.qlnx_rx_queue* %179)
  %181 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %182 = icmp ne %struct.mbuf* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %173
  %184 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %185 = call i32 @m_freem(%struct.mbuf* %184)
  br label %186

186:                                              ; preds = %183, %173
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  %187 = load i8*, i8** @QLNX_AGG_STATE_ERROR, align 8
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %190 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %189, i32 0, i32 1
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load i64, i64* %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  store i64 %188, i64* %194, align 8
  %195 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %196 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %195, i32 0, i32 2
  %197 = call i32 @ecore_chain_consume(i32* %196)
  %198 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %199 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, 1
  %202 = load i32, i32* @RX_RING_SIZE, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = and i64 %201, %204
  %206 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %207 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  br label %254

208:                                              ; preds = %168
  %209 = load i32, i32* @M_PKTHDR, align 4
  %210 = xor i32 %209, -1
  %211 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %212 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = and i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %216 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %215, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %216, align 8
  %217 = load %struct.eth_fast_path_rx_tpa_cont_cqe*, %struct.eth_fast_path_rx_tpa_cont_cqe** %8, align 8
  %218 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, %struct.eth_fast_path_rx_tpa_cont_cqe* %217, i32 0, i32 1
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %225 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  %226 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %227 = icmp eq %struct.mbuf* %226, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %208
  %229 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %229, %struct.mbuf** %12, align 8
  store %struct.mbuf* %229, %struct.mbuf** %11, align 8
  br label %240

230:                                              ; preds = %208
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %235 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  %236 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %237 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %238 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %237, i32 0, i32 1
  store %struct.mbuf* %236, %struct.mbuf** %238, align 8
  %239 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %239, %struct.mbuf** %12, align 8
  br label %240

240:                                              ; preds = %230, %228
  %241 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %242 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %241, i32 0, i32 2
  %243 = call i32 @ecore_chain_consume(i32* %242)
  %244 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %245 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = add i64 %246, 1
  %248 = load i32, i32* @RX_RING_SIZE, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = and i64 %247, %250
  %252 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %253 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  br label %254

254:                                              ; preds = %240, %186, %146, %107
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %10, align 4
  br label %78

257:                                              ; preds = %96, %78
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %259 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %260 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %263 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %264 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @QL_DPRINT7(%struct.TYPE_7__* %258, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %261, %struct.mbuf* %262, %struct.mbuf* %263)
  %265 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %266 = icmp ne %struct.mbuf* %265, null
  br i1 %266, label %267, label %290

267:                                              ; preds = %257
  %268 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %269 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %268, i32 0, i32 1
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = load i64, i64* %15, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  %274 = load %struct.mbuf*, %struct.mbuf** %273, align 8
  store %struct.mbuf* %274, %struct.mbuf** %14, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %279 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  %280 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %281 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %282 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %281, i32 0, i32 1
  store %struct.mbuf* %280, %struct.mbuf** %282, align 8
  %283 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %284 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %7, align 8
  %285 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %284, i32 0, i32 1
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = load i64, i64* %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 1
  store %struct.mbuf* %283, %struct.mbuf** %289, align 8
  br label %290

290:                                              ; preds = %267, %257
  br label %291

291:                                              ; preds = %290, %67
  ret void
}

declare dso_local i32 @QL_DPRINT7(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @qlnx_reuse_rx_data(%struct.qlnx_rx_queue*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ecore_chain_consume(i32*) #1

declare dso_local i64 @qlnx_alloc_rx_buffer(%struct.TYPE_7__*, %struct.qlnx_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
