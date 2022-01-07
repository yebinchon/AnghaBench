; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.ib_recv_wr*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.qlnxr_qp = type { i64, i64, i32, %struct.TYPE_13__, %struct.TYPE_17__*, i64, %struct.qlnxr_dev* }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_21__, i64, %struct.TYPE_19__, i64, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.qlnxr_dev = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__, %struct.TYPE_14__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.rdma_rq_sge = type { i32, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IB_QPT_GSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"(qp->qp_type = IB_QPT_GSI)\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"qp->srq [%p] QP is associated with SRQ, cannot post RQ buffers\0A\00", align 1
@ECORE_ROCE_QP_STATE_RESET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"qp->qp_type = ECORE_ROCE_QP_STATE_RESET\0A\00", align 1
@QLNXR_MAX_RQE_ELEMENTS_PER_RQE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_RQ_SGE_NUM_SGES = common dso_local global i32 0, align 4
@RDMA_RQ_SGE_L_KEY = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"exit status = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca %struct.qlnxr_qp*, align 8
  %9 = alloca %struct.qlnxr_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rdma_rq_sge*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.rdma_rq_sge*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  %19 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %20 = call %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp* %19)
  store %struct.qlnxr_qp* %20, %struct.qlnxr_qp** %8, align 8
  %21 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %22 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %21, i32 0, i32 6
  %23 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %22, align 8
  store %struct.qlnxr_dev* %23, %struct.qlnxr_dev** %9, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  %25 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %12, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %305

