; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.ecore_rdma_create_qp_in_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.ecore_rdma_create_qp_out_params = type { i32, i32 }
%struct.ecore_hwfn = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [88 x i8] c"ecore roce create qp failed due to NULL entry (rdma_cxt=%p, in=%p, out=%p, roce_info=?\0A\00", align 1
@OSAL_NULL = common dso_local global %struct.ecore_rdma_qp* null, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"ecore rdma create qp failed due to invalid statistics queue %d. maximum is %d\0A\00", align 1
@IWARP_SHARED_QUEUE_PAGE_SQ_PBL_MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Sq num pages: %d exceeds maximum\0A\00", align 1
@IWARP_SHARED_QUEUE_PAGE_RQ_PBL_MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Rq num pages: %d exceeds maximum\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to allocate ecore_rdma_qp\0A\00", align 1
@ECORE_ROCE_QP_STATE_RESET = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Create QP, rc = %d\0A\00", align 1
@ECORE_IWARP_QP_STATE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ecore_rdma_qp* @ecore_rdma_create_qp(i8* %0, %struct.ecore_rdma_create_qp_in_params* %1, %struct.ecore_rdma_create_qp_out_params* %2) #0 {
  %4 = alloca %struct.ecore_rdma_qp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecore_rdma_create_qp_in_params*, align 8
  %7 = alloca %struct.ecore_rdma_create_qp_out_params*, align 8
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_rdma_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ecore_rdma_create_qp_in_params* %1, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  store %struct.ecore_rdma_create_qp_out_params* %2, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %13, %struct.ecore_hwfn** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %18 = icmp ne %struct.ecore_rdma_create_qp_in_params* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %21 = icmp ne %struct.ecore_rdma_create_qp_out_params* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %24 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %22, %19, %16, %3
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %33 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %34 = call i32 (i32, i8*, i8*, %struct.ecore_rdma_create_qp_in_params*, ...) @DP_ERR(i32 %30, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i8* %31, %struct.ecore_rdma_create_qp_in_params* %32, %struct.ecore_rdma_create_qp_out_params* %33)
  %35 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** @OSAL_NULL, align 8
  store %struct.ecore_rdma_qp* %35, %struct.ecore_rdma_qp** %4, align 8
  br label %296

36:                                               ; preds = %22
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %38 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %36
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %51 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.ecore_rdma_create_qp_in_params*
  %61 = call i32 (i32, i8*, i8*, %struct.ecore_rdma_create_qp_in_params*, ...) @DP_ERR(i32 %52, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i8* %57, %struct.ecore_rdma_create_qp_in_params* %60)
  %62 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** @OSAL_NULL, align 8
  store %struct.ecore_rdma_qp* %62, %struct.ecore_rdma_qp** %4, align 8
  br label %296

