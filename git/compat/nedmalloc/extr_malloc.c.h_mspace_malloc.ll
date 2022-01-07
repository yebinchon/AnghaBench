; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_mspace_malloc.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_mspace_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i64, i64, i64, %struct.TYPE_30__*, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, %struct.TYPE_30__* }

@MAX_SMALL_REQUEST = common dso_local global i64 0, align 8
@MIN_REQUEST = common dso_local global i64 0, align 8
@MIN_CHUNK_SIZE = common dso_local global i64 0, align 8
@SIZE_T_SIZE = common dso_local global i32 0, align 4
@MAX_REQUEST = common dso_local global i64 0, align 8
@MAX_SIZE_T = common dso_local global i64 0, align 8
@PINUSE_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mspace_malloc(i32 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_30__*, align 8
  %22 = alloca %struct.TYPE_30__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_30__*, align 8
  %26 = alloca %struct.TYPE_30__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %29, %struct.TYPE_29__** %6, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %31 = call i32 @ok_magic(%struct.TYPE_29__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %36 = call i32 @USAGE_ERROR_ACTION(%struct.TYPE_29__* %34, %struct.TYPE_29__* %35)
  store i8* null, i8** %3, align 8
  br label %329

37:                                               ; preds = %2
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %39 = call i32 @PREACTION(%struct.TYPE_29__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %328, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @MAX_SMALL_REQUEST, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %199

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @MIN_REQUEST, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @MIN_CHUNK_SIZE, align 8
  br label %54

51:                                               ; preds = %45
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @pad_request(i64 %52)
  br label %54

54:                                               ; preds = %51, %49
  %55 = phi i64 [ %50, %49 ], [ %53, %51 ]
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @small_index(i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %101

66:                                               ; preds = %54
  %67 = load i32, i32* %10, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %68, 1
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call %struct.TYPE_30__* @smallbin_at(%struct.TYPE_29__* %72, i32 %73)
  store %struct.TYPE_30__* %74, %struct.TYPE_30__** %11, align 8
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %76, align 8
  store %struct.TYPE_30__* %77, %struct.TYPE_30__** %12, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %79 = call i64 @chunksize(%struct.TYPE_30__* %78)
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @small_index2size(i32 %80)
  %82 = icmp eq i64 %79, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @unlink_first_small_chunk(%struct.TYPE_29__* %85, %struct.TYPE_30__* %86, %struct.TYPE_30__* %87, i32 %88)
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i64 @small_index2size(i32 %92)
  %94 = call i32 @set_inuse_and_pinuse(%struct.TYPE_29__* %90, %struct.TYPE_30__* %91, i64 %93)
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %96 = call i8* @chunk2mem(%struct.TYPE_30__* %95)
  store i8* %96, i8** %7, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @check_malloced_chunk(%struct.TYPE_29__* %97, i8* %98, i64 %99)
  br label %324

101:                                              ; preds = %54
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ugt i64 %102, %105
  br i1 %106, label %107, label %197

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %180

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @idx2bit(i32 %114)
  %116 = call i32 @left_bits(i32 %115)
  %117 = and i32 %113, %116
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @least_bit(i32 %118)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @compute_bit2idx(i32 %120, i32 %121)
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %124 = load i32, i32* %17, align 4
  %125 = call %struct.TYPE_30__* @smallbin_at(%struct.TYPE_29__* %123, i32 %124)
  store %struct.TYPE_30__* %125, %struct.TYPE_30__** %13, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %127, align 8
  store %struct.TYPE_30__* %128, %struct.TYPE_30__** %14, align 8
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %130 = call i64 @chunksize(%struct.TYPE_30__* %129)
  %131 = load i32, i32* %17, align 4
  %132 = call i64 @small_index2size(i32 %131)
  %133 = icmp eq i64 %130, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @unlink_first_small_chunk(%struct.TYPE_29__* %136, %struct.TYPE_30__* %137, %struct.TYPE_30__* %138, i32 %139)
  %141 = load i32, i32* %17, align 4
  %142 = call i64 @small_index2size(i32 %141)
  %143 = load i64, i64* %8, align 8
  %144 = sub i64 %142, %143
  store i64 %144, i64* %16, align 8
  %145 = load i32, i32* @SIZE_T_SIZE, align 4
  %146 = icmp ne i32 %145, 4
  br i1 %146, label %147, label %157

147:                                              ; preds = %110
  %148 = load i64, i64* %16, align 8
  %149 = load i64, i64* @MIN_CHUNK_SIZE, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %154 = load i32, i32* %17, align 4
  %155 = call i64 @small_index2size(i32 %154)
  %156 = call i32 @set_inuse_and_pinuse(%struct.TYPE_29__* %152, %struct.TYPE_30__* %153, i64 %155)
  br label %173

157:                                              ; preds = %147, %110
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %160 = load i64, i64* %8, align 8
  %161 = call i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_29__* %158, %struct.TYPE_30__* %159, i64 %160)
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %163 = load i64, i64* %8, align 8
  %164 = call i8* @chunk_plus_offset(%struct.TYPE_30__* %162, i64 %163)
  %165 = bitcast i8* %164 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %165, %struct.TYPE_30__** %15, align 8
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %167 = load i64, i64* %16, align 8
  %168 = call i32 @set_size_and_pinuse_of_free_chunk(%struct.TYPE_30__* %166, i64 %167)
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %171 = load i64, i64* %16, align 8
  %172 = call i32 @replace_dv(%struct.TYPE_29__* %169, %struct.TYPE_30__* %170, i64 %171)
  br label %173

173:                                              ; preds = %157, %151
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %175 = call i8* @chunk2mem(%struct.TYPE_30__* %174)
  store i8* %175, i8** %7, align 8
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = load i64, i64* %8, align 8
  %179 = call i32 @check_malloced_chunk(%struct.TYPE_29__* %176, i8* %177, i64 %178)
  br label %324

180:                                              ; preds = %107
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %187 = load i64, i64* %8, align 8
  %188 = call i8* @tmalloc_small(%struct.TYPE_29__* %186, i64 %187)
  store i8* %188, i8** %7, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %192 = load i8*, i8** %7, align 8
  %193 = load i64, i64* %8, align 8
  %194 = call i32 @check_malloced_chunk(%struct.TYPE_29__* %191, i8* %192, i64 %193)
  br label %324

195:                                              ; preds = %185, %180
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196, %101
  br label %198

198:                                              ; preds = %197
  br label %224

199:                                              ; preds = %41
  %200 = load i64, i64* %5, align 8
  %201 = load i64, i64* @MAX_REQUEST, align 8
  %202 = icmp uge i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i64, i64* @MAX_SIZE_T, align 8
  store i64 %204, i64* %8, align 8
  br label %223

205:                                              ; preds = %199
  %206 = load i64, i64* %5, align 8
  %207 = call i64 @pad_request(i64 %206)
  store i64 %207, i64* %8, align 8
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %205
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %214 = load i64, i64* %8, align 8
  %215 = call i8* @tmalloc_large(%struct.TYPE_29__* %213, i64 %214)
  store i8* %215, i8** %7, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %219 = load i8*, i8** %7, align 8
  %220 = load i64, i64* %8, align 8
  %221 = call i32 @check_malloced_chunk(%struct.TYPE_29__* %218, i8* %219, i64 %220)
  br label %324

222:                                              ; preds = %212, %205
  br label %223

223:                                              ; preds = %222, %203
  br label %224

224:                                              ; preds = %223, %198
  %225 = load i64, i64* %8, align 8
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ule i64 %225, %228
  br i1 %229, label %230, label %278

230:                                              ; preds = %224
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* %8, align 8
  %235 = sub i64 %233, %234
  store i64 %235, i64* %20, align 8
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 5
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %237, align 8
  store %struct.TYPE_30__* %238, %struct.TYPE_30__** %21, align 8
  %239 = load i64, i64* %20, align 8
  %240 = load i64, i64* @MIN_CHUNK_SIZE, align 8
  %241 = icmp uge i64 %239, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %230
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %244 = load i64, i64* %8, align 8
  %245 = call i8* @chunk_plus_offset(%struct.TYPE_30__* %243, i64 %244)
  %246 = bitcast i8* %245 to %struct.TYPE_30__*
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 5
  store %struct.TYPE_30__* %246, %struct.TYPE_30__** %248, align 8
  store %struct.TYPE_30__* %246, %struct.TYPE_30__** %22, align 8
  %249 = load i64, i64* %20, align 8
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 1
  store i64 %249, i64* %251, align 8
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %22, align 8
  %253 = load i64, i64* %20, align 8
  %254 = call i32 @set_size_and_pinuse_of_free_chunk(%struct.TYPE_30__* %252, i64 %253)
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %257 = load i64, i64* %8, align 8
  %258 = call i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_29__* %255, %struct.TYPE_30__* %256, i64 %257)
  br label %271

259:                                              ; preds = %230
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %23, align 8
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 1
  store i64 0, i64* %264, align 8
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 5
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %266, align 8
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %269 = load i64, i64* %23, align 8
  %270 = call i32 @set_inuse_and_pinuse(%struct.TYPE_29__* %267, %struct.TYPE_30__* %268, i64 %269)
  br label %271

271:                                              ; preds = %259, %242
  %272 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %273 = call i8* @chunk2mem(%struct.TYPE_30__* %272)
  store i8* %273, i8** %7, align 8
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %275 = load i8*, i8** %7, align 8
  %276 = load i64, i64* %8, align 8
  %277 = call i32 @check_malloced_chunk(%struct.TYPE_29__* %274, i8* %275, i64 %276)
  br label %324

278:                                              ; preds = %224
  %279 = load i64, i64* %8, align 8
  %280 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = icmp ult i64 %279, %282
  br i1 %283, label %284, label %319

284:                                              ; preds = %278
  %285 = load i64, i64* %8, align 8
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = sub i64 %288, %285
  store i64 %289, i64* %287, align 8
  store i64 %289, i64* %24, align 8
  %290 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %290, i32 0, i32 4
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %291, align 8
  store %struct.TYPE_30__* %292, %struct.TYPE_30__** %25, align 8
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %294 = load i64, i64* %8, align 8
  %295 = call i8* @chunk_plus_offset(%struct.TYPE_30__* %293, i64 %294)
  %296 = bitcast i8* %295 to %struct.TYPE_30__*
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 4
  store %struct.TYPE_30__* %296, %struct.TYPE_30__** %298, align 8
  store %struct.TYPE_30__* %296, %struct.TYPE_30__** %26, align 8
  %299 = load i64, i64* %24, align 8
  %300 = load i64, i64* @PINUSE_BIT, align 8
  %301 = or i64 %299, %300
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 0
  store i64 %301, i64* %303, align 8
  %304 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %305 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %306 = load i64, i64* %8, align 8
  %307 = call i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_29__* %304, %struct.TYPE_30__* %305, i64 %306)
  %308 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %309 = call i8* @chunk2mem(%struct.TYPE_30__* %308)
  store i8* %309, i8** %7, align 8
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %311, i32 0, i32 4
  %313 = load %struct.TYPE_30__*, %struct.TYPE_30__** %312, align 8
  %314 = call i32 @check_top_chunk(%struct.TYPE_29__* %310, %struct.TYPE_30__* %313)
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %316 = load i8*, i8** %7, align 8
  %317 = load i64, i64* %8, align 8
  %318 = call i32 @check_malloced_chunk(%struct.TYPE_29__* %315, i8* %316, i64 %317)
  br label %324

319:                                              ; preds = %278
  br label %320

320:                                              ; preds = %319
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %322 = load i64, i64* %8, align 8
  %323 = call i8* @sys_alloc(%struct.TYPE_29__* %321, i64 %322)
  store i8* %323, i8** %7, align 8
  br label %324

324:                                              ; preds = %320, %284, %271, %217, %190, %173, %66
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %326 = call i32 @POSTACTION(%struct.TYPE_29__* %325)
  %327 = load i8*, i8** %7, align 8
  store i8* %327, i8** %3, align 8
  br label %329

328:                                              ; preds = %37
  store i8* null, i8** %3, align 8
  br label %329

329:                                              ; preds = %328, %324, %33
  %330 = load i8*, i8** %3, align 8
  ret i8* %330
}

