; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_sp_ll2_tx_queue_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_sp_ll2_tx_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ecore_ll2_info = type { i32, %struct.TYPE_6__, i32, i32, %struct.ecore_ll2_tx_queue }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.ecore_ll2_tx_queue = type { i32, i32, i32, i32 }
%struct.core_tx_start_ramrod_data = type { i32, i32, i8*, i8*, i8*, i32, i32, i8*, i32, i8* }
%struct.ecore_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.core_tx_start_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@CORE_RAMROD_TX_QUEUE_START = common dso_local global i32 0, align 4
@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@PQ_FLAGS_LB = common dso_local global i32 0, align 4
@PQ_FLAGS_OOO = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PROTOCOLID_FCOE = common dso_local global i8* null, align 8
@PROTOCOLID_ISCSI = common dso_local global i8* null, align 8
@PROTOCOLID_ROCE = common dso_local global i8* null, align 8
@PROTOCOLID_IWARP = common dso_local global i8* null, align 8
@ECORE_PCI_ISCSI = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unknown connection type: %d\0A\00", align 1
@DB_REC_WIDTH_32B = common dso_local global i32 0, align 4
@DB_REC_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ll2_info*)* @ecore_sp_ll2_tx_queue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_sp_ll2_tx_queue_start(%struct.ecore_hwfn* %0, %struct.ecore_ll2_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ll2_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_ll2_tx_queue*, align 8
  %8 = alloca %struct.core_tx_start_ramrod_data*, align 8
  %9 = alloca %struct.ecore_spq_entry*, align 8
  %10 = alloca %struct.ecore_sp_init_data, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ll2_info* %1, %struct.ecore_ll2_info** %5, align 8
  %14 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %18, i32 0, i32 4
  store %struct.ecore_ll2_tx_queue* %19, %struct.ecore_ll2_tx_queue** %7, align 8
  %20 = load i8*, i8** @OSAL_NULL, align 8
  %21 = bitcast i8* %20 to %struct.core_tx_start_ramrod_data*
  store %struct.core_tx_start_ramrod_data* %21, %struct.core_tx_start_ramrod_data** %8, align 8
  %22 = load i8*, i8** @OSAL_NULL, align 8
  %23 = bitcast i8* %22 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %23, %struct.ecore_spq_entry** %9, align 8
  store i64 0, i64* %11, align 8
  %24 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %26 = call i32 @ECORE_LL2_TX_REGISTERED(%struct.ecore_ll2_info* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %29, i32* %3, align 4
  br label %199

30:                                               ; preds = %2
  %31 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 131
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %38 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %42

39:                                               ; preds = %30
  %40 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %41 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %10, i32 0, i32 12)
  %44 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %45 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %49 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %54 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %56 = load i32, i32* @CORE_RAMROD_TX_QUEUE_START, align 4
  %57 = load i32, i32* @PROTOCOLID_CORE, align 4
  %58 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %55, %struct.ecore_spq_entry** %9, i32 %56, i32 %57, %struct.ecore_sp_init_data* %10)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @ECORE_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %3, align 4
  br label %199

64:                                               ; preds = %42
  %65 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %66 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store %struct.core_tx_start_ramrod_data* %67, %struct.core_tx_start_ramrod_data** %8, align 8
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %69 = call i64 @ecore_int_get_sp_sb_id(%struct.ecore_hwfn* %68)
  %70 = call i8* @OSAL_CPU_TO_LE16(i64 %69)
  %71 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %72 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %71, i32 0, i32 9
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %7, align 8
  %74 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %77 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %79 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @OSAL_CPU_TO_LE16(i64 %81)
  %83 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %84 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %83, i32 0, i32 7
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %86 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %89 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %91 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %94 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %96 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %7, align 8
  %99 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %98, i32 0, i32 2
  %100 = call i32 @ecore_chain_get_pbl_phys(i32* %99)
  %101 = call i32 @DMA_REGPAIR_LE(i32 %97, i32 %100)
  %102 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %7, align 8
  %103 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %102, i32 0, i32 2
  %104 = call i64 @ecore_chain_get_page_cnt(i32* %103)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i8* @OSAL_CPU_TO_LE16(i64 %105)
  %107 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %108 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %110 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %121 [
    i32 128, label %113
    i32 129, label %117
  ]

