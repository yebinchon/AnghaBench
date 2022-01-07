; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { i32, i32, %struct.ib_send_wr*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.qlnxr_dev = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.qlnxr_qp = type { i64, i64, i32, i32, %struct.TYPE_19__, %struct.TYPE_14__*, i64, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__, i64, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i8*, i32 }
%struct.rdma_sq_common_wqe = type { i32, i32, i8* }
%struct.rdma_sq_send_wqe = type { i32, i8*, i8* }
%struct.rdma_sq_rdma_wqe_1st = type { i32, i8*, i32 }
%struct.rdma_sq_rdma_wqe_2nd = type { i32 }
%struct.rdma_sq_local_inv_wqe = type { i32, i32, i32 }
%struct.rdma_sq_atomic_wqe = type { i32, i8* }
%struct.rdma_sq_fmr_wqe_1st = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"exit[ibqp, wr, bad_wr] = [%p, %p, %p]\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@ECORE_ROCE_QP_STATE_RTS = common dso_local global i64 0, align 8
@ECORE_ROCE_QP_STATE_ERR = common dso_local global i64 0, align 8
@ECORE_ROCE_QP_STATE_SQD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"QP in wrong state! QP icid=0x%x state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Got an empty post send???\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@RDMA_SQ_SEND_WQE_COMP_FLG_MASK = common dso_local global i32 0, align 4
@RDMA_SQ_SEND_WQE_COMP_FLG_SHIFT = common dso_local global i32 0, align 4
@RDMA_SQ_SEND_WQE_SE_FLG = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@RDMA_SQ_SEND_WQE_COMP_FLG = common dso_local global i32 0, align 4
@RDMA_SQ_SEND_WQE_RD_FENCE_FLG = common dso_local global i32 0, align 4
@IB_SEND_FENCE = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_SEND_WITH_IMM = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"SEND w/ IMM length = %d imm data=%x\0A\00", align 1
@RDMA_SQ_REQ_TYPE_SEND = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"SEND w/o IMM length = %d\0A\00", align 1
@RDMA_SQ_REQ_TYPE_SEND_WITH_INVALIDATE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"SEND w INVALIDATE length = %d\0A\00", align 1
@RDMA_SQ_REQ_TYPE_RDMA_WR_WITH_IMM = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"RDMA WRITE w/ IMM length = %d imm data=%x\0A\00", align 1
@RDMA_SQ_REQ_TYPE_RDMA_WR = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"RDMA WRITE w/o IMM length = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"RDMA READ WITH INVALIDATE not supported\0A\00", align 1
@RDMA_SQ_REQ_TYPE_RDMA_RD = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"RDMA READ length = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"ATOMIC operation = %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"IB_WR_ATOMIC_CMP_AND_SWP\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"IB_WR_ATOMIC_FETCH_AND_ADD\00", align 1
@remote_va = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_ATOMIC_ADD = common dso_local global i8* null, align 8
@swap_data = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_ATOMIC_CMP_AND_SWAP = common dso_local global i8* null, align 8
@cmp_data = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"INVALIDATE length (IB_WR_LOCAL_INV)\0A\00", align 1
@RDMA_SQ_REQ_TYPE_LOCAL_INVALIDATE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"FAST_MR (IB_WR_FAST_REG_MR)\0A\00", align 1
@RDMA_SQ_REQ_TYPE_FAST_MR = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [44 x i8] c"FAST_MR (IB_WR_FAST_REG_MR) failed rc = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Invalid Opcode 0x%x!\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"failed *bad_wr = %p\0A\00", align 1
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca %struct.qlnxr_dev*, align 8
  %9 = alloca %struct.qlnxr_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.rdma_sq_common_wqe*, align 8
  %17 = alloca %struct.rdma_sq_send_wqe*, align 8
  %18 = alloca %struct.rdma_sq_send_wqe*, align 8
  %19 = alloca %struct.rdma_sq_rdma_wqe_1st*, align 8
  %20 = alloca %struct.rdma_sq_rdma_wqe_2nd*, align 8
  %21 = alloca %struct.rdma_sq_local_inv_wqe*, align 8
  %22 = alloca %struct.rdma_sq_atomic_wqe*, align 8
  %23 = alloca %struct.rdma_sq_atomic_wqe*, align 8
  %24 = alloca %struct.rdma_sq_atomic_wqe*, align 8
  %25 = alloca %struct.rdma_sq_fmr_wqe_1st*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  %26 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %27 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %28)
  store %struct.qlnxr_dev* %29, %struct.qlnxr_dev** %8, align 8
  %30 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %31 = call %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp* %30)
  store %struct.qlnxr_qp* %31, %struct.qlnxr_qp** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %32 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* null, %struct.ib_send_wr** %32, align 8
  %33 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %34 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %14, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %37 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %38 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %39 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %40 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.ib_qp* %37, %struct.ib_send_wr* %38, %struct.ib_send_wr** %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %880

52:                                               ; preds = %3
  %53 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %54 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IB_QPT_GSI, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %60 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %61 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %62 = call i32 @qlnxr_gsi_post_send(%struct.ib_qp* %59, %struct.ib_send_wr* %60, %struct.ib_send_wr** %61)
  store i32 %62, i32* %4, align 4
  br label %880

