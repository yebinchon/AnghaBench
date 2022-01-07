; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_create_requester.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_create_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_18__*, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.ecore_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i64, i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.roce_create_qp_req_ramrod_data = type { i32, i64, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_14__, %struct.TYPE_12__, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.roce_create_qp_req_ramrod_data }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@RDMA_RING_PAGE_SIZE = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"ecore create requester failed: cannot allocate memory (orq). rc = %d\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_RAMROD_CREATE_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_REQ_RAMROD_DATA_ROCE_FLAVOR = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_REQ_RAMROD_DATA_FMR_AND_RESERVED_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_REQ_RAMROD_DATA_SIGNALED_COMP = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_REQ_RAMROD_DATA_RNR_NAK_CNT = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_REQ_RAMROD_DATA_XRC_FLAG = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PQ_FLAGS_LLT = common dso_local global i32 0, align 4
@ECORE_RDMA_STATS_QUEUE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Create requested - failed, rc = %d\0A\00", align 1
@ROCE_DCQCN_RP_MAX_QPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_rdma_qp*)* @ecore_roce_sp_create_requester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_roce_sp_create_requester(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_rdma_qp*, align 8
  %6 = alloca %struct.roce_create_qp_req_ramrod_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_sp_init_data, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_spq_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %5, align 8
  %14 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %14, i32 0, i32 32
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %19, i32* %3, align 4
  br label %368

20:                                               ; preds = %2
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %22 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %23 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %21, i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %28 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %33 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %32, i32 0, i32 12
  %34 = load i32, i32* @RDMA_RING_PAGE_SIZE, align 4
  %35 = call i32 @OSAL_DMA_ALLOC_COHERENT(i32 %31, i32* %33, i32 %34)
  %36 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %37 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %39 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %20
  %43 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %44, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %3, align 4
  br label %368

48:                                               ; preds = %20
  %49 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %9, i32 0, i32 12)
  %50 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %51 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  %54 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %56 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %61 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %63 = load i32, i32* @ROCE_RAMROD_CREATE_QP, align 4
  %64 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %65 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %62, %struct.ecore_spq_entry** %11, i32 %63, i32 %64, %struct.ecore_sp_init_data* %9)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @ECORE_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %48
  br label %348

