; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_sys_alloc.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_sys_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_32__ = type { i64, i64, i64, i64, i8*, %struct.TYPE_33__, i32, i32 }
%struct.TYPE_33__ = type { i8*, i32, i32, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i64 }

@CMFAIL = common dso_local global i8* null, align 8
@mparams = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@MORECORE_CONTIGUOUS = common dso_local global i64 0, align 8
@SYS_ALLOC_PADDING = common dso_local global i64 0, align 8
@HALF_MAX_SIZE_T = common dso_local global i64 0, align 8
@HAVE_MMAP = common dso_local global i64 0, align 8
@IS_MMAPPED_BIT = common dso_local global i32 0, align 4
@HAVE_MORECORE = common dso_local global i64 0, align 8
@TOP_FOOT_SIZE = common dso_local global i64 0, align 8
@MAX_RELEASE_CHECK_RATE = common dso_local global i32 0, align 4
@NO_SEGMENT_TRAVERSAL = common dso_local global i64 0, align 8
@PINUSE_BIT = common dso_local global i64 0, align 8
@MALLOC_FAILURE_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_32__*, i64)* @sys_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sys_alloc(%struct.TYPE_32__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_34__*, align 8
  %23 = alloca %struct.TYPE_33__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_34__*, align 8
  %27 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store i64 %1, i64* %5, align 8
  %28 = load i8*, i8** @CMFAIL, align 8
  store i8* %28, i8** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %29 = call i32 (...) @ensure_initialization()
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %31 = call i64 @use_mmap(%struct.TYPE_32__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @mparams, i32 0, i32 0), align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i8* @mmap_alloc(%struct.TYPE_32__* %38, i64 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  store i8* %44, i8** %3, align 8
  br label %553

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %33, %2
  %47 = load i64, i64* @MORECORE_CONTIGUOUS, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %199

49:                                               ; preds = %46
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %51 = call i32 @use_noncontiguous(%struct.TYPE_32__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %199, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** @CMFAIL, align 8
  store i8* %54, i8** %10, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %67

60:                                               ; preds = %53
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call %struct.TYPE_33__* @segment_holding(%struct.TYPE_32__* %61, i8* %65)
  br label %67

67:                                               ; preds = %60, %59
  %68 = phi %struct.TYPE_33__* [ null, %59 ], [ %66, %60 ]
  store %struct.TYPE_33__* %68, %struct.TYPE_33__** %11, align 8
  store i64 0, i64* %12, align 8
  %69 = call i32 (...) @ACQUIRE_MALLOC_GLOBAL_LOCK()
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %71 = icmp eq %struct.TYPE_33__* %70, null
  br i1 %71, label %72, label %110

72:                                               ; preds = %67
  %73 = call i64 @CALL_MORECORE(i64 0)
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load i8*, i8** @CMFAIL, align 8
  %77 = icmp ne i8* %75, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %72
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @SYS_ALLOC_PADDING, align 8
  %81 = add i64 %79, %80
  %82 = call i64 @granularity_align(i64 %81)
  store i64 %82, i64* %12, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @is_page_aligned(i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %78
  %87 = load i8*, i8** %13, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = call i64 @page_align(i64 %88)
  %90 = load i8*, i8** %13, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = sub i64 %89, %91
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %12, align 8
  br label %95

95:                                               ; preds = %86, %78
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* @HALF_MAX_SIZE_T, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load i64, i64* %12, align 8
  %101 = call i64 @CALL_MORECORE(i64 %100)
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** %10, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = icmp eq i8* %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i8*, i8** %13, align 8
  store i8* %106, i8** %6, align 8
  %107 = load i64, i64* %12, align 8
  store i64 %107, i64* %7, align 8
  br label %108

108:                                              ; preds = %105, %99, %95
  br label %109

109:                                              ; preds = %108, %72
  br label %139

110:                                              ; preds = %67
  %111 = load i64, i64* %5, align 8
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %111, %114
  %116 = load i64, i64* @SYS_ALLOC_PADDING, align 8
  %117 = add i64 %115, %116
  %118 = call i64 @granularity_align(i64 %117)
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @HALF_MAX_SIZE_T, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %110
  %123 = load i64, i64* %12, align 8
  %124 = call i64 @CALL_MORECORE(i64 %123)
  %125 = inttoptr i64 %124 to i8*
  store i8* %125, i8** %10, align 8
  %126 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  %134 = icmp eq i8* %125, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load i8*, i8** %10, align 8
  store i8* %136, i8** %6, align 8
  %137 = load i64, i64* %12, align 8
  store i64 %137, i64* %7, align 8
  br label %138

138:                                              ; preds = %135, %122, %110
  br label %139

139:                                              ; preds = %138, %109
  %140 = load i8*, i8** %6, align 8
  %141 = load i8*, i8** @CMFAIL, align 8
  %142 = icmp eq i8* %140, %141
  br i1 %142, label %143, label %197

143:                                              ; preds = %139
  %144 = load i8*, i8** %10, align 8
  %145 = load i8*, i8** @CMFAIL, align 8
  %146 = icmp ne i8* %144, %145
  br i1 %146, label %147, label %186

147:                                              ; preds = %143
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* @HALF_MAX_SIZE_T, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %185

151:                                              ; preds = %147
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %5, align 8
  %154 = load i64, i64* @SYS_ALLOC_PADDING, align 8
  %155 = add i64 %153, %154
  %156 = icmp ult i64 %152, %155
  br i1 %156, label %157, label %185

157:                                              ; preds = %151
  %158 = load i64, i64* %5, align 8
  %159 = load i64, i64* @SYS_ALLOC_PADDING, align 8
  %160 = add i64 %158, %159
  %161 = load i64, i64* %12, align 8
  %162 = sub i64 %160, %161
  %163 = call i64 @granularity_align(i64 %162)
  store i64 %163, i64* %14, align 8
  %164 = load i64, i64* %14, align 8
  %165 = load i64, i64* @HALF_MAX_SIZE_T, align 8
  %166 = icmp ult i64 %164, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %157
  %168 = load i64, i64* %14, align 8
  %169 = call i64 @CALL_MORECORE(i64 %168)
  %170 = inttoptr i64 %169 to i8*
  store i8* %170, i8** %15, align 8
  %171 = load i8*, i8** %15, align 8
  %172 = load i8*, i8** @CMFAIL, align 8
  %173 = icmp ne i8* %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i64, i64* %14, align 8
  %176 = load i64, i64* %12, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %12, align 8
  br label %183

178:                                              ; preds = %167
  %179 = load i64, i64* %12, align 8
  %180 = sub i64 0, %179
  %181 = call i64 @CALL_MORECORE(i64 %180)
  %182 = load i8*, i8** @CMFAIL, align 8
  store i8* %182, i8** %10, align 8
  br label %183

183:                                              ; preds = %178, %174
  br label %184

184:                                              ; preds = %183, %157
  br label %185

185:                                              ; preds = %184, %151, %147
  br label %186

186:                                              ; preds = %185, %143
  %187 = load i8*, i8** %10, align 8
  %188 = load i8*, i8** @CMFAIL, align 8
  %189 = icmp ne i8* %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load i8*, i8** %10, align 8
  store i8* %191, i8** %6, align 8
  %192 = load i64, i64* %12, align 8
  store i64 %192, i64* %7, align 8
  br label %196

193:                                              ; preds = %186
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %195 = call i32 @disable_contiguous(%struct.TYPE_32__* %194)
  br label %196

196:                                              ; preds = %193, %190
  br label %197

197:                                              ; preds = %196, %139
  %198 = call i32 (...) @RELEASE_MALLOC_GLOBAL_LOCK()
  br label %199

199:                                              ; preds = %197, %49, %46
  %200 = load i64, i64* @HAVE_MMAP, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %227

202:                                              ; preds = %199
  %203 = load i8*, i8** %6, align 8
  %204 = load i8*, i8** @CMFAIL, align 8
  %205 = icmp eq i8* %203, %204
  br i1 %205, label %206, label %227

206:                                              ; preds = %202
  %207 = load i64, i64* %5, align 8
  %208 = load i64, i64* @SYS_ALLOC_PADDING, align 8
  %209 = add i64 %207, %208
  %210 = call i64 @granularity_align(i64 %209)
  store i64 %210, i64* %16, align 8
  %211 = load i64, i64* %16, align 8
  %212 = load i64, i64* %5, align 8
  %213 = icmp ugt i64 %211, %212
  br i1 %213, label %214, label %226

214:                                              ; preds = %206
  %215 = load i64, i64* %16, align 8
  %216 = call i64 @CALL_MMAP(i64 %215)
  %217 = inttoptr i64 %216 to i8*
  store i8* %217, i8** %17, align 8
  %218 = load i8*, i8** %17, align 8
  %219 = load i8*, i8** @CMFAIL, align 8
  %220 = icmp ne i8* %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %214
  %222 = load i8*, i8** %17, align 8
  store i8* %222, i8** %6, align 8
  %223 = load i64, i64* %16, align 8
  store i64 %223, i64* %7, align 8
  %224 = load i32, i32* @IS_MMAPPED_BIT, align 4
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %221, %214
  br label %226

226:                                              ; preds = %225, %206
  br label %227

227:                                              ; preds = %226, %202, %199
  %228 = load i64, i64* @HAVE_MORECORE, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %280

230:                                              ; preds = %227
  %231 = load i8*, i8** %6, align 8
  %232 = load i8*, i8** @CMFAIL, align 8
  %233 = icmp eq i8* %231, %232
  br i1 %233, label %234, label %280

234:                                              ; preds = %230
  %235 = load i64, i64* %5, align 8
  %236 = load i64, i64* @SYS_ALLOC_PADDING, align 8
  %237 = add i64 %235, %236
  %238 = call i64 @granularity_align(i64 %237)
  store i64 %238, i64* %18, align 8
  %239 = load i64, i64* %18, align 8
  %240 = load i64, i64* @HALF_MAX_SIZE_T, align 8
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %242, label %279

242:                                              ; preds = %234
  %243 = load i8*, i8** @CMFAIL, align 8
  store i8* %243, i8** %19, align 8
  %244 = load i8*, i8** @CMFAIL, align 8
  store i8* %244, i8** %20, align 8
  %245 = call i32 (...) @ACQUIRE_MALLOC_GLOBAL_LOCK()
  %246 = load i64, i64* %18, align 8
  %247 = call i64 @CALL_MORECORE(i64 %246)
  %248 = inttoptr i64 %247 to i8*
  store i8* %248, i8** %19, align 8
  %249 = call i64 @CALL_MORECORE(i64 0)
  %250 = inttoptr i64 %249 to i8*
  store i8* %250, i8** %20, align 8
  %251 = call i32 (...) @RELEASE_MALLOC_GLOBAL_LOCK()
  %252 = load i8*, i8** %19, align 8
  %253 = load i8*, i8** @CMFAIL, align 8
  %254 = icmp ne i8* %252, %253
  br i1 %254, label %255, label %278

255:                                              ; preds = %242
  %256 = load i8*, i8** %20, align 8
  %257 = load i8*, i8** @CMFAIL, align 8
  %258 = icmp ne i8* %256, %257
  br i1 %258, label %259, label %278

259:                                              ; preds = %255
  %260 = load i8*, i8** %19, align 8
  %261 = load i8*, i8** %20, align 8
  %262 = icmp ult i8* %260, %261
  br i1 %262, label %263, label %278

263:                                              ; preds = %259
  %264 = load i8*, i8** %20, align 8
  %265 = load i8*, i8** %19, align 8
  %266 = ptrtoint i8* %264 to i64
  %267 = ptrtoint i8* %265 to i64
  %268 = sub i64 %266, %267
  store i64 %268, i64* %21, align 8
  %269 = load i64, i64* %21, align 8
  %270 = load i64, i64* %5, align 8
  %271 = load i64, i64* @TOP_FOOT_SIZE, align 8
  %272 = add i64 %270, %271
  %273 = icmp ugt i64 %269, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %263
  %275 = load i8*, i8** %19, align 8
  store i8* %275, i8** %6, align 8
  %276 = load i64, i64* %21, align 8
  store i64 %276, i64* %7, align 8
  br label %277

277:                                              ; preds = %274, %263
  br label %278

278:                                              ; preds = %277, %259, %255, %242
  br label %279

279:                                              ; preds = %278, %234
  br label %280

280:                                              ; preds = %279, %230, %227
  %281 = load i8*, i8** %6, align 8
  %282 = load i8*, i8** @CMFAIL, align 8
  %283 = icmp ne i8* %281, %282
  br i1 %283, label %284, label %551

284:                                              ; preds = %280
  %285 = load i64, i64* %7, align 8
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %288, %285
  store i64 %289, i64* %287, align 8
  %290 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = icmp sgt i64 %289, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %284
  %295 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 3
  store i64 %297, i64* %299, align 8
  br label %300

300:                                              ; preds = %294, %284
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %302 = call i32 @is_initialized(%struct.TYPE_32__* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %357, label %304

304:                                              ; preds = %300
  %305 = load i8*, i8** %6, align 8
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %306, i32 0, i32 4
  store i8* %305, i8** %307, align 8
  %308 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %309, i32 0, i32 0
  store i8* %305, i8** %310, align 8
  %311 = load i64, i64* %7, align 8
  %312 = trunc i64 %311 to i32
  %313 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i32 0, i32 1
  store i32 %312, i32* %315, align 8
  %316 = load i32, i32* %8, align 4
  %317 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %317, i32 0, i32 5
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 2
  store i32 %316, i32* %319, align 4
  %320 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @mparams, i32 0, i32 1), align 8
  %321 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %321, i32 0, i32 7
  store i32 %320, i32* %322, align 4
  %323 = load i32, i32* @MAX_RELEASE_CHECK_RATE, align 4
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 6
  store i32 %323, i32* %325, align 8
  %326 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %327 = call i32 @init_bins(%struct.TYPE_32__* %326)
  %328 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %329 = call i64 @is_global(%struct.TYPE_32__* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %304
  %332 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %333 = load i8*, i8** %6, align 8
  %334 = bitcast i8* %333 to %struct.TYPE_34__*
  %335 = load i64, i64* %7, align 8
  %336 = load i64, i64* @TOP_FOOT_SIZE, align 8
  %337 = sub i64 %335, %336
  %338 = call i32 @init_top(%struct.TYPE_32__* %332, %struct.TYPE_34__* %334, i64 %337)
  br label %356

339:                                              ; preds = %304
  %340 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %341 = call i32 @mem2chunk(%struct.TYPE_32__* %340)
  %342 = call %struct.TYPE_34__* @next_chunk(i32 %341)
  store %struct.TYPE_34__* %342, %struct.TYPE_34__** %22, align 8
  %343 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %344 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %345 = load i8*, i8** %6, align 8
  %346 = load i64, i64* %7, align 8
  %347 = getelementptr inbounds i8, i8* %345, i64 %346
  %348 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %349 = bitcast %struct.TYPE_34__* %348 to i8*
  %350 = ptrtoint i8* %347 to i64
  %351 = ptrtoint i8* %349 to i64
  %352 = sub i64 %350, %351
  %353 = load i64, i64* @TOP_FOOT_SIZE, align 8
  %354 = sub i64 %352, %353
  %355 = call i32 @init_top(%struct.TYPE_32__* %343, %struct.TYPE_34__* %344, i64 %354)
  br label %356

356:                                              ; preds = %339, %331
  br label %505

357:                                              ; preds = %300
  %358 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %358, i32 0, i32 5
  store %struct.TYPE_33__* %359, %struct.TYPE_33__** %23, align 8
  br label %360

360:                                              ; preds = %384, %357
  %361 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %362 = icmp ne %struct.TYPE_33__* %361, null
  br i1 %362, label %363, label %374

363:                                              ; preds = %360
  %364 = load i8*, i8** %6, align 8
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %366 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %365, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  %368 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %369 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %367, i64 %371
  %373 = icmp ne i8* %364, %372
  br label %374

374:                                              ; preds = %363, %360
  %375 = phi i1 [ false, %360 ], [ %373, %363 ]
  br i1 %375, label %376, label %386

376:                                              ; preds = %374
  %377 = load i64, i64* @NO_SEGMENT_TRAVERSAL, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %376
  br label %384

380:                                              ; preds = %376
  %381 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %382 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %381, i32 0, i32 3
  %383 = load %struct.TYPE_33__*, %struct.TYPE_33__** %382, align 8
  br label %384

384:                                              ; preds = %380, %379
  %385 = phi %struct.TYPE_33__* [ null, %379 ], [ %383, %380 ]
  store %struct.TYPE_33__* %385, %struct.TYPE_33__** %23, align 8
  br label %360

386:                                              ; preds = %374
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %388 = icmp ne %struct.TYPE_33__* %387, null
  br i1 %388, label %389, label %427

389:                                              ; preds = %386
  %390 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %391 = call i32 @is_extern_segment(%struct.TYPE_33__* %390)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %427, label %393

393:                                              ; preds = %389
  %394 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %395 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @IS_MMAPPED_BIT, align 4
  %398 = and i32 %396, %397
  %399 = load i32, i32* %8, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %427

401:                                              ; preds = %393
  %402 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %403 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = call i64 @segment_holds(%struct.TYPE_33__* %402, i64 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %427

408:                                              ; preds = %401
  %409 = load i64, i64* %7, align 8
  %410 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %411 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 8
  %413 = sext i32 %412 to i64
  %414 = add i64 %413, %409
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %411, align 8
  %416 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %417 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = inttoptr i64 %419 to %struct.TYPE_34__*
  %421 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* %7, align 8
  %425 = add i64 %423, %424
  %426 = call i32 @init_top(%struct.TYPE_32__* %416, %struct.TYPE_34__* %420, i64 %425)
  br label %504

427:                                              ; preds = %401, %393, %389, %386
  %428 = load i8*, i8** %6, align 8
  %429 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %429, i32 0, i32 4
  %431 = load i8*, i8** %430, align 8
  %432 = icmp ult i8* %428, %431
  br i1 %432, label %433, label %437

433:                                              ; preds = %427
  %434 = load i8*, i8** %6, align 8
  %435 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %435, i32 0, i32 4
  store i8* %434, i8** %436, align 8
  br label %437

437:                                              ; preds = %433, %427
  %438 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %438, i32 0, i32 5
  store %struct.TYPE_33__* %439, %struct.TYPE_33__** %23, align 8
  br label %440

440:                                              ; preds = %461, %437
  %441 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %442 = icmp ne %struct.TYPE_33__* %441, null
  br i1 %442, label %443, label %451

443:                                              ; preds = %440
  %444 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %445 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %444, i32 0, i32 0
  %446 = load i8*, i8** %445, align 8
  %447 = load i8*, i8** %6, align 8
  %448 = load i64, i64* %7, align 8
  %449 = getelementptr inbounds i8, i8* %447, i64 %448
  %450 = icmp ne i8* %446, %449
  br label %451

451:                                              ; preds = %443, %440
  %452 = phi i1 [ false, %440 ], [ %450, %443 ]
  br i1 %452, label %453, label %463

453:                                              ; preds = %451
  %454 = load i64, i64* @NO_SEGMENT_TRAVERSAL, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %453
  br label %461

457:                                              ; preds = %453
  %458 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %459 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %458, i32 0, i32 3
  %460 = load %struct.TYPE_33__*, %struct.TYPE_33__** %459, align 8
  br label %461

461:                                              ; preds = %457, %456
  %462 = phi %struct.TYPE_33__* [ null, %456 ], [ %460, %457 ]
  store %struct.TYPE_33__* %462, %struct.TYPE_33__** %23, align 8
  br label %440

463:                                              ; preds = %451
  %464 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %465 = icmp ne %struct.TYPE_33__* %464, null
  br i1 %465, label %466, label %497

466:                                              ; preds = %463
  %467 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %468 = call i32 @is_extern_segment(%struct.TYPE_33__* %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %497, label %470

470:                                              ; preds = %466
  %471 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %472 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @IS_MMAPPED_BIT, align 4
  %475 = and i32 %473, %474
  %476 = load i32, i32* %8, align 4
  %477 = icmp eq i32 %475, %476
  br i1 %477, label %478, label %497

478:                                              ; preds = %470
  %479 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %480 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %479, i32 0, i32 0
  %481 = load i8*, i8** %480, align 8
  store i8* %481, i8** %24, align 8
  %482 = load i8*, i8** %6, align 8
  %483 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %484 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %483, i32 0, i32 0
  store i8* %482, i8** %484, align 8
  %485 = load i64, i64* %7, align 8
  %486 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %487 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 8
  %489 = sext i32 %488 to i64
  %490 = add i64 %489, %485
  %491 = trunc i64 %490 to i32
  store i32 %491, i32* %487, align 8
  %492 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %493 = load i8*, i8** %6, align 8
  %494 = load i8*, i8** %24, align 8
  %495 = load i64, i64* %5, align 8
  %496 = call i8* @prepend_alloc(%struct.TYPE_32__* %492, i8* %493, i8* %494, i64 %495)
  store i8* %496, i8** %3, align 8
  br label %553

497:                                              ; preds = %470, %466, %463
  %498 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %499 = load i8*, i8** %6, align 8
  %500 = load i64, i64* %7, align 8
  %501 = load i32, i32* %8, align 4
  %502 = call i32 @add_segment(%struct.TYPE_32__* %498, i8* %499, i64 %500, i32 %501)
  br label %503

503:                                              ; preds = %497
  br label %504

504:                                              ; preds = %503, %408
  br label %505

505:                                              ; preds = %504, %356
  %506 = load i64, i64* %5, align 8
  %507 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %507, i32 0, i32 1
  %509 = load i64, i64* %508, align 8
  %510 = icmp ult i64 %506, %509
  br i1 %510, label %511, label %550

511:                                              ; preds = %505
  %512 = load i64, i64* %5, align 8
  %513 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = sub i64 %515, %512
  store i64 %516, i64* %514, align 8
  store i64 %516, i64* %25, align 8
  %517 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %517, i32 0, i32 0
  %519 = load i64, i64* %518, align 8
  %520 = inttoptr i64 %519 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %520, %struct.TYPE_34__** %26, align 8
  %521 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %522 = load i64, i64* %5, align 8
  %523 = call %struct.TYPE_34__* @chunk_plus_offset(%struct.TYPE_34__* %521, i64 %522)
  %524 = ptrtoint %struct.TYPE_34__* %523 to i64
  %525 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %526 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %525, i32 0, i32 0
  store i64 %524, i64* %526, align 8
  %527 = inttoptr i64 %524 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %527, %struct.TYPE_34__** %27, align 8
  %528 = load i64, i64* %25, align 8
  %529 = load i64, i64* @PINUSE_BIT, align 8
  %530 = or i64 %528, %529
  %531 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %532 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %531, i32 0, i32 0
  store i64 %530, i64* %532, align 8
  %533 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %534 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %535 = load i64, i64* %5, align 8
  %536 = call i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_32__* %533, %struct.TYPE_34__* %534, i64 %535)
  %537 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %538 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %539 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %538, i32 0, i32 0
  %540 = load i64, i64* %539, align 8
  %541 = inttoptr i64 %540 to %struct.TYPE_34__*
  %542 = call i32 @check_top_chunk(%struct.TYPE_32__* %537, %struct.TYPE_34__* %541)
  %543 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %544 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %545 = call i8* @chunk2mem(%struct.TYPE_34__* %544)
  %546 = load i64, i64* %5, align 8
  %547 = call i32 @check_malloced_chunk(%struct.TYPE_32__* %543, i8* %545, i64 %546)
  %548 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %549 = call i8* @chunk2mem(%struct.TYPE_34__* %548)
  store i8* %549, i8** %3, align 8
  br label %553

550:                                              ; preds = %505
  br label %551

551:                                              ; preds = %550, %280
  %552 = load i32, i32* @MALLOC_FAILURE_ACTION, align 4
  store i8* null, i8** %3, align 8
  br label %553

553:                                              ; preds = %551, %511, %478, %43
  %554 = load i8*, i8** %3, align 8
  ret i8* %554
}

declare dso_local i32 @ensure_initialization(...) #1

declare dso_local i64 @use_mmap(%struct.TYPE_32__*) #1

declare dso_local i8* @mmap_alloc(%struct.TYPE_32__*, i64) #1

declare dso_local i32 @use_noncontiguous(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_33__* @segment_holding(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @ACQUIRE_MALLOC_GLOBAL_LOCK(...) #1

declare dso_local i64 @CALL_MORECORE(i64) #1

declare dso_local i64 @granularity_align(i64) #1

declare dso_local i32 @is_page_aligned(i8*) #1

declare dso_local i64 @page_align(i64) #1

declare dso_local i32 @disable_contiguous(%struct.TYPE_32__*) #1

declare dso_local i32 @RELEASE_MALLOC_GLOBAL_LOCK(...) #1

declare dso_local i64 @CALL_MMAP(i64) #1

declare dso_local i32 @is_initialized(%struct.TYPE_32__*) #1

declare dso_local i32 @init_bins(%struct.TYPE_32__*) #1

declare dso_local i64 @is_global(%struct.TYPE_32__*) #1

declare dso_local i32 @init_top(%struct.TYPE_32__*, %struct.TYPE_34__*, i64) #1

declare dso_local %struct.TYPE_34__* @next_chunk(i32) #1

declare dso_local i32 @mem2chunk(%struct.TYPE_32__*) #1

declare dso_local i32 @is_extern_segment(%struct.TYPE_33__*) #1

declare dso_local i64 @segment_holds(%struct.TYPE_33__*, i64) #1

declare dso_local i8* @prepend_alloc(%struct.TYPE_32__*, i8*, i8*, i64) #1

declare dso_local i32 @add_segment(%struct.TYPE_32__*, i8*, i64, i32) #1

declare dso_local %struct.TYPE_34__* @chunk_plus_offset(%struct.TYPE_34__*, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_32__*, %struct.TYPE_34__*, i64) #1

declare dso_local i32 @check_top_chunk(%struct.TYPE_32__*, %struct.TYPE_34__*) #1

declare dso_local i32 @check_malloced_chunk(%struct.TYPE_32__*, i8*, i64) #1

declare dso_local i8* @chunk2mem(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