63:                                               ; preds = %36
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %65 = call i64 @IS_IWARP(%struct.ecore_hwfn* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %108

67:                                               ; preds = %63
  %68 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SQ_PBL_MAX_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ugt i64 %72, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %78 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct.ecore_hwfn*
  %82 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %83 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %81, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** @OSAL_NULL, align 8
  store %struct.ecore_rdma_qp* %86, %struct.ecore_rdma_qp** %4, align 8
  br label %296

87:                                               ; preds = %67
  %88 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %89 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_RQ_PBL_MAX_SIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ugt i64 %92, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %87
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %98 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to %struct.ecore_hwfn*
  %102 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %103 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %101, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** @OSAL_NULL, align 8
  store %struct.ecore_rdma_qp* %106, %struct.ecore_rdma_qp** %4, align 8
  br label %296

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107, %63
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %110 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.ecore_rdma_qp* @OSAL_ZALLOC(i32 %111, i32 %112, i32 136)
  store %struct.ecore_rdma_qp* %113, %struct.ecore_rdma_qp** %9, align 8
  %114 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %115 = icmp ne %struct.ecore_rdma_qp* %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %118 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %117, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** @OSAL_NULL, align 8
  store %struct.ecore_rdma_qp* %119, %struct.ecore_rdma_qp** %4, align 8
  br label %296

120:                                              ; preds = %108
  %121 = load i32, i32* @ECORE_ROCE_QP_STATE_RESET, align 4
  %122 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %123 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %122, i32 0, i32 24
  store i32 %121, i32* %123, align 4
  %124 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %125 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %124, i32 0, i32 18
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @OSAL_CPU_TO_LE32(i32 %126)
  %128 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %129 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %128, i32 0, i32 22
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store i8* %127, i8** %130, align 8
  %131 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %132 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %131, i32 0, i32 17
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @OSAL_CPU_TO_LE32(i32 %133)
  %135 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %136 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %135, i32 0, i32 22
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i8* %134, i8** %137, align 8
  %138 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %139 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %138, i32 0, i32 16
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @OSAL_CPU_TO_LE32(i32 %140)
  %142 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %143 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %142, i32 0, i32 21
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i8* %141, i8** %144, align 8
  %145 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %146 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @OSAL_CPU_TO_LE32(i32 %147)
  %149 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %150 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %149, i32 0, i32 21
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i8* %148, i8** %151, align 8
  %152 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %153 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %152, i32 0, i32 14
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %156 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %155, i32 0, i32 11
  store i64 %154, i64* %156, align 8
  %157 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %158 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %157, i32 0, i32 13
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %161 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %160, i32 0, i32 20
  store i32 %159, i32* %161, align 8
  %162 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %163 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %162, i32 0, i32 12
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %166 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %165, i32 0, i32 19
  store i32 %164, i32* %166, align 4
  %167 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %168 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %171 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %170, i32 0, i32 18
  store i32 %169, i32* %171, align 8
  %172 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %173 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %176 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %175, i32 0, i32 17
  store i32 %174, i32* %176, align 4
  %177 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %178 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %181 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %180, i32 0, i32 16
  store i32 %179, i32* %181, align 8
  %182 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %183 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %186 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %188 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %191 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %190, i32 0, i32 15
  store i32 %189, i32* %191, align 4
  %192 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %193 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %196 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %195, i32 0, i32 14
  store i32 %194, i32* %196, align 8
  %197 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %198 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %201 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %203 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %206 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %205, i32 0, i32 13
  store i32 %204, i32* %206, align 4
  %207 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %208 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %211 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %210, i32 0, i32 12
  store i32 %209, i32* %211, align 8
  %212 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %213 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %212, i32 0, i32 2
  store i32 0, i32* %213, align 8
  %214 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %215 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %214, i32 0, i32 3
  store i32 0, i32* %215, align 4
  %216 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %217 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %216, i32 0, i32 11
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 0, i32 1
  %222 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %223 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  %224 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %225 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %228 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %227, i32 0, i32 10
  store i32 %226, i32* %228, align 8
  %229 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %230 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %233 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %232, i32 0, i32 9
  store i32 %231, i32* %233, align 4
  %234 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %6, align 8
  %235 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %238 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %237, i32 0, i32 8
  store i32 %236, i32* %238, align 8
  %239 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %240 = call i64 @IS_IWARP(%struct.ecore_hwfn* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %120
  %243 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %244 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %245 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %246 = call i32 @ecore_iwarp_create_qp(%struct.ecore_hwfn* %243, %struct.ecore_rdma_qp* %244, %struct.ecore_rdma_create_qp_out_params* %245)
  store i32 %246, i32* %11, align 4
  %247 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %248 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %251 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %250, i32 0, i32 5
  store i32 %249, i32* %251, align 4
  br label %269

252:                                              ; preds = %120
  %253 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %254 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %255 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %254, i32 0, i32 7
  %256 = call i32 @ecore_roce_alloc_qp_idx(%struct.ecore_hwfn* %253, i32* %255)
  store i32 %256, i32* %11, align 4
  %257 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %258 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @ECORE_ROCE_QP_TO_ICID(i32 %259)
  %261 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %262 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %261, i32 0, i32 6
  store i32 %260, i32* %262, align 8
  %263 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %264 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 8
  %266 = or i32 16711680, %265
  %267 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %268 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %267, i32 0, i32 5
  store i32 %266, i32* %268, align 4
  br label %269

269:                                              ; preds = %252, %242
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* @ECORE_SUCCESS, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %275 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %278 = call i32 @OSAL_FREE(i32 %276, %struct.ecore_rdma_qp* %277)
  %279 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** @OSAL_NULL, align 8
  store %struct.ecore_rdma_qp* %279, %struct.ecore_rdma_qp** %4, align 8
  br label %296

280:                                              ; preds = %269
  %281 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %282 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %285 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 4
  %286 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  %287 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %290 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  %291 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %292 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %293 = load i32, i32* %11, align 4
  %294 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %291, i32 %292, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %293)
  %295 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %9, align 8
  store %struct.ecore_rdma_qp* %295, %struct.ecore_rdma_qp** %4, align 8
  br label %296

296:                                              ; preds = %280, %273, %116, %96, %76, %49, %27
  %297 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %4, align 8
  ret %struct.ecore_rdma_qp* %297
}

declare dso_local i32 @DP_ERR(i32, i8*, i8*, %struct.ecore_rdma_create_qp_in_params*, ...) #1

declare dso_local i64 @IS_IWARP(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local %struct.ecore_rdma_qp* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i32 @ecore_iwarp_create_qp(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, %struct.ecore_rdma_create_qp_out_params*) #1

declare dso_local i32 @ecore_roce_alloc_qp_idx(%struct.ecore_hwfn*, i32*) #1

declare dso_local i32 @ECORE_ROCE_QP_TO_ICID(i32) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_rdma_qp*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
