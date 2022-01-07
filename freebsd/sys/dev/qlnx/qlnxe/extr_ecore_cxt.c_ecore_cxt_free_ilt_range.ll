; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_free_ilt_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_free_ilt_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.ecore_ilt_client_cfg* }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.ecore_ilt_client_cfg = type { %struct.TYPE_4__, %struct.ecore_ilt_cli_blk* }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_ilt_cli_blk = type { i32 }
%struct.ecore_ptt = type { i32 }

@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@CDUC_BLK = common dso_local global i64 0, align 8
@ILT_CLI_TSDM = common dso_local global i64 0, align 8
@SRQ_CXT_SIZE = common dso_local global i32 0, align 4
@SRQ_BLK = common dso_local global i64 0, align 8
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@ECORE_CXT_ROCE_TID_SEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ECORE_INVALID elem type = %d\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ECORE_TIME_OUT on ptt acquire - dynamic allocation\00", align 1
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i64 0, align 8
@PSWRQ2_REG_ILT_MEMORY = common dso_local global i32 0, align 4
@ILT_REG_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@ILT_ENTRY_IN_REGS = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_cxt_free_ilt_range(%struct.ecore_hwfn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ecore_ilt_client_cfg*, align 8
  %19 = alloca %struct.ecore_ilt_cli_blk*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ecore_ptt*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %20, align 4
  store i64 0, i64* %22, align 8
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %73 [
    i32 130, label %28
    i32 129, label %43
    i32 128, label %57
  ]

28:                                               ; preds = %4
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %32, align 8
  %34 = load i64, i64* @ILT_CLI_CDUC, align 8
  %35 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %33, i64 %34
  store %struct.ecore_ilt_client_cfg* %35, %struct.ecore_ilt_client_cfg** %18, align 8
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %37 = call i32 @CONN_CXT_SIZE(%struct.ecore_hwfn* %36)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %18, align 8
  %39 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %38, i32 0, i32 1
  %40 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %39, align 8
  %41 = load i64, i64* @CDUC_BLK, align 8
  %42 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %40, i64 %41
  store %struct.ecore_ilt_cli_blk* %42, %struct.ecore_ilt_cli_blk** %19, align 8
  br label %78

43:                                               ; preds = %4
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %47, align 8
  %49 = load i64, i64* @ILT_CLI_TSDM, align 8
  %50 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %48, i64 %49
  store %struct.ecore_ilt_client_cfg* %50, %struct.ecore_ilt_client_cfg** %18, align 8
  %51 = load i32, i32* @SRQ_CXT_SIZE, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %18, align 8
  %53 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %52, i32 0, i32 1
  %54 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %53, align 8
  %55 = load i64, i64* @SRQ_BLK, align 8
  %56 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %54, i64 %55
  store %struct.ecore_ilt_cli_blk* %56, %struct.ecore_ilt_cli_blk** %19, align 8
  br label %78

57:                                               ; preds = %4
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %59 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %61, align 8
  %63 = load i64, i64* @ILT_CLI_CDUT, align 8
  %64 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %62, i64 %63
  store %struct.ecore_ilt_client_cfg* %64, %struct.ecore_ilt_client_cfg** %18, align 8
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %66 = call i32 @TYPE1_TASK_CXT_SIZE(%struct.ecore_hwfn* %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %18, align 8
  %68 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %67, i32 0, i32 1
  %69 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %68, align 8
  %70 = load i32, i32* @ECORE_CXT_ROCE_TID_SEG, align 4
  %71 = call i64 @CDUT_SEG_BLK(i32 %70)
  %72 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %69, i64 %71
  store %struct.ecore_ilt_cli_blk* %72, %struct.ecore_ilt_cli_blk** %19, align 8
  br label %78

73:                                               ; preds = %4
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %74, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %77, i32* %5, align 4
  br label %239

78:                                               ; preds = %57, %43, %28
  %79 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %18, align 8
  %80 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @ILT_PAGE_IN_BYTES(i32 %83)
  %85 = load i32, i32* %15, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %17, align 4
  %87 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %19, align 8
  %88 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %17, align 4
  %92 = sdiv i32 %90, %91
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* %10, align 4
  %94 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %19, align 8
  %95 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %17, align 4
  %99 = sdiv i32 %97, %98
  %100 = add nsw i32 %96, %99
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %20, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %17, align 4
  %104 = sdiv i32 %102, %103
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %17, align 4
  %107 = sdiv i32 %105, %106
  %108 = icmp ne i32 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %78
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %109, %78
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %115 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %113, %118
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %122 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %120, %125
  store i32 %126, i32* %13, align 4
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %128 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %127)
  store %struct.ecore_ptt* %128, %struct.ecore_ptt** %21, align 8
  %129 = load %struct.ecore_ptt*, %struct.ecore_ptt** %21, align 8
  %130 = icmp ne %struct.ecore_ptt* %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %112
  %132 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %133 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %132, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %134, i32* %5, align 4
  br label %239

135:                                              ; preds = %112
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %23, align 4
  br label %137

137:                                              ; preds = %231, %135
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %234

141:                                              ; preds = %137
  %142 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %143 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i32, i32* %23, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %141
  br label %231

154:                                              ; preds = %141
  %155 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %156 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %159 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %158, i32 0, i32 0
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i32, i32* %23, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %169 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %168, i32 0, i32 0
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load i32, i32* %23, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %179 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %178, i32 0, i32 0
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = load i32, i32* %23, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %157, i64 %167, i64 %177, i64 %187)
  %189 = load i64, i64* @OSAL_NULL, align 8
  %190 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %191 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %190, i32 0, i32 0
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = load i32, i32* %23, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  store i64 %189, i64* %198, align 8
  %199 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %200 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = load i32, i32* %23, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  store i64 0, i64* %207, align 8
  %208 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %209 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %208, i32 0, i32 0
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = load i32, i32* %23, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  store i64 0, i64* %216, align 8
  %217 = load i32, i32* @PSWRQ2_REG_ILT_MEMORY, align 4
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* @ILT_REG_SIZE_IN_BYTES, align 4
  %221 = mul nsw i32 %218, %220
  %222 = load i32, i32* @ILT_ENTRY_IN_REGS, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %217, %223
  store i32 %224, i32* %14, align 4
  %225 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %226 = load %struct.ecore_ptt*, %struct.ecore_ptt** %21, align 8
  %227 = ptrtoint i64* %22 to i64
  %228 = load i32, i32* %14, align 4
  %229 = load i64, i64* @OSAL_NULL, align 8
  %230 = call i32 @ecore_dmae_host2grc(%struct.ecore_hwfn* %225, %struct.ecore_ptt* %226, i64 %227, i32 %228, i32 2, i64 %229)
  br label %231

231:                                              ; preds = %154, %153
  %232 = load i32, i32* %23, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %23, align 4
  br label %137

234:                                              ; preds = %137
  %235 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %236 = load %struct.ecore_ptt*, %struct.ecore_ptt** %21, align 8
  %237 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %235, %struct.ecore_ptt* %236)
  %238 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %234, %131, %73
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @CONN_CXT_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i32 @TYPE1_TASK_CXT_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i64 @CDUT_SEG_BLK(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ILT_PAGE_IN_BYTES(i32) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, i64, i64, i64) #1

declare dso_local i32 @ecore_dmae_host2grc(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32, i32, i64) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
