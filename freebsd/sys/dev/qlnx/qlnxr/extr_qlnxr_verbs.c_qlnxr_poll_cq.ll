; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_poll_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32* }
%struct.qlnxr_cq = type { i64, i32, %struct.TYPE_11__, i32, i64, i32, %union.rdma_cqe*, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%union.rdma_cqe = type { %struct.rdma_cqe_requester }
%struct.rdma_cqe_requester = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.qlnxr_dev = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.qlnxr_qp = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"called after destroy for cq %p (icid=%d)\0A\00", align 1
@QLNXR_CQ_TYPE_GSI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"qp = NULL\0A\00", align 1
@RDMA_CQE_REQUESTER_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"cqe type [0x%x] invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"cq = %p cons = 0x%x arm_flags = 0x%x db.icid = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.qlnxr_cq*, align 8
  %9 = alloca %struct.qlnxr_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.rdma_cqe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.qlnxr_qp*, align 8
  %19 = alloca %struct.rdma_cqe_requester*, align 8
  %20 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %21 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %22 = call %struct.qlnxr_cq* @get_qlnxr_cq(%struct.ib_cq* %21)
  store %struct.qlnxr_cq* %22, %struct.qlnxr_cq** %8, align 8
  %23 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %24 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %25)
  store %struct.qlnxr_dev* %26, %struct.qlnxr_dev** %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %28 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %27, i32 0, i32 6
  %29 = load %union.rdma_cqe*, %union.rdma_cqe** %28, align 8
  store %union.rdma_cqe* %29, %union.rdma_cqe** %11, align 8
  store i32 0, i32* %12, align 4
  %30 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  %31 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %16, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %34 = call i32 (%struct.TYPE_12__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_12__* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %215

46:                                               ; preds = %3
  %47 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %48 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %53 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %54 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %55 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.TYPE_12__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_12__* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.qlnxr_cq* %53, i32 %56)
  store i32 0, i32* %4, align 4
  br label %215

58:                                               ; preds = %46
  %59 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %60 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @QLNXR_CQ_TYPE_GSI, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %68 = call i32 @qlnxr_gsi_poll_cq(%struct.ib_cq* %65, i32 %66, %struct.ib_wc* %67)
  store i32 %68, i32* %4, align 4
  br label %215

69:                                               ; preds = %58
  %70 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %71 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %70, i32 0, i32 1
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %75 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %74, i32 0, i32 5
  %76 = call i64 @ecore_chain_get_cons_idx_u32(i32* %75)
  store i64 %76, i64* %13, align 8
  br label %77

