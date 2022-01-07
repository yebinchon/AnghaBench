; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_dynamic_ilt_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_dynamic_ilt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__*, %struct.ecore_ilt_client_cfg* }
%struct.TYPE_9__ = type { i32, i32, i8* }
%struct.ecore_ilt_client_cfg = type { %struct.TYPE_6__, %struct.ecore_ilt_cli_blk* }
%struct.TYPE_6__ = type { i64 }
%struct.ecore_ilt_cli_blk = type { i64, i32 }
%struct.ecore_ptt = type { i32 }
%union.type1_task_context = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@CDUC_BLK = common dso_local global i64 0, align 8
@ILT_CLI_TSDM = common dso_local global i64 0, align 8
@SRQ_CXT_SIZE = common dso_local global i64 0, align 8
@SRQ_BLK = common dso_local global i64 0, align 8
@XRC_SRQ_CXT_SIZE = common dso_local global i64 0, align 8
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@ECORE_CXT_ROCE_TID_SEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ECORE_INVALID elem type = %d\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ECORE_TIME_OUT on ptt acquire - dynamic allocation\00", align 1
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_REF_TAG_MASK = common dso_local global i32 0, align 4
@PSWRQ2_REG_ILT_MEMORY = common dso_local global i64 0, align 8
@ILT_REG_SIZE_IN_BYTES = common dso_local global i64 0, align 8
@ILT_ENTRY_IN_REGS = common dso_local global i64 0, align 8
@ILT_ENTRY_VALID = common dso_local global i32 0, align 4
@ILT_ENTRY_PHY_ADDR = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@PRS_REG_ROCE_DEST_QP_MAX_PF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_cxt_dynamic_ilt_alloc(%struct.ecore_hwfn* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ecore_ilt_client_cfg*, align 8
  %15 = alloca %struct.ecore_ilt_cli_blk*, align 8
  %16 = alloca %struct.ecore_ptt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %union.type1_task_context*, align 8
  %24 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %25 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %90 [
    i32 131, label %27
    i32 130, label %42
    i32 128, label %60
    i32 129, label %74
  ]

27:                                               ; preds = %3
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %31, align 8
  %33 = load i64, i64* @ILT_CLI_CDUC, align 8
  %34 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %32, i64 %33
  store %struct.ecore_ilt_client_cfg* %34, %struct.ecore_ilt_client_cfg** %14, align 8
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %36 = call i64 @CONN_CXT_SIZE(%struct.ecore_hwfn* %35)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %14, align 8
  %38 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %37, i32 0, i32 1
  %39 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %38, align 8
  %40 = load i64, i64* @CDUC_BLK, align 8
  %41 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %39, i64 %40
  store %struct.ecore_ilt_cli_blk* %41, %struct.ecore_ilt_cli_blk** %15, align 8
  br label %95

42:                                               ; preds = %3
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %44 = call i64 @ecore_cxt_srqs_per_page(%struct.ecore_hwfn* %43)
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %48 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %50, align 8
  %52 = load i64, i64* @ILT_CLI_TSDM, align 8
  %53 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %51, i64 %52
  store %struct.ecore_ilt_client_cfg* %53, %struct.ecore_ilt_client_cfg** %14, align 8
  %54 = load i64, i64* @SRQ_CXT_SIZE, align 8
  store i64 %54, i64* %10, align 8
  %55 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %14, align 8
  %56 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %55, i32 0, i32 1
  %57 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %56, align 8
  %58 = load i64, i64* @SRQ_BLK, align 8
  %59 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %57, i64 %58
  store %struct.ecore_ilt_cli_blk* %59, %struct.ecore_ilt_cli_blk** %15, align 8
  br label %95

60:                                               ; preds = %3
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %62 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %64, align 8
  %66 = load i64, i64* @ILT_CLI_TSDM, align 8
  %67 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %65, i64 %66
  store %struct.ecore_ilt_client_cfg* %67, %struct.ecore_ilt_client_cfg** %14, align 8
  %68 = load i64, i64* @XRC_SRQ_CXT_SIZE, align 8
  store i64 %68, i64* %10, align 8
  %69 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %14, align 8
  %70 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %69, i32 0, i32 1
  %71 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %70, align 8
  %72 = load i64, i64* @SRQ_BLK, align 8
  %73 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %71, i64 %72
  store %struct.ecore_ilt_cli_blk* %73, %struct.ecore_ilt_cli_blk** %15, align 8
  br label %95

74:                                               ; preds = %3
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %76 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %78, align 8
  %80 = load i64, i64* @ILT_CLI_CDUT, align 8
  %81 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %79, i64 %80
  store %struct.ecore_ilt_client_cfg* %81, %struct.ecore_ilt_client_cfg** %14, align 8
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %83 = call i64 @TYPE1_TASK_CXT_SIZE(%struct.ecore_hwfn* %82)
  store i64 %83, i64* %10, align 8
  %84 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %14, align 8
  %85 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %84, i32 0, i32 1
  %86 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %85, align 8
  %87 = load i32, i32* @ECORE_CXT_ROCE_TID_SEG, align 4
  %88 = call i64 @CDUT_SEG_BLK(i32 %87)
  %89 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %86, i64 %88
  store %struct.ecore_ilt_cli_blk* %89, %struct.ecore_ilt_cli_blk** %15, align 8
  br label %95

90:                                               ; preds = %3
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %91, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %94, i32* %4, align 4
  br label %289

95:                                               ; preds = %74, %60, %42, %27
  %96 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %14, align 8
  %97 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @ILT_PAGE_IN_BYTES(i64 %100)
  %102 = load i64, i64* %10, align 8
  %103 = udiv i64 %101, %102
  store i64 %103, i64* %12, align 8
  %104 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %15, align 8
  %105 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %12, align 8
  %109 = udiv i64 %107, %108
  %110 = add i64 %106, %109
  store i64 %110, i64* %13, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %113 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub i64 %111, %116
  store i64 %117, i64* %9, align 8
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %119 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = call i32 @OSAL_MUTEX_ACQUIRE(i32* %121)
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %124 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %95
  br label %282

134:                                              ; preds = %95
  %135 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %136 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %135)
  store %struct.ecore_ptt* %136, %struct.ecore_ptt** %16, align 8
  %137 = load %struct.ecore_ptt*, %struct.ecore_ptt** %16, align 8
  %138 = icmp ne %struct.ecore_ptt* %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %141 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %140, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %142 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %142, i32* %20, align 4
  br label %282