declare dso_local i32 @ok_magic(%struct.TYPE_29__*) #1

declare dso_local i32 @USAGE_ERROR_ACTION(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @PREACTION(%struct.TYPE_29__*) #1

declare dso_local i64 @pad_request(i64) #1

declare dso_local i32 @small_index(i64) #1

declare dso_local %struct.TYPE_30__* @smallbin_at(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @chunksize(%struct.TYPE_30__*) #1

declare dso_local i64 @small_index2size(i32) #1

declare dso_local i32 @unlink_first_small_chunk(%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @set_inuse_and_pinuse(%struct.TYPE_29__*, %struct.TYPE_30__*, i64) #1

declare dso_local i8* @chunk2mem(%struct.TYPE_30__*) #1

declare dso_local i32 @check_malloced_chunk(%struct.TYPE_29__*, i8*, i64) #1

declare dso_local i32 @left_bits(i32) #1

declare dso_local i32 @idx2bit(i32) #1

declare dso_local i32 @least_bit(i32) #1

declare dso_local i32 @compute_bit2idx(i32, i32) #1

declare dso_local i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_29__*, %struct.TYPE_30__*, i64) #1

declare dso_local i8* @chunk_plus_offset(%struct.TYPE_30__*, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_free_chunk(%struct.TYPE_30__*, i64) #1

declare dso_local i32 @replace_dv(%struct.TYPE_29__*, %struct.TYPE_30__*, i64) #1

declare dso_local i8* @tmalloc_small(%struct.TYPE_29__*, i64) #1

declare dso_local i8* @tmalloc_large(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @check_top_chunk(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i8* @sys_alloc(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @POSTACTION(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
