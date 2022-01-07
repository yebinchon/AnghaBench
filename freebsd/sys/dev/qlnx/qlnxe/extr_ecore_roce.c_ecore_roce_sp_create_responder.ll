; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_create_responder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_create_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_19__*, %struct.TYPE_20__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.ecore_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__, i64, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.roce_create_qp_resp_ramrod_data = type { i32, i64, %struct.TYPE_17__, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_14__, %struct.TYPE_12__, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.roce_create_qp_resp_ramrod_data }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"qp_idx = %08x\0A\00", align 1
@RDMA_RING_PAGE_SIZE = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"ecore create responder failed: cannot allocate memory (irq). rc = %d\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_RAMROD_CREATE_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_ROCE_FLAVOR = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_RD_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_WR_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_ATOMIC_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_SRQ_FLG = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_RESERVED_KEY_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_XRC_FLAG = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PQ_FLAGS_LLT = common dso_local global i32 0, align 4
@ECORE_RDMA_STATS_QUEUE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"rc = %d regular physical queue = 0x%x, low latency physical queue 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"create responder - failed, rc = %d\0A\00", align 1
@ROCE_DCQCN_RP_MAX_QPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_rdma_qp*)* @ecore_roce_sp_create_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_roce_sp_create_responder(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_rdma_qp*, align 8
  %6 = alloca %struct.roce_create_qp_resp_ramrod_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_sp_init_data, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_spq_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %5, align 8
  %16 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %16, i32 0, i32 37
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %21, i32* %3, align 4
  br label %415

22:                                               ; preds = %2
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %24 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %25 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %26 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %25, i32 0, i32 36
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %23, i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %30 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %34, i32 0, i32 21
  %36 = load i32, i32* @RDMA_RING_PAGE_SIZE, align 4
  %37 = call i32 @OSAL_DMA_ALLOC_COHERENT(i32 %33, i32* %35, i32 %36)
  %38 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %39 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %38, i32 0, i32 22
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %41 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %40, i32 0, i32 22
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %22
  %45 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %46, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %3, align 4
  br label %415

50:                                               ; preds = %22
  %51 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %9, i32 0, i32 12)
  %52 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %53 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %57 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %62 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %64 = load i32, i32* @ROCE_RAMROD_CREATE_QP, align 4
  %65 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %66 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %63, %struct.ecore_spq_entry** %11, i32 %64, i32 %65, %struct.ecore_sp_init_data* %9)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @ECORE_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %50
  br label %395