63:                                               ; preds = %52
  %64 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %65 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %64, i32 0, i32 3
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %69 = call i64 @QLNX_IS_ROCE(%struct.qlnxr_dev* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %63
  %72 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %73 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ECORE_ROCE_QP_STATE_RTS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %71
  %78 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %79 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ECORE_ROCE_QP_STATE_ERR, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %77
  %84 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %85 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ECORE_ROCE_QP_STATE_SQD, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  %90 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %91 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %90, i32 0, i32 3
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %95 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %94, %struct.ib_send_wr** %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %97 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %98 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %101 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_18__* %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %99, i64 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %880

106:                                              ; preds = %83, %77, %71, %63
  %107 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %108 = icmp ne %struct.ib_send_wr* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %111 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_18__* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %812, %112
  %114 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %115 = icmp ne %struct.ib_send_wr* %114, null
  br i1 %115, label %116, label %838

116:                                              ; preds = %113
  %117 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %118 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %119 = call i32 @qlnxr_can_post_send(%struct.qlnxr_qp* %117, %struct.ib_send_wr* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %11, align 4
  %124 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %125 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %124, %struct.ib_send_wr** %125, align 8
  br label %838

126:                                              ; preds = %116
  %127 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %128 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 3
  %130 = call %struct.rdma_sq_common_wqe* @ecore_chain_produce(i32* %129)
  store %struct.rdma_sq_common_wqe* %130, %struct.rdma_sq_common_wqe** %16, align 8
  %131 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %126
  %138 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %139 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br label %142

142:                                              ; preds = %137, %126
  %143 = phi i1 [ true, %126 ], [ %141, %137 ]
  %144 = zext i1 %143 to i32
  %145 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %146 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %145, i32 0, i32 5
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %149 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  store i32 %144, i32* %153, align 8
  %154 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %155 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  %156 = load i32, i32* @RDMA_SQ_SEND_WQE_COMP_FLG_MASK, align 4
  %157 = load i32, i32* @RDMA_SQ_SEND_WQE_COMP_FLG_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %160 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %164 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @RDMA_SQ_SEND_WQE_SE_FLG, align 4
  %167 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %168 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = call i32 @SET_FIELD2(i32 %165, i32 %166, i32 %175)
  %177 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %142
  %184 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %185 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br label %188

188:                                              ; preds = %183, %142
  %189 = phi i1 [ true, %142 ], [ %187, %183 ]
  %190 = zext i1 %189 to i32
  store i32 %190, i32* %13, align 4
  %191 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %192 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @RDMA_SQ_SEND_WQE_COMP_FLG, align 4
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @SET_FIELD2(i32 %193, i32 %194, i32 %195)
  %197 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %198 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @RDMA_SQ_SEND_WQE_RD_FENCE_FLG, align 4
  %201 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %202 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @IB_SEND_FENCE, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i32 @SET_FIELD2(i32 %199, i32 %200, i32 %209)
  %211 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %212 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %215 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %217 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @qlnxr_ib_to_wc_opcode(i32 %218)
  %220 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %221 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %220, i32 0, i32 5
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %224 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 4
  store i32 %219, i32* %228, align 8
  %229 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %230 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  switch i32 %231, label %775 [
    i32 129, label %232
    i32 130, label %300
    i32 128, label %357
    i32 132, label %421
    i32 133, label %489
    i32 134, label %546
    i32 135, label %553
    i32 139, label %610
    i32 138, label %610
    i32 136, label %702
    i32 137, label %735
  ]

232:                                              ; preds = %188
  %233 = load i8*, i8** @RDMA_SQ_REQ_TYPE_SEND_WITH_IMM, align 8
  %234 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %235 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  %236 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %237 = bitcast %struct.rdma_sq_common_wqe* %236 to %struct.rdma_sq_send_wqe*
  store %struct.rdma_sq_send_wqe* %237, %struct.rdma_sq_send_wqe** %17, align 8
  %238 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %239 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %238, i32 0, i32 0
  store i32 2, i32* %239, align 8
  %240 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %241 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 3
  %243 = call %struct.rdma_sq_common_wqe* @ecore_chain_produce(i32* %242)
  %244 = bitcast %struct.rdma_sq_common_wqe* %243 to %struct.rdma_sq_send_wqe*
  store %struct.rdma_sq_send_wqe* %244, %struct.rdma_sq_send_wqe** %18, align 8
  %245 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %246 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @cpu_to_le32(i32 %248)
  %250 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %251 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %250, i32 0, i32 2
  store i8* %249, i8** %251, align 8
  %252 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %253 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %254 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %255 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %18, align 8
  %256 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %257 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %258 = call i32 @qlnxr_prepare_sq_send_data(%struct.qlnxr_dev* %252, %struct.qlnxr_qp* %253, %struct.rdma_sq_send_wqe* %254, %struct.rdma_sq_send_wqe* %255, %struct.ib_send_wr* %256, %struct.ib_send_wr** %257)
  %259 = call i8* @cpu_to_le32(i32 %258)
  %260 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %261 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %260, i32 0, i32 1
  store i8* %259, i8** %261, align 8
  %262 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %263 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %266 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %265, i32 0, i32 5
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %266, align 8
  %268 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %269 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  store i32 %264, i32* %273, align 4
  %274 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %275 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %278 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  %279 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %280 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %283 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %282, i32 0, i32 5
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %283, align 8
  %285 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %286 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %285, i32 0, i32 4
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 3
  store i8* %281, i8** %290, align 8
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %292 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %293 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %292, i32 0, i32 1
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %296 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %291, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %294, i32 %298)
  br label %785

300:                                              ; preds = %188
  %301 = load i8*, i8** @RDMA_SQ_REQ_TYPE_SEND, align 8
  %302 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %303 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  %304 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %305 = bitcast %struct.rdma_sq_common_wqe* %304 to %struct.rdma_sq_send_wqe*
  store %struct.rdma_sq_send_wqe* %305, %struct.rdma_sq_send_wqe** %17, align 8
  %306 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %307 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %306, i32 0, i32 0
  store i32 2, i32* %307, align 8
  %308 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %309 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 3
  %311 = call %struct.rdma_sq_common_wqe* @ecore_chain_produce(i32* %310)
  %312 = bitcast %struct.rdma_sq_common_wqe* %311 to %struct.rdma_sq_send_wqe*
  store %struct.rdma_sq_send_wqe* %312, %struct.rdma_sq_send_wqe** %18, align 8
  %313 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %314 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %315 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %316 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %18, align 8
  %317 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %318 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %319 = call i32 @qlnxr_prepare_sq_send_data(%struct.qlnxr_dev* %313, %struct.qlnxr_qp* %314, %struct.rdma_sq_send_wqe* %315, %struct.rdma_sq_send_wqe* %316, %struct.ib_send_wr* %317, %struct.ib_send_wr** %318)
  %320 = call i8* @cpu_to_le32(i32 %319)
  %321 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %322 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %321, i32 0, i32 1
  store i8* %320, i8** %322, align 8
  %323 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %324 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %327 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %326, i32 0, i32 5
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %327, align 8
  %329 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %330 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %329, i32 0, i32 4
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 1
  store i32 %325, i32* %334, align 4
  %335 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %336 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %339 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %338, i32 0, i32 2
  store i32 %337, i32* %339, align 8
  %340 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %341 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %340, i32 0, i32 1
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %344 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %343, i32 0, i32 5
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %344, align 8
  %346 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %347 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %346, i32 0, i32 4
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 3
  store i8* %342, i8** %351, align 8
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %353 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %354 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %353, i32 0, i32 1
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %352, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %355)
  br label %785