70:                                               ; preds = %48
  %71 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %11, align 8
  %72 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store %struct.roce_create_qp_req_ramrod_data* %73, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %74 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %75 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %74, i32 0, i32 27
  store i64 0, i64* %75, align 8
  %76 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %77 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %76, i32 0, i32 31
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ecore_roce_mode_to_flavor(i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %81 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %80, i32 0, i32 27
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @ROCE_CREATE_QP_REQ_RAMROD_DATA_ROCE_FLAVOR, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @SET_FIELD(i64 %82, i32 %83, i32 %84)
  %86 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %87 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %86, i32 0, i32 27
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @ROCE_CREATE_QP_REQ_RAMROD_DATA_FMR_AND_RESERVED_EN, align 4
  %90 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %91 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @SET_FIELD(i64 %88, i32 %89, i32 %92)
  %94 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %95 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %94, i32 0, i32 27
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @ROCE_CREATE_QP_REQ_RAMROD_DATA_SIGNALED_COMP, align 4
  %98 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %99 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @SET_FIELD(i64 %96, i32 %97, i32 %100)
  %102 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %103 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %102, i32 0, i32 27
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @ROCE_CREATE_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT, align 4
  %106 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %107 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @SET_FIELD(i64 %104, i32 %105, i32 %108)
  %110 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %111 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %110, i32 0, i32 27
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @ROCE_CREATE_QP_REQ_RAMROD_DATA_RNR_NAK_CNT, align 4
  %114 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %115 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SET_FIELD(i64 %112, i32 %113, i32 %116)
  %118 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %119 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %118, i32 0, i32 27
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @ROCE_CREATE_QP_REQ_RAMROD_DATA_XRC_FLAG, align 4
  %122 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %123 = call i32 @ecore_rdma_is_xrc_qp(%struct.ecore_rdma_qp* %122)
  %124 = call i32 @SET_FIELD(i64 %120, i32 %121, i32 %123)
  %125 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %126 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %125, i32 0, i32 30
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %129 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %128, i32 0, i32 26
  store i32 %127, i32* %129, align 8
  %130 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %131 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %130, i32 0, i32 29
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %134 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %133, i32 0, i32 25
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %136 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %135, i32 0, i32 28
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %139 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %138, i32 0, i32 24
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %141 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %144 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %146 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %145, i32 0, i32 27
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @OSAL_CPU_TO_LE16(i32 %147)
  %149 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %150 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %149, i32 0, i32 23
  store i8* %148, i8** %150, align 8
  %151 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %152 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @OSAL_CPU_TO_LE32(i32 %153)
  %155 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %156 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %155, i32 0, i32 22
  store i8* %154, i8** %156, align 8
  %157 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %158 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @OSAL_CPU_TO_LE32(i32 %159)
  %161 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %162 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %161, i32 0, i32 21
  store i8* %160, i8** %162, align 8
  %163 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %164 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @OSAL_CPU_TO_LE32(i32 %165)
  %167 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %168 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %167, i32 0, i32 20
  store i8* %166, i8** %168, align 8
  %169 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %170 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %169, i32 0, i32 26
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @OSAL_CPU_TO_LE16(i32 %171)
  %173 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %174 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %173, i32 0, i32 19
  store i8* %172, i8** %174, align 8
  %175 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %176 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @OSAL_CPU_TO_LE32(i32 %177)
  %179 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %180 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %179, i32 0, i32 18
  store i8* %178, i8** %180, align 8
  %181 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %182 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %181, i32 0, i32 25
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @OSAL_CPU_TO_LE16(i32 %183)
  %185 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %186 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %185, i32 0, i32 17
  store i8* %184, i8** %186, align 8
  %187 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %188 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %187, i32 0, i32 24
  %189 = load i32, i32* %188, align 8
  %190 = call i8* @OSAL_CPU_TO_LE16(i32 %189)
  %191 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %192 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %191, i32 0, i32 16
  store i8* %190, i8** %192, align 8
  %193 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %194 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %193, i32 0, i32 15
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %197 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %196, i32 0, i32 23
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @DMA_REGPAIR_LE(i32 %195, i32 %198)
  %200 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %201 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %200, i32 0, i32 14
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %204 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %203, i32 0, i32 12
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @DMA_REGPAIR_LE(i32 %202, i32 %205)
  %207 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %208 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %209 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %208, i32 0, i32 13
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %212 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %211, i32 0, i32 12
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @ecore_rdma_copy_gids(%struct.ecore_rdma_qp* %207, i32 %210, i32 %213)
  %215 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %216 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %215, i32 0, i32 22
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @OSAL_CPU_TO_LE32(i32 %218)
  %220 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %221 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %220, i32 0, i32 11
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  store i8* %219, i8** %222, align 8
  %223 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %224 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %223, i32 0, i32 22
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i8* @OSAL_CPU_TO_LE32(i32 %226)
  %228 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %229 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %228, i32 0, i32 11
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  store i8* %227, i8** %230, align 8
  %231 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %232 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %231, i32 0, i32 21
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @OSAL_CPU_TO_LE32(i32 %234)
  %236 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %237 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %236, i32 0, i32 10
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  store i8* %235, i8** %238, align 8
  %239 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %240 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %239, i32 0, i32 21
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @OSAL_CPU_TO_LE32(i32 %242)
  %244 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %245 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %244, i32 0, i32 10
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  store i8* %243, i8** %246, align 8
  %247 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %248 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = shl i32 %250, 16
  %252 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %253 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %251, %254
  %256 = call i8* @OSAL_CPU_TO_LE32(i32 %255)
  %257 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %258 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %257, i32 0, i32 9
  store i8* %256, i8** %258, align 8
  %259 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %260 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %261 = call i32 @ecore_get_cm_pq_idx(%struct.ecore_hwfn* %259, i32 %260)
  store i32 %261, i32* %7, align 4
  %262 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %263 = load i32, i32* @PQ_FLAGS_LLT, align 4
  %264 = call i32 @ecore_get_cm_pq_idx(%struct.ecore_hwfn* %262, i32 %263)
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %7, align 4
  %266 = call i8* @OSAL_CPU_TO_LE16(i32 %265)
  %267 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %268 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %267, i32 0, i32 8
  store i8* %266, i8** %268, align 8
  %269 = load i32, i32* %8, align 4
  %270 = call i8* @OSAL_CPU_TO_LE16(i32 %269)
  %271 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %272 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %271, i32 0, i32 7
  store i8* %270, i8** %272, align 8
  %273 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %274 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %273, i32 0, i32 20
  %275 = load i32, i32* %274, align 8
  %276 = call i8* @OSAL_CPU_TO_LE16(i32 %275)
  %277 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %278 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %277, i32 0, i32 6
  store i8* %276, i8** %278, align 8
  %279 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %280 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %283 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %282, i32 0, i32 19
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @ecore_rdma_set_fw_mac(i32 %281, i32 %284)
  %286 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %287 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %290 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %289, i32 0, i32 18
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @ecore_rdma_set_fw_mac(i32 %288, i32 %291)
  %293 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %294 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %293, i32 0, i32 17
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %297 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %296, i32 0, i32 3
  store i32 %295, i32* %297, align 8
  %298 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %299 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %298, i32 0, i32 16
  %300 = load i32, i32* %299, align 8
  %301 = call i8* @OSAL_CPU_TO_LE16(i32 %300)
  %302 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %303 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  %304 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %305 = load i32, i32* @ECORE_RDMA_STATS_QUEUE, align 4
  %306 = call i64 @RESC_START(%struct.ecore_hwfn* %304, i32 %305)
  %307 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %308 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %307, i32 0, i32 15
  %309 = load i64, i64* %308, align 8
  %310 = add nsw i64 %306, %309
  %311 = load %struct.roce_create_qp_req_ramrod_data*, %struct.roce_create_qp_req_ramrod_data** %6, align 8
  %312 = getelementptr inbounds %struct.roce_create_qp_req_ramrod_data, %struct.roce_create_qp_req_ramrod_data* %311, i32 0, i32 1
  store i64 %310, i64* %312, align 8
  %313 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %314 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %11, align 8
  %315 = load i32, i32* @OSAL_NULL, align 4
  %316 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %313, %struct.ecore_spq_entry* %314, i32 %315)
  store i32 %316, i32* %12, align 4
  %317 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %318 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %319 = load i32, i32* %12, align 4
  %320 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %317, i32 %318, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %319)
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* @ECORE_SUCCESS, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %70
  br label %348

