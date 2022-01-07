; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_modify_responder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_modify_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.roce_modify_qp_resp_ramrod_data = type { i32, i32, i8*, i32, i8*, i32, i32, i32, i64, i64 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.roce_modify_qp_resp_ramrod_data }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_EVENT_MODIFY_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_MOVE_TO_ERR_FLG = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_RD_EN = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_WR_EN = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_ATOMIC_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_OPS_EN_FLG = common dso_local global i32 0, align 4
@ECORE_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_P_KEY_FLG = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_PKEY = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_ADDRESS_VECTOR_FLG = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_MAX_IRD_FLG = common dso_local global i32 0, align 4
@ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER_FLG = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Modify responder, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i32, i32)* @ecore_roce_sp_modify_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_roce_sp_modify_responder(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_rdma_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.roce_modify_qp_resp_ramrod_data*, align 8
  %11 = alloca %struct.ecore_sp_init_data, align 4
  %12 = alloca %struct.ecore_spq_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %15 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %19, i32* %5, align 4
  br label %205

20:                                               ; preds = %4
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %22 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %23 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %24 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %21, i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %31 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %35, i32* %5, align 4
  br label %205

36:                                               ; preds = %29, %20
  %37 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %11, i32 0, i32 12)
  %38 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %39 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %43 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %11, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %48 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %11, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %50 = load i32, i32* @ROCE_EVENT_MODIFY_QP, align 4
  %51 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %52 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %49, %struct.ecore_spq_entry** %12, i32 %50, i32 %51, %struct.ecore_sp_init_data* %11)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @ECORE_SUCCESS, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %36
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %57, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %205

61:                                               ; preds = %36
  %62 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %12, align 8
  %63 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store %struct.roce_modify_qp_resp_ramrod_data* %64, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %65 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %66 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %65, i32 0, i32 9
  store i64 0, i64* %66, align 8
  %67 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %68 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %67, i32 0, i32 9
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_MOVE_TO_ERR_FLG, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @SET_FIELD(i64 %69, i32 %70, i32 %71)
  %73 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %74 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_RD_EN, align 4
  %77 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %78 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SET_FIELD(i64 %75, i32 %76, i32 %79)
  %81 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %82 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_WR_EN, align 4
  %85 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %86 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @SET_FIELD(i64 %83, i32 %84, i32 %87)
  %89 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %90 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_ATOMIC_EN, align 4
  %93 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %94 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @SET_FIELD(i64 %91, i32 %92, i32 %95)
  %97 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %98 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %97, i32 0, i32 9
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN, align 4
  %101 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %102 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SET_FIELD(i64 %99, i32 %100, i32 %103)
  %105 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %106 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %105, i32 0, i32 9
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_OPS_EN_FLG, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN, align 4
  %111 = call i32 @GET_FIELD(i32 %109, i32 %110)
  %112 = call i32 @SET_FIELD(i64 %107, i32 %108, i32 %111)
  %113 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %114 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %113, i32 0, i32 9
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_P_KEY_FLG, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_PKEY, align 4
  %119 = call i32 @GET_FIELD(i32 %117, i32 %118)
  %120 = call i32 @SET_FIELD(i64 %115, i32 %116, i32 %119)
  %121 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %122 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_ADDRESS_VECTOR_FLG, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR, align 4
  %127 = call i32 @GET_FIELD(i32 %125, i32 %126)
  %128 = call i32 @SET_FIELD(i64 %123, i32 %124, i32 %127)
  %129 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %130 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %129, i32 0, i32 9
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_MAX_IRD_FLG, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP, align 4
  %135 = call i32 @GET_FIELD(i32 %133, i32 %134)
  %136 = call i32 @SET_FIELD(i64 %131, i32 %132, i32 %135)
  %137 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %138 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %137, i32 0, i32 9
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER_FLG, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER, align 4
  %143 = call i32 @GET_FIELD(i32 %141, i32 %142)
  %144 = call i32 @SET_FIELD(i64 %139, i32 %140, i32 %143)
  %145 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %146 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %145, i32 0, i32 8
  store i64 0, i64* %146, align 8
  %147 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %148 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %147, i32 0, i32 8
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER, align 4
  %151 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %152 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @SET_FIELD(i64 %149, i32 %150, i32 %153)
  %155 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %156 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %159 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 8
  %160 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %161 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %164 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %166 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %169 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  %170 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %171 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @OSAL_CPU_TO_LE16(i32 %172)
  %174 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %175 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  %176 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %177 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @OSAL_CPU_TO_LE32(i32 %178)
  %180 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %181 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 8
  %182 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %183 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @OSAL_CPU_TO_LE16(i32 %184)
  %186 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %187 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %186, i32 0, i32 2
  store i8* %185, i8** %187, align 8
  %188 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %189 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %190 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %193 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ecore_rdma_copy_gids(%struct.ecore_rdma_qp* %188, i32 %191, i32 %194)
  %196 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %197 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %12, align 8
  %198 = load i32, i32* @OSAL_NULL, align 4
  %199 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %196, %struct.ecore_spq_entry* %197, i32 %198)
  store i32 %199, i32* %13, align 4
  %200 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %201 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %200, i32 %201, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %61, %56, %34, %18
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i32 @ecore_rdma_copy_gids(%struct.ecore_rdma_qp*, i32, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