357:                                              ; preds = %188
  %358 = load i8*, i8** @RDMA_SQ_REQ_TYPE_SEND_WITH_INVALIDATE, align 8
  %359 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %360 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %359, i32 0, i32 2
  store i8* %358, i8** %360, align 8
  %361 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %362 = bitcast %struct.rdma_sq_common_wqe* %361 to %struct.rdma_sq_send_wqe*
  store %struct.rdma_sq_send_wqe* %362, %struct.rdma_sq_send_wqe** %17, align 8
  %363 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %364 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %363, i32 0, i32 4
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 3
  %366 = call %struct.rdma_sq_common_wqe* @ecore_chain_produce(i32* %365)
  %367 = bitcast %struct.rdma_sq_common_wqe* %366 to %struct.rdma_sq_send_wqe*
  store %struct.rdma_sq_send_wqe* %367, %struct.rdma_sq_send_wqe** %18, align 8
  %368 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %369 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %368, i32 0, i32 0
  store i32 2, i32* %369, align 8
  %370 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %371 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %370, i32 0, i32 4
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call i8* @cpu_to_le32(i32 %373)
  %375 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %376 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %375, i32 0, i32 2
  store i8* %374, i8** %376, align 8
  %377 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %378 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %379 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %380 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %18, align 8
  %381 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %382 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %383 = call i32 @qlnxr_prepare_sq_send_data(%struct.qlnxr_dev* %377, %struct.qlnxr_qp* %378, %struct.rdma_sq_send_wqe* %379, %struct.rdma_sq_send_wqe* %380, %struct.ib_send_wr* %381, %struct.ib_send_wr** %382)
  %384 = call i8* @cpu_to_le32(i32 %383)
  %385 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %386 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %385, i32 0, i32 1
  store i8* %384, i8** %386, align 8
  %387 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %388 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %391 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %390, i32 0, i32 5
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %391, align 8
  %393 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %394 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %393, i32 0, i32 4
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 1
  store i32 %389, i32* %398, align 4
  %399 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %400 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %403 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %402, i32 0, i32 2
  store i32 %401, i32* %403, align 8
  %404 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %405 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %404, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %408 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %407, i32 0, i32 5
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %408, align 8
  %410 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %411 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %410, i32 0, i32 4
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 3
  store i8* %406, i8** %415, align 8
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %417 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %17, align 8
  %418 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %417, i32 0, i32 1
  %419 = load i8*, i8** %418, align 8
  %420 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %416, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %419)
  br label %785

