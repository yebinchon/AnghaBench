; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_qp = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_rdma_modify_qp_in_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i64, i32, i64 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_ROCE_MODE = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_PKEY = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_E2E_FLOW_CONTROL_EN = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_DEST_QP = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR = common dso_local global i32 0, align 4
@ECORE_RDMA_VLAN_PRIO = common dso_local global i32 0, align 4
@ECORE_RDMA_ECN = common dso_local global i32 0, align 4
@ECORE_RDMA_DSCP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_RQ_PSN = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_SQ_PSN = common dso_local global i32 0, align 4
@ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ = common dso_local global i32 0, align 4
@ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_RETRY_CNT = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER = common dso_local global i32 0, align 4
@ECORE_RDMA_MODIFY_QP_VALID_NEW_STATE = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"qp->cur_state=%d\0A\00", align 1
@ECORE_RDMA_QP_TYPE_XRC_INI = common dso_local global i64 0, align 8
@ECORE_RDMA_QP_TYPE_XRC_TGT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Modify QP, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_modify_qp(i8* %0, %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_modify_qp_in_params* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_rdma_qp*, align 8
  %6 = alloca %struct.ecore_rdma_modify_qp_in_params*, align 8
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %5, align 8
  store %struct.ecore_rdma_modify_qp_in_params* %2, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %12, %struct.ecore_hwfn** %7, align 8
  %13 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN, align 4
  %18 = call i64 @GET_FIELD(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %21, i32 0, i32 28
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %25 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %24, i32 0, i32 29
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %26, i32 0, i32 27
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %30 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %29, i32 0, i32 28
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %31, i32 0, i32 26
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %34, i32 0, i32 27
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %20, %3
  %37 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %38 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_ROCE_MODE, align 4
  %41 = call i64 @GET_FIELD(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %44, i32 0, i32 25
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %48 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %47, i32 0, i32 26
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %51 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_PKEY, align 4
  %54 = call i64 @GET_FIELD(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %58 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %57, i32 0, i32 24
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %61 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %60, i32 0, i32 25
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %64 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_E2E_FLOW_CONTROL_EN, align 4
  %67 = call i64 @GET_FIELD(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %71 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %70, i32 0, i32 23
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %74 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %73, i32 0, i32 24
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %77 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_DEST_QP, align 4
  %80 = call i64 @GET_FIELD(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %84 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %83, i32 0, i32 22
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %87 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %86, i32 0, i32 23
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %82, %75
  %89 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %90 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR, align 4
  %93 = call i64 @GET_FIELD(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %232

95:                                               ; preds = %88
  %96 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %97 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %96, i32 0, i32 21
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %100 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %99, i32 0, i32 22
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %102 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %101, i32 0, i32 20
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %105 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %104, i32 0, i32 21
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %107 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %106, i32 0, i32 19
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %110 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %109, i32 0, i32 20
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %112 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %111, i32 0, i32 18
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %115 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %114, i32 0, i32 19
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %117 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %116, i32 0, i32 17
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %120 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %119, i32 0, i32 18
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %122 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %121, i32 0, i32 16
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %125 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %124, i32 0, i32 17
  store i32 %123, i32* %125, align 8
  %126 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %127 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %126, i32 0, i32 15
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %130 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %129, i32 0, i32 16
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %132 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %95
  %139 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %140 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %139, i32 0, i32 17
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ECORE_RDMA_VLAN_PRIO, align 4
  %143 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %144 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %143, i32 0, i32 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @SET_FIELD(i32 %141, i32 %142, i32 %148)
  br label %150

150:                                              ; preds = %138, %95
  %151 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %152 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %150
  %159 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %160 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %159, i32 0, i32 16
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ECORE_RDMA_ECN, align 4
  %163 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %164 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %163, i32 0, i32 1
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @SET_FIELD(i32 %161, i32 %162, i32 %168)
  br label %170

170:                                              ; preds = %158, %150
  %171 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %172 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %171, i32 0, i32 1
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %170
  %179 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %180 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %179, i32 0, i32 16
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @ECORE_RDMA_DSCP, align 4
  %183 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %184 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %183, i32 0, i32 1
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @SET_FIELD(i32 %181, i32 %182, i32 %188)
  br label %190

190:                                              ; preds = %178, %170
  %191 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %192 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %191, i32 0, i32 14
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %195 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %194, i32 0, i32 15
  store i32 %193, i32* %195, align 8
  %196 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %197 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %196, i32 0, i32 14
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %201 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %200, i32 0, i32 13
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* @ETH_ALEN, align 4
  %205 = call i32 @OSAL_MEMCPY(i32* %199, i32* %203, i32 %204)
  %206 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %207 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %206, i32 0, i32 12
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %190
  %211 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %212 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %211, i32 0, i32 13
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %216 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %215, i32 0, i32 11
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* @ETH_ALEN, align 4
  %220 = call i32 @OSAL_MEMCPY(i32* %214, i32* %218, i32 %219)
  br label %231

221:                                              ; preds = %190
  %222 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %223 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %222, i32 0, i32 13
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %227 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32, i32* @ETH_ALEN, align 4
  %230 = call i32 @OSAL_MEMCPY(i32* %225, i32* %228, i32 %229)
  br label %231

231:                                              ; preds = %221, %210
  br label %232

232:                                              ; preds = %231, %88
  %233 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %234 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_RQ_PSN, align 4
  %237 = call i64 @GET_FIELD(i32 %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %232
  %240 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %241 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %244 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %243, i32 0, i32 12
  store i32 %242, i32* %244, align 8
  br label %245

245:                                              ; preds = %239, %232
  %246 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %247 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_SQ_PSN, align 4
  %250 = call i64 @GET_FIELD(i32 %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %245
  %253 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %254 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %257 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %256, i32 0, i32 11
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %252, %245
  %259 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %260 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ, align 4
  %263 = call i64 @GET_FIELD(i32 %261, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %258
  %266 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %267 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %270 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %269, i32 0, i32 10
  store i32 %268, i32* %270, align 8
  br label %271

271:                                              ; preds = %265, %258
  %272 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %273 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP, align 4
  %276 = call i64 @GET_FIELD(i32 %274, i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %271
  %279 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %280 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %283 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %282, i32 0, i32 9
  store i32 %281, i32* %283, align 4
  br label %284

284:                                              ; preds = %278, %271
  %285 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %286 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT, align 4
  %289 = call i64 @GET_FIELD(i32 %287, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %284
  %292 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %293 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %296 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %295, i32 0, i32 8
  store i32 %294, i32* %296, align 8
  br label %297

297:                                              ; preds = %291, %284
  %298 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %299 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_RETRY_CNT, align 4
  %302 = call i64 @GET_FIELD(i32 %300, i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %297
  %305 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %306 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %309 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %308, i32 0, i32 7
  store i32 %307, i32* %309, align 4
  br label %310

310:                                              ; preds = %304, %297
  %311 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %312 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT, align 4
  %315 = call i64 @GET_FIELD(i32 %313, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %310
  %318 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %319 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %322 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %321, i32 0, i32 6
  store i32 %320, i32* %322, align 8
  br label %323

323:                                              ; preds = %317, %310
  %324 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %325 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER, align 4
  %328 = call i64 @GET_FIELD(i32 %326, i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %323
  %331 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %332 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %335 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %334, i32 0, i32 5
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %330, %323
  %337 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %338 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %341 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %340, i32 0, i32 4
  store i32 %339, i32* %341, align 8
  %342 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %343 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  store i32 %344, i32* %8, align 4
  %345 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %346 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_NEW_STATE, align 4
  %349 = call i64 @GET_FIELD(i32 %347, i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %363

351:                                              ; preds = %336
  %352 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %353 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %356 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %355, i32 0, i32 0
  store i32 %354, i32* %356, align 8
  %357 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %358 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %359 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %360 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %357, i32 %358, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %361)
  br label %363

363:                                              ; preds = %351, %336
  %364 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %365 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @ECORE_RDMA_QP_TYPE_XRC_INI, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %372

369:                                              ; preds = %363
  %370 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %371 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %370, i32 0, i32 2
  store i32 1, i32* %371, align 8
  br label %387

372:                                              ; preds = %363
  %373 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %374 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @ECORE_RDMA_QP_TYPE_XRC_TGT, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %372
  %379 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %380 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %379, i32 0, i32 3
  store i32 1, i32* %380, align 4
  br label %386

381:                                              ; preds = %372
  %382 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %383 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %382, i32 0, i32 2
  store i32 1, i32* %383, align 8
  %384 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %385 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %384, i32 0, i32 3
  store i32 1, i32* %385, align 4
  br label %386

386:                                              ; preds = %381, %378
  br label %387

387:                                              ; preds = %386, %369
  %388 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %389 = call i64 @IS_IWARP(%struct.ecore_hwfn* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %400

391:                                              ; preds = %387
  %392 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %393 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @ecore_roce2iwarp_state(i32 %394)
  store i32 %395, i32* %10, align 4
  %396 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %397 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %398 = load i32, i32* %10, align 4
  %399 = call i32 @ecore_iwarp_modify_qp(%struct.ecore_hwfn* %396, %struct.ecore_rdma_qp* %397, i32 %398, i32 0)
  store i32 %399, i32* %9, align 4
  br label %406

400:                                              ; preds = %387
  %401 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %402 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %403 = load i32, i32* %8, align 4
  %404 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %6, align 8
  %405 = call i32 @ecore_roce_modify_qp(%struct.ecore_hwfn* %401, %struct.ecore_rdma_qp* %402, i32 %403, %struct.ecore_rdma_modify_qp_in_params* %404)
  store i32 %405, i32* %9, align 4
  br label %406

406:                                              ; preds = %400, %391
  %407 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %408 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %409 = load i32, i32* %9, align 4
  %410 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %407, i32 %408, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %409)
  %411 = load i32, i32* %9, align 4
  ret i32 %411
}

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @OSAL_MEMCPY(i32*, i32*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @IS_IWARP(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_roce2iwarp_state(i32) #1

declare dso_local i32 @ecore_iwarp_modify_qp(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i32, i32) #1

declare dso_local i32 @ecore_roce_modify_qp(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i32, %struct.ecore_rdma_modify_qp_in_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