71:                                               ; preds = %50
  %72 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %11, align 8
  %73 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store %struct.roce_create_qp_resp_ramrod_data* %74, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %75 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %76 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %75, i32 0, i32 28
  store i64 0, i64* %76, align 8
  %77 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %78 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %77, i32 0, i32 35
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ecore_roce_mode_to_flavor(i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %82 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %81, i32 0, i32 28
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_ROCE_FLAVOR, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @SET_FIELD(i64 %83, i32 %84, i32 %85)
  %87 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %88 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %87, i32 0, i32 28
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_RD_EN, align 4
  %91 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %92 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @SET_FIELD(i64 %89, i32 %90, i32 %93)
  %95 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %96 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %95, i32 0, i32 28
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_WR_EN, align 4
  %99 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %100 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SET_FIELD(i64 %97, i32 %98, i32 %101)
  %103 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %104 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %103, i32 0, i32 28
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_ATOMIC_EN, align 4
  %107 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %108 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @SET_FIELD(i64 %105, i32 %106, i32 %109)
  %111 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %112 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %111, i32 0, i32 28
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN, align 4
  %115 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %116 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @SET_FIELD(i64 %113, i32 %114, i32 %117)
  %119 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %120 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %119, i32 0, i32 28
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_SRQ_FLG, align 4
  %123 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %124 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @SET_FIELD(i64 %121, i32 %122, i32 %125)
  %127 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %128 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %127, i32 0, i32 28
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_RESERVED_KEY_EN, align 4
  %131 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %132 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @SET_FIELD(i64 %129, i32 %130, i32 %133)
  %135 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %136 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %135, i32 0, i32 28
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_XRC_FLAG, align 4
  %139 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %140 = call i32 @ecore_rdma_is_xrc_qp(%struct.ecore_rdma_qp* %139)
  %141 = call i32 @SET_FIELD(i64 %137, i32 %138, i32 %140)
  %142 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %143 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %142, i32 0, i32 28
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER, align 4
  %146 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %147 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @SET_FIELD(i64 %144, i32 %145, i32 %148)
  %150 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %151 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %150, i32 0, i32 34
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %154 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %153, i32 0, i32 27
  store i32 %152, i32* %154, align 8
  %155 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %156 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %155, i32 0, i32 33
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %159 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %158, i32 0, i32 26
  store i32 %157, i32* %159, align 4
  %160 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %161 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %160, i32 0, i32 32
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %164 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %163, i32 0, i32 25
  store i32 %162, i32* %164, align 8
  %165 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %166 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %169 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %171 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @OSAL_CPU_TO_LE16(i32 %172)
  %174 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %175 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %174, i32 0, i32 24
  store i8* %173, i8** %175, align 8
  %176 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %177 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %176, i32 0, i32 10
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @OSAL_CPU_TO_LE32(i32 %178)
  %180 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %181 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %180, i32 0, i32 23
  store i8* %179, i8** %181, align 8
  %182 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %183 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %182, i32 0, i32 11
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @OSAL_CPU_TO_LE32(i32 %184)
  %186 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %187 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %186, i32 0, i32 22
  store i8* %185, i8** %187, align 8
  %188 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %189 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 8
  %191 = call i8* @OSAL_CPU_TO_LE16(i32 %190)
  %192 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %193 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %192, i32 0, i32 21
  store i8* %191, i8** %193, align 8
  %194 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %195 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %194, i32 0, i32 13
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @OSAL_CPU_TO_LE32(i32 %196)
  %198 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %199 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %198, i32 0, i32 20
  store i8* %197, i8** %199, align 8
  %200 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %201 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %200, i32 0, i32 14
  %202 = load i32, i32* %201, align 8
  %203 = call i8* @OSAL_CPU_TO_LE16(i32 %202)
  %204 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %205 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %204, i32 0, i32 19
  store i8* %203, i8** %205, align 8
  %206 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %207 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %206, i32 0, i32 15
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @OSAL_CPU_TO_LE16(i32 %208)
  %210 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %211 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %210, i32 0, i32 18
  store i8* %209, i8** %211, align 8
  %212 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %213 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %212, i32 0, i32 17
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %216 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %215, i32 0, i32 31
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @DMA_REGPAIR_LE(i32 %214, i32 %217)
  %219 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %220 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %219, i32 0, i32 16
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %223 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %222, i32 0, i32 21
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @DMA_REGPAIR_LE(i32 %221, i32 %224)
  %226 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %227 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %228 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %227, i32 0, i32 15
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %231 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %230, i32 0, i32 14
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @ecore_rdma_copy_gids(%struct.ecore_rdma_qp* %226, i32 %229, i32 %232)
  %234 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %235 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %234, i32 0, i32 30
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i8* @OSAL_CPU_TO_LE32(i32 %237)
  %239 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %240 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %239, i32 0, i32 13
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 1
  store i8* %238, i8** %241, align 8
  %242 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %243 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %242, i32 0, i32 30
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i8* @OSAL_CPU_TO_LE32(i32 %245)
  %247 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %248 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %247, i32 0, i32 13
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  store i8* %246, i8** %249, align 8
  %250 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %251 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %250, i32 0, i32 29
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i8* @OSAL_CPU_TO_LE32(i32 %253)
  %255 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %256 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %255, i32 0, i32 12
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  store i8* %254, i8** %257, align 8
  %258 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %259 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %258, i32 0, i32 29
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i8* @OSAL_CPU_TO_LE32(i32 %261)
  %263 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %264 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %263, i32 0, i32 12
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  store i8* %262, i8** %265, align 8
  %266 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %267 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = shl i32 %269, 16
  %271 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %272 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %271, i32 0, i32 16
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %270, %273
  %275 = call i8* @OSAL_CPU_TO_LE32(i32 %274)
  %276 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %277 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %276, i32 0, i32 11
  store i8* %275, i8** %277, align 8
  %278 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %279 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %278, i32 0, i32 17
  %280 = load i32, i32* %279, align 4
  %281 = call i8* @OSAL_CPU_TO_LE16(i32 %280)
  %282 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %283 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %282, i32 0, i32 10
  store i8* %281, i8** %283, align 8
  %284 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %285 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %286 = call i32 @ecore_get_cm_pq_idx(%struct.ecore_hwfn* %284, i32 %285)
  store i32 %286, i32* %7, align 4
  %287 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %288 = load i32, i32* @PQ_FLAGS_LLT, align 4
  %289 = call i32 @ecore_get_cm_pq_idx(%struct.ecore_hwfn* %287, i32 %288)
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %7, align 4
  %291 = call i8* @OSAL_CPU_TO_LE16(i32 %290)
  %292 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %293 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %292, i32 0, i32 9
  store i8* %291, i8** %293, align 8
  %294 = load i32, i32* %8, align 4
  %295 = call i8* @OSAL_CPU_TO_LE16(i32 %294)
  %296 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %297 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %296, i32 0, i32 8
  store i8* %295, i8** %297, align 8
  %298 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %299 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %298, i32 0, i32 18
  %300 = load i32, i32* %299, align 8
  %301 = call i8* @OSAL_CPU_TO_LE16(i32 %300)
  %302 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %303 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %302, i32 0, i32 7
  store i8* %301, i8** %303, align 8
  %304 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %305 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %308 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %307, i32 0, i32 28
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @ecore_rdma_set_fw_mac(i32 %306, i32 %309)
  %311 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %312 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %315 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %314, i32 0, i32 27
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @ecore_rdma_set_fw_mac(i32 %313, i32 %316)
  %318 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %319 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %318, i32 0, i32 26
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %322 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %321, i32 0, i32 4
  store i32 %320, i32* %322, align 8
  %323 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %324 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %323, i32 0, i32 19
  %325 = load i32, i32* %324, align 4
  %326 = call i8* @OSAL_CPU_TO_LE16(i32 %325)
  %327 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %328 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %327, i32 0, i32 3
  store i8* %326, i8** %328, align 8
  %329 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %330 = call i32 @ecore_rdma_is_xrc_qp(%struct.ecore_rdma_qp* %329)
  store i32 %330, i32* %15, align 4
  %331 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %332 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %333 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %332, i32 0, i32 25
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* %15, align 4
  %336 = call i32 @ecore_rdma_get_fw_srq_id(%struct.ecore_hwfn* %331, i32 %334, i32 %335)
  store i32 %336, i32* %14, align 4
  %337 = load i32, i32* %14, align 4
  %338 = call i8* @OSAL_CPU_TO_LE16(i32 %337)
  %339 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %340 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 1
  store i8* %338, i8** %341, align 8
  %342 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %343 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i8* @OSAL_CPU_TO_LE16(i32 %345)
  %347 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %348 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 0
  store i8* %346, i8** %349, align 8
  %350 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %351 = load i32, i32* @ECORE_RDMA_STATS_QUEUE, align 4
  %352 = call i64 @RESC_START(%struct.ecore_hwfn* %350, i32 %351)
  %353 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %354 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %353, i32 0, i32 24
  %355 = load i64, i64* %354, align 8
  %356 = add nsw i64 %352, %355
  %357 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %358 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %357, i32 0, i32 1
  store i64 %356, i64* %358, align 8
  %359 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %360 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %11, align 8
  %361 = load i32, i32* @OSAL_NULL, align 4
  %362 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %359, %struct.ecore_spq_entry* %360, i32 %361)
  store i32 %362, i32* %12, align 4
  %363 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %364 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %365 = load i32, i32* %12, align 4
  %366 = load i32, i32* %7, align 4
  %367 = load i32, i32* %8, align 4
  %368 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %363, i32 %364, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %365, i32 %366, i32 %367)
  %369 = load i32, i32* %12, align 4
  %370 = load i32, i32* @ECORE_SUCCESS, align 4
  %371 = icmp ne i32 %369, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %71
  br label %395