421:                                              ; preds = %188
  %422 = load i8*, i8** @RDMA_SQ_REQ_TYPE_RDMA_WR_WITH_IMM, align 8
  %423 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %424 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %423, i32 0, i32 2
  store i8* %422, i8** %424, align 8
  %425 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %426 = bitcast %struct.rdma_sq_common_wqe* %425 to %struct.rdma_sq_rdma_wqe_1st*
  store %struct.rdma_sq_rdma_wqe_1st* %426, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %427 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %428 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %427, i32 0, i32 0
  store i32 2, i32* %428, align 8
  %429 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %430 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %429, i32 0, i32 4
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = call i8* @cpu_to_le32(i32 %432)
  %434 = call i32 @htonl(i8* %433)
  %435 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %436 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %435, i32 0, i32 2
  store i32 %434, i32* %436, align 8
  %437 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %438 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %437, i32 0, i32 4
  %439 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %438, i32 0, i32 3
  %440 = call %struct.rdma_sq_common_wqe* @ecore_chain_produce(i32* %439)
  %441 = bitcast %struct.rdma_sq_common_wqe* %440 to %struct.rdma_sq_rdma_wqe_2nd*
  store %struct.rdma_sq_rdma_wqe_2nd* %441, %struct.rdma_sq_rdma_wqe_2nd** %20, align 8
  %442 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %443 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %444 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %445 = load %struct.rdma_sq_rdma_wqe_2nd*, %struct.rdma_sq_rdma_wqe_2nd** %20, align 8
  %446 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %447 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %448 = call i32 @qlnxr_prepare_sq_rdma_data(%struct.qlnxr_dev* %442, %struct.qlnxr_qp* %443, %struct.rdma_sq_rdma_wqe_1st* %444, %struct.rdma_sq_rdma_wqe_2nd* %445, %struct.ib_send_wr* %446, %struct.ib_send_wr** %447)
  %449 = call i8* @cpu_to_le32(i32 %448)
  %450 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %451 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %450, i32 0, i32 1
  store i8* %449, i8** %451, align 8
  %452 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %453 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %456 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %455, i32 0, i32 5
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %456, align 8
  %458 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %459 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %458, i32 0, i32 4
  %460 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %462, i32 0, i32 1
  store i32 %454, i32* %463, align 4
  %464 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %465 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %468 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %467, i32 0, i32 2
  store i32 %466, i32* %468, align 8
  %469 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %470 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %469, i32 0, i32 1
  %471 = load i8*, i8** %470, align 8
  %472 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %473 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %472, i32 0, i32 5
  %474 = load %struct.TYPE_14__*, %struct.TYPE_14__** %473, align 8
  %475 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %476 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %475, i32 0, i32 4
  %477 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %479, i32 0, i32 3
  store i8* %471, i8** %480, align 8
  %481 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %482 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %483 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %482, i32 0, i32 1
  %484 = load i8*, i8** %483, align 8
  %485 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %486 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %481, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %484, i32 %487)
  br label %785

489:                                              ; preds = %188
  %490 = load i8*, i8** @RDMA_SQ_REQ_TYPE_RDMA_WR, align 8
  %491 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %492 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %491, i32 0, i32 2
  store i8* %490, i8** %492, align 8
  %493 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %494 = bitcast %struct.rdma_sq_common_wqe* %493 to %struct.rdma_sq_rdma_wqe_1st*
  store %struct.rdma_sq_rdma_wqe_1st* %494, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %495 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %496 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %495, i32 0, i32 0
  store i32 2, i32* %496, align 8
  %497 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %498 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %497, i32 0, i32 4
  %499 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %498, i32 0, i32 3
  %500 = call %struct.rdma_sq_common_wqe* @ecore_chain_produce(i32* %499)
  %501 = bitcast %struct.rdma_sq_common_wqe* %500 to %struct.rdma_sq_rdma_wqe_2nd*
  store %struct.rdma_sq_rdma_wqe_2nd* %501, %struct.rdma_sq_rdma_wqe_2nd** %20, align 8
  %502 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %503 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %504 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %505 = load %struct.rdma_sq_rdma_wqe_2nd*, %struct.rdma_sq_rdma_wqe_2nd** %20, align 8
  %506 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %507 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %508 = call i32 @qlnxr_prepare_sq_rdma_data(%struct.qlnxr_dev* %502, %struct.qlnxr_qp* %503, %struct.rdma_sq_rdma_wqe_1st* %504, %struct.rdma_sq_rdma_wqe_2nd* %505, %struct.ib_send_wr* %506, %struct.ib_send_wr** %507)
  %509 = call i8* @cpu_to_le32(i32 %508)
  %510 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %511 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %510, i32 0, i32 1
  store i8* %509, i8** %511, align 8
  %512 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %513 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %516 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %515, i32 0, i32 5
  %517 = load %struct.TYPE_14__*, %struct.TYPE_14__** %516, align 8
  %518 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %519 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %518, i32 0, i32 4
  %520 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %519, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %517, i64 %521
  %523 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %522, i32 0, i32 1
  store i32 %514, i32* %523, align 4
  %524 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %525 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %528 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %527, i32 0, i32 2
  store i32 %526, i32* %528, align 8
  %529 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %530 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %529, i32 0, i32 1
  %531 = load i8*, i8** %530, align 8
  %532 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %533 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %532, i32 0, i32 5
  %534 = load %struct.TYPE_14__*, %struct.TYPE_14__** %533, align 8
  %535 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %536 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %535, i32 0, i32 4
  %537 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %536, i32 0, i32 0
  %538 = load i64, i64* %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %534, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %539, i32 0, i32 3
  store i8* %531, i8** %540, align 8
  %541 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %542 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %543 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %542, i32 0, i32 1
  %544 = load i8*, i8** %543, align 8
  %545 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %541, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %544)
  br label %785

