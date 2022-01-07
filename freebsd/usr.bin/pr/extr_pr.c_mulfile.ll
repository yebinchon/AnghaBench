; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_mulfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_mulfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clcnt = common dso_local global i32 0, align 4
@HDBUF = common dso_local global i64 0, align 8
@offst = common dso_local global i32 0, align 4
@pgnm = common dso_local global i32 0, align 4
@lines = common dso_local global i32 0, align 4
@nmwd = common dso_local global i32 0, align 4
@pgwd = common dso_local global i32 0, align 4
@colwd = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pr: page width too small for %d columns\0A\00", align 1
@nmchar = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@sflag = common dso_local global i64 0, align 8
@schar = common dso_local global i32 0, align 4
@nohead = common dso_local global i32 0, align 4
@eoptind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mulfile(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32** null, i32*** %11, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @clcnt, align 4
  %27 = zext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i8* @malloc(i32 %29)
  %31 = bitcast i8* %30 to i32**
  store i32** %31, i32*** %11, align 8
  %32 = icmp eq i32** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = call i32 (...) @mfail()
  br label %338

35:                                               ; preds = %2
  %36 = load i64, i64* @HDBUF, align 8
  %37 = load i32, i32* @offst, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = trunc i64 %39 to i32
  %41 = zext i32 %40 to i64
  %42 = mul i64 %41, 1
  %43 = trunc i64 %42 to i32
  %44 = call i8* @malloc(i32 %43)
  store i8* %44, i8** %18, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 (...) @mfail()
  br label %338

48:                                               ; preds = %35
  %49 = load i8*, i8** %18, align 8
  %50 = load i32, i32* @offst, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %19, align 8
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %86, %48
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @clcnt, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = load i8**, i8*** %4, align 8
  %60 = load i8*, i8** %19, align 8
  %61 = call i32* @nxtfile(i32 %58, i8** %59, i8** %20, i8* %60, i32 1)
  %62 = load i32**, i32*** %11, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* %61, i32** %65, align 8
  %66 = icmp eq i32* %61, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %89

68:                                               ; preds = %57
  %69 = load i32, i32* @pgnm, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i32**, i32*** %11, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @pgnm, align 4
  %78 = load i32, i32* @lines, align 4
  %79 = call i64 @inskip(i32* %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load i32**, i32*** %11, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %81, %71, %68
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %53

89:                                               ; preds = %67, %53
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %338

93:                                               ; preds = %89
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* @clcnt, align 4
  %95 = load i32, i32* @nmwd, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32, i32* @pgwd, align 4
  %99 = load i32, i32* @clcnt, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* @nmwd, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* @clcnt, align 4
  %104 = sdiv i32 %102, %103
  store i32 %104, i32* @colwd, align 4
  %105 = load i32, i32* @colwd, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* @clcnt, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* @nmwd, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sub nsw i32 %110, 2
  store i32 %111, i32* @pgwd, align 4
  br label %124

112:                                              ; preds = %93
  %113 = load i32, i32* @pgwd, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* @clcnt, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i32, i32* @clcnt, align 4
  %118 = sdiv i32 %116, %117
  store i32 %118, i32* @colwd, align 4
  %119 = load i32, i32* @colwd, align 4
  %120 = add nsw i32 %119, 1
  %121 = load i32, i32* @clcnt, align 4
  %122 = mul nsw i32 %120, %121
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* @pgwd, align 4
  br label %124

124:                                              ; preds = %112, %97
  %125 = load i32, i32* @colwd, align 4
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* @err, align 4
  %129 = load i32, i32* @clcnt, align 4
  %130 = call i32 @fprintf(i32 %128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %129)
  br label %338

131:                                              ; preds = %124
  %132 = load i32, i32* @clcnt, align 4
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* @colwd, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* @pgwd, align 4
  %136 = load i32, i32* @offst, align 4
  %137 = add nsw i32 %135, %136
  %138 = add nsw i32 %137, 1
  %139 = zext i32 %138 to i64
  %140 = mul i64 %139, 1
  %141 = trunc i64 %140 to i32
  %142 = call i8* @malloc(i32 %141)
  store i8* %142, i8** %17, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = call i32 (...) @mfail()
  br label %338

146:                                              ; preds = %131
  %147 = load i32, i32* @offst, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i8*, i8** %17, align 8
  %151 = load i32, i32* @offst, align 4
  %152 = call i32 @memset(i8* %150, i32 32, i32 %151)
  %153 = load i8*, i8** %18, align 8
  %154 = load i32, i32* @offst, align 4
  %155 = call i32 @memset(i8* %153, i32 32, i32 %154)
  br label %156

156:                                              ; preds = %149, %146
  %157 = load i32, i32* @pgnm, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32, i32* @pgnm, align 4
  store i32 %160, i32* %15, align 4
  br label %162

161:                                              ; preds = %156
  store i32 1, i32* %15, align 4
  br label %162

162:                                              ; preds = %161, %159
  store i32 0, i32* %13, align 4
  br label %163

163:                                              ; preds = %329, %162
  %164 = load i32, i32* %12, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %332

166:                                              ; preds = %163
  %167 = load i32, i32* %15, align 4
  %168 = call i32 @ttypause(i32 %167)
  store i32 0, i32* %10, align 4
  br label %169

169:                                              ; preds = %316, %166
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @lines, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %319

173:                                              ; preds = %169
  %174 = load i8*, i8** %17, align 8
  %175 = load i32, i32* @offst, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8* %177, i8** %5, align 8
  %178 = load i8*, i8** %5, align 8
  store i8* %178, i8** %9, align 8
  %179 = load i32, i32* @nmwd, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %173
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* @nmwd, align 4
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  %186 = call i32 @addnum(i8* %182, i32 %183, i32 %185)
  %187 = load i32, i32* @nmwd, align 4
  %188 = load i8*, i8** %5, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8* %190, i8** %5, align 8
  %191 = load i32, i32* @nmchar, align 4
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %5, align 8
  store i8 %192, i8* %193, align 1
  br label %195

195:                                              ; preds = %181, %173
  store i32 0, i32* %6, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %6, align 4
  br label %196

196:                                              ; preds = %277, %195
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @clcnt, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %280

200:                                              ; preds = %196
  %201 = load i32**, i32*** %11, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  store i32 0, i32* %8, align 4
  br label %249

208:                                              ; preds = %200
  %209 = load i32**, i32*** %11, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %209, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = load i8*, i8** %5, align 8
  %215 = load i32, i32* @colwd, align 4
  %216 = call i32 @inln(i32* %213, i8* %214, i32 %215, i32* %22, i32 1, i32* %24)
  store i32 %216, i32* %8, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %240

218:                                              ; preds = %208
  %219 = load i32**, i32*** %11, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = load i32*, i32** @stdin, align 8
  %225 = icmp ne i32* %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %218
  %227 = load i32**, i32*** %11, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @fclose(i32* %231)
  br label %233

233:                                              ; preds = %226, %218
  %234 = load i32**, i32*** %11, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  store i32* null, i32** %237, align 8
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, -1
  store i32 %239, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %248

240:                                              ; preds = %208
  %241 = load i32, i32* %8, align 4
  %242 = load i8*, i8** %5, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8* %244, i8** %5, align 8
  %245 = load i8*, i8** %5, align 8
  store i8* %245, i8** %9, align 8
  %246 = load i32, i32* %16, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %16, align 4
  br label %248

248:                                              ; preds = %240, %233
  br label %249

249:                                              ; preds = %248, %207
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %12, align 4
  %252 = icmp sge i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  br label %280

254:                                              ; preds = %249
  %255 = load i64, i64* @sflag, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = load i32, i32* @schar, align 4
  %259 = trunc i32 %258 to i8
  %260 = load i8*, i8** %5, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %5, align 8
  store i8 %259, i8* %260, align 1
  br label %276

262:                                              ; preds = %254
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* %8, align 4
  %265 = sub nsw i32 %263, %264
  store i32 %265, i32* %7, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %262
  %268 = load i8*, i8** %5, align 8
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @memset(i8* %268, i32 32, i32 %269)
  %271 = load i32, i32* %7, align 4
  %272 = load i8*, i8** %5, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i8, i8* %272, i64 %273
  store i8* %274, i8** %5, align 8
  br label %275

275:                                              ; preds = %267, %262
  br label %276

276:                                              ; preds = %275, %257
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %6, align 4
  br label %196

280:                                              ; preds = %253, %196
  %281 = load i8*, i8** %9, align 8
  %282 = load i8*, i8** %17, align 8
  %283 = ptrtoint i8* %281 to i64
  %284 = ptrtoint i8* %282 to i64
  %285 = sub i64 %283, %284
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* @offst, align 4
  %288 = icmp sle i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %280
  br label %319

290:                                              ; preds = %280
  %291 = load i32, i32* %10, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %303, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* @nohead, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %303, label %296

296:                                              ; preds = %293
  %297 = load i8*, i8** %18, align 8
  %298 = load i8*, i8** %20, align 8
  %299 = load i32, i32* %15, align 4
  %300 = call i64 @prhead(i8* %297, i8* %298, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  br label %338

303:                                              ; preds = %296, %293, %290
  %304 = load i8*, i8** %17, align 8
  %305 = load i32, i32* %6, align 4
  %306 = call i64 @otln(i8* %304, i32 %305, i32* %21, i32* %23, i32 0)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %303
  br label %338

309:                                              ; preds = %303
  %310 = load i32, i32* %12, align 4
  %311 = icmp sle i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = load i32, i32* %10, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %10, align 4
  br label %319

315:                                              ; preds = %309
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %10, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %10, align 4
  br label %169

319:                                              ; preds = %312, %289, %169
  %320 = load i32, i32* %10, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %319
  %323 = load i32, i32* @lines, align 4
  %324 = load i32, i32* %10, align 4
  %325 = sub nsw i32 %323, %324
  %326 = call i64 @prtail(i32 %325, i32 0)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %322
  br label %338

329:                                              ; preds = %322, %319
  %330 = load i32, i32* %15, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %15, align 4
  br label %163

332:                                              ; preds = %163
  %333 = load i32, i32* @eoptind, align 4
  %334 = load i32, i32* %3, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  br label %338

337:                                              ; preds = %332
  store i32 0, i32* %25, align 4
  br label %338

338:                                              ; preds = %337, %336, %328, %308, %302, %144, %127, %92, %46, %33
  %339 = load i8*, i8** %17, align 8
  %340 = call i32 @free(i8* %339)
  %341 = load i8*, i8** %18, align 8
  %342 = call i32 @free(i8* %341)
  %343 = load i32**, i32*** %11, align 8
  %344 = bitcast i32** %343 to i8*
  %345 = call i32 @free(i8* %344)
  %346 = load i32, i32* %25, align 4
  ret i32 %346
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @mfail(...) #1

declare dso_local i32* @nxtfile(i32, i8**, i8**, i8*, i32) #1

declare dso_local i64 @inskip(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ttypause(i32) #1

declare dso_local i32 @addnum(i8*, i32, i32) #1

declare dso_local i32 @inln(i32*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @prhead(i8*, i8*, i32) #1

declare dso_local i64 @otln(i8*, i32, i32*, i32*, i32) #1

declare dso_local i64 @prtail(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
