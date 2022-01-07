; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_find_deltas.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_find_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i64, i64, i64 }
%struct.unpacked = type { i32, %struct.unpacked*, i32, %struct.object_entry* }

@progress_state = common dso_local global i32 0, align 4
@window_memory_limit = common dso_local global i64 0, align 8
@pack_to_stdout = common dso_local global i32 0, align 4
@OE_Z_DELTA_BITS = common dso_local global i32 0, align 4
@delta_cache_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_entry**, i32*, i32, i32, i32*)* @find_deltas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_deltas(%struct.object_entry** %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.object_entry**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.unpacked*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.object_entry*, align 8
  %17 = alloca %struct.unpacked*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.unpacked*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.unpacked, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.object_entry** %0, %struct.object_entry*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %15, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.unpacked* @xcalloc(i32 %30, i32 32)
  store %struct.unpacked* %31, %struct.unpacked** %14, align 8
  br label %32

32:                                               ; preds = %279, %216, %5
  %33 = load %struct.unpacked*, %struct.unpacked** %14, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %33, i64 %35
  store %struct.unpacked* %36, %struct.unpacked** %17, align 8
  store i32 -1, i32* %20, align 4
  %37 = call i32 (...) @progress_lock()
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = call i32 (...) @progress_unlock()
  br label %280

43:                                               ; preds = %32
  %44 = load %struct.object_entry**, %struct.object_entry*** %6, align 8
  %45 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %44, i32 1
  store %struct.object_entry** %45, %struct.object_entry*** %6, align 8
  %46 = load %struct.object_entry*, %struct.object_entry** %44, align 8
  store %struct.object_entry* %46, %struct.object_entry** %16, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %51 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %43
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @progress_state, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @display_progress(i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %54, %43
  %63 = call i32 (...) @progress_unlock()
  %64 = load %struct.unpacked*, %struct.unpacked** %17, align 8
  %65 = call i64 @free_unpacked(%struct.unpacked* %64)
  %66 = load i64, i64* %15, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %15, align 8
  %68 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %69 = load %struct.unpacked*, %struct.unpacked** %17, align 8
  %70 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %69, i32 0, i32 3
  store %struct.object_entry* %68, %struct.object_entry** %70, align 8
  br label %71

71:                                               ; preds = %83, %62
  %72 = load i64, i64* @window_memory_limit, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* @window_memory_limit, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %13, align 4
  %80 = icmp sgt i32 %79, 1
  br label %81

81:                                               ; preds = %78, %74, %71
  %82 = phi i1 [ false, %74 ], [ false, %71 ], [ %80, %78 ]
  br i1 %82, label %83, label %100

83:                                               ; preds = %81
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = srem i32 %88, %89
  store i32 %90, i32* %21, align 4
  %91 = load %struct.unpacked*, %struct.unpacked** %14, align 8
  %92 = load i32, i32* %21, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %91, i64 %93
  %95 = call i64 @free_unpacked(%struct.unpacked* %94)
  %96 = load i64, i64* %15, align 8
  %97 = sub i64 %96, %95
  store i64 %97, i64* %15, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %13, align 4
  br label %71

100:                                              ; preds = %81
  %101 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %102 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %264

106:                                              ; preds = %100
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %19, align 4
  %108 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %109 = call i64 @DELTA_CHILD(%struct.object_entry* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %113 = call i64 @check_delta_limit(%struct.object_entry* %112, i32 0)
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %264

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %106
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %163, %122
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %18, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %124
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %23, align 4
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %23, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %23, align 4
  br label %139

139:                                              ; preds = %135, %128
  %140 = load %struct.unpacked*, %struct.unpacked** %14, align 8
  %141 = load i32, i32* %23, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %140, i64 %142
  store %struct.unpacked* %143, %struct.unpacked** %24, align 8
  %144 = load %struct.unpacked*, %struct.unpacked** %24, align 8
  %145 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %144, i32 0, i32 3
  %146 = load %struct.object_entry*, %struct.object_entry** %145, align 8
  %147 = icmp ne %struct.object_entry* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %139
  br label %164

149:                                              ; preds = %139
  %150 = load %struct.unpacked*, %struct.unpacked** %17, align 8
  %151 = load %struct.unpacked*, %struct.unpacked** %24, align 8
  %152 = load i32, i32* %19, align 4
  %153 = call i32 @try_delta(%struct.unpacked* %150, %struct.unpacked* %151, i32 %152, i64* %15)
  store i32 %153, i32* %22, align 4
  %154 = load i32, i32* %22, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %164

157:                                              ; preds = %149
  %158 = load i32, i32* %22, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* %23, align 4
  store i32 %161, i32* %20, align 4
  br label %162

162:                                              ; preds = %160, %157
  br label %163

163:                                              ; preds = %162
  br label %124

164:                                              ; preds = %156, %148, %124
  %165 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %166 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %206

169:                                              ; preds = %164
  %170 = load i32, i32* @pack_to_stdout, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %206, label %172

172:                                              ; preds = %169
  %173 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %174 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %173, i32 0, i32 1
  %175 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %176 = call i64 @DELTA_SIZE(%struct.object_entry* %175)
  %177 = call i64 @do_compress(i64* %174, i64 %176)
  store i64 %177, i64* %25, align 8
  %178 = load i64, i64* %25, align 8
  %179 = load i32, i32* @OE_Z_DELTA_BITS, align 4
  %180 = shl i32 1, %179
  %181 = zext i32 %180 to i64
  %182 = icmp ult i64 %178, %181
  br i1 %182, label %183, label %198

183:                                              ; preds = %172
  %184 = load i64, i64* %25, align 8
  %185 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %186 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = call i32 (...) @cache_lock()
  %188 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %189 = call i64 @DELTA_SIZE(%struct.object_entry* %188)
  %190 = load i64, i64* @delta_cache_size, align 8
  %191 = sub i64 %190, %189
  store i64 %191, i64* @delta_cache_size, align 8
  %192 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %193 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @delta_cache_size, align 8
  %196 = add i64 %195, %194
  store i64 %196, i64* @delta_cache_size, align 8
  %197 = call i32 (...) @cache_unlock()
  br label %205

198:                                              ; preds = %172
  %199 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %200 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @FREE_AND_NULL(i64 %201)
  %203 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %204 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %198, %183
  br label %206

206:                                              ; preds = %205, %169, %164
  %207 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %208 = call i64 @DELTA(%struct.object_entry* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %206
  %211 = load i32, i32* %19, align 4
  %212 = load %struct.unpacked*, %struct.unpacked** %17, align 8
  %213 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp sle i32 %211, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %32

217:                                              ; preds = %210, %206
  %218 = load %struct.object_entry*, %struct.object_entry** %16, align 8
  %219 = call i64 @DELTA(%struct.object_entry* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %263

221:                                              ; preds = %217
  %222 = load %struct.unpacked*, %struct.unpacked** %14, align 8
  %223 = load i32, i32* %20, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %222, i64 %224
  %226 = bitcast %struct.unpacked* %26 to i8*
  %227 = bitcast %struct.unpacked* %225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %226, i8* align 8 %227, i64 32, i1 false)
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* %20, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load i32, i32* %8, align 4
  %234 = srem i32 %232, %233
  store i32 %234, i32* %27, align 4
  %235 = load i32, i32* %20, align 4
  store i32 %235, i32* %28, align 4
  br label %236

236:                                              ; preds = %240, %221
  %237 = load i32, i32* %27, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %27, align 4
  %239 = icmp ne i32 %237, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %236
  %241 = load i32, i32* %28, align 4
  %242 = add nsw i32 %241, 1
  %243 = load i32, i32* %8, align 4
  %244 = srem i32 %242, %243
  store i32 %244, i32* %29, align 4
  %245 = load %struct.unpacked*, %struct.unpacked** %14, align 8
  %246 = load i32, i32* %28, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %245, i64 %247
  %249 = load %struct.unpacked*, %struct.unpacked** %14, align 8
  %250 = load i32, i32* %29, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %249, i64 %251
  %253 = bitcast %struct.unpacked* %248 to i8*
  %254 = bitcast %struct.unpacked* %252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 8 %254, i64 32, i1 false)
  %255 = load i32, i32* %29, align 4
  store i32 %255, i32* %28, align 4
  br label %236

256:                                              ; preds = %236
  %257 = load %struct.unpacked*, %struct.unpacked** %14, align 8
  %258 = load i32, i32* %28, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %257, i64 %259
  %261 = bitcast %struct.unpacked* %260 to i8*
  %262 = bitcast %struct.unpacked* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 32, i1 false)
  br label %263

263:                                              ; preds = %256, %217
  br label %264

264:                                              ; preds = %263, %120, %105
  %265 = load i32, i32* %12, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %12, align 4
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, 1
  %269 = load i32, i32* %8, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %13, align 4
  br label %274

274:                                              ; preds = %271, %264
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %8, align 4
  %277 = icmp sge i32 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %274
  store i32 0, i32* %12, align 4
  br label %279

279:                                              ; preds = %278, %274
  br label %32

280:                                              ; preds = %41
  store i32 0, i32* %11, align 4
  br label %281

281:                                              ; preds = %300, %280
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* %8, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %303

285:                                              ; preds = %281
  %286 = load %struct.unpacked*, %struct.unpacked** %14, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %286, i64 %288
  %290 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @free_delta_index(i32 %291)
  %293 = load %struct.unpacked*, %struct.unpacked** %14, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %293, i64 %295
  %297 = getelementptr inbounds %struct.unpacked, %struct.unpacked* %296, i32 0, i32 1
  %298 = load %struct.unpacked*, %struct.unpacked** %297, align 8
  %299 = call i32 @free(%struct.unpacked* %298)
  br label %300

300:                                              ; preds = %285
  %301 = load i32, i32* %11, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %11, align 4
  br label %281

303:                                              ; preds = %281
  %304 = load %struct.unpacked*, %struct.unpacked** %14, align 8
  %305 = call i32 @free(%struct.unpacked* %304)
  ret void
}

declare dso_local %struct.unpacked* @xcalloc(i32, i32) #1

declare dso_local i32 @progress_lock(...) #1

declare dso_local i32 @progress_unlock(...) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i64 @free_unpacked(%struct.unpacked*) #1

declare dso_local i64 @DELTA_CHILD(%struct.object_entry*) #1

declare dso_local i64 @check_delta_limit(%struct.object_entry*, i32) #1

declare dso_local i32 @try_delta(%struct.unpacked*, %struct.unpacked*, i32, i64*) #1

declare dso_local i64 @do_compress(i64*, i64) #1

declare dso_local i64 @DELTA_SIZE(%struct.object_entry*) #1

declare dso_local i32 @cache_lock(...) #1

declare dso_local i32 @cache_unlock(...) #1

declare dso_local i32 @FREE_AND_NULL(i64) #1

declare dso_local i64 @DELTA(%struct.object_entry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free_delta_index(i32) #1

declare dso_local i32 @free(%struct.unpacked*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