546:                                              ; preds = %188
  %547 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %548 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %547, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %549 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %550 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %549, %struct.ib_send_wr** %550, align 8
  %551 = load i32, i32* @EINVAL, align 4
  %552 = sub nsw i32 0, %551
  store i32 %552, i32* %12, align 4
  br label %785

553:                                              ; preds = %188
  %554 = load i8*, i8** @RDMA_SQ_REQ_TYPE_RDMA_RD, align 8
  %555 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %556 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %555, i32 0, i32 2
  store i8* %554, i8** %556, align 8
  %557 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %558 = bitcast %struct.rdma_sq_common_wqe* %557 to %struct.rdma_sq_rdma_wqe_1st*
  store %struct.rdma_sq_rdma_wqe_1st* %558, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %559 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %560 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %559, i32 0, i32 0
  store i32 2, i32* %560, align 8
  %561 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %562 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %561, i32 0, i32 4
  %563 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %562, i32 0, i32 3
  %564 = call %struct.rdma_sq_common_wqe* @ecore_chain_produce(i32* %563)
  %565 = bitcast %struct.rdma_sq_common_wqe* %564 to %struct.rdma_sq_rdma_wqe_2nd*
  store %struct.rdma_sq_rdma_wqe_2nd* %565, %struct.rdma_sq_rdma_wqe_2nd** %20, align 8
  %566 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %567 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %568 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %569 = load %struct.rdma_sq_rdma_wqe_2nd*, %struct.rdma_sq_rdma_wqe_2nd** %20, align 8
  %570 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %571 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %572 = call i32 @qlnxr_prepare_sq_rdma_data(%struct.qlnxr_dev* %566, %struct.qlnxr_qp* %567, %struct.rdma_sq_rdma_wqe_1st* %568, %struct.rdma_sq_rdma_wqe_2nd* %569, %struct.ib_send_wr* %570, %struct.ib_send_wr** %571)
  %573 = call i8* @cpu_to_le32(i32 %572)
  %574 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %575 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %574, i32 0, i32 1
  store i8* %573, i8** %575, align 8
  %576 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %577 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %580 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %579, i32 0, i32 5
  %581 = load %struct.TYPE_14__*, %struct.TYPE_14__** %580, align 8
  %582 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %583 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %582, i32 0, i32 4
  %584 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %583, i32 0, i32 0
  %585 = load i64, i64* %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %581, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %586, i32 0, i32 1
  store i32 %578, i32* %587, align 4
  %588 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %589 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %592 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %591, i32 0, i32 2
  store i32 %590, i32* %592, align 8
  %593 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %594 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %593, i32 0, i32 1
  %595 = load i8*, i8** %594, align 8
  %596 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %597 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %596, i32 0, i32 5
  %598 = load %struct.TYPE_14__*, %struct.TYPE_14__** %597, align 8
  %599 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %600 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %599, i32 0, i32 4
  %601 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %600, i32 0, i32 0
  %602 = load i64, i64* %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %598, i64 %602
  %604 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %603, i32 0, i32 3
  store i8* %595, i8** %604, align 8
  %605 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %606 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %19, align 8
  %607 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %606, i32 0, i32 1
  %608 = load i8*, i8** %607, align 8
  %609 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %605, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %608)
  br label %785

610:                                              ; preds = %188, %188
  %611 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %612 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %613 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %612, i32 0, i32 1
  %614 = load i32, i32* %613, align 4
  %615 = icmp eq i32 %614, 139
  %616 = zext i1 %615 to i64
  %617 = select i1 %615, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0)
  %618 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %611, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %617)
  %619 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %620 = bitcast %struct.rdma_sq_common_wqe* %619 to %struct.rdma_sq_atomic_wqe*
  store %struct.rdma_sq_atomic_wqe* %620, %struct.rdma_sq_atomic_wqe** %22, align 8
  %621 = load %struct.rdma_sq_atomic_wqe*, %struct.rdma_sq_atomic_wqe** %22, align 8
  %622 = getelementptr inbounds %struct.rdma_sq_atomic_wqe, %struct.rdma_sq_atomic_wqe* %621, i32 0, i32 0
  store i32 4, i32* %622, align 8
  %623 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %624 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %623, i32 0, i32 4
  %625 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %624, i32 0, i32 3
  %626 = call %struct.rdma_sq_common_wqe* @ecore_chain_produce(i32* %625)
  %627 = bitcast %struct.rdma_sq_common_wqe* %626 to %struct.rdma_sq_atomic_wqe*
  store %struct.rdma_sq_atomic_wqe* %627, %struct.rdma_sq_atomic_wqe** %23, align 8
  %628 = load %struct.rdma_sq_atomic_wqe*, %struct.rdma_sq_atomic_wqe** %23, align 8
  %629 = load i32, i32* @remote_va, align 4
  %630 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %631 = call %struct.TYPE_20__* @atomic_wr(%struct.ib_send_wr* %630)
  %632 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %631, i32 0, i32 3
  %633 = load i32, i32* %632, align 4
  %634 = call i32 @TYPEPTR_ADDR_SET(%struct.rdma_sq_atomic_wqe* %628, i32 %629, i32 %633)
  %635 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %636 = call %struct.TYPE_20__* @atomic_wr(%struct.ib_send_wr* %635)
  %637 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %636, i32 0, i32 2
  %638 = load i32, i32* %637, align 4
  %639 = call i8* @cpu_to_le32(i32 %638)
  %640 = load %struct.rdma_sq_atomic_wqe*, %struct.rdma_sq_atomic_wqe** %23, align 8
  %641 = getelementptr inbounds %struct.rdma_sq_atomic_wqe, %struct.rdma_sq_atomic_wqe* %640, i32 0, i32 1
  store i8* %639, i8** %641, align 8
  %642 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %643 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %642, i32 0, i32 4
  %644 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %643, i32 0, i32 3
  %645 = call %struct.rdma_sq_common_wqe* @ecore_chain_produce(i32* %644)
  %646 = bitcast %struct.rdma_sq_common_wqe* %645 to %struct.rdma_sq_atomic_wqe*
  store %struct.rdma_sq_atomic_wqe* %646, %struct.rdma_sq_atomic_wqe** %24, align 8
  %647 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %648 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %647, i32 0, i32 1
  %649 = load i32, i32* %648, align 4
  %650 = icmp eq i32 %649, 138
  br i1 %650, label %651, label %662

