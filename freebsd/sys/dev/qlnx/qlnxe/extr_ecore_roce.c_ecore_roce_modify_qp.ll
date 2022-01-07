; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_rdma_qp = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ecore_rdma_modify_qp_in_params = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_ROCE_QP_STATE_INIT = common dso_local global i32 0, align 4
@ECORE_ROCE_QP_STATE_RESET = common dso_local global i32 0, align 4
@ECORE_ROCE_QP_STATE_RTR = common dso_local global i64 0, align 8
@ECORE_ROCE_QP_STATE_RTS = common dso_local global i64 0, align 8
@ECORE_ROCE_QP_STATE_SQD = common dso_local global i64 0, align 8
@ECORE_ROCE_QP_STATE_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"number of invalidate memory windows is different from bounded ones\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ECORE_SUCCESS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_roce_modify_qp(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1, i32 %2, %struct.ecore_rdma_modify_qp_in_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_rdma_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_rdma_modify_qp_in_params*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ecore_rdma_modify_qp_in_params* %3, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @ECORE_ROCE_QP_STATE_INIT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ECORE_ROCE_QP_STATE_RESET, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17, %4
  %22 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ECORE_ROCE_QP_STATE_RTR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %29 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %30 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ecore_roce_wait_free_cids(%struct.ecore_hwfn* %28, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %261

37:                                               ; preds = %27
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %39 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %40 = call i32 @ecore_roce_sp_create_responder(%struct.ecore_hwfn* %38, %struct.ecore_rdma_qp* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %261

42:                                               ; preds = %21, %17
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* @ECORE_ROCE_QP_STATE_RTR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %49 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ECORE_ROCE_QP_STATE_RTS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %55 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %56 = call i32 @ecore_roce_sp_create_requester(%struct.ecore_hwfn* %54, %struct.ecore_rdma_qp* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @ECORE_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %261

62:                                               ; preds = %53
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %64 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %65 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  %66 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ecore_roce_sp_modify_responder(%struct.ecore_hwfn* %63, %struct.ecore_rdma_qp* %64, i32 0, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %261

70:                                               ; preds = %47, %42
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* @ECORE_ROCE_QP_STATE_RTS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %70
  %76 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %77 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ECORE_ROCE_QP_STATE_RTS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %75
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %83 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %84 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  %85 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ecore_roce_sp_modify_responder(%struct.ecore_hwfn* %82, %struct.ecore_rdma_qp* %83, i32 0, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @ECORE_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %261

93:                                               ; preds = %81
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %95 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %96 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  %97 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ecore_roce_sp_modify_requester(%struct.ecore_hwfn* %94, %struct.ecore_rdma_qp* %95, i32 0, i32 0, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %5, align 4
  br label %261

101:                                              ; preds = %75, %70
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* @ECORE_ROCE_QP_STATE_RTS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %108 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ECORE_ROCE_QP_STATE_SQD, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %114 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %115 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  %116 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ecore_roce_sp_modify_requester(%struct.ecore_hwfn* %113, %struct.ecore_rdma_qp* %114, i32 1, i32 0, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %5, align 4
  br label %261

120:                                              ; preds = %106, %101
  %121 = load i32, i32* %8, align 4
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* @ECORE_ROCE_QP_STATE_SQD, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %151

125:                                              ; preds = %120
  %126 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %127 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ECORE_ROCE_QP_STATE_SQD, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %151

131:                                              ; preds = %125
  %132 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %133 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %134 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  %135 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ecore_roce_sp_modify_responder(%struct.ecore_hwfn* %132, %struct.ecore_rdma_qp* %133, i32 0, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @ECORE_SUCCESS, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %5, align 4
  br label %261

143:                                              ; preds = %131
  %144 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %145 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %146 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  %147 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ecore_roce_sp_modify_requester(%struct.ecore_hwfn* %144, %struct.ecore_rdma_qp* %145, i32 0, i32 0, i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %5, align 4
  br label %261

151:                                              ; preds = %125, %120
  %152 = load i32, i32* %8, align 4
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* @ECORE_ROCE_QP_STATE_SQD, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %182

156:                                              ; preds = %151
  %157 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %158 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @ECORE_ROCE_QP_STATE_RTS, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %156
  %163 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %164 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %165 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  %166 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ecore_roce_sp_modify_responder(%struct.ecore_hwfn* %163, %struct.ecore_rdma_qp* %164, i32 0, i32 %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @ECORE_SUCCESS, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %162
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %5, align 4
  br label %261

174:                                              ; preds = %162
  %175 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %176 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %177 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  %178 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ecore_roce_sp_modify_requester(%struct.ecore_hwfn* %175, %struct.ecore_rdma_qp* %176, i32 0, i32 0, i32 %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %5, align 4
  br label %261

182:                                              ; preds = %156, %151
  %183 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %184 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ECORE_ROCE_QP_STATE_ERR, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %182
  %189 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %190 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %191 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  %192 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ecore_roce_sp_modify_responder(%struct.ecore_hwfn* %189, %struct.ecore_rdma_qp* %190, i32 1, i32 %193)
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @ECORE_SUCCESS, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %188
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %5, align 4
  br label %261

200:                                              ; preds = %188
  %201 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %202 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %203 = load %struct.ecore_rdma_modify_qp_in_params*, %struct.ecore_rdma_modify_qp_in_params** %9, align 8
  %204 = getelementptr inbounds %struct.ecore_rdma_modify_qp_in_params, %struct.ecore_rdma_modify_qp_in_params* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ecore_roce_sp_modify_requester(%struct.ecore_hwfn* %201, %struct.ecore_rdma_qp* %202, i32 0, i32 1, i32 %205)
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %5, align 4
  br label %261

208:                                              ; preds = %182
  %209 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %210 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @ECORE_ROCE_QP_STATE_RESET, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp eq i64 %211, %213
  br i1 %214, label %215, label %248

215:                                              ; preds = %208
  %216 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %217 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %218 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %219 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = call i32 @ecore_roce_sp_destroy_qp_responder(%struct.ecore_hwfn* %216, %struct.ecore_rdma_qp* %217, i64* %10, i32* %220)
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* @ECORE_SUCCESS, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %215
  %226 = load i32, i32* %12, align 4
  store i32 %226, i32* %5, align 4
  br label %261

227:                                              ; preds = %215
  %228 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %229 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %230 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %231 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = call i32 @ecore_roce_sp_destroy_qp_requester(%struct.ecore_hwfn* %228, %struct.ecore_rdma_qp* %229, i64* %11, i32* %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* @ECORE_SUCCESS, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %227
  %238 = load i32, i32* %12, align 4
  store i32 %238, i32* %5, align 4
  br label %261

239:                                              ; preds = %227
  %240 = load i64, i64* %10, align 8
  %241 = load i64, i64* %11, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %245 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %244, i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %246 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %246, i32* %5, align 4
  br label %261

247:                                              ; preds = %239
  br label %252

248:                                              ; preds = %208
  %249 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %250 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %251 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %249, i32 %250, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %252

252:                                              ; preds = %248, %247
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %12, align 4
  store i32 %260, i32* %5, align 4
  br label %261

261:                                              ; preds = %259, %243, %237, %225, %200, %198, %174, %172, %143, %141, %112, %93, %91, %62, %60, %37, %35
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

declare dso_local i32 @ecore_roce_wait_free_cids(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_roce_sp_create_responder(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*) #1

declare dso_local i32 @ecore_roce_sp_create_requester(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*) #1

declare dso_local i32 @ecore_roce_sp_modify_responder(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i32, i32) #1

declare dso_local i32 @ecore_roce_sp_modify_requester(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i32, i32, i32) #1

declare dso_local i32 @ecore_roce_sp_destroy_qp_responder(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i64*, i32*) #1

declare dso_local i32 @ecore_roce_sp_destroy_qp_requester(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i64*, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
