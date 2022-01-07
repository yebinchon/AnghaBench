; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.qlnxr_qp = type { i64, i64, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.qlnxr_dev = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ecore_rdma_modify_qp_in_params = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.ecore_rdma_device = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"enter qp = %p attr_mask = 0x%x, state = %d udata = %p\0A\00", align 1
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [104 x i8] c"invalid attribute mask=0x%x specified for qpn=0x%x of type=0x%x \0A old_qp_state=0x%x, new_qp_state=0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECORE_RDMA_MODIFY_QP_VALID_NEW_STATE = common dso_local global i32 0, align 4
@IB_QP_EN_SQD_ASYNC_NOTIFY = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_PKEY = common dso_local global i32 0, align 4
@QLNXR_ROCE_PKEY_TABLE_LEN = common dso_local global i64 0, align 8
@QLNXR_ROCE_PKEY_DEFAULT = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@ECORE_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@IB_MTU_256 = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c"Only MTU sizes of 256, 512, 1024, 2048 and 4096 are supported  attr->path_mtu = [%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"fixing zetoed MTU to qp->mtu = %d\0A\00", align 1
@ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"dgid=0x%x:0x%x:0x%x:0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"sgid=0x%x:0x%x:0x%x:0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"remote_mac=[0x%x:0x%x:0x%x:0x%x:0x%x:0x%x]\0A\00", align 1
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT = common dso_local global i32 0, align 4
@IB_QP_RETRY_CNT = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_RETRY_CNT = common dso_local global i32 0, align 4
@IB_QP_RNR_RETRY = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT = common dso_local global i32 0, align 4
@IB_QP_RQ_PSN = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_RQ_PSN = common dso_local global i32 0, align 4
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"unsupported  max_rd_atomic=%d, supported=%d\0A\00", align 1
@ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_SQ_PSN = common dso_local global i32 0, align 4
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"unsupported max_dest_rd_atomic=%d, supported=%d\0A\00", align 1
@ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP = common dso_local global i32 0, align 4
@IB_QP_DEST_QPN = common dso_local global i32 0, align 4
@ECORE_ROCE_MODIFY_QP_VALID_DEST_QP = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@ECORE_ROCE_QP_STATE_ERR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qlnxr_qp*, align 8
  %12 = alloca %struct.qlnxr_dev*, align 8
  %13 = alloca %struct.ecore_rdma_modify_qp_in_params, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ecore_rdma_device*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %20 = call %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp* %19)
  store %struct.qlnxr_qp* %20, %struct.qlnxr_qp** %11, align 8
  %21 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %22 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %21, i32 0, i32 10
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32* %24)
  store %struct.qlnxr_dev* %25, %struct.qlnxr_dev** %12, align 8
  %26 = bitcast %struct.ecore_rdma_modify_qp_in_params* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 128, i1 false)
  %27 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %28 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.ecore_rdma_device* @ecore_rdma_query_device(i32 %29)
  store %struct.ecore_rdma_device* %30, %struct.ecore_rdma_device** %16, align 8
  %31 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %32 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %17, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %35 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %38 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %41 = call i32 (%struct.TYPE_14__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_14__* %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.qlnxr_qp* %35, i32 %36, i32 %39, %struct.ib_udata* %40)
  %42 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %43 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @qlnxr_get_ibqp_state(i64 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @IB_QP_STATE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %4
  %51 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %52 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %15, align 4
  br label %56

54:                                               ; preds = %4
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %58 = call i64 @QLNX_IS_ROCE(%struct.qlnxr_dev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %64 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i32, i32, i32, ...) @ib_modify_qp_is_ok(i32 %61, i32 %62, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %60
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %73 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %76 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 (%struct.TYPE_14__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_14__* %70, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %655

83:                                               ; preds = %60
  br label %84

84:                                               ; preds = %83, %56
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @IB_QP_STATE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_NEW_STATE, align 4
  %93 = call i32 @SET_FIELD(i32 %91, i32 %92, i32 1)
  %94 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %95 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @qlnxr_get_state_from_ibqp(i32 %96)
  %98 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %89, %84
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @IB_QP_EN_SQD_ASYNC_NOTIFY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 1
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %104, %99
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_PKEY, align 4
  %115 = call i32 @SET_FIELD(i32 %113, i32 %114, i32 1)
  %116 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %117 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @QLNXR_ROCE_PKEY_TABLE_LEN, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %10, align 4
  br label %655

124:                                              ; preds = %111
  %125 = load i32, i32* @QLNXR_ROCE_PKEY_DEFAULT, align 4
  %126 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 24
  store i32 %125, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %106
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @IB_QP_QKEY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %134 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %133, i32 0, i32 14
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %137 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN, align 4
  %147 = call i32 @SET_FIELD(i32 %145, i32 %146, i32 1)
  %148 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %149 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %152 = and i32 %150, %151
  %153 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 2
  store i32 %152, i32* %153, align 4
  %154 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %155 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %158 = and i32 %156, %157
  %159 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 3
  store i32 %158, i32* %159, align 8
  %160 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %161 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %164 = and i32 %162, %163
  %165 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 4
  store i32 %164, i32* %165, align 4
  br label %166

166:                                              ; preds = %143, %138
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @IB_QP_AV, align 4
  %169 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %368

173:                                              ; preds = %166
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %215

178:                                              ; preds = %173
  %179 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %180 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IB_MTU_256, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %190, label %184

184:                                              ; preds = %178
  %185 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %186 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %185, i32 0, i32 13
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @IB_MTU_4096, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %184, %178
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %192 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %193 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %192, i32 0, i32 13
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (%struct.TYPE_14__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_14__* %191, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %10, align 4
  br label %655

198:                                              ; preds = %184
  %199 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %200 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %199, i32 0, i32 13
  %201 = load i32, i32* %200, align 8
  %202 = call i8* @ib_mtu_enum_to_int(i32 %201)
  %203 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %204 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %203, i32 0, i32 1
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @iboe_get_mtu(i32 %209)
  %211 = call i8* @ib_mtu_enum_to_int(i32 %210)
  %212 = call i8* @min(i8* %202, i8* %211)
  %213 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %214 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %213, i32 0, i32 6
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %198, %173
  %216 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %217 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %216, i32 0, i32 6
  %218 = load i8*, i8** %217, align 8
  %219 = icmp eq i8* %218, null
  br i1 %219, label %220, label %237

220:                                              ; preds = %215
  %221 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %222 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %221, i32 0, i32 1
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @iboe_get_mtu(i32 %227)
  %229 = call i8* @ib_mtu_enum_to_int(i32 %228)
  %230 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %231 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %230, i32 0, i32 6
  store i8* %229, i8** %231, align 8
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %233 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %234 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %233, i32 0, i32 6
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 (%struct.TYPE_14__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_14__* %232, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %235)
  br label %237

237:                                              ; preds = %220, %215
  %238 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR, align 4
  %241 = call i32 @SET_FIELD(i32 %239, i32 %240, i32 1)
  %242 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %243 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %242, i32 0, i32 12
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 23
  store i32 %246, i32* %247, align 4
  %248 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %249 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %248, i32 0, i32 12
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 22
  store i32 %252, i32* %253, align 8
  %254 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %255 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %254, i32 0, i32 12
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 21
  store i32 %258, i32* %259, align 4
  %260 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %261 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %260, i32 0, i32 12
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %266 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %265, i32 0, i32 7
  store i32 %264, i32* %266, align 8
  %267 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %268 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %271 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %272 = call i32 @get_gid_info(%struct.ib_qp* %267, %struct.ib_qp_attr* %268, i32 %269, %struct.qlnxr_dev* %270, %struct.qlnxr_qp* %271, %struct.ecore_rdma_modify_qp_in_params* %13)
  %273 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %274 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %275 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %274, i32 0, i32 12
  %276 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 17
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @qlnxr_get_dmac(%struct.qlnxr_dev* %273, %struct.TYPE_15__* %275, i32* %277)
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %10, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %237
  %282 = load i32, i32* %10, align 4
  store i32 %282, i32* %5, align 4
  br label %659

283:                                              ; preds = %237
  %284 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 5
  store i32 1, i32* %284, align 8
  %285 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 20
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %288 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %287, i32 0, i32 1
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @ETH_ALEN, align 4
  %293 = call i32 @memcpy(i32 %286, i32 %291, i32 %292)
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %295 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 19
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 19
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 19
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 2
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 19
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 3
  %314 = load i32, i32* %313, align 4
  %315 = call i32 (%struct.TYPE_14__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_14__* %294, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %299, i32 %304, i32 %309, i32 %314)
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %317 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 18
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 0
  %321 = load i32, i32* %320, align 4
  %322 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 18
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 1
  %326 = load i32, i32* %325, align 4
  %327 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 18
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 2
  %331 = load i32, i32* %330, align 4
  %332 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 18
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 3
  %336 = load i32, i32* %335, align 4
  %337 = call i32 (%struct.TYPE_14__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_14__* %316, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %321, i32 %326, i32 %331, i32 %336)
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %339 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 17
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 17
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 1
  %346 = load i32, i32* %345, align 4
  %347 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 17
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  %350 = load i32, i32* %349, align 4
  %351 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 17
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 3
  %354 = load i32, i32* %353, align 4
  %355 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 17
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 4
  %358 = load i32, i32* %357, align 4
  %359 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 17
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 5
  %362 = load i32, i32* %361, align 4
  %363 = call i32 (%struct.TYPE_14__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_14__* %338, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %342, i32 %346, i32 %350, i32 %354, i32 %358, i32 %362)
  %364 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %365 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %364, i32 0, i32 6
  %366 = load i8*, i8** %365, align 8
  %367 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 16
  store i8* %366, i8** %367, align 8
  br label %368

368:                                              ; preds = %283, %166
  %369 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 16
  %370 = load i8*, i8** %369, align 8
  %371 = icmp eq i8* %370, null
  br i1 %371, label %372, label %394

372:                                              ; preds = %368
  %373 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %374 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %373, i32 0, i32 6
  %375 = load i8*, i8** %374, align 8
  %376 = icmp ne i8* %375, null
  br i1 %376, label %377, label %382

377:                                              ; preds = %372
  %378 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %379 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %378, i32 0, i32 6
  %380 = load i8*, i8** %379, align 8
  %381 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 16
  store i8* %380, i8** %381, align 8
  br label %393

382:                                              ; preds = %372
  %383 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %384 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %383, i32 0, i32 1
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @iboe_get_mtu(i32 %389)
  %391 = call i8* @ib_mtu_enum_to_int(i32 %390)
  %392 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 16
  store i8* %391, i8** %392, align 8
  br label %393

393:                                              ; preds = %382, %377
  br label %394

394:                                              ; preds = %393, %368
  %395 = load i32, i32* %8, align 4
  %396 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %427

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT, align 4
  %403 = call i32 @SET_FIELD(i32 %401, i32 %402, i32 1)
  %404 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %405 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 6
  store i32 %406, i32* %407, align 4
  %408 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %409 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %424

412:                                              ; preds = %399
  %413 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %414 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = zext i32 %415 to i64
  %417 = shl i64 1, %416
  %418 = mul i64 4096, %417
  %419 = udiv i64 %418, 1000
  %420 = udiv i64 %419, 1000
  %421 = trunc i64 %420 to i32
  store i32 %421, i32* %18, align 4
  %422 = load i32, i32* %18, align 4
  %423 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 6
  store i32 %422, i32* %423, align 4
  br label %426

424:                                              ; preds = %399
  %425 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 6
  store i32 0, i32* %425, align 4
  br label %426

426:                                              ; preds = %424, %412
  br label %427

427:                                              ; preds = %426, %394
  %428 = load i32, i32* %8, align 4
  %429 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %441

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_RETRY_CNT, align 4
  %436 = call i32 @SET_FIELD(i32 %434, i32 %435, i32 1)
  %437 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %438 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %437, i32 0, i32 11
  %439 = load i32, i32* %438, align 4
  %440 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 15
  store i32 %439, i32* %440, align 8
  br label %441

441:                                              ; preds = %432, %427
  %442 = load i32, i32* %8, align 4
  %443 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %455

446:                                              ; preds = %441
  %447 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %448 = load i32, i32* %447, align 4
  %449 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT, align 4
  %450 = call i32 @SET_FIELD(i32 %448, i32 %449, i32 1)
  %451 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %452 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %451, i32 0, i32 10
  %453 = load i32, i32* %452, align 8
  %454 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 14
  store i32 %453, i32* %454, align 4
  br label %455

455:                                              ; preds = %446, %441
  %456 = load i32, i32* %8, align 4
  %457 = load i32, i32* @IB_QP_RQ_PSN, align 4
  %458 = and i32 %456, %457
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %474

460:                                              ; preds = %455
  %461 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %462 = load i32, i32* %461, align 4
  %463 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_RQ_PSN, align 4
  %464 = call i32 @SET_FIELD(i32 %462, i32 %463, i32 1)
  %465 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %466 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %465, i32 0, i32 9
  %467 = load i32, i32* %466, align 4
  %468 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 13
  store i32 %467, i32* %468, align 8
  %469 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %470 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %469, i32 0, i32 9
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %473 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %472, i32 0, i32 5
  store i32 %471, i32* %473, align 4
  br label %474

474:                                              ; preds = %460, %455
  %475 = load i32, i32* %8, align 4
  %476 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %507

479:                                              ; preds = %474
  %480 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %481 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %480, i32 0, i32 8
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %16, align 8
  %484 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = icmp sgt i32 %482, %485
  br i1 %486, label %487, label %498

487:                                              ; preds = %479
  %488 = load i32, i32* @EINVAL, align 4
  %489 = sub nsw i32 0, %488
  store i32 %489, i32* %10, align 4
  %490 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %491 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %492 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %491, i32 0, i32 8
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %16, align 8
  %495 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = call i32 (%struct.TYPE_14__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_14__* %490, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %493, i32 %496)
  br label %655

498:                                              ; preds = %479
  %499 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ, align 4
  %502 = call i32 @SET_FIELD(i32 %500, i32 %501, i32 1)
  %503 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %504 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %503, i32 0, i32 8
  %505 = load i32, i32* %504, align 8
  %506 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 12
  store i32 %505, i32* %506, align 4
  br label %507

507:                                              ; preds = %498, %474
  %508 = load i32, i32* %8, align 4
  %509 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %510 = and i32 %508, %509
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %521

512:                                              ; preds = %507
  %513 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER, align 4
  %516 = call i32 @SET_FIELD(i32 %514, i32 %515, i32 1)
  %517 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %518 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %517, i32 0, i32 7
  %519 = load i32, i32* %518, align 4
  %520 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 11
  store i32 %519, i32* %520, align 8
  br label %521

521:                                              ; preds = %512, %507
  %522 = load i32, i32* %8, align 4
  %523 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %524 = and i32 %522, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %540

526:                                              ; preds = %521
  %527 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_SQ_PSN, align 4
  %530 = call i32 @SET_FIELD(i32 %528, i32 %529, i32 1)
  %531 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %532 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %531, i32 0, i32 6
  %533 = load i32, i32* %532, align 8
  %534 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 10
  store i32 %533, i32* %534, align 4
  %535 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %536 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %535, i32 0, i32 6
  %537 = load i32, i32* %536, align 8
  %538 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %539 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %538, i32 0, i32 4
  store i32 %537, i32* %539, align 8
  br label %540

540:                                              ; preds = %526, %521
  %541 = load i32, i32* %8, align 4
  %542 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %543 = and i32 %541, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %573

545:                                              ; preds = %540
  %546 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %547 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %546, i32 0, i32 5
  %548 = load i32, i32* %547, align 4
  %549 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %16, align 8
  %550 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = icmp sgt i32 %548, %551
  br i1 %552, label %553, label %564

553:                                              ; preds = %545
  %554 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %555 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %556 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %555, i32 0, i32 5
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %16, align 8
  %559 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = call i32 (%struct.TYPE_14__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_14__* %554, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %557, i32 %560)
  %562 = load i32, i32* @EINVAL, align 4
  %563 = sub nsw i32 0, %562
  store i32 %563, i32* %10, align 4
  br label %655

564:                                              ; preds = %545
  %565 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %566 = load i32, i32* %565, align 4
  %567 = load i32, i32* @ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP, align 4
  %568 = call i32 @SET_FIELD(i32 %566, i32 %567, i32 1)
  %569 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %570 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %569, i32 0, i32 5
  %571 = load i32, i32* %570, align 4
  %572 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 9
  store i32 %571, i32* %572, align 8
  br label %573

573:                                              ; preds = %564, %540
  %574 = load i32, i32* %8, align 4
  %575 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %576 = and i32 %574, %575
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %592

578:                                              ; preds = %573
  %579 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 8
  %580 = load i32, i32* %579, align 4
  %581 = load i32, i32* @ECORE_ROCE_MODIFY_QP_VALID_DEST_QP, align 4
  %582 = call i32 @SET_FIELD(i32 %580, i32 %581, i32 1)
  %583 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %584 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %583, i32 0, i32 4
  %585 = load i32, i32* %584, align 8
  %586 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 7
  store i32 %585, i32* %586, align 8
  %587 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %588 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %587, i32 0, i32 4
  %589 = load i32, i32* %588, align 8
  %590 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %591 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %590, i32 0, i32 3
  store i32 %589, i32* %591, align 4
  br label %592

592:                                              ; preds = %578, %573
  %593 = load i32, i32* %8, align 4
  %594 = load i32, i32* @IB_QP_STATE, align 4
  %595 = and i32 %593, %594
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %615

597:                                              ; preds = %592
  %598 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %599 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %598, i32 0, i32 1
  %600 = load i64, i64* %599, align 8
  %601 = load i64, i64* @IB_QPT_GSI, align 8
  %602 = icmp ne i64 %600, %601
  br i1 %602, label %603, label %615

603:                                              ; preds = %597
  %604 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %605 = icmp ne %struct.ib_udata* %604, null
  br i1 %605, label %615, label %606

606:                                              ; preds = %603
  %607 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = load i64, i64* @ECORE_ROCE_QP_STATE_ERR, align 8
  %610 = icmp eq i64 %608, %609
  br i1 %610, label %611, label %615

611:                                              ; preds = %606
  %612 = load i64, i64* @ECORE_ROCE_QP_STATE_ERR, align 8
  %613 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %614 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %613, i32 0, i32 0
  store i64 %612, i64* %614, align 8
  br label %615

615:                                              ; preds = %611, %606, %603, %597, %592
  %616 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %617 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %616, i32 0, i32 1
  %618 = load i64, i64* %617, align 8
  %619 = load i64, i64* @IB_QPT_GSI, align 8
  %620 = icmp ne i64 %618, %619
  br i1 %620, label %621, label %629

621:                                              ; preds = %615
  %622 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %623 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 8
  %625 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %626 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %625, i32 0, i32 2
  %627 = load i32, i32* %626, align 8
  %628 = call i32 @ecore_rdma_modify_qp(i32 %624, i32 %627, %struct.ecore_rdma_modify_qp_in_params* %13)
  store i32 %628, i32* %10, align 4
  br label %629

629:                                              ; preds = %621, %615
  %630 = load i32, i32* %8, align 4
  %631 = load i32, i32* @IB_QP_STATE, align 4
  %632 = and i32 %630, %631
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %654

634:                                              ; preds = %629
  %635 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %636 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %635, i32 0, i32 1
  %637 = load i64, i64* %636, align 8
  %638 = load i64, i64* @IB_QPT_GSI, align 8
  %639 = icmp ne i64 %637, %638
  br i1 %639, label %640, label %649

640:                                              ; preds = %634
  %641 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %642 = icmp ne %struct.ib_udata* %641, null
  br i1 %642, label %649, label %643

643:                                              ; preds = %640
  %644 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  %645 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %646 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 0
  %647 = load i64, i64* %646, align 8
  %648 = call i32 @qlnxr_update_qp_state(%struct.qlnxr_dev* %644, %struct.qlnxr_qp* %645, i64 %647)
  store i32 %648, i32* %10, align 4
  br label %649

649:                                              ; preds = %643, %640, %634
  %650 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %13, i32 0, i32 0
  %651 = load i64, i64* %650, align 8
  %652 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %653 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %652, i32 0, i32 0
  store i64 %651, i64* %653, align 8
  br label %654

654:                                              ; preds = %649, %629
  br label %655

655:                                              ; preds = %654, %553, %487, %190, %121, %69
  %656 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %657 = call i32 (%struct.TYPE_14__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_14__* %656, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %658 = load i32, i32* %10, align 4
  store i32 %658, i32* %5, align 4
  br label %659

659:                                              ; preds = %655, %281
  %660 = load i32, i32* %5, align 4
  ret i32 %660
}

declare dso_local %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp*) #1

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.ecore_rdma_device* @ecore_rdma_query_device(i32) #1

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @qlnxr_get_ibqp_state(i64) #1

declare dso_local i64 @QLNX_IS_ROCE(%struct.qlnxr_dev*) #1

declare dso_local i32 @ib_modify_qp_is_ok(i32, i32, i32, i32, ...) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i64 @qlnxr_get_state_from_ibqp(i32) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i8* @ib_mtu_enum_to_int(i32) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @get_gid_info(%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ecore_rdma_modify_qp_in_params*) #1

declare dso_local i32 @qlnxr_get_dmac(%struct.qlnxr_dev*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ecore_rdma_modify_qp(i32, i32, %struct.ecore_rdma_modify_qp_in_params*) #1

declare dso_local i32 @qlnxr_update_qp_state(%struct.qlnxr_dev*, %struct.qlnxr_qp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