651:                                              ; preds = %610
  %652 = load i8*, i8** @RDMA_SQ_REQ_TYPE_ATOMIC_ADD, align 8
  %653 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %654 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %653, i32 0, i32 2
  store i8* %652, i8** %654, align 8
  %655 = load %struct.rdma_sq_atomic_wqe*, %struct.rdma_sq_atomic_wqe** %24, align 8
  %656 = load i32, i32* @swap_data, align 4
  %657 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %658 = call %struct.TYPE_20__* @atomic_wr(%struct.ib_send_wr* %657)
  %659 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 4
  %661 = call i32 @TYPEPTR_ADDR_SET(%struct.rdma_sq_atomic_wqe* %655, i32 %656, i32 %660)
  br label %680

662:                                              ; preds = %610
  %663 = load i8*, i8** @RDMA_SQ_REQ_TYPE_ATOMIC_CMP_AND_SWAP, align 8
  %664 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %665 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %664, i32 0, i32 2
  store i8* %663, i8** %665, align 8
  %666 = load %struct.rdma_sq_atomic_wqe*, %struct.rdma_sq_atomic_wqe** %24, align 8
  %667 = load i32, i32* @swap_data, align 4
  %668 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %669 = call %struct.TYPE_20__* @atomic_wr(%struct.ib_send_wr* %668)
  %670 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %669, i32 0, i32 1
  %671 = load i32, i32* %670, align 4
  %672 = call i32 @TYPEPTR_ADDR_SET(%struct.rdma_sq_atomic_wqe* %666, i32 %667, i32 %671)
  %673 = load %struct.rdma_sq_atomic_wqe*, %struct.rdma_sq_atomic_wqe** %24, align 8
  %674 = load i32, i32* @cmp_data, align 4
  %675 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %676 = call %struct.TYPE_20__* @atomic_wr(%struct.ib_send_wr* %675)
  %677 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %676, i32 0, i32 0
  %678 = load i32, i32* %677, align 4
  %679 = call i32 @TYPEPTR_ADDR_SET(%struct.rdma_sq_atomic_wqe* %673, i32 %674, i32 %678)
  br label %680

680:                                              ; preds = %662, %651
  %681 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %682 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %683 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %684 = call i32 @qlnxr_prepare_sq_sges(%struct.qlnxr_dev* %681, %struct.qlnxr_qp* %682, i32* null, %struct.ib_send_wr* %683)
  %685 = load %struct.rdma_sq_atomic_wqe*, %struct.rdma_sq_atomic_wqe** %22, align 8
  %686 = getelementptr inbounds %struct.rdma_sq_atomic_wqe, %struct.rdma_sq_atomic_wqe* %685, i32 0, i32 0
  %687 = load i32, i32* %686, align 8
  %688 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %689 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %688, i32 0, i32 5
  %690 = load %struct.TYPE_14__*, %struct.TYPE_14__** %689, align 8
  %691 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %692 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %691, i32 0, i32 4
  %693 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %692, i32 0, i32 0
  %694 = load i64, i64* %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %690, i64 %694
  %696 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %695, i32 0, i32 1
  store i32 %687, i32* %696, align 4
  %697 = load %struct.rdma_sq_atomic_wqe*, %struct.rdma_sq_atomic_wqe** %22, align 8
  %698 = getelementptr inbounds %struct.rdma_sq_atomic_wqe, %struct.rdma_sq_atomic_wqe* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 8
  %700 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %701 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %700, i32 0, i32 2
  store i32 %699, i32* %701, align 8
  br label %785