373:                                              ; preds = %71
  %374 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %375 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %374, i32 0, i32 20
  store i32 1, i32* %375, align 8
  %376 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %377 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %376, i32 0, i32 23
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 0
  store i64 0, i64* %378, align 8
  %379 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %380 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %381 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %380, i32 0, i32 1
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = call i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %379, i32 %384)
  store i64 %385, i64* %13, align 8
  %386 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %387 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %388 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  %391 = load i64, i64* %13, align 8
  %392 = sub nsw i64 %390, %391
  %393 = call i32 @ecore_roce_set_cid(%struct.ecore_hwfn* %386, i64 %392)
  %394 = load i32, i32* %12, align 4
  store i32 %394, i32* %3, align 4
  br label %415

395:                                              ; preds = %372, %70
  %396 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %397 = load i32, i32* %12, align 4
  %398 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %396, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %397)
  %399 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %400 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %403 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %402, i32 0, i32 22
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %406 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %405, i32 0, i32 21
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %409 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @RDMA_RING_PAGE_SIZE, align 4
  %412 = mul nsw i32 %410, %411
  %413 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %401, i32 %404, i32 %407, i32 %412)
  %414 = load i32, i32* %12, align 4
  store i32 %414, i32* %3, align 4
  br label %415

415:                                              ; preds = %395, %373, %44, %20
  %416 = load i32, i32* %3, align 4
  ret i32 %416
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_roce_mode_to_flavor(i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @ecore_rdma_is_xrc_qp(%struct.ecore_rdma_qp*) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @ecore_rdma_copy_gids(%struct.ecore_rdma_qp*, i32, i32) #1

declare dso_local i32 @ecore_get_cm_pq_idx(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_rdma_set_fw_mac(i32, i32) #1

declare dso_local i32 @ecore_rdma_get_fw_srq_id(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i64 @RESC_START(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_roce_set_cid(%struct.ecore_hwfn*, i64) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