38:                                               ; preds = %3
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %40 = call i32 (%struct.TYPE_22__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_22__* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %42 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IB_QPT_GSI, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %48 = call i32 (%struct.TYPE_22__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_22__* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %50 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %51 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  %52 = call i32 @qlnxr_gsi_post_recv(%struct.ib_qp* %49, %struct.ib_recv_wr* %50, %struct.ib_recv_wr** %51)
  store i32 %52, i32* %4, align 4
  br label %305

53:                                               ; preds = %38
  %54 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %55 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %60 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %61 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (%struct.TYPE_22__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_22__* %59, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %305

66:                                               ; preds = %53
  %67 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %68 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %67, i32 0, i32 2
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %72 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ECORE_ROCE_QP_STATE_RESET, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %66
  %77 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %78 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %77, i32 0, i32 2
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %82 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %81, %struct.ib_recv_wr** %82, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %84 = call i32 (%struct.TYPE_22__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_22__* %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %305

87:                                               ; preds = %66
  br label %88

88:                                               ; preds = %292, %87
  %89 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %90 = icmp ne %struct.ib_recv_wr* %89, null
  br i1 %90, label %91, label %296

91:                                               ; preds = %88
  %92 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %93 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 6
  %95 = call i64 @ecore_chain_get_elem_left_u32(i32* %94)
  %96 = load i64, i64* @QLNXR_MAX_RQE_ELEMENTS_PER_RQE, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %107, label %98

98:                                               ; preds = %91
  %99 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %100 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %103 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %101, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %98, %91
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %11, align 4
  %110 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %111 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %110, %struct.ib_recv_wr** %111, align 8
  br label %296

112:                                              ; preds = %98
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %164, %112
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %116 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %167

119:                                              ; preds = %113
  store i32 0, i32* %15, align 4
  %120 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %121 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 6
  %123 = call %struct.rdma_rq_sge* @ecore_chain_produce(i32* %122)
  store %struct.rdma_rq_sge* %123, %struct.rdma_rq_sge** %16, align 8
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* @RDMA_RQ_SGE_NUM_SGES, align 4
  %129 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %130 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @SET_FIELD(i32 %127, i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %126, %119
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @RDMA_RQ_SGE_L_KEY, align 4
  %136 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %137 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %136, i32 0, i32 3
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @SET_FIELD(i32 %134, i32 %135, i32 %143)
  %145 = load %struct.rdma_rq_sge*, %struct.rdma_rq_sge** %16, align 8
  %146 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %147 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %146, i32 0, i32 3
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %155 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %154, i32 0, i32 3
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @RQ_SGE_SET(%struct.rdma_rq_sge* %145, i32 %153, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %133
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %113

167:                                              ; preds = %113
  %168 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %169 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %195, label %172

172:                                              ; preds = %167
  store i32 0, i32* %17, align 4
  %173 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %174 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 6
  %176 = call %struct.rdma_rq_sge* @ecore_chain_produce(i32* %175)
  store %struct.rdma_rq_sge* %176, %struct.rdma_rq_sge** %18, align 8
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* @RDMA_RQ_SGE_L_KEY, align 4
  %179 = call i32 @SET_FIELD(i32 %177, i32 %178, i32 0)
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* @RDMA_RQ_SGE_NUM_SGES, align 4
  %182 = call i32 @SET_FIELD(i32 %180, i32 %181, i32 1)
  %183 = load %struct.rdma_rq_sge*, %struct.rdma_rq_sge** %18, align 8
  %184 = getelementptr inbounds %struct.rdma_rq_sge, %struct.rdma_rq_sge* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  store i64 0, i64* %185, align 8
  %186 = load %struct.rdma_rq_sge*, %struct.rdma_rq_sge** %18, align 8
  %187 = getelementptr inbounds %struct.rdma_rq_sge, %struct.rdma_rq_sge* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  store i64 0, i64* %188, align 8
  %189 = load %struct.rdma_rq_sge*, %struct.rdma_rq_sge** %18, align 8
  %190 = getelementptr inbounds %struct.rdma_rq_sge, %struct.rdma_rq_sge* %189, i32 0, i32 1
  store i64 0, i64* %190, align 8
  %191 = load i32, i32* %17, align 4
  %192 = call i32 @cpu_to_le32(i32 %191)
  %193 = load %struct.rdma_rq_sge*, %struct.rdma_rq_sge** %18, align 8
  %194 = getelementptr inbounds %struct.rdma_rq_sge, %struct.rdma_rq_sge* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  store i32 1, i32* %14, align 4
  br label %195

195:                                              ; preds = %172, %167
  %196 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %197 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %200 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %199, i32 0, i32 4
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %203 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  store i32 %198, i32* %207, align 4
  %208 = load i32, i32* %14, align 4
  %209 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %210 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %209, i32 0, i32 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %213 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  store i32 %208, i32* %217, align 4
  %218 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %219 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %218, i32 0, i32 3
  %220 = call i32 @qlnxr_inc_sw_prod(%struct.TYPE_13__* %219)
  %221 = call i32 (...) @wmb()
  %222 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %223 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = call i32 (...) @mmiowb()
  %230 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %231 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to i32*
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to i32*
  %240 = ptrtoint i32* %234 to i64
  %241 = ptrtoint i32* %239 to i64
  %242 = sub i64 %240, %241
  %243 = sdiv exact i64 %242, 4
  store i64 %243, i64* %13, align 8
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i64, i64* %13, align 8
  %248 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %249 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @bus_write_4(i32 %246, i64 %247, i32 %252)
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %258 = call i32 @bus_barrier(i32 %256, i32 0, i32 0, i32 %257)
  %259 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  %260 = call i64 @QLNX_IS_IWARP(%struct.qlnxr_dev* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %292

262:                                              ; preds = %195
  %263 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %264 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = inttoptr i64 %266 to i32*
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = inttoptr i64 %271 to i32*
  %273 = ptrtoint i32* %267 to i64
  %274 = ptrtoint i32* %272 to i64
  %275 = sub i64 %273, %274
  %276 = sdiv exact i64 %275, 4
  store i64 %276, i64* %13, align 8
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i64, i64* %13, align 8
  %281 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %282 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @bus_write_4(i32 %279, i64 %280, i32 %285)
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %291 = call i32 @bus_barrier(i32 %289, i32 0, i32 0, i32 %290)
  br label %292

292:                                              ; preds = %262, %195
  %293 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %294 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %293, i32 0, i32 1
  %295 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %294, align 8
  store %struct.ib_recv_wr* %295, %struct.ib_recv_wr** %6, align 8
  br label %88

296:                                              ; preds = %107, %88
  %297 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %298 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %297, i32 0, i32 2
  %299 = load i64, i64* %10, align 8
  %300 = call i32 @spin_unlock_irqrestore(i32* %298, i64 %299)
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %302 = load i32, i32* %11, align 4
  %303 = call i32 (%struct.TYPE_22__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_22__* %301, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* %11, align 4
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %296, %76, %58, %46, %35
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp*) #1

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_22__*, i8*, ...) #1

declare dso_local i32 @qlnxr_gsi_post_recv(%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_22__*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ecore_chain_get_elem_left_u32(i32*) #1

declare dso_local %struct.rdma_rq_sge* @ecore_chain_produce(i32*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @RQ_SGE_SET(%struct.rdma_rq_sge*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qlnxr_inc_sw_prod(%struct.TYPE_13__*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @bus_write_4(i32, i64, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

declare dso_local i64 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