77:                                               ; preds = %154, %69
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %82 = load %union.rdma_cqe*, %union.rdma_cqe** %11, align 8
  %83 = call i64 @is_valid_cqe(%struct.qlnxr_cq* %81, %union.rdma_cqe* %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi i1 [ false, %77 ], [ %84, %80 ]
  br i1 %86, label %87, label %168

87:                                               ; preds = %85
  store i32 0, i32* %17, align 4
  %88 = call i32 (...) @rmb()
  %89 = load %union.rdma_cqe*, %union.rdma_cqe** %11, align 8
  %90 = bitcast %union.rdma_cqe* %89 to %struct.rdma_cqe_requester*
  store %struct.rdma_cqe_requester* %90, %struct.rdma_cqe_requester** %19, align 8
  %91 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %19, align 8
  %92 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %19, align 8
  %96 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @HILO_U64(i32 %94, i32 %98)
  %100 = inttoptr i64 %99 to %struct.qlnxr_qp*
  store %struct.qlnxr_qp* %100, %struct.qlnxr_qp** %18, align 8
  %101 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %18, align 8
  %102 = icmp ne %struct.qlnxr_qp* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %87
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %105 = call i32 (%struct.TYPE_12__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_12__* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %168

106:                                              ; preds = %87
  %107 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %18, align 8
  %108 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %107, i32 0, i32 0
  %109 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %110 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %109, i32 0, i32 0
  store i32* %108, i32** %110, align 8
  %111 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %19, align 8
  %112 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RDMA_CQE_REQUESTER_TYPE, align 4
  %115 = call i32 @GET_FIELD(i32 %113, i32 %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  switch i32 %116, label %150 [
    i32 130, label %117
    i32 129, label %131
    i32 128, label %140
    i32 131, label %149
  ]

117:                                              ; preds = %106
  %118 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  %119 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %18, align 8
  %120 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %123 = load %union.rdma_cqe*, %union.rdma_cqe** %11, align 8
  %124 = bitcast %union.rdma_cqe* %123 to %struct.rdma_cqe_requester*
  %125 = call i32 @qlnxr_poll_cq_req(%struct.qlnxr_dev* %118, %struct.qlnxr_qp* %119, %struct.qlnxr_cq* %120, i32 %121, %struct.ib_wc* %122, %struct.rdma_cqe_requester* %124)
  store i32 %125, i32* %17, align 4
  %126 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %127 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %18, align 8
  %128 = load %union.rdma_cqe*, %union.rdma_cqe** %11, align 8
  %129 = bitcast %union.rdma_cqe* %128 to %struct.rdma_cqe_requester*
  %130 = call i32 @try_consume_req_cqe(%struct.qlnxr_cq* %126, %struct.qlnxr_qp* %127, %struct.rdma_cqe_requester* %129, i32* %12)
  br label %154

131:                                              ; preds = %106
  %132 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  %133 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %18, align 8
  %134 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %137 = load %union.rdma_cqe*, %union.rdma_cqe** %11, align 8
  %138 = bitcast %union.rdma_cqe* %137 to i32*
  %139 = call i32 @qlnxr_poll_cq_resp(%struct.qlnxr_dev* %132, %struct.qlnxr_qp* %133, %struct.qlnxr_cq* %134, i32 %135, %struct.ib_wc* %136, i32* %138, i32* %12)
  store i32 %139, i32* %17, align 4
  br label %154

140:                                              ; preds = %106
  %141 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  %142 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %18, align 8
  %143 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %146 = load %union.rdma_cqe*, %union.rdma_cqe** %11, align 8
  %147 = bitcast %union.rdma_cqe* %146 to i32*
  %148 = call i32 @qlnxr_poll_cq_resp_srq(%struct.qlnxr_dev* %141, %struct.qlnxr_qp* %142, %struct.qlnxr_cq* %143, i32 %144, %struct.ib_wc* %145, i32* %147, i32* %12)
  store i32 %148, i32* %17, align 4
  br label %154

149:                                              ; preds = %106
  br label %150

150:                                              ; preds = %106, %149
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %152 = load i32, i32* %20, align 4
  %153 = call i32 (%struct.TYPE_12__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_12__* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %150, %140, %131, %117
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %6, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %159, i64 %160
  store %struct.ib_wc* %161, %struct.ib_wc** %7, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %10, align 4
  %165 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %166 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %165, i32 0, i32 6
  %167 = load %union.rdma_cqe*, %union.rdma_cqe** %166, align 8
  store %union.rdma_cqe* %167, %union.rdma_cqe** %11, align 8
  br label %77

168:                                              ; preds = %103, %85
  %169 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %170 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %169, i32 0, i32 5
  %171 = call i64 @ecore_chain_get_cons_idx_u32(i32* %170)
  store i64 %171, i64* %14, align 8
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %13, align 8
  %174 = sub nsw i64 %172, %173
  %175 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %176 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %168
  %182 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  %183 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %184 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %185 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %186, 1
  %188 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %189 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @doorbell_cq(%struct.qlnxr_dev* %182, %struct.qlnxr_cq* %183, i64 %187, i32 %190)
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %193 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %194 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %195 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %196, 1
  %198 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %199 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %202 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (%struct.TYPE_12__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_12__* %192, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), %struct.qlnxr_cq* %193, i64 %197, i32 %200, i32 %205)
  br label %207

207:                                              ; preds = %181, %168
  %208 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %209 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %208, i32 0, i32 1
  %210 = load i64, i64* %15, align 8
  %211 = call i32 @spin_unlock_irqrestore(i32* %209, i64 %210)
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %213 = call i32 (%struct.TYPE_12__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_12__* %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %207, %64, %51, %43
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.qlnxr_cq* @get_qlnxr_cq(%struct.ib_cq*) #1

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @qlnxr_gsi_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ecore_chain_get_cons_idx_u32(i32*) #1

declare dso_local i64 @is_valid_cqe(%struct.qlnxr_cq*, %union.rdma_cqe*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @HILO_U64(i32, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @qlnxr_poll_cq_req(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, i32, %struct.ib_wc*, %struct.rdma_cqe_requester*) #1

declare dso_local i32 @try_consume_req_cqe(%struct.qlnxr_cq*, %struct.qlnxr_qp*, %struct.rdma_cqe_requester*, i32*) #1

declare dso_local i32 @qlnxr_poll_cq_resp(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, i32, %struct.ib_wc*, i32*, i32*) #1

declare dso_local i32 @qlnxr_poll_cq_resp_srq(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, i32, %struct.ib_wc*, i32*, i32*) #1

declare dso_local i32 @doorbell_cq(%struct.qlnxr_dev*, %struct.qlnxr_cq*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
