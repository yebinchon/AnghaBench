; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_conv.c_unix2dosfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_conv.c_unix2dosfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unix2dos = common dso_local global i8* null, align 8
@SLOT_E5 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unix2dosfn(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [6 x i8], align 1
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %28, %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 11
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 32, i8* %27, align 1
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %20

31:                                               ; preds = %20
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 11
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 46, i8* %44, align 1
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 1
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %420

48:                                               ; preds = %39, %31
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = icmp eq i64 %61, 2
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 46, i8* %65, align 1
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 46, i8* %67, align 1
  %68 = load i32, i32* %9, align 4
  %69 = icmp sle i32 %68, 1
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %420

71:                                               ; preds = %60, %54, %48
  %72 = load i8*, i8** %6, align 8
  store i8* %72, i8** %14, align 8
  %73 = load i64, i64* %8, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %91, %71
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i8*, i8** %14, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 32
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i8*, i8** %14, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 46
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %94

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %14, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %14, align 8
  br label %75

94:                                               ; preds = %89, %75
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %420

98:                                               ; preds = %94
  store i8* null, i8** %16, align 8
  store i8* null, i8** %15, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %100, i8** %14, align 8
  %101 = load i64, i64* %8, align 8
  %102 = sub i64 %101, 1
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %126, %98
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %10, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %14, align 8
  %111 = load i8, i8* %109, align 1
  %112 = sext i8 %111 to i32
  switch i32 %112, label %120 [
    i32 46, label %113
    i32 32, label %119
  ]

113:                                              ; preds = %108
  %114 = load i8*, i8** %16, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load i8*, i8** %14, align 8
  store i8* %117, i8** %16, align 8
  br label %118

118:                                              ; preds = %116, %113
  br label %126

119:                                              ; preds = %108
  br label %126

120:                                              ; preds = %108
  %121 = load i8*, i8** %16, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i8*, i8** %16, align 8
  store i8* %124, i8** %15, align 8
  br label %125

125:                                              ; preds = %123, %120
  store i8* null, i8** %16, align 8
  br label %126

126:                                              ; preds = %125, %119, %118
  br label %104

127:                                              ; preds = %104
  %128 = load i8*, i8** %15, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %212

130:                                              ; preds = %127
  %131 = load i8*, i8** %16, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i8*, i8** %16, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %12, align 4
  br label %149

140:                                              ; preds = %130
  %141 = load i64, i64* %8, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = ptrtoint i8* %142 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sub i64 %141, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %140, %133
  store i32 0, i32* %10, align 4
  store i32 8, i32* %11, align 4
  br label %150

150:                                              ; preds = %199, %149
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 11
  br label %157

157:                                              ; preds = %154, %150
  %158 = phi i1 [ false, %150 ], [ %156, %154 ]
  br i1 %158, label %159, label %204

159:                                              ; preds = %157
  %160 = load i8*, i8** %15, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = load i8*, i8** @unix2dos, align 8
  %167 = load i8*, i8** %15, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i64
  %173 = getelementptr inbounds i8, i8* %166, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  store i8 %174, i8* %178, align 1
  %179 = sext i8 %174 to i32
  %180 = icmp ne i32 %165, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %159
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 3
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 2, i32* %13, align 4
  br label %185

185:                                              ; preds = %184, %181, %159
  %186 = load i8*, i8** %7, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = icmp ne i8 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %185
  store i32 3, i32* %13, align 4
  %193 = load i8*, i8** %7, align 8
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %11, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 32, i8* %197, align 1
  br label %198

198:                                              ; preds = %192, %185
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %150

204:                                              ; preds = %157
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 3, i32* %13, align 4
  br label %209

209:                                              ; preds = %208, %204
  %210 = load i8*, i8** %15, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 -1
  store i8* %211, i8** %15, align 8
  br label %231

212:                                              ; preds = %127
  %213 = load i8*, i8** %14, align 8
  store i8* %213, i8** %15, align 8
  br label %214

214:                                              ; preds = %227, %212
  %215 = load i8*, i8** %15, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 -1
  store i8* %216, i8** %15, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 32
  br i1 %219, label %225, label %220

220:                                              ; preds = %214
  %221 = load i8*, i8** %15, align 8
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 46
  br label %225

225:                                              ; preds = %220, %214
  %226 = phi i1 [ true, %214 ], [ %224, %220 ]
  br i1 %226, label %227, label %228

227:                                              ; preds = %225
  br label %214

228:                                              ; preds = %225
  %229 = load i8*, i8** %15, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %15, align 8
  br label %231

231:                                              ; preds = %228, %209
  %232 = load i8*, i8** %15, align 8
  %233 = load i8*, i8** %6, align 8
  %234 = ptrtoint i8* %232 to i64
  %235 = ptrtoint i8* %233 to i64
  %236 = sub i64 %234, %235
  %237 = icmp sle i64 %236, 8
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %19, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %239

239:                                              ; preds = %301, %231
  %240 = load i8*, i8** %6, align 8
  %241 = load i8*, i8** %15, align 8
  %242 = icmp ult i8* %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load i32, i32* %11, align 4
  %245 = icmp slt i32 %244, 8
  br label %246

246:                                              ; preds = %243, %239
  %247 = phi i1 [ false, %239 ], [ %245, %243 ]
  br i1 %247, label %248, label %308

248:                                              ; preds = %246
  %249 = load i8*, i8** %6, align 8
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %251, 32
  br i1 %252, label %253, label %261

253:                                              ; preds = %248
  %254 = load i32, i32* %19, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = load i8*, i8** %7, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  store i8 32, i8* %260, align 1
  br label %272

261:                                              ; preds = %253, %248
  %262 = load i8*, i8** @unix2dos, align 8
  %263 = load i8*, i8** %6, align 8
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i64
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = load i8*, i8** %7, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  store i8 %267, i8* %271, align 1
  br label %272

272:                                              ; preds = %261, %256
  %273 = load i8*, i8** %6, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = load i8*, i8** %7, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp ne i32 %275, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %272
  %284 = load i32, i32* %13, align 4
  %285 = icmp ne i32 %284, 3
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  store i32 2, i32* %13, align 4
  br label %287

287:                                              ; preds = %286, %283, %272
  %288 = load i8*, i8** %7, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = icmp ne i8 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %287
  store i32 3, i32* %13, align 4
  %295 = load i8*, i8** %7, align 8
  %296 = load i32, i32* %11, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %11, align 4
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8, i8* %295, i64 %298
  store i8 32, i8* %299, align 1
  br label %300

300:                                              ; preds = %294, %287
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %10, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %10, align 4
  %304 = load i32, i32* %11, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %11, align 4
  %306 = load i8*, i8** %6, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %6, align 8
  br label %239

308:                                              ; preds = %246
  %309 = load i8*, i8** %6, align 8
  %310 = load i8*, i8** %15, align 8
  %311 = icmp ult i8* %309, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %308
  store i32 3, i32* %13, align 4
  br label %313

313:                                              ; preds = %312, %308
  %314 = load i32, i32* %11, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %313
  %317 = load i8*, i8** %7, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 0
  store i8 95, i8* %318, align 1
  br label %319

319:                                              ; preds = %316, %313
  %320 = load i8*, i8** %7, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 0
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp eq i32 %323, 229
  br i1 %324, label %325, label %329

325:                                              ; preds = %319
  %326 = load i8, i8* @SLOT_E5, align 1
  %327 = load i8*, i8** %7, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 0
  store i8 %326, i8* %328, align 1
  br label %329

329:                                              ; preds = %325, %319
  %330 = load i32, i32* %13, align 4
  %331 = icmp ne i32 %330, 3
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = load i32, i32* %9, align 4
  %334 = icmp sgt i32 %333, 1
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  store i32 0, i32* %5, align 4
  br label %420

336:                                              ; preds = %332
  %337 = load i32, i32* %13, align 4
  store i32 %337, i32* %5, align 4
  br label %420

338:                                              ; preds = %329
  %339 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %340 = getelementptr inbounds i8, i8* %339, i64 6
  store i8* %340, i8** %18, align 8
  br label %341

341:                                              ; preds = %357, %338
  %342 = load i8*, i8** %18, align 8
  %343 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %344 = icmp ugt i8* %342, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %341
  %346 = load i32, i32* %9, align 4
  %347 = icmp ne i32 %346, 0
  br label %348

348:                                              ; preds = %345, %341
  %349 = phi i1 [ false, %341 ], [ %347, %345 ]
  br i1 %349, label %350, label %360

350:                                              ; preds = %348
  %351 = load i32, i32* %9, align 4
  %352 = srem i32 %351, 10
  %353 = add nsw i32 %352, 48
  %354 = trunc i32 %353 to i8
  %355 = load i8*, i8** %18, align 8
  %356 = getelementptr inbounds i8, i8* %355, i32 -1
  store i8* %356, i8** %18, align 8
  store i8 %354, i8* %356, align 1
  br label %357

357:                                              ; preds = %350
  %358 = load i32, i32* %9, align 4
  %359 = sdiv i32 %358, 10
  store i32 %359, i32* %9, align 4
  br label %341

360:                                              ; preds = %348
  %361 = load i32, i32* %9, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  store i32 0, i32* %5, align 4
  br label %420

364:                                              ; preds = %360
  store i32 8, i32* %10, align 4
  br label %365

365:                                              ; preds = %374, %364
  %366 = load i8*, i8** %7, align 8
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %367, -1
  store i32 %368, i32* %10, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, i8* %366, i64 %369
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp eq i32 %372, 32
  br i1 %373, label %374, label %375

374:                                              ; preds = %365
  br label %365

375:                                              ; preds = %365
  %376 = load i32, i32* %10, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %10, align 4
  %378 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %379 = getelementptr inbounds i8, i8* %378, i64 6
  %380 = load i8*, i8** %18, align 8
  %381 = ptrtoint i8* %379 to i64
  %382 = ptrtoint i8* %380 to i64
  %383 = sub i64 %381, %382
  %384 = add nsw i64 %383, 1
  %385 = load i32, i32* %10, align 4
  %386 = sub nsw i32 8, %385
  %387 = sext i32 %386 to i64
  %388 = icmp sgt i64 %384, %387
  br i1 %388, label %389, label %399

389:                                              ; preds = %375
  %390 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %391 = getelementptr inbounds i8, i8* %390, i64 6
  %392 = load i8*, i8** %18, align 8
  %393 = ptrtoint i8* %391 to i64
  %394 = ptrtoint i8* %392 to i64
  %395 = sub i64 %393, %394
  %396 = add nsw i64 %395, 1
  %397 = sub nsw i64 8, %396
  %398 = trunc i64 %397 to i32
  store i32 %398, i32* %10, align 4
  br label %399

399:                                              ; preds = %389, %375
  %400 = load i8*, i8** %7, align 8
  %401 = load i32, i32* %10, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %10, align 4
  %403 = sext i32 %401 to i64
  %404 = getelementptr inbounds i8, i8* %400, i64 %403
  store i8 126, i8* %404, align 1
  br label %405

405:                                              ; preds = %410, %399
  %406 = load i8*, i8** %18, align 8
  %407 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %408 = getelementptr inbounds i8, i8* %407, i64 6
  %409 = icmp ult i8* %406, %408
  br i1 %409, label %410, label %419

410:                                              ; preds = %405
  %411 = load i8*, i8** %18, align 8
  %412 = getelementptr inbounds i8, i8* %411, i32 1
  store i8* %412, i8** %18, align 8
  %413 = load i8, i8* %411, align 1
  %414 = load i8*, i8** %7, align 8
  %415 = load i32, i32* %10, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %10, align 4
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i8, i8* %414, i64 %417
  store i8 %413, i8* %418, align 1
  br label %405

419:                                              ; preds = %405
  store i32 3, i32* %5, align 4
  br label %420

420:                                              ; preds = %419, %363, %336, %335, %97, %63, %42
  %421 = load i32, i32* %5, align 4
  ret i32 %421
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
