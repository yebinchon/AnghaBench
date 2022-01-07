; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ixnew = common dso_local global i64* null, align 8
@ixold = common dso_local global i64* null, align 8
@len = common dso_local global i32* null, align 8
@J = common dso_local global i32* null, align 8
@D_FOLDBLANKS = common dso_local global i32 0, align 4
@D_IGNOREBLANKS = common dso_local global i32 0, align 4
@D_IGNORECASE = common dso_local global i32 0, align 4
@D_STRIPCR = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @rewind(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @rewind(i32* %16)
  store i32 1, i32* %8, align 4
  %18 = load i64*, i64** @ixnew, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** @ixold, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 0, i64* %21, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %348, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** @len, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %351

28:                                               ; preds = %22
  %29 = load i32*, i32** @J, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @skipline(i32* %36)
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr i8, i8* %37, i64 %38
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %12, align 8
  %41 = load i64*, i64** @ixold, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 %40, i64* %44, align 8
  br label %348

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %54, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** @J, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @skipline(i32* %55)
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr i8, i8* %56, i64 %57
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %13, align 8
  %60 = load i64*, i64** @ixnew, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %59, i64* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %46

66:                                               ; preds = %46
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @D_FOLDBLANKS, align 4
  %69 = load i32, i32* @D_IGNOREBLANKS, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @D_IGNORECASE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @D_STRIPCR, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %67, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %283

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %281, %77
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @getc(i32* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @getc(i32* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @D_FOLDBLANKS, align 4
  %85 = load i32, i32* @D_IGNOREBLANKS, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %78
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @EOF, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 10
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i64, i64* %13, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %13, align 8
  br label %282

99:                                               ; preds = %93, %89
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 10
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @EOF, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i64, i64* %12, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %12, align 8
  br label %282

109:                                              ; preds = %102, %99
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110, %78
  %112 = load i64, i64* %12, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %13, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %13, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @D_STRIPCR, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %157

120:                                              ; preds = %111
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 13
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 13
  br i1 %125, label %126, label %157

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %127, 13
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @getc(i32* %130)
  store i32 %131, i32* %10, align 4
  %132 = icmp eq i32 %131, 10
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i64, i64* %12, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %12, align 8
  br label %140

136:                                              ; preds = %129
  %137 = load i32, i32* %10, align 4
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @ungetc(i32 %137, i32* %138)
  br label %140

140:                                              ; preds = %136, %133
  br label %141

141:                                              ; preds = %140, %126
  %142 = load i32, i32* %11, align 4
  %143 = icmp eq i32 %142, 13
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @getc(i32* %145)
  store i32 %146, i32* %11, align 4
  %147 = icmp eq i32 %146, 10
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i64, i64* %13, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %13, align 8
  br label %155

151:                                              ; preds = %144
  %152 = load i32, i32* %11, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @ungetc(i32 %152, i32* %153)
  br label %155

155:                                              ; preds = %151, %148
  br label %156

156:                                              ; preds = %155, %141
  br label %282

157:                                              ; preds = %123, %111
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @D_FOLDBLANKS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %197

162:                                              ; preds = %157
  %163 = load i32, i32* %10, align 4
  %164 = call i64 @isspace(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %197

166:                                              ; preds = %162
  %167 = load i32, i32* %11, align 4
  %168 = call i64 @isspace(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %197

170:                                              ; preds = %166
  br label %171

171:                                              ; preds = %178, %170
  %172 = load i32, i32* %10, align 4
  %173 = icmp eq i32 %172, 10
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %183

175:                                              ; preds = %171
  %176 = load i64, i64* %12, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %12, align 8
  br label %178

178:                                              ; preds = %175
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @getc(i32* %179)
  store i32 %180, i32* %10, align 4
  %181 = call i64 @isspace(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %171, label %183

183:                                              ; preds = %178, %174
  br label %184

184:                                              ; preds = %191, %183
  %185 = load i32, i32* %11, align 4
  %186 = icmp eq i32 %185, 10
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %196

188:                                              ; preds = %184
  %189 = load i64, i64* %13, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %13, align 8
  br label %191

191:                                              ; preds = %188
  %192 = load i32*, i32** %5, align 8
  %193 = call i32 @getc(i32* %192)
  store i32 %193, i32* %11, align 4
  %194 = call i64 @isspace(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %184, label %196

196:                                              ; preds = %191, %187
  br label %234

197:                                              ; preds = %166, %162, %157
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @D_IGNOREBLANKS, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %233

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %212, %202
  %204 = load i32, i32* %10, align 4
  %205 = call i64 @isspace(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 10
  br label %210

210:                                              ; preds = %207, %203
  %211 = phi i1 [ false, %203 ], [ %209, %207 ]
  br i1 %211, label %212, label %217

212:                                              ; preds = %210
  %213 = load i32*, i32** %4, align 8
  %214 = call i32 @getc(i32* %213)
  store i32 %214, i32* %10, align 4
  %215 = load i64, i64* %12, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %12, align 8
  br label %203

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %227, %217
  %219 = load i32, i32* %11, align 4
  %220 = call i64 @isspace(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 10
  br label %225

225:                                              ; preds = %222, %218
  %226 = phi i1 [ false, %218 ], [ %224, %222 ]
  br i1 %226, label %227, label %232

227:                                              ; preds = %225
  %228 = load i32*, i32** %5, align 8
  %229 = call i32 @getc(i32* %228)
  store i32 %229, i32* %11, align 4
  %230 = load i64, i64* %13, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %13, align 8
  br label %218

232:                                              ; preds = %225
  br label %233

233:                                              ; preds = %232, %197
  br label %234

234:                                              ; preds = %233, %196
  %235 = load i32, i32* %10, align 4
  %236 = call i64 @chrtran(i32 %235)
  %237 = load i32, i32* %11, align 4
  %238 = call i64 @chrtran(i32 %237)
  %239 = icmp ne i64 %236, %238
  br i1 %239, label %240, label %273

240:                                              ; preds = %234
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %9, align 4
  %243 = load i32*, i32** @J, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 0, i32* %246, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 10
  br i1 %248, label %249, label %259

249:                                              ; preds = %240
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* @EOF, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %249
  %254 = load i32*, i32** %4, align 8
  %255 = call i8* @skipline(i32* %254)
  %256 = load i64, i64* %12, align 8
  %257 = getelementptr i8, i8* %255, i64 %256
  %258 = ptrtoint i8* %257 to i64
  store i64 %258, i64* %12, align 8
  br label %259

259:                                              ; preds = %253, %249, %240
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 10
  br i1 %261, label %262, label %272

262:                                              ; preds = %259
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* @EOF, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = load i32*, i32** %5, align 8
  %268 = call i8* @skipline(i32* %267)
  %269 = load i64, i64* %13, align 8
  %270 = getelementptr i8, i8* %268, i64 %269
  %271 = ptrtoint i8* %270 to i64
  store i64 %271, i64* %13, align 8
  br label %272

272:                                              ; preds = %266, %262, %259
  br label %282

273:                                              ; preds = %234
  %274 = load i32, i32* %10, align 4
  %275 = icmp eq i32 %274, 10
  br i1 %275, label %280, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* @EOF, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %276, %273
  br label %282

281:                                              ; preds = %276
  br label %78

282:                                              ; preds = %280, %272, %156, %106, %96
  br label %335

283:                                              ; preds = %66
  br label %284

284:                                              ; preds = %333, %283
  %285 = load i64, i64* %12, align 8
  %286 = add nsw i64 %285, 1
  store i64 %286, i64* %12, align 8
  %287 = load i64, i64* %13, align 8
  %288 = add nsw i64 %287, 1
  store i64 %288, i64* %13, align 8
  %289 = load i32*, i32** %4, align 8
  %290 = call i32 @getc(i32* %289)
  store i32 %290, i32* %10, align 4
  %291 = load i32*, i32** %5, align 8
  %292 = call i32 @getc(i32* %291)
  store i32 %292, i32* %11, align 4
  %293 = icmp ne i32 %290, %292
  br i1 %293, label %294, label %325

294:                                              ; preds = %284
  %295 = load i32*, i32** @J, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 0, i32* %298, align 4
  %299 = load i32, i32* %10, align 4
  %300 = icmp ne i32 %299, 10
  br i1 %300, label %301, label %311

301:                                              ; preds = %294
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* @EOF, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %311

305:                                              ; preds = %301
  %306 = load i32*, i32** %4, align 8
  %307 = call i8* @skipline(i32* %306)
  %308 = load i64, i64* %12, align 8
  %309 = getelementptr i8, i8* %307, i64 %308
  %310 = ptrtoint i8* %309 to i64
  store i64 %310, i64* %12, align 8
  br label %311

311:                                              ; preds = %305, %301, %294
  %312 = load i32, i32* %11, align 4
  %313 = icmp ne i32 %312, 10
  br i1 %313, label %314, label %324

314:                                              ; preds = %311
  %315 = load i32, i32* %10, align 4
  %316 = load i32, i32* @EOF, align 4
  %317 = icmp ne i32 %315, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %314
  %319 = load i32*, i32** %5, align 8
  %320 = call i8* @skipline(i32* %319)
  %321 = load i64, i64* %13, align 8
  %322 = getelementptr i8, i8* %320, i64 %321
  %323 = ptrtoint i8* %322 to i64
  store i64 %323, i64* %13, align 8
  br label %324

324:                                              ; preds = %318, %314, %311
  br label %334

325:                                              ; preds = %284
  %326 = load i32, i32* %10, align 4
  %327 = icmp eq i32 %326, 10
  br i1 %327, label %332, label %328

328:                                              ; preds = %325
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* @EOF, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %328, %325
  br label %334

333:                                              ; preds = %328
  br label %284

334:                                              ; preds = %332, %324
  br label %335

335:                                              ; preds = %334, %282
  %336 = load i64, i64* %12, align 8
  %337 = load i64*, i64** @ixold, align 8
  %338 = load i32, i32* %7, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  store i64 %336, i64* %340, align 8
  %341 = load i64, i64* %13, align 8
  %342 = load i64*, i64** @ixnew, align 8
  %343 = load i32, i32* %8, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %342, i64 %344
  store i64 %341, i64* %345, align 8
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %8, align 4
  br label %348

348:                                              ; preds = %335, %35
  %349 = load i32, i32* %7, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %7, align 4
  br label %22

351:                                              ; preds = %22
  br label %352

352:                                              ; preds = %368, %351
  %353 = load i32, i32* %8, align 4
  %354 = load i32*, i32** @len, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 1
  %356 = load i32, i32* %355, align 4
  %357 = icmp sle i32 %353, %356
  br i1 %357, label %358, label %371

358:                                              ; preds = %352
  %359 = load i32*, i32** %5, align 8
  %360 = call i8* @skipline(i32* %359)
  %361 = load i64, i64* %13, align 8
  %362 = getelementptr i8, i8* %360, i64 %361
  %363 = ptrtoint i8* %362 to i64
  store i64 %363, i64* %13, align 8
  %364 = load i64*, i64** @ixnew, align 8
  %365 = load i32, i32* %8, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  store i64 %363, i64* %367, align 8
  br label %368

368:                                              ; preds = %358
  %369 = load i32, i32* %8, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %8, align 4
  br label %352

371:                                              ; preds = %352
  ret void
}

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @skipline(i32*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @chrtran(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
