; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_ll_find_deltas.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_ll_find_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i64 }
%struct.thread_params = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.object_entry** }

@delta_search_threads = common dso_local global i32 0, align 4
@progress = common dso_local global i64 0, align 8
@pack_to_stdout = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Delta compression using up to %d threads\00", align 1
@threaded_find_deltas = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to create thread: %s\00", align 1
@progress_cond = common dso_local global i32 0, align 4
@progress_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_entry**, i32, i32, i32, i32*)* @ll_find_deltas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ll_find_deltas(%struct.object_entry** %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.object_entry**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.thread_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.thread_params*, align 8
  %17 = alloca %struct.thread_params*, align 8
  %18 = alloca i32, align 4
  store %struct.object_entry** %0, %struct.object_entry*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %14, align 4
  %19 = call i32 (...) @init_threaded_search()
  %20 = load i32, i32* @delta_search_threads, align 4
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @find_deltas(%struct.object_entry** %23, i32* %7, i32 %24, i32 %25, i32* %26)
  %28 = call i32 (...) @cleanup_threaded_search()
  br label %402

29:                                               ; preds = %5
  %30 = load i64, i64* @progress, align 8
  %31 = load i64, i64* @pack_to_stdout, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @delta_search_threads, align 4
  %37 = call i32 @fprintf_ln(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* @delta_search_threads, align 4
  %40 = call %struct.thread_params* @xcalloc(i32 %39, i32 56)
  store %struct.thread_params* %40, %struct.thread_params** %11, align 8
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %154, %38
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @delta_search_threads, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %157

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @delta_search_threads, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 %47, %48
  %50 = udiv i32 %46, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 2, %52
  %54 = icmp ult i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @delta_search_threads, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %60, %55, %45
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %63, i64 %65
  %67 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %69, i64 %71
  %73 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %75, i64 %77
  %79 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %78, i32 0, i32 2
  store i32* %74, i32** %79, align 8
  %80 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %80, i64 %82
  %84 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %83, i32 0, i32 3
  store i32 1, i32* %84, align 8
  %85 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %85, i64 %87
  %89 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %88, i32 0, i32 4
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %125, %61
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %123

97:                                               ; preds = %93
  %98 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %98, i64 %100
  %102 = load %struct.object_entry*, %struct.object_entry** %101, align 8
  %103 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %97
  %107 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %108 = load i32, i32* %15, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %107, i64 %109
  %111 = load %struct.object_entry*, %struct.object_entry** %110, align 8
  %112 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sub i32 %115, 1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %114, i64 %117
  %119 = load %struct.object_entry*, %struct.object_entry** %118, align 8
  %120 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %113, %121
  br label %123

123:                                              ; preds = %106, %97, %93, %90
  %124 = phi i1 [ false, %97 ], [ false, %93 ], [ false, %90 ], [ %122, %106 ]
  br i1 %124, label %125, label %128

125:                                              ; preds = %123
  %126 = load i32, i32* %15, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %90

128:                                              ; preds = %123
  %129 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %130 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %130, i64 %132
  %134 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %133, i32 0, i32 10
  store %struct.object_entry** %129, %struct.object_entry*** %134, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %136, i64 %138
  %140 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %139, i32 0, i32 5
  store i32 %135, i32* %140, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %142, i64 %144
  %146 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %145, i32 0, i32 6
  store i32 %141, i32* %146, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %149 = zext i32 %147 to i64
  %150 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %148, i64 %149
  store %struct.object_entry** %150, %struct.object_entry*** %6, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sub i32 %152, %151
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %128
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %41

157:                                              ; preds = %41
  store i32 0, i32* %12, align 4
  br label %158

158:                                              ; preds = %205, %157
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @delta_search_threads, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %208

162:                                              ; preds = %158
  %163 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %163, i64 %165
  %167 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %162
  br label %205

171:                                              ; preds = %162
  %172 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %172, i64 %174
  %176 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %175, i32 0, i32 7
  %177 = call i32 @pthread_mutex_init(i32* %176, i32* null)
  %178 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %178, i64 %180
  %182 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %181, i32 0, i32 8
  %183 = call i32 @pthread_cond_init(i32* %182, i32* null)
  %184 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %184, i64 %186
  %188 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %187, i32 0, i32 9
  %189 = load i32, i32* @threaded_find_deltas, align 4
  %190 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %190, i64 %192
  %194 = call i32 @pthread_create(i32* %188, i32* null, i32 %189, %struct.thread_params* %193)
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %13, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %171
  %198 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @strerror(i32 %199)
  %201 = call i32 @die(i32 %198, i32 %200)
  br label %202

202:                                              ; preds = %197, %171
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %202, %170
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %158

208:                                              ; preds = %158
  br label %209

209:                                              ; preds = %397, %208
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %398

212:                                              ; preds = %209
  store %struct.thread_params* null, %struct.thread_params** %16, align 8
  store %struct.thread_params* null, %struct.thread_params** %17, align 8
  store i32 0, i32* %18, align 4
  %213 = call i32 (...) @progress_lock()
  br label %214

214:                                              ; preds = %245, %212
  store i32 0, i32* %12, align 4
  br label %215

215:                                              ; preds = %238, %214
  %216 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %217 = icmp ne %struct.thread_params* %216, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @delta_search_threads, align 4
  %221 = icmp slt i32 %219, %220
  br label %222

222:                                              ; preds = %218, %215
  %223 = phi i1 [ false, %215 ], [ %221, %218 ]
  br i1 %223, label %224, label %241

224:                                              ; preds = %222
  %225 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %225, i64 %227
  %229 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %224
  %233 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %233, i64 %235
  store %struct.thread_params* %236, %struct.thread_params** %16, align 8
  br label %237

237:                                              ; preds = %232, %224
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %12, align 4
  br label %215

241:                                              ; preds = %222
  %242 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %243 = icmp ne %struct.thread_params* %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  br label %247

245:                                              ; preds = %241
  %246 = call i32 @pthread_cond_wait(i32* @progress_cond, i32* @progress_mutex)
  br label %214

247:                                              ; preds = %244
  store i32 0, i32* %12, align 4
  br label %248

248:                                              ; preds = %282, %247
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* @delta_search_threads, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %285

252:                                              ; preds = %248
  %253 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %253, i64 %255
  %257 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %8, align 4
  %260 = mul nsw i32 2, %259
  %261 = icmp ugt i32 %258, %260
  br i1 %261, label %262, label %281

262:                                              ; preds = %252
  %263 = load %struct.thread_params*, %struct.thread_params** %17, align 8
  %264 = icmp ne %struct.thread_params* %263, null
  br i1 %264, label %265, label %276

265:                                              ; preds = %262
  %266 = load %struct.thread_params*, %struct.thread_params** %17, align 8
  %267 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %269, i64 %271
  %273 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 4
  %275 = icmp ult i32 %268, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %265, %262
  %277 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %277, i64 %279
  store %struct.thread_params* %280, %struct.thread_params** %17, align 8
  br label %281

281:                                              ; preds = %276, %265, %252
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %12, align 4
  br label %248

285:                                              ; preds = %248
  %286 = load %struct.thread_params*, %struct.thread_params** %17, align 8
  %287 = icmp ne %struct.thread_params* %286, null
  br i1 %287, label %288, label %361

288:                                              ; preds = %285
  %289 = load %struct.thread_params*, %struct.thread_params** %17, align 8
  %290 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  %292 = udiv i32 %291, 2
  store i32 %292, i32* %18, align 4
  %293 = load %struct.thread_params*, %struct.thread_params** %17, align 8
  %294 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %293, i32 0, i32 10
  %295 = load %struct.object_entry**, %struct.object_entry*** %294, align 8
  %296 = load %struct.thread_params*, %struct.thread_params** %17, align 8
  %297 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %295, i64 %299
  %301 = load i32, i32* %18, align 4
  %302 = zext i32 %301 to i64
  %303 = sub i64 0, %302
  %304 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %300, i64 %303
  store %struct.object_entry** %304, %struct.object_entry*** %6, align 8
  br label %305

305:                                              ; preds = %329, %288
  %306 = load i32, i32* %18, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %327

308:                                              ; preds = %305
  %309 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %310 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %309, i64 0
  %311 = load %struct.object_entry*, %struct.object_entry** %310, align 8
  %312 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %327

315:                                              ; preds = %308
  %316 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %317 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %316, i64 0
  %318 = load %struct.object_entry*, %struct.object_entry** %317, align 8
  %319 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %322 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %321, i64 -1
  %323 = load %struct.object_entry*, %struct.object_entry** %322, align 8
  %324 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %320, %325
  br label %327

327:                                              ; preds = %315, %308, %305
  %328 = phi i1 [ false, %308 ], [ false, %305 ], [ %326, %315 ]
  br i1 %328, label %329, label %334

329:                                              ; preds = %327
  %330 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %331 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %330, i32 1
  store %struct.object_entry** %331, %struct.object_entry*** %6, align 8
  %332 = load i32, i32* %18, align 4
  %333 = add i32 %332, -1
  store i32 %333, i32* %18, align 4
  br label %305

334:                                              ; preds = %327
  %335 = load i32, i32* %18, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %347, label %337

337:                                              ; preds = %334
  %338 = load %struct.thread_params*, %struct.thread_params** %17, align 8
  %339 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 4
  %341 = udiv i32 %340, 2
  store i32 %341, i32* %18, align 4
  %342 = load i32, i32* %18, align 4
  %343 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %344 = zext i32 %342 to i64
  %345 = sub i64 0, %344
  %346 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %343, i64 %345
  store %struct.object_entry** %346, %struct.object_entry*** %6, align 8
  br label %347

347:                                              ; preds = %337, %334
  %348 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %349 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %350 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %349, i32 0, i32 10
  store %struct.object_entry** %348, %struct.object_entry*** %350, align 8
  %351 = load i32, i32* %18, align 4
  %352 = load %struct.thread_params*, %struct.thread_params** %17, align 8
  %353 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = sub i32 %354, %351
  store i32 %355, i32* %353, align 8
  %356 = load i32, i32* %18, align 4
  %357 = load %struct.thread_params*, %struct.thread_params** %17, align 8
  %358 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 4
  %360 = sub i32 %359, %356
  store i32 %360, i32* %358, align 4
  br label %361

361:                                              ; preds = %347, %285
  %362 = load i32, i32* %18, align 4
  %363 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %364 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %363, i32 0, i32 5
  store i32 %362, i32* %364, align 8
  %365 = load i32, i32* %18, align 4
  %366 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %367 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %366, i32 0, i32 6
  store i32 %365, i32* %367, align 4
  %368 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %369 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %368, i32 0, i32 3
  store i32 1, i32* %369, align 8
  %370 = call i32 (...) @progress_unlock()
  %371 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %372 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %371, i32 0, i32 7
  %373 = call i32 @pthread_mutex_lock(i32* %372)
  %374 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %375 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %374, i32 0, i32 4
  store i32 1, i32* %375, align 4
  %376 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %377 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %376, i32 0, i32 8
  %378 = call i32 @pthread_cond_signal(i32* %377)
  %379 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %380 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %379, i32 0, i32 7
  %381 = call i32 @pthread_mutex_unlock(i32* %380)
  %382 = load i32, i32* %18, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %397, label %384

384:                                              ; preds = %361
  %385 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %386 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %385, i32 0, i32 9
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @pthread_join(i32 %387, i32* null)
  %389 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %390 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %389, i32 0, i32 8
  %391 = call i32 @pthread_cond_destroy(i32* %390)
  %392 = load %struct.thread_params*, %struct.thread_params** %16, align 8
  %393 = getelementptr inbounds %struct.thread_params, %struct.thread_params* %392, i32 0, i32 7
  %394 = call i32 @pthread_mutex_destroy(i32* %393)
  %395 = load i32, i32* %14, align 4
  %396 = add nsw i32 %395, -1
  store i32 %396, i32* %14, align 4
  br label %397

397:                                              ; preds = %384, %361
  br label %209

398:                                              ; preds = %209
  %399 = call i32 (...) @cleanup_threaded_search()
  %400 = load %struct.thread_params*, %struct.thread_params** %11, align 8
  %401 = call i32 @free(%struct.thread_params* %400)
  br label %402

402:                                              ; preds = %398, %22
  ret void
}

declare dso_local i32 @init_threaded_search(...) #1

declare dso_local i32 @find_deltas(%struct.object_entry**, i32*, i32, i32, i32*) #1

declare dso_local i32 @cleanup_threaded_search(...) #1

declare dso_local i32 @fprintf_ln(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.thread_params* @xcalloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.thread_params*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @progress_lock(...) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @progress_unlock(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.thread_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
