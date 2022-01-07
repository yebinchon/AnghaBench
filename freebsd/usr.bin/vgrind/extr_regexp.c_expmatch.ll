; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vgrind/extr_regexp.c_expmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vgrind/extr_regexp.c_expmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALT = common dso_local global i8 0, align 1
@OPT = common dso_local global i8 0, align 1
@_escaped = common dso_local global i32 0, align 4
@s_start = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expmatch(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %434

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %431, %15
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %432

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 131
  switch i32 %25, label %431 [
    i32 128, label %26
    i32 129, label %72
    i32 130, label %120
  ]

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @SSTR(i8* %28)
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @SCNT(i8* %30)
  %32 = call i32 @STRNCMP(i8* %27, i32 %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @SCNT(i8* %39)
  %41 = load i8*, i8** %5, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i8* @SNEXT(i8* %44)
  store i8* %45, i8** %8, align 8
  br label %71

46:                                               ; preds = %26
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @ALT, align 1
  %51 = sext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i8*, i8** %8, align 8
  %56 = call i8* @SNEXT(i8* %55)
  store i8* %56, i8** %8, align 8
  br label %70

57:                                               ; preds = %46
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @OPT, align 1
  %62 = sext i8 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i8*, i8** %8, align 8
  %67 = call i8* @SNEXT(i8* %66)
  store i8* %67, i8** %8, align 8
  store i32 1, i32* %11, align 4
  br label %69

68:                                               ; preds = %57
  store i8* null, i8** %4, align 8
  br label %434

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %38
  br label %431

72:                                               ; preds = %21
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @OSYM(i8* %73)
  switch i32 %74, label %119 [
    i32 124, label %75
    i32 40, label %85
  ]

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = call i8* @OPTR(i8* %79)
  store i8* %80, i8** %8, align 8
  br label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %8, align 8
  %83 = call i8* @ONEXT(i8* %82)
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %81, %78
  br label %119

85:                                               ; preds = %72
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i8* @ONEXT(i8* %87)
  %89 = load i8*, i8** %7, align 8
  %90 = call i8* @expmatch(i8* %86, i8* %88, i8* %89)
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  store i32 1, i32* %11, align 4
  %94 = load i8*, i8** %9, align 8
  store i8* %94, i8** %5, align 8
  br label %116

95:                                               ; preds = %85
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* @ALT, align 1
  %100 = sext i8 %99 to i32
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %115

104:                                              ; preds = %95
  %105 = load i8*, i8** %8, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* @OPT, align 1
  %109 = sext i8 %108 to i32
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  store i32 1, i32* %11, align 4
  br label %114

113:                                              ; preds = %104
  store i8* null, i8** %4, align 8
  br label %434

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %93
  %117 = load i8*, i8** %8, align 8
  %118 = call i8* @OPTR(i8* %117)
  store i8* %118, i8** %8, align 8
  br label %119

119:                                              ; preds = %72, %116, %84
  br label %431

120:                                              ; preds = %21
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @MSYM(i8* %121)
  switch i32 %122, label %430 [
    i32 112, label %123
    i32 97, label %226
    i32 101, label %279
    i32 100, label %286
    i32 36, label %354
    i32 94, label %395
    i32 41, label %428
  ]

123:                                              ; preds = %120
  %124 = load i8*, i8** %5, align 8
  store i8* %124, i8** %10, align 8
  br label %125

125:                                              ; preds = %220, %123
  %126 = load i8*, i8** %10, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = call i8* @MNEXT(i8* %127)
  %129 = load i8*, i8** %7, align 8
  %130 = call i8* @expmatch(i8* %126, i8* %128, i8* %129)
  store i8* %130, i8** %9, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %155

133:                                              ; preds = %125
  %134 = load i8*, i8** %10, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = icmp ne i8* %134, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %133
  %138 = load i8*, i8** %7, align 8
  %139 = load i8*, i8** %5, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @strncpy(i8* %138, i8* %139, i32 %145)
  %147 = load i8*, i8** %7, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = getelementptr inbounds i8, i8* %147, i64 %152
  store i8 0, i8* %153, align 1
  %154 = load i8*, i8** %9, align 8
  store i8* %154, i8** %4, align 8
  br label %434

155:                                              ; preds = %133, %125
  %156 = load i8*, i8** %9, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load i8*, i8** %8, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = load i8, i8* @OPT, align 1
  %163 = sext i8 %162 to i32
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i8*, i8** %9, align 8
  store i8* %167, i8** %4, align 8
  br label %434

168:                                              ; preds = %158, %155
  %169 = load i8*, i8** %9, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i8* null, i8** %4, align 8
  br label %434

172:                                              ; preds = %168
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  %175 = load i8*, i8** %10, align 8
  %176 = load i8, i8* %175, align 1
  %177 = call i32 @isalnum(i8 signext %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %208, label %179

179:                                              ; preds = %174
  %180 = load i8*, i8** %10, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 95
  br i1 %183, label %208, label %184

184:                                              ; preds = %179
  %185 = load i8*, i8** %10, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 126
  br i1 %188, label %208, label %189

189:                                              ; preds = %184
  %190 = load i8*, i8** %10, align 8
  %191 = call i32 @strlen(i8* %190)
  %192 = icmp sgt i32 %191, 1
  br i1 %192, label %193, label %207

193:                                              ; preds = %189
  %194 = load i8*, i8** %10, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 58
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load i8*, i8** %10, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 58
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load i8*, i8** %10, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %10, align 8
  br i1 true, label %208, label %207

207:                                              ; preds = %204, %198, %193, %189
  store i8* null, i8** %4, align 8
  br label %434

208:                                              ; preds = %204, %184, %179, %174
  %209 = load i8*, i8** %10, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 92
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load i32, i32* @_escaped, align 4
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 0, i32 1
  store i32 %217, i32* @_escaped, align 4
  br label %219

218:                                              ; preds = %208
  store i32 0, i32* @_escaped, align 4
  br label %219

219:                                              ; preds = %218, %213
  br label %220

220:                                              ; preds = %219
  %221 = load i8*, i8** %10, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %10, align 8
  %223 = load i8, i8* %221, align 1
  %224 = icmp ne i8 %223, 0
  br i1 %224, label %125, label %225

225:                                              ; preds = %220
  store i8* null, i8** %4, align 8
  br label %434

226:                                              ; preds = %120
  %227 = load i8*, i8** %5, align 8
  store i8* %227, i8** %10, align 8
  br label %228

228:                                              ; preds = %273, %226
  %229 = load i8*, i8** %10, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = call i8* @MNEXT(i8* %230)
  %232 = load i8*, i8** %7, align 8
  %233 = call i8* @expmatch(i8* %229, i8* %231, i8* %232)
  store i8* %233, i8** %9, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %242

236:                                              ; preds = %228
  %237 = load i8*, i8** %10, align 8
  %238 = load i8*, i8** %5, align 8
  %239 = icmp ne i8* %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i8*, i8** %9, align 8
  store i8* %241, i8** %4, align 8
  br label %434

242:                                              ; preds = %236, %228
  %243 = load i8*, i8** %9, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %255

245:                                              ; preds = %242
  %246 = load i8*, i8** %8, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = load i8, i8* @OPT, align 1
  %250 = sext i8 %249 to i32
  %251 = and i32 %248, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %245
  %254 = load i8*, i8** %9, align 8
  store i8* %254, i8** %4, align 8
  br label %434

255:                                              ; preds = %245, %242
  %256 = load i8*, i8** %9, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i8* null, i8** %4, align 8
  br label %434

259:                                              ; preds = %255
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260
  %262 = load i8*, i8** %10, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 92
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load i32, i32* @_escaped, align 4
  %268 = icmp ne i32 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i32 0, i32 1
  store i32 %270, i32* @_escaped, align 4
  br label %272

271:                                              ; preds = %261
  store i32 0, i32* @_escaped, align 4
  br label %272

272:                                              ; preds = %271, %266
  br label %273

273:                                              ; preds = %272
  %274 = load i8*, i8** %10, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %10, align 8
  %276 = load i8, i8* %274, align 1
  %277 = icmp ne i8 %276, 0
  br i1 %277, label %228, label %278

278:                                              ; preds = %273
  store i8* null, i8** %4, align 8
  br label %434

279:                                              ; preds = %120
  %280 = load i32, i32* @_escaped, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  store i8* null, i8** %4, align 8
  br label %434

283:                                              ; preds = %279
  %284 = load i8*, i8** %8, align 8
  %285 = call i8* @MNEXT(i8* %284)
  store i8* %285, i8** %8, align 8
  br label %430

286:                                              ; preds = %120
  %287 = load i8*, i8** %5, align 8
  store i8* %287, i8** %9, align 8
  br label %288

288:                                              ; preds = %300, %286
  %289 = load i8*, i8** %5, align 8
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 32
  br i1 %292, label %298, label %293

293:                                              ; preds = %288
  %294 = load i8*, i8** %5, align 8
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 9
  br label %298

298:                                              ; preds = %293, %288
  %299 = phi i1 [ true, %288 ], [ %297, %293 ]
  br i1 %299, label %300, label %303

300:                                              ; preds = %298
  %301 = load i8*, i8** %5, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %5, align 8
  br label %288

303:                                              ; preds = %298
  %304 = load i8*, i8** %5, align 8
  %305 = load i8*, i8** %9, align 8
  %306 = icmp ne i8* %304, %305
  br i1 %306, label %311, label %307

307:                                              ; preds = %303
  %308 = load i8*, i8** %5, align 8
  %309 = load i8*, i8** @s_start, align 8
  %310 = icmp eq i8* %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %307, %303
  store i32 1, i32* %11, align 4
  %312 = load i8*, i8** %8, align 8
  %313 = call i8* @MNEXT(i8* %312)
  store i8* %313, i8** %8, align 8
  br label %353

314:                                              ; preds = %307
  %315 = load i8*, i8** %5, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 10
  br i1 %318, label %324, label %319

319:                                              ; preds = %314
  %320 = load i8*, i8** %5, align 8
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %319, %314
  store i32 1, i32* %11, align 4
  %325 = load i8*, i8** %8, align 8
  %326 = call i8* @MNEXT(i8* %325)
  store i8* %326, i8** %8, align 8
  br label %352

327:                                              ; preds = %319
  %328 = load i8*, i8** %8, align 8
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = load i8, i8* @ALT, align 1
  %332 = sext i8 %331 to i32
  %333 = and i32 %330, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %327
  store i32 0, i32* %11, align 4
  %336 = load i8*, i8** %8, align 8
  %337 = call i8* @MNEXT(i8* %336)
  store i8* %337, i8** %8, align 8
  br label %351

338:                                              ; preds = %327
  %339 = load i8*, i8** %8, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = load i8, i8* @OPT, align 1
  %343 = sext i8 %342 to i32
  %344 = and i32 %341, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %338
  store i32 1, i32* %11, align 4
  %347 = load i8*, i8** %8, align 8
  %348 = call i8* @MNEXT(i8* %347)
  store i8* %348, i8** %8, align 8
  br label %350

349:                                              ; preds = %338
  store i8* null, i8** %4, align 8
  br label %434

350:                                              ; preds = %346
  br label %351

351:                                              ; preds = %350, %335
  br label %352

352:                                              ; preds = %351, %324
  br label %353

353:                                              ; preds = %352, %311
  br label %430

354:                                              ; preds = %120
  %355 = load i8*, i8** %5, align 8
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %364, label %359

359:                                              ; preds = %354
  %360 = load i8*, i8** %5, align 8
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp eq i32 %362, 10
  br i1 %363, label %364, label %369

364:                                              ; preds = %359, %354
  %365 = load i8*, i8** %5, align 8
  %366 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %366, i8** %5, align 8
  store i32 1, i32* %11, align 4
  %367 = load i8*, i8** %8, align 8
  %368 = call i8* @MNEXT(i8* %367)
  store i8* %368, i8** %8, align 8
  br label %394

369:                                              ; preds = %359
  %370 = load i8*, i8** %8, align 8
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = load i8, i8* @ALT, align 1
  %374 = sext i8 %373 to i32
  %375 = and i32 %372, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %369
  store i32 0, i32* %11, align 4
  %378 = load i8*, i8** %8, align 8
  %379 = call i8* @MNEXT(i8* %378)
  store i8* %379, i8** %8, align 8
  br label %393

380:                                              ; preds = %369
  %381 = load i8*, i8** %8, align 8
  %382 = load i8, i8* %381, align 1
  %383 = sext i8 %382 to i32
  %384 = load i8, i8* @OPT, align 1
  %385 = sext i8 %384 to i32
  %386 = and i32 %383, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %380
  store i32 1, i32* %11, align 4
  %389 = load i8*, i8** %8, align 8
  %390 = call i8* @MNEXT(i8* %389)
  store i8* %390, i8** %8, align 8
  br label %392

391:                                              ; preds = %380
  store i8* null, i8** %4, align 8
  br label %434

392:                                              ; preds = %388
  br label %393

393:                                              ; preds = %392, %377
  br label %394

394:                                              ; preds = %393, %364
  br label %430

395:                                              ; preds = %120
  %396 = load i8*, i8** %5, align 8
  %397 = load i8*, i8** @s_start, align 8
  %398 = icmp eq i8* %396, %397
  br i1 %398, label %399, label %402

399:                                              ; preds = %395
  store i32 1, i32* %11, align 4
  %400 = load i8*, i8** %8, align 8
  %401 = call i8* @MNEXT(i8* %400)
  store i8* %401, i8** %8, align 8
  br label %427

402:                                              ; preds = %395
  %403 = load i8*, i8** %8, align 8
  %404 = load i8, i8* %403, align 1
  %405 = sext i8 %404 to i32
  %406 = load i8, i8* @ALT, align 1
  %407 = sext i8 %406 to i32
  %408 = and i32 %405, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %402
  store i32 0, i32* %11, align 4
  %411 = load i8*, i8** %8, align 8
  %412 = call i8* @MNEXT(i8* %411)
  store i8* %412, i8** %8, align 8
  br label %426

413:                                              ; preds = %402
  %414 = load i8*, i8** %8, align 8
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  %417 = load i8, i8* @OPT, align 1
  %418 = sext i8 %417 to i32
  %419 = and i32 %416, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %413
  store i32 1, i32* %11, align 4
  %422 = load i8*, i8** %8, align 8
  %423 = call i8* @MNEXT(i8* %422)
  store i8* %423, i8** %8, align 8
  br label %425

424:                                              ; preds = %413
  store i8* null, i8** %4, align 8
  br label %434

425:                                              ; preds = %421
  br label %426

426:                                              ; preds = %425, %410
  br label %427

427:                                              ; preds = %426, %399
  br label %430

428:                                              ; preds = %120
  %429 = load i8*, i8** %5, align 8
  store i8* %429, i8** %4, align 8
  br label %434

430:                                              ; preds = %120, %427, %394, %353, %283
  br label %431

431:                                              ; preds = %21, %430, %119, %71
  br label %17

432:                                              ; preds = %17
  %433 = load i8*, i8** %5, align 8
  store i8* %433, i8** %4, align 8
  br label %434

434:                                              ; preds = %432, %428, %424, %391, %349, %282, %278, %258, %253, %240, %225, %207, %171, %166, %137, %113, %68, %14
  %435 = load i8*, i8** %4, align 8
  ret i8* %435
}

declare dso_local i32 @STRNCMP(i8*, i32, i32) #1

declare dso_local i32 @SSTR(i8*) #1

declare dso_local i32 @SCNT(i8*) #1

declare dso_local i8* @SNEXT(i8*) #1

declare dso_local i32 @OSYM(i8*) #1

declare dso_local i8* @OPTR(i8*) #1

declare dso_local i8* @ONEXT(i8*) #1

declare dso_local i32 @MSYM(i8*) #1

declare dso_local i8* @MNEXT(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