113:                                              ; preds = %64
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %115 = load i32, i32* @PQ_FLAGS_LB, align 4
  %116 = call i64 @ecore_get_cm_pq_idx(%struct.ecore_hwfn* %114, i32 %115)
  store i64 %116, i64* %11, align 8
  br label %125

117:                                              ; preds = %64
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %119 = load i32, i32* @PQ_FLAGS_OOO, align 4
  %120 = call i64 @ecore_get_cm_pq_idx(%struct.ecore_hwfn* %118, i32 %119)
  store i64 %120, i64* %11, align 8
  br label %125

121:                                              ; preds = %64
  %122 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %123 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %124 = call i64 @ecore_get_cm_pq_idx(%struct.ecore_hwfn* %122, i32 %123)
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %121, %117, %113
  %126 = load i64, i64* %11, align 8
  %127 = call i8* @OSAL_CPU_TO_LE16(i64 %126)
  %128 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %129 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %6, align 4
  switch i32 %130, label %163 [
    i32 134, label %131
    i32 133, label %135
    i32 130, label %139
    i32 132, label %143
    i32 131, label %147
  ]

131:                                              ; preds = %125
  %132 = load i8*, i8** @PROTOCOLID_FCOE, align 8
  %133 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %134 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  br label %170

135:                                              ; preds = %125
  %136 = load i8*, i8** @PROTOCOLID_ISCSI, align 8
  %137 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %138 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  br label %170

139:                                              ; preds = %125
  %140 = load i8*, i8** @PROTOCOLID_ROCE, align 8
  %141 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %142 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  br label %170

143:                                              ; preds = %125
  %144 = load i8*, i8** @PROTOCOLID_IWARP, align 8
  %145 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %146 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  br label %170

147:                                              ; preds = %125
  %148 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %149 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ECORE_PCI_ISCSI, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load i8*, i8** @PROTOCOLID_ISCSI, align 8
  %156 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %157 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  br label %162

158:                                              ; preds = %147
  %159 = load i8*, i8** @PROTOCOLID_IWARP, align 8
  %160 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %161 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %158, %154
  br label %170

163:                                              ; preds = %125
  %164 = load i8*, i8** @PROTOCOLID_ETH, align 8
  %165 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %166 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  %167 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %167, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %163, %162, %143, %139, %135, %131
  %171 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %172 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %176 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %178 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %179 = load i8*, i8** @OSAL_NULL, align 8
  %180 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %177, %struct.ecore_spq_entry* %178, i8* %179)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @ECORE_SUCCESS, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %170
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %3, align 4
  br label %199

186:                                              ; preds = %170
  %187 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %188 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %7, align 8
  %191 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %7, align 8
  %194 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %193, i32 0, i32 0
  %195 = load i32, i32* @DB_REC_WIDTH_32B, align 4
  %196 = load i32, i32* @DB_REC_KERNEL, align 4
  %197 = call i32 @ecore_db_recovery_add(i32 %189, i32 %192, i32* %194, i32 %195, i32 %196)
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %186, %184, %62, %28
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @ECORE_LL2_TX_REGISTERED(%struct.ecore_ll2_info*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i64) #1

declare dso_local i64 @ecore_int_get_sp_sb_id(%struct.ecore_hwfn*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @ecore_chain_get_pbl_phys(i32*) #1

declare dso_local i64 @ecore_chain_get_page_cnt(i32*) #1

declare dso_local i64 @ecore_get_cm_pq_idx(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

declare dso_local i32 @ecore_db_recovery_add(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