143:                                              ; preds = %134
  %144 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %145 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %15, align 8
  %148 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @OSAL_DMA_ALLOC_COHERENT(i32 %146, i32* %17, i32 %149)
  store i8* %150, i8** %19, align 8
  %151 = load i8*, i8** %19, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %143
  %154 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %154, i32* %20, align 4
  br label %278

155:                                              ; preds = %143
  %156 = load i8*, i8** %19, align 8
  %157 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %15, align 8
  %158 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @OSAL_MEM_ZERO(i8* %156, i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, 129
  br i1 %162, label %163, label %188

163:                                              ; preds = %155
  %164 = load i8*, i8** %19, align 8
  %165 = bitcast i8* %164 to i32*
  store i32* %165, i32** %22, align 8
  store i64 0, i64* %21, align 8
  br label %166

166:                                              ; preds = %184, %163
  %167 = load i64, i64* %21, align 8
  %168 = load i64, i64* %12, align 8
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %187

170:                                              ; preds = %166
  %171 = load i32*, i32** %22, align 8
  %172 = bitcast i32* %171 to %union.type1_task_context*
  store %union.type1_task_context* %172, %union.type1_task_context** %23, align 8
  %173 = load %union.type1_task_context*, %union.type1_task_context** %23, align 8
  %174 = bitcast %union.type1_task_context* %173 to %struct.TYPE_8__*
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @TDIF_TASK_CONTEXT_REF_TAG_MASK, align 4
  %179 = call i32 @SET_FIELD(i64 %177, i32 %178, i32 15)
  %180 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %181 = call i64 @TYPE1_TASK_CXT_SIZE(%struct.ecore_hwfn* %180)
  %182 = load i32*, i32** %22, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 %181
  store i32* %183, i32** %22, align 8
  br label %184

184:                                              ; preds = %170
  %185 = load i64, i64* %21, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %21, align 8
  br label %166

187:                                              ; preds = %166
  br label %188

188:                                              ; preds = %187, %155
  %189 = load i8*, i8** %19, align 8
  %190 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %191 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %190, i32 0, i32 1
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = load i64, i64* %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 2
  store i8* %189, i8** %197, align 8
  %198 = load i32, i32* %17, align 4
  %199 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %200 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %199, i32 0, i32 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = load i64, i64* %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  store i32 %198, i32* %206, align 8
  %207 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %15, align 8
  %208 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %211 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %210, i32 0, i32 1
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = load i64, i64* %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  store i32 %209, i32* %217, align 4
  %218 = load i64, i64* @PSWRQ2_REG_ILT_MEMORY, align 8
  %219 = load i64, i64* %13, align 8
  %220 = load i64, i64* @ILT_REG_SIZE_IN_BYTES, align 8
  %221 = mul i64 %219, %220
  %222 = load i64, i64* @ILT_ENTRY_IN_REGS, align 8
  %223 = mul i64 %221, %222
  %224 = add i64 %218, %223
  store i64 %224, i64* %8, align 8
  store i64 0, i64* %18, align 8
  %225 = load i64, i64* %18, align 8
  %226 = load i32, i32* @ILT_ENTRY_VALID, align 4
  %227 = call i32 @SET_FIELD(i64 %225, i32 %226, i32 1)
  %228 = load i64, i64* %18, align 8
  %229 = load i32, i32* @ILT_ENTRY_PHY_ADDR, align 4
  %230 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %231 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %230, i32 0, i32 1
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = load i64, i64* %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = ashr i32 %238, 12
  %240 = call i32 @SET_FIELD(i64 %228, i32 %229, i32 %239)
  %241 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %242 = load %struct.ecore_ptt*, %struct.ecore_ptt** %16, align 8
  %243 = ptrtoint i64* %18 to i64
  %244 = load i64, i64* %8, align 8
  %245 = load i32, i32* @OSAL_NULL, align 4
  %246 = call i32 @ecore_dmae_host2grc(%struct.ecore_hwfn* %241, %struct.ecore_ptt* %242, i64 %243, i64 %244, i32 1, i32 %245)
  %247 = load i32, i32* %6, align 4
  %248 = icmp eq i32 %247, 131
  br i1 %248, label %249, label %277

249:                                              ; preds = %188
  %250 = load i64, i64* %7, align 8
  %251 = load i64, i64* %12, align 8
  %252 = udiv i64 %250, %251
  %253 = add i64 1, %252
  %254 = load i64, i64* %12, align 8
  %255 = mul i64 %253, %254
  store i64 %255, i64* %24, align 8
  %256 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %257 = load %struct.ecore_ptt*, %struct.ecore_ptt** %16, align 8
  %258 = load i32, i32* @PRS_REG_ROCE_DEST_QP_MAX_PF, align 4
  %259 = load i64, i64* %24, align 8
  %260 = sub i64 %259, 1
  %261 = trunc i64 %260 to i32
  %262 = call i32 @ecore_wr(%struct.ecore_hwfn* %256, %struct.ecore_ptt* %257, i32 %258, i32 %261)
  %263 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %264 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %276, label %267

267:                                              ; preds = %249
  %268 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %269 = load %struct.ecore_ptt*, %struct.ecore_ptt** %16, align 8
  %270 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %271 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @ecore_wr(%struct.ecore_hwfn* %268, %struct.ecore_ptt* %269, i32 %272, i32 1)
  %274 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %275 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %274, i32 0, i32 0
  store i32 1, i32* %275, align 8
  br label %276

276:                                              ; preds = %267, %249
  br label %277

277:                                              ; preds = %276, %188
  br label %278

278:                                              ; preds = %277, %153
  %279 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %280 = load %struct.ecore_ptt*, %struct.ecore_ptt** %16, align 8
  %281 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %279, %struct.ecore_ptt* %280)
  br label %282

282:                                              ; preds = %278, %139, %133
  %283 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %284 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %283, i32 0, i32 1
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 1
  %287 = call i32 @OSAL_MUTEX_RELEASE(i32* %286)
  %288 = load i32, i32* %20, align 4
  store i32 %288, i32* %4, align 4
  br label %289

289:                                              ; preds = %282, %90
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i64 @CONN_CXT_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i64 @ecore_cxt_srqs_per_page(%struct.ecore_hwfn*) #1

declare dso_local i64 @TYPE1_TASK_CXT_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i64 @CDUT_SEG_BLK(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i64 @ILT_PAGE_IN_BYTES(i64) #1

declare dso_local i32 @OSAL_MUTEX_ACQUIRE(i32*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i8* @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(i8*, i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @ecore_dmae_host2grc(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @OSAL_MUTEX_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
