; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_modify_requester.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_modify_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.roce_modify_qp_req_ramrod_data = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i64, i64 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.roce_modify_qp_req_ramrod_data }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_EVENT_MODIFY_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_ERR_FLG = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_SQD_FLG = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_EN_SQD_ASYNC_NOTIFY = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_P_KEY_FLG = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_PKEY = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_ADDRESS_VECTOR_FLG = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_MAX_ORD_FLG = common dso_local global i32 0, align 4
@ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT_FLG = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT_FLG = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_RETRY_CNT = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_ACK_TIMEOUT_FLG = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Modify requester, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i32, i32, i32)* @ecore_roce_sp_modify_requester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_roce_sp_modify_requester(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_rdma_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.roce_modify_qp_req_ramrod_data*, align 8
  %13 = alloca %struct.ecore_sp_init_data, align 4
  %14 = alloca %struct.ecore_spq_entry*, align 8
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %17 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %21, i32* %6, align 4
  br label %212

22:                                               ; preds = %5
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %24 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %25 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %26 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %23, i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %33 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %37, i32* %6, align 4
  br label %212

38:                                               ; preds = %31, %22
  %39 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %13, i32 0, i32 12)
  %40 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %41 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %13, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %46 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %13, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %51 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %13, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %53 = load i32, i32* @ROCE_EVENT_MODIFY_QP, align 4
  %54 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %55 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %52, %struct.ecore_spq_entry** %14, i32 %53, i32 %54, %struct.ecore_sp_init_data* %13)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %38
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %60, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %6, align 4
  br label %212

64:                                               ; preds = %38
  %65 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %14, align 8
  %66 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store %struct.roce_modify_qp_req_ramrod_data* %67, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %68 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %69 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %68, i32 0, i32 10
  store i64 0, i64* %69, align 8
  %70 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %71 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %70, i32 0, i32 10
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_ERR_FLG, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @SET_FIELD(i64 %72, i32 %73, i32 %74)
  %76 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %77 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_SQD_FLG, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @SET_FIELD(i64 %78, i32 %79, i32 %80)
  %82 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %83 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %82, i32 0, i32 10
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_EN_SQD_ASYNC_NOTIFY, align 4
  %86 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %87 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SET_FIELD(i64 %84, i32 %85, i32 %88)
  %90 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %91 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %90, i32 0, i32 10
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_P_KEY_FLG, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_PKEY, align 4
  %96 = call i32 @GET_FIELD(i32 %94, i32 %95)
  %97 = call i32 @SET_FIELD(i64 %92, i32 %93, i32 %96)
  %98 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %99 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %98, i32 0, i32 10
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_ADDRESS_VECTOR_FLG, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR, align 4
  %104 = call i32 @GET_FIELD(i32 %102, i32 %103)
  %105 = call i32 @SET_FIELD(i64 %100, i32 %101, i32 %104)
  %106 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %107 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %106, i32 0, i32 10
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_MAX_ORD_FLG, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ, align 4
  %112 = call i32 @GET_FIELD(i32 %110, i32 %111)
  %113 = call i32 @SET_FIELD(i64 %108, i32 %109, i32 %112)
  %114 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %115 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %114, i32 0, i32 10
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT_FLG, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT, align 4
  %120 = call i32 @GET_FIELD(i32 %118, i32 %119)
  %121 = call i32 @SET_FIELD(i64 %116, i32 %117, i32 %120)
  %122 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %123 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %122, i32 0, i32 10
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT_FLG, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_RETRY_CNT, align 4
  %128 = call i32 @GET_FIELD(i32 %126, i32 %127)
  %129 = call i32 @SET_FIELD(i64 %124, i32 %125, i32 %128)
  %130 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %131 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %130, i32 0, i32 10
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_ACK_TIMEOUT_FLG, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT, align 4
  %136 = call i32 @GET_FIELD(i32 %134, i32 %135)
  %137 = call i32 @SET_FIELD(i64 %132, i32 %133, i32 %136)
  %138 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %139 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %138, i32 0, i32 9
  store i64 0, i64* %139, align 8
  %140 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %141 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %140, i32 0, i32 9
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT, align 4
  %144 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %145 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @SET_FIELD(i64 %142, i32 %143, i32 %146)
  %148 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %149 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT, align 4
  %152 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %153 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @SET_FIELD(i64 %150, i32 %151, i32 %154)
  %156 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %157 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %156, i32 0, i32 10
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %160 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 8
  %161 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %162 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %165 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %164, i32 0, i32 7
  store i32 %163, i32* %165, align 4
  %166 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %167 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %170 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %172 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @OSAL_CPU_TO_LE16(i32 %173)
  %175 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %176 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %175, i32 0, i32 5
  store i8* %174, i8** %176, align 8
  %177 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %178 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @OSAL_CPU_TO_LE32(i32 %179)
  %181 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %182 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  %183 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %184 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @OSAL_CPU_TO_LE32(i32 %185)
  %187 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %188 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %187, i32 0, i32 3
  store i8* %186, i8** %188, align 8
  %189 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %190 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @OSAL_CPU_TO_LE16(i32 %191)
  %193 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %194 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  %195 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %8, align 8
  %196 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %197 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %200 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @ecore_rdma_copy_gids(%struct.ecore_rdma_qp* %195, i32 %198, i32 %201)
  %203 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %204 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %14, align 8
  %205 = load i32, i32* @OSAL_NULL, align 4
  %206 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %203, %struct.ecore_spq_entry* %204, i32 %205)
  store i32 %206, i32* %15, align 4
  %207 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %208 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %209 = load i32, i32* %15, align 4
  %210 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %207, i32 %208, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %15, align 4
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %64, %59, %36, %20
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i32 @ecore_rdma_copy_gids(%struct.ecore_rdma_qp*, i32, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