702:                                              ; preds = %188
  %703 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %704 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %703, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %705 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %706 = bitcast %struct.rdma_sq_common_wqe* %705 to %struct.rdma_sq_local_inv_wqe*
  store %struct.rdma_sq_local_inv_wqe* %706, %struct.rdma_sq_local_inv_wqe** %21, align 8
  %707 = load %struct.rdma_sq_local_inv_wqe*, %struct.rdma_sq_local_inv_wqe** %21, align 8
  %708 = getelementptr inbounds %struct.rdma_sq_local_inv_wqe, %struct.rdma_sq_local_inv_wqe* %707, i32 0, i32 0
  store i32 1, i32* %708, align 4
  %709 = load i32, i32* @RDMA_SQ_REQ_TYPE_LOCAL_INVALIDATE, align 4
  %710 = load %struct.rdma_sq_local_inv_wqe*, %struct.rdma_sq_local_inv_wqe** %21, align 8
  %711 = getelementptr inbounds %struct.rdma_sq_local_inv_wqe, %struct.rdma_sq_local_inv_wqe* %710, i32 0, i32 2
  store i32 %709, i32* %711, align 4
  %712 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %713 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %712, i32 0, i32 4
  %714 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %713, i32 0, i32 0
  %715 = load i32, i32* %714, align 4
  %716 = load %struct.rdma_sq_local_inv_wqe*, %struct.rdma_sq_local_inv_wqe** %21, align 8
  %717 = getelementptr inbounds %struct.rdma_sq_local_inv_wqe, %struct.rdma_sq_local_inv_wqe* %716, i32 0, i32 1
  store i32 %715, i32* %717, align 4
  %718 = load %struct.rdma_sq_local_inv_wqe*, %struct.rdma_sq_local_inv_wqe** %21, align 8
  %719 = getelementptr inbounds %struct.rdma_sq_local_inv_wqe, %struct.rdma_sq_local_inv_wqe* %718, i32 0, i32 0
  %720 = load i32, i32* %719, align 4
  %721 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %722 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %721, i32 0, i32 5
  %723 = load %struct.TYPE_14__*, %struct.TYPE_14__** %722, align 8
  %724 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %725 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %724, i32 0, i32 4
  %726 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %725, i32 0, i32 0
  %727 = load i64, i64* %726, align 8
  %728 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %723, i64 %727
  %729 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %728, i32 0, i32 1
  store i32 %720, i32* %729, align 4
  %730 = load %struct.rdma_sq_local_inv_wqe*, %struct.rdma_sq_local_inv_wqe** %21, align 8
  %731 = getelementptr inbounds %struct.rdma_sq_local_inv_wqe, %struct.rdma_sq_local_inv_wqe* %730, i32 0, i32 0
  %732 = load i32, i32* %731, align 4
  %733 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %734 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %733, i32 0, i32 2
  store i32 %732, i32* %734, align 8
  br label %785

735:                                              ; preds = %188
  %736 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %737 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %736, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %738 = load i8*, i8** @RDMA_SQ_REQ_TYPE_FAST_MR, align 8
  %739 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %740 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %739, i32 0, i32 2
  store i8* %738, i8** %740, align 8
  %741 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %742 = bitcast %struct.rdma_sq_common_wqe* %741 to %struct.rdma_sq_fmr_wqe_1st*
  store %struct.rdma_sq_fmr_wqe_1st* %742, %struct.rdma_sq_fmr_wqe_1st** %25, align 8
  %743 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %25, align 8
  %744 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %743, i32 0, i32 1
  store i32 3, i32* %744, align 4
  %745 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %746 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %25, align 8
  %747 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %748 = call i32 @qlnxr_prepare_fmr(%struct.qlnxr_qp* %745, %struct.rdma_sq_fmr_wqe_1st* %746, %struct.ib_send_wr* %747)
  store i32 %748, i32* %12, align 4
  %749 = load i32, i32* %12, align 4
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %751, label %757

751:                                              ; preds = %735
  %752 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %753 = load i32, i32* %12, align 4
  %754 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %752, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i32 %753)
  %755 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %756 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %755, %struct.ib_send_wr** %756, align 8
  br label %785

757:                                              ; preds = %735
  %758 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %25, align 8
  %759 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %758, i32 0, i32 1
  %760 = load i32, i32* %759, align 4
  %761 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %762 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %761, i32 0, i32 5
  %763 = load %struct.TYPE_14__*, %struct.TYPE_14__** %762, align 8
  %764 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %765 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %764, i32 0, i32 4
  %766 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %765, i32 0, i32 0
  %767 = load i64, i64* %766, align 8
  %768 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %763, i64 %767
  %769 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %768, i32 0, i32 1
  store i32 %760, i32* %769, align 4
  %770 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %25, align 8
  %771 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %770, i32 0, i32 1
  %772 = load i32, i32* %771, align 4
  %773 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %774 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %773, i32 0, i32 2
  store i32 %772, i32* %774, align 8
  br label %785

775:                                              ; preds = %188
  %776 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %777 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %778 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %777, i32 0, i32 1
  %779 = load i32, i32* %778, align 4
  %780 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %776, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %779)
  %781 = load i32, i32* @EINVAL, align 4
  %782 = sub nsw i32 0, %781
  store i32 %782, i32* %12, align 4
  %783 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %784 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %783, %struct.ib_send_wr** %784, align 8
  br label %785

785:                                              ; preds = %775, %757, %751, %702, %680, %553, %546, %489, %421, %357, %300, %232
  %786 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %787 = load %struct.ib_send_wr*, %struct.ib_send_wr** %786, align 8
  %788 = icmp ne %struct.ib_send_wr* %787, null
  br i1 %788, label %789, label %812