325:                                              ; preds = %70
  %326 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %327 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %326, i32 0, i32 11
  store i32 1, i32* %327, align 4
  %328 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %329 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %328, i32 0, i32 14
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 0
  store i64 0, i64* %330, align 8
  %331 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %332 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %333 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %332, i32 0, i32 1
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %331, i32 %336)
  store i64 %337, i64* %13, align 8
  %338 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %339 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %340 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = load i64, i64* %13, align 8
  %345 = sub nsw i64 %343, %344
  %346 = call i32 @ecore_roce_set_cid(%struct.ecore_hwfn* %338, i64 %345)
  %347 = load i32, i32* %12, align 4
  store i32 %347, i32* %3, align 4
  br label %368

348:                                              ; preds = %324, %69
  %349 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %350 = load i32, i32* %12, align 4
  %351 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %349, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %350)
  %352 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %353 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %356 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %355, i32 0, i32 13
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %359 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %358, i32 0, i32 12
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %362 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @RDMA_RING_PAGE_SIZE, align 4
  %365 = mul nsw i32 %363, %364
  %366 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %354, i32 %357, i32 %360, i32 %365)
  %367 = load i32, i32* %12, align 4
  store i32 %367, i32* %3, align 4
  br label %368

368:                                              ; preds = %348, %325, %42, %18
  %369 = load i32, i32* %3, align 4
  ret i32 %369
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

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
