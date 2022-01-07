; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athsurvey/extr_athsurvey.c_process_survey_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athsurvey/extr_athsurvey.c_process_survey_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64 }

@CHANNEL_SURVEY_SAMPLE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"(%4.1f %4.1f %4.1f %4.1f) \00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"(%4.1f %4.1f %4.1f %4.1f)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @process_survey_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_survey_stats(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store float 0.000000e+00, float* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store float 1.000000e+02, float* %16, align 4
  store float 1.000000e+02, float* %17, align 4
  store float 1.000000e+02, float* %18, align 4
  store float 1.000000e+02, float* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %275, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @CHANNEL_SURVEY_SAMPLE_COUNT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %278

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %275

38:                                               ; preds = %27
  %39 = load i32, i32* %20, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %20, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %22, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %21, align 4
  store i32 %53, i32* %22, align 4
  br label %54

54:                                               ; preds = %52, %38
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = sitofp i64 %62 to float
  %64 = fpext float %63 to double
  %65 = fmul double %64, 1.000000e+02
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %65, %74
  %76 = fptrunc double %75 to float
  store float %76, float* %4, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = sitofp i64 %84 to float
  %86 = fpext float %85 to double
  %87 = fmul double %86, 1.000000e+02
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sitofp i32 %95 to double
  %97 = fdiv double %87, %96
  %98 = fptrunc double %97 to float
  store float %98, float* %5, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = sitofp i64 %106 to float
  %108 = fpext float %107 to double
  %109 = fmul double %108, 1.000000e+02
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sitofp i32 %117 to double
  %119 = fdiv double %109, %118
  %120 = fptrunc double %119 to float
  store float %120, float* %6, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sitofp i64 %128 to float
  %130 = fpext float %129 to double
  %131 = fmul double %130, 1.000000e+02
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sitofp i32 %139 to double
  %141 = fdiv double %131, %140
  %142 = fptrunc double %141 to float
  store float %142, float* %7, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = mul nsw i32 %151, 10000
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sdiv i32 %152, %160
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %12, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = mul nsw i32 %172, 10000
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* %3, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sdiv i32 %173, %181
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %13, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = mul nsw i32 %193, 10000
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sdiv i32 %194, %202
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %14, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = mul nsw i32 %214, 10000
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sdiv i32 %215, %223
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %15, align 4
  %227 = load float, float* %4, align 4
  %228 = load float, float* %8, align 4
  %229 = fcmp ogt float %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %54
  %231 = load float, float* %4, align 4
  store float %231, float* %8, align 4
  br label %232

232:                                              ; preds = %230, %54
  %233 = load float, float* %5, align 4
  %234 = load float, float* %9, align 4
  %235 = fcmp ogt float %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = load float, float* %5, align 4
  store float %237, float* %9, align 4
  br label %238

238:                                              ; preds = %236, %232
  %239 = load float, float* %6, align 4
  %240 = load float, float* %10, align 4
  %241 = fcmp ogt float %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = load float, float* %6, align 4
  store float %243, float* %10, align 4
  br label %244

244:                                              ; preds = %242, %238
  %245 = load float, float* %7, align 4
  %246 = load float, float* %11, align 4
  %247 = fcmp ogt float %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = load float, float* %7, align 4
  store float %249, float* %11, align 4
  br label %250

250:                                              ; preds = %248, %244
  %251 = load float, float* %4, align 4
  %252 = load float, float* %16, align 4
  %253 = fcmp olt float %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = load float, float* %4, align 4
  store float %255, float* %16, align 4
  br label %256

256:                                              ; preds = %254, %250
  %257 = load float, float* %5, align 4
  %258 = load float, float* %17, align 4
  %259 = fcmp olt float %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = load float, float* %5, align 4
  store float %261, float* %17, align 4
  br label %262

262:                                              ; preds = %260, %256
  %263 = load float, float* %6, align 4
  %264 = load float, float* %18, align 4
  %265 = fcmp olt float %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = load float, float* %6, align 4
  store float %267, float* %18, align 4
  br label %268

268:                                              ; preds = %266, %262
  %269 = load float, float* %7, align 4
  %270 = load float, float* %19, align 4
  %271 = fcmp olt float %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = load float, float* %7, align 4
  store float %273, float* %19, align 4
  br label %274

274:                                              ; preds = %272, %268
  br label %275

275:                                              ; preds = %274, %37
  %276 = load i32, i32* %3, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %3, align 4
  br label %23

278:                                              ; preds = %23
  %279 = load float, float* %16, align 4
  %280 = load float, float* %17, align 4
  %281 = load float, float* %18, align 4
  %282 = load float, float* %19, align 4
  %283 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), float %279, float %280, float %281, float %282)
  %284 = load i32, i32* %20, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %278
  br label %294

287:                                              ; preds = %278
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* %20, align 4
  %290 = sdiv i32 %288, %289
  %291 = sitofp i32 %290 to float
  %292 = fpext float %291 to double
  %293 = fdiv double %292, 1.000000e+02
  br label %294

294:                                              ; preds = %287, %286
  %295 = phi double [ 0.000000e+00, %286 ], [ %293, %287 ]
  %296 = fptrunc double %295 to float
  %297 = load i32, i32* %20, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %294
  br label %307

300:                                              ; preds = %294
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* %20, align 4
  %303 = sdiv i32 %301, %302
  %304 = sitofp i32 %303 to float
  %305 = fpext float %304 to double
  %306 = fdiv double %305, 1.000000e+02
  br label %307

307:                                              ; preds = %300, %299
  %308 = phi double [ 0.000000e+00, %299 ], [ %306, %300 ]
  %309 = fptrunc double %308 to float
  %310 = load i32, i32* %20, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  br label %320

313:                                              ; preds = %307
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* %20, align 4
  %316 = sdiv i32 %314, %315
  %317 = sitofp i32 %316 to float
  %318 = fpext float %317 to double
  %319 = fdiv double %318, 1.000000e+02
  br label %320

320:                                              ; preds = %313, %312
  %321 = phi double [ 0.000000e+00, %312 ], [ %319, %313 ]
  %322 = fptrunc double %321 to float
  %323 = load i32, i32* %20, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %320
  br label %333

326:                                              ; preds = %320
  %327 = load i32, i32* %15, align 4
  %328 = load i32, i32* %20, align 4
  %329 = sdiv i32 %327, %328
  %330 = sitofp i32 %329 to float
  %331 = fpext float %330 to double
  %332 = fdiv double %331, 1.000000e+02
  br label %333

333:                                              ; preds = %326, %325
  %334 = phi double [ 0.000000e+00, %325 ], [ %332, %326 ]
  %335 = fptrunc double %334 to float
  %336 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), float %296, float %309, float %322, float %335)
  %337 = load float, float* %8, align 4
  %338 = load float, float* %9, align 4
  %339 = load float, float* %10, align 4
  %340 = load float, float* %11, align 4
  %341 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), float %337, float %338, float %339, float %340)
  ret void
}

declare dso_local i32 @printf(i8*, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
