; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_xutftowcsn.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_xutftowcsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@xutftowcsn.hex = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xutftowcsn(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17, %4
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %363

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @INT_MAX, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %25
  br label %33

33:                                               ; preds = %356, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %357

37:                                               ; preds = %33
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 255
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @INT_MAX, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %357

53:                                               ; preds = %49, %37
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %8, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i32, i32* @ERANGE, align 4
  store i32 %63, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %363

64:                                               ; preds = %53
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 128
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 %69, i8* %74, align 1
  br label %356

75:                                               ; preds = %64
  %76 = load i32, i32* %13, align 4
  %77 = icmp sge i32 %76, 194
  br i1 %77, label %78, label %115

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 224
  br i1 %80, label %81, label %115

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %81
  %86 = load i8*, i8** %12, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 192
  %93 = icmp eq i32 %92, 128
  br i1 %93, label %94, label %115

94:                                               ; preds = %85
  %95 = load i32, i32* %13, align 4
  %96 = and i32 %95, 31
  %97 = shl i32 %96, 6
  store i32 %97, i32* %13, align 4
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 63
  %106 = load i32, i32* %13, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8 %109, i8* %114, align 1
  br label %355

115:                                              ; preds = %85, %81, %78, %75
  %116 = load i32, i32* %13, align 4
  %117 = icmp sge i32 %116, 224
  br i1 %117, label %118, label %188

118:                                              ; preds = %115
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 240
  br i1 %120, label %121, label %188

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %188

126:                                              ; preds = %121
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 224
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i8*, i8** %12, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp slt i32 %135, 160
  br i1 %136, label %188, label %137

137:                                              ; preds = %129, %126
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 %143, 192
  %145 = icmp eq i32 %144, 128
  br i1 %145, label %146, label %188

146:                                              ; preds = %137
  %147 = load i8*, i8** %12, align 8
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, 192
  %155 = icmp eq i32 %154, 128
  br i1 %155, label %156, label %188

156:                                              ; preds = %146
  %157 = load i32, i32* %13, align 4
  %158 = and i32 %157, 15
  %159 = shl i32 %158, 12
  store i32 %159, i32* %13, align 4
  %160 = load i8*, i8** %12, align 8
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, 63
  %168 = shl i32 %167, 6
  %169 = load i32, i32* %13, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %13, align 4
  %171 = load i8*, i8** %12, align 8
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = and i32 %177, 63
  %179 = load i32, i32* %13, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %6, align 8
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  store i8 %182, i8* %187, align 1
  br label %354

188:                                              ; preds = %146, %137, %129, %121, %118, %115
  %189 = load i32, i32* %13, align 4
  %190 = icmp sge i32 %189, 240
  br i1 %190, label %191, label %312

191:                                              ; preds = %188
  %192 = load i32, i32* %13, align 4
  %193 = icmp slt i32 %192, 245
  br i1 %193, label %194, label %312

194:                                              ; preds = %191
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 2
  %197 = load i32, i32* %9, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %312

199:                                              ; preds = %194
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = load i64, i64* %8, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %312

205:                                              ; preds = %199
  %206 = load i32, i32* %13, align 4
  %207 = icmp eq i32 %206, 240
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load i8*, i8** %12, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp slt i32 %214, 144
  br i1 %215, label %312, label %216

216:                                              ; preds = %208, %205
  %217 = load i32, i32* %13, align 4
  %218 = icmp eq i32 %217, 244
  br i1 %218, label %219, label %227

219:                                              ; preds = %216
  %220 = load i8*, i8** %12, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp sge i32 %225, 144
  br i1 %226, label %312, label %227

227:                                              ; preds = %219, %216
  %228 = load i8*, i8** %12, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = and i32 %233, 192
  %235 = icmp eq i32 %234, 128
  br i1 %235, label %236, label %312

236:                                              ; preds = %227
  %237 = load i8*, i8** %12, align 8
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %237, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = and i32 %243, 192
  %245 = icmp eq i32 %244, 128
  br i1 %245, label %246, label %312

246:                                              ; preds = %236
  %247 = load i8*, i8** %12, align 8
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = and i32 %253, 192
  %255 = icmp eq i32 %254, 128
  br i1 %255, label %256, label %312

256:                                              ; preds = %246
  %257 = load i32, i32* %13, align 4
  %258 = and i32 %257, 7
  %259 = shl i32 %258, 18
  store i32 %259, i32* %13, align 4
  %260 = load i8*, i8** %12, align 8
  %261 = load i32, i32* %10, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %10, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i8, i8* %260, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = and i32 %266, 63
  %268 = shl i32 %267, 12
  %269 = load i32, i32* %13, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %13, align 4
  %271 = load i8*, i8** %12, align 8
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, i8* %271, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = and i32 %277, 63
  %279 = shl i32 %278, 6
  %280 = load i32, i32* %13, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %13, align 4
  %282 = load i8*, i8** %12, align 8
  %283 = load i32, i32* %10, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %10, align 4
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i8, i8* %282, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = and i32 %288, 63
  %290 = load i32, i32* %13, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %13, align 4
  %292 = load i32, i32* %13, align 4
  %293 = sub nsw i32 %292, 65536
  store i32 %293, i32* %13, align 4
  %294 = load i32, i32* %13, align 4
  %295 = ashr i32 %294, 10
  %296 = or i32 55296, %295
  %297 = trunc i32 %296 to i8
  %298 = load i8*, i8** %6, align 8
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %11, align 4
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds i8, i8* %298, i64 %301
  store i8 %297, i8* %302, align 1
  %303 = load i32, i32* %13, align 4
  %304 = and i32 %303, 1023
  %305 = or i32 56320, %304
  %306 = trunc i32 %305 to i8
  %307 = load i8*, i8** %6, align 8
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %11, align 4
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i8, i8* %307, i64 %310
  store i8 %306, i8* %311, align 1
  br label %353

312:                                              ; preds = %246, %236, %227, %219, %208, %199, %194, %191, %188
  %313 = load i32, i32* %13, align 4
  %314 = icmp sge i32 %313, 160
  br i1 %314, label %315, label %323

315:                                              ; preds = %312
  %316 = load i32, i32* %13, align 4
  %317 = trunc i32 %316 to i8
  %318 = load i8*, i8** %6, align 8
  %319 = load i32, i32* %11, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %11, align 4
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i8, i8* %318, i64 %321
  store i8 %317, i8* %322, align 1
  br label %352

323:                                              ; preds = %312
  %324 = load i8*, i8** @xutftowcsn.hex, align 8
  %325 = load i32, i32* %13, align 4
  %326 = ashr i32 %325, 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %324, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = load i8*, i8** %6, align 8
  %331 = load i32, i32* %11, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %11, align 4
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i8, i8* %330, i64 %333
  store i8 %329, i8* %334, align 1
  %335 = load i32, i32* %11, align 4
  %336 = sext i32 %335 to i64
  %337 = load i64, i64* %8, align 8
  %338 = icmp ult i64 %336, %337
  br i1 %338, label %339, label %351

339:                                              ; preds = %323
  %340 = load i8*, i8** @xutftowcsn.hex, align 8
  %341 = load i32, i32* %13, align 4
  %342 = and i32 %341, 15
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %340, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = load i8*, i8** %6, align 8
  %347 = load i32, i32* %11, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %11, align 4
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i8, i8* %346, i64 %349
  store i8 %345, i8* %350, align 1
  br label %351

351:                                              ; preds = %339, %323
  br label %352

352:                                              ; preds = %351, %315
  br label %353

353:                                              ; preds = %352, %256
  br label %354

354:                                              ; preds = %353, %156
  br label %355

355:                                              ; preds = %354, %94
  br label %356

356:                                              ; preds = %355, %67
  br label %33

357:                                              ; preds = %52, %33
  %358 = load i8*, i8** %6, align 8
  %359 = load i32, i32* %11, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, i8* %358, i64 %360
  store i8 0, i8* %361, align 1
  %362 = load i32, i32* %11, align 4
  store i32 %362, i32* %5, align 4
  br label %363

363:                                              ; preds = %357, %58, %23
  %364 = load i32, i32* %5, align 4
  ret i32 %364
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