789:                                              ; preds = %785
  %790 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %791 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %790, i32 0, i32 4
  %792 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %791, i32 0, i32 3
  %793 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %794 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %793, i32 0, i32 4
  %795 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %794, i32 0, i32 1
  %796 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %795, i32 0, i32 1
  %797 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %796, i32 0, i32 0
  %798 = load i32, i32* %797, align 4
  %799 = call i32 @le16_to_cpu(i32 %798)
  %800 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %801 = call i32 @ecore_chain_set_prod(i32* %792, i32 %799, %struct.rdma_sq_common_wqe* %800)
  %802 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %16, align 8
  %803 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %802, i32 0, i32 1
  %804 = load i32, i32* %803, align 4
  %805 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %806 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %805, i32 0, i32 2
  store i32 %804, i32* %806, align 8
  %807 = load i32, i32* %12, align 4
  store i32 %807, i32* %11, align 4
  %808 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %809 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %810 = load %struct.ib_send_wr*, %struct.ib_send_wr** %809, align 8
  %811 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %808, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), %struct.ib_send_wr* %810)
  br label %838

812:                                              ; preds = %785
  %813 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %814 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %813, i32 0, i32 3
  %815 = load i32, i32* %814, align 8
  %816 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %817 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %816, i32 0, i32 5
  %818 = load %struct.TYPE_14__*, %struct.TYPE_14__** %817, align 8
  %819 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %820 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %819, i32 0, i32 4
  %821 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %820, i32 0, i32 0
  %822 = load i64, i64* %821, align 8
  %823 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %818, i64 %822
  %824 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %823, i32 0, i32 2
  store i32 %815, i32* %824, align 8
  %825 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %826 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %825, i32 0, i32 4
  %827 = call i32 @qlnxr_inc_sw_prod(%struct.TYPE_19__* %826)
  %828 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %829 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %828, i32 0, i32 4
  %830 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %830, i32 0, i32 1
  %832 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %831, i32 0, i32 0
  %833 = load i32, i32* %832, align 4
  %834 = add nsw i32 %833, 1
  store i32 %834, i32* %832, align 4
  %835 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %836 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %835, i32 0, i32 2
  %837 = load %struct.ib_send_wr*, %struct.ib_send_wr** %836, align 8
  store %struct.ib_send_wr* %837, %struct.ib_send_wr** %6, align 8
  br label %113

838:                                              ; preds = %789, %121, %113
  %839 = call i32 (...) @wmb()
  %840 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %841 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %840, i32 0, i32 4
  %842 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %841, i32 0, i32 2
  %843 = load i64, i64* %842, align 8
  %844 = inttoptr i64 %843 to i32*
  %845 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %846 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %845, i32 0, i32 1
  %847 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %846, i32 0, i32 0
  %848 = load i64, i64* %847, align 8
  %849 = inttoptr i64 %848 to i32*
  %850 = ptrtoint i32* %844 to i64
  %851 = ptrtoint i32* %849 to i64
  %852 = sub i64 %850, %851
  %853 = sdiv exact i64 %852, 4
  store i64 %853, i64* %15, align 8
  %854 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %855 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %854, i32 0, i32 0
  %856 = load i32, i32* %855, align 8
  %857 = load i64, i64* %15, align 8
  %858 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %859 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %858, i32 0, i32 4
  %860 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %859, i32 0, i32 1
  %861 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %860, i32 0, i32 0
  %862 = load i32, i32* %861, align 8
  %863 = call i32 @bus_write_4(i32 %856, i64 %857, i32 %862)
  %864 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %865 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %864, i32 0, i32 0
  %866 = load i32, i32* %865, align 8
  %867 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %868 = call i32 @bus_barrier(i32 %866, i32 0, i32 0, i32 %867)
  %869 = call i32 (...) @mmiowb()
  %870 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %871 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %870, i32 0, i32 3
  %872 = load i64, i64* %10, align 8
  %873 = call i32 @spin_unlock_irqrestore(i32* %871, i64 %872)
  %874 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %875 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %876 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %877 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %878 = call i32 (%struct.TYPE_18__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_18__* %874, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.ib_qp* %875, %struct.ib_send_wr* %876, %struct.ib_send_wr** %877)
  %879 = load i32, i32* %11, align 4
  store i32 %879, i32* %4, align 4
  br label %880

880:                                              ; preds = %838, %89, %58, %49
  %881 = load i32, i32* %4, align 4
  ret i32 %881
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp*) #1

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @qlnxr_gsi_post_send(%struct.ib_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @QLNX_IS_ROCE(%struct.qlnxr_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @qlnxr_can_post_send(%struct.qlnxr_qp*, %struct.ib_send_wr*) #1

declare dso_local %struct.rdma_sq_common_wqe* @ecore_chain_produce(i32*) #1

declare dso_local i32 @SET_FIELD2(i32, i32, i32) #1

declare dso_local i32 @qlnxr_ib_to_wc_opcode(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @qlnxr_prepare_sq_send_data(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe*, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @htonl(i8*) #1

declare dso_local i32 @qlnxr_prepare_sq_rdma_data(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_2nd*, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @TYPEPTR_ADDR_SET(%struct.rdma_sq_atomic_wqe*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @atomic_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @qlnxr_prepare_sq_sges(%struct.qlnxr_dev*, %struct.qlnxr_qp*, i32*, %struct.ib_send_wr*) #1

declare dso_local i32 @qlnxr_prepare_fmr(%struct.qlnxr_qp*, %struct.rdma_sq_fmr_wqe_1st*, %struct.ib_send_wr*) #1

declare dso_local i32 @ecore_chain_set_prod(i32*, i32, %struct.rdma_sq_common_wqe*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @qlnxr_inc_sw_prod(%struct.TYPE_19__*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @bus_write_4(i32, i64, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

declare dso_local i32 @mmiowb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
