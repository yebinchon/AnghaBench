; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_mppcc.c_MPPC_Compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_mppcc.c_MPPC_Compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPPC_comp_state = type { i32*, i32, i32* }

@MPPC_OK = common dso_local global i32 0, align 4
@MPPE_HIST_LEN = common dso_local global i32 0, align 4
@MPPC_RESTART_HISTORY = common dso_local global i32 0, align 4
@MPPC_SAVE_HISTORY = common dso_local global i32 0, align 4
@MPPC_EXPANDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MPPC_Compress(i32** %0, i32** %1, i32* %2, i32* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.MPPC_comp_state*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store i32** %0, i32*** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = bitcast i8* %30 to %struct.MPPC_comp_state*
  store %struct.MPPC_comp_state* %31, %struct.MPPC_comp_state** %16, align 8
  %32 = load i32, i32* @MPPC_OK, align 4
  store i32 %32, i32* %29, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 9
  %38 = sdiv i32 %37, 8
  %39 = add nsw i32 %38, 2
  %40 = icmp slt i32 %34, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %7
  %42 = load i32, i32* @MPPC_OK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %29, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %29, align 4
  %46 = load i32, i32* %29, align 4
  store i32 %46, i32* %8, align 4
  br label %545

47:                                               ; preds = %7
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MPPE_HIST_LEN, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @MPPC_OK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %29, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %29, align 4
  %57 = load i32, i32* %29, align 4
  store i32 %57, i32* %8, align 4
  br label %545

58:                                               ; preds = %47
  %59 = load %struct.MPPC_comp_state*, %struct.MPPC_comp_state** %16, align 8
  %60 = getelementptr inbounds %struct.MPPC_comp_state, %struct.MPPC_comp_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @MPPE_HIST_LEN, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %23, align 8
  %65 = load %struct.MPPC_comp_state*, %struct.MPPC_comp_state** %16, align 8
  %66 = getelementptr inbounds %struct.MPPC_comp_state, %struct.MPPC_comp_state* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %67, %69
  %71 = load i32, i32* @MPPE_HIST_LEN, align 4
  %72 = mul nsw i32 2, %71
  %73 = icmp sge i32 %70, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %58
  %75 = load i32, i32* @MPPC_RESTART_HISTORY, align 4
  %76 = load i32, i32* %29, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %29, align 4
  %78 = load i32, i32* @MPPE_HIST_LEN, align 4
  %79 = load %struct.MPPC_comp_state*, %struct.MPPC_comp_state** %16, align 8
  %80 = getelementptr inbounds %struct.MPPC_comp_state, %struct.MPPC_comp_state* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.MPPC_comp_state*, %struct.MPPC_comp_state** %16, align 8
  %82 = getelementptr inbounds %struct.MPPC_comp_state, %struct.MPPC_comp_state* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %23, align 8
  %85 = load i32, i32* @MPPE_HIST_LEN, align 4
  %86 = call i32 @memcpy(i32* %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %74, %58
  %88 = load %struct.MPPC_comp_state*, %struct.MPPC_comp_state** %16, align 8
  %89 = getelementptr inbounds %struct.MPPC_comp_state, %struct.MPPC_comp_state* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.MPPC_comp_state*, %struct.MPPC_comp_state** %16, align 8
  %92 = getelementptr inbounds %struct.MPPC_comp_state, %struct.MPPC_comp_state* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  store i32* %95, i32** %24, align 8
  %96 = load i32*, i32** %24, align 8
  %97 = load i32**, i32*** %9, align 8
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memcpy(i32* %96, i32* %98, i32 %100)
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.MPPC_comp_state*, %struct.MPPC_comp_state** %16, align 8
  %105 = getelementptr inbounds %struct.MPPC_comp_state, %struct.MPPC_comp_state* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32*, i32** %24, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32* %112, i32** %27, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %17, align 4
  %113 = load i32**, i32*** %10, align 8
  %114 = load i32*, i32** %113, align 8
  store i32 0, i32* %114, align 4
  store i32 8, i32* %22, align 4
  br label %115

115:                                              ; preds = %450, %229, %87
  %116 = load i32, i32* %21, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 2
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %451

121:                                              ; preds = %115
  %122 = load i32*, i32** %24, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32* %125, i32** %26, align 8
  store i32* %125, i32** %28, align 8
  %126 = load i32*, i32** %28, align 8
  %127 = call i32 @HASH(i32* %126)
  store i32 %127, i32* %20, align 4
  %128 = load i32*, i32** %23, align 8
  %129 = load %struct.MPPC_comp_state*, %struct.MPPC_comp_state** %16, align 8
  %130 = getelementptr inbounds %struct.MPPC_comp_state, %struct.MPPC_comp_state* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %128, i64 %136
  store i32* %137, i32** %25, align 8
  %138 = load i32*, i32** %28, align 8
  %139 = load i32*, i32** %23, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = load %struct.MPPC_comp_state*, %struct.MPPC_comp_state** %16, align 8
  %146 = getelementptr inbounds %struct.MPPC_comp_state, %struct.MPPC_comp_state* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  %151 = load i32*, i32** %25, align 8
  %152 = load i32*, i32** %28, align 8
  %153 = icmp ugt i32* %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %121
  %155 = load i32, i32* @MPPE_HIST_LEN, align 4
  %156 = load i32*, i32** %25, align 8
  %157 = sext i32 %155 to i64
  %158 = sub i64 0, %157
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32* %159, i32** %25, align 8
  br label %160

160:                                              ; preds = %154, %121
  %161 = load i32*, i32** %28, align 8
  %162 = load i32*, i32** %25, align 8
  %163 = ptrtoint i32* %161 to i64
  %164 = ptrtoint i32* %162 to i64
  %165 = sub i64 %163, %164
  %166 = sdiv exact i64 %165, 4
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* @MPPE_HIST_LEN, align 4
  %170 = sub nsw i32 %169, 1
  %171 = icmp sgt i32 %168, %170
  br i1 %171, label %199, label %172

172:                                              ; preds = %160
  %173 = load i32, i32* %18, align 4
  %174 = icmp slt i32 %173, 1
  br i1 %174, label %199, label %175

175:                                              ; preds = %172
  %176 = load i32*, i32** %25, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %25, align 8
  %178 = load i32, i32* %176, align 4
  %179 = load i32*, i32** %28, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %28, align 8
  %181 = load i32, i32* %179, align 4
  %182 = icmp ne i32 %178, %181
  br i1 %182, label %199, label %183

183:                                              ; preds = %175
  %184 = load i32*, i32** %25, align 8
  %185 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %185, i32** %25, align 8
  %186 = load i32, i32* %184, align 4
  %187 = load i32*, i32** %28, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %28, align 8
  %189 = load i32, i32* %187, align 4
  %190 = icmp ne i32 %186, %189
  br i1 %190, label %199, label %191

191:                                              ; preds = %183
  %192 = load i32*, i32** %25, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %25, align 8
  %194 = load i32, i32* %192, align 4
  %195 = load i32*, i32** %28, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %28, align 8
  %197 = load i32, i32* %195, align 4
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %199, label %232

199:                                              ; preds = %191, %183, %175, %172, %160
  %200 = load i32**, i32*** %9, align 8
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %21, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %205, 128
  br i1 %206, label %207, label %217

207:                                              ; preds = %199
  %208 = load i32**, i32*** %10, align 8
  %209 = load i32*, i32** %208, align 8
  %210 = load i32**, i32*** %9, align 8
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %21, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @putbits8(i32* %209, i32 %215, i32 8, i32* %17, i32* %22)
  br label %229

217:                                              ; preds = %199
  %218 = load i32**, i32*** %10, align 8
  %219 = load i32*, i32** %218, align 8
  %220 = load i32**, i32*** %9, align 8
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 127
  %227 = or i32 256, %226
  %228 = call i32 @putbits16(i32* %219, i32 %227, i32 9, i32* %17, i32* %22)
  br label %229

229:                                              ; preds = %217, %207
  %230 = load i32, i32* %21, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %21, align 4
  br label %115

232:                                              ; preds = %191
  br label %233

233:                                              ; preds = %246, %232
  %234 = load i32*, i32** %25, align 8
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %28, align 8
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %233
  %240 = load i32*, i32** %28, align 8
  %241 = load i32*, i32** %27, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 -3
  %243 = icmp ult i32* %240, %242
  br label %244

244:                                              ; preds = %239, %233
  %245 = phi i1 [ false, %233 ], [ %243, %239 ]
  br i1 %245, label %246, label %251

246:                                              ; preds = %244
  %247 = load i32*, i32** %25, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 4
  store i32* %248, i32** %25, align 8
  %249 = load i32*, i32** %28, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 4
  store i32* %250, i32** %28, align 8
  br label %233

251:                                              ; preds = %244
  br label %252

252:                                              ; preds = %266, %251
  %253 = load i32*, i32** %25, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %25, align 8
  %255 = load i32, i32* %253, align 4
  %256 = load i32*, i32** %28, align 8
  %257 = getelementptr inbounds i32, i32* %256, i32 1
  store i32* %257, i32** %28, align 8
  %258 = load i32, i32* %256, align 4
  %259 = icmp eq i32 %255, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %252
  %261 = load i32*, i32** %28, align 8
  %262 = load i32*, i32** %27, align 8
  %263 = icmp ule i32* %261, %262
  br label %264

264:                                              ; preds = %260, %252
  %265 = phi i1 [ false, %252 ], [ %263, %260 ]
  br i1 %265, label %266, label %267

266:                                              ; preds = %264
  br label %252

267:                                              ; preds = %264
  %268 = load i32*, i32** %28, align 8
  %269 = load i32*, i32** %26, align 8
  %270 = ptrtoint i32* %268 to i64
  %271 = ptrtoint i32* %269 to i64
  %272 = sub i64 %270, %271
  %273 = sdiv exact i64 %272, 4
  %274 = sub nsw i64 %273, 1
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %19, align 4
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %21, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %21, align 4
  %279 = load i32, i32* %18, align 4
  %280 = icmp slt i32 %279, 64
  br i1 %280, label %281, label %287

281:                                              ; preds = %267
  %282 = load i32**, i32*** %10, align 8
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %18, align 4
  %285 = or i32 960, %284
  %286 = call i32 @putbits16(i32* %283, i32 %285, i32 10, i32* %17, i32* %22)
  br label %316

287:                                              ; preds = %267
  %288 = load i32, i32* %18, align 4
  %289 = icmp slt i32 %288, 320
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = load i32**, i32*** %10, align 8
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %18, align 4
  %294 = sub nsw i32 %293, 64
  %295 = or i32 3584, %294
  %296 = call i32 @putbits16(i32* %292, i32 %295, i32 12, i32* %17, i32* %22)
  br label %315

297:                                              ; preds = %287
  %298 = load i32, i32* %18, align 4
  %299 = icmp slt i32 %298, 8192
  br i1 %299, label %300, label %307

300:                                              ; preds = %297
  %301 = load i32**, i32*** %10, align 8
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %18, align 4
  %304 = sub nsw i32 %303, 320
  %305 = or i32 49152, %304
  %306 = call i32 @putbits16(i32* %302, i32 %305, i32 16, i32* %17, i32* %22)
  br label %314

307:                                              ; preds = %297
  %308 = call i32 (...) @__unreachable()
  %309 = load i32, i32* @MPPC_OK, align 4
  %310 = xor i32 %309, -1
  %311 = load i32, i32* %29, align 4
  %312 = and i32 %311, %310
  store i32 %312, i32* %29, align 4
  %313 = load i32, i32* %29, align 4
  store i32 %313, i32* %8, align 4
  br label %545

314:                                              ; preds = %300
  br label %315

315:                                              ; preds = %314, %290
  br label %316

316:                                              ; preds = %315, %281
  %317 = load i32, i32* %19, align 4
  %318 = icmp slt i32 %317, 4
  br i1 %318, label %319, label %323

319:                                              ; preds = %316
  %320 = load i32**, i32*** %10, align 8
  %321 = load i32*, i32** %320, align 8
  %322 = call i32 @putbits8(i32* %321, i32 0, i32 1, i32* %17, i32* %22)
  br label %450

323:                                              ; preds = %316
  %324 = load i32, i32* %19, align 4
  %325 = icmp slt i32 %324, 8
  br i1 %325, label %326, label %333

326:                                              ; preds = %323
  %327 = load i32**, i32*** %10, align 8
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %19, align 4
  %330 = and i32 %329, 3
  %331 = or i32 8, %330
  %332 = call i32 @putbits8(i32* %328, i32 %331, i32 4, i32* %17, i32* %22)
  br label %449

333:                                              ; preds = %323
  %334 = load i32, i32* %19, align 4
  %335 = icmp slt i32 %334, 16
  br i1 %335, label %336, label %343

336:                                              ; preds = %333
  %337 = load i32**, i32*** %10, align 8
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %19, align 4
  %340 = and i32 %339, 7
  %341 = or i32 48, %340
  %342 = call i32 @putbits8(i32* %338, i32 %341, i32 6, i32* %17, i32* %22)
  br label %448

343:                                              ; preds = %333
  %344 = load i32, i32* %19, align 4
  %345 = icmp slt i32 %344, 32
  br i1 %345, label %346, label %353

346:                                              ; preds = %343
  %347 = load i32**, i32*** %10, align 8
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %19, align 4
  %350 = and i32 %349, 15
  %351 = or i32 224, %350
  %352 = call i32 @putbits8(i32* %348, i32 %351, i32 8, i32* %17, i32* %22)
  br label %447

353:                                              ; preds = %343
  %354 = load i32, i32* %19, align 4
  %355 = icmp slt i32 %354, 64
  br i1 %355, label %356, label %363

356:                                              ; preds = %353
  %357 = load i32**, i32*** %10, align 8
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %19, align 4
  %360 = and i32 %359, 31
  %361 = or i32 960, %360
  %362 = call i32 @putbits16(i32* %358, i32 %361, i32 10, i32* %17, i32* %22)
  br label %446

363:                                              ; preds = %353
  %364 = load i32, i32* %19, align 4
  %365 = icmp slt i32 %364, 128
  br i1 %365, label %366, label %373

366:                                              ; preds = %363
  %367 = load i32**, i32*** %10, align 8
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %19, align 4
  %370 = and i32 %369, 63
  %371 = or i32 3968, %370
  %372 = call i32 @putbits16(i32* %368, i32 %371, i32 12, i32* %17, i32* %22)
  br label %445

373:                                              ; preds = %363
  %374 = load i32, i32* %19, align 4
  %375 = icmp slt i32 %374, 256
  br i1 %375, label %376, label %383

376:                                              ; preds = %373
  %377 = load i32**, i32*** %10, align 8
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %19, align 4
  %380 = and i32 %379, 127
  %381 = or i32 16128, %380
  %382 = call i32 @putbits16(i32* %378, i32 %381, i32 14, i32* %17, i32* %22)
  br label %444

383:                                              ; preds = %373
  %384 = load i32, i32* %19, align 4
  %385 = icmp slt i32 %384, 512
  br i1 %385, label %386, label %393

386:                                              ; preds = %383
  %387 = load i32**, i32*** %10, align 8
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %19, align 4
  %390 = and i32 %389, 255
  %391 = or i32 65024, %390
  %392 = call i32 @putbits16(i32* %388, i32 %391, i32 16, i32* %17, i32* %22)
  br label %443

393:                                              ; preds = %383
  %394 = load i32, i32* %19, align 4
  %395 = icmp slt i32 %394, 1024
  br i1 %395, label %396, label %403

396:                                              ; preds = %393
  %397 = load i32**, i32*** %10, align 8
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %19, align 4
  %400 = and i32 %399, 511
  %401 = or i32 261120, %400
  %402 = call i32 @putbits24(i32* %398, i32 %401, i32 18, i32* %17, i32* %22)
  br label %442

403:                                              ; preds = %393
  %404 = load i32, i32* %19, align 4
  %405 = icmp slt i32 %404, 2048
  br i1 %405, label %406, label %413

406:                                              ; preds = %403
  %407 = load i32**, i32*** %10, align 8
  %408 = load i32*, i32** %407, align 8
  %409 = load i32, i32* %19, align 4
  %410 = and i32 %409, 1023
  %411 = or i32 1046528, %410
  %412 = call i32 @putbits24(i32* %408, i32 %411, i32 20, i32* %17, i32* %22)
  br label %441

413:                                              ; preds = %403
  %414 = load i32, i32* %19, align 4
  %415 = icmp slt i32 %414, 4096
  br i1 %415, label %416, label %423

416:                                              ; preds = %413
  %417 = load i32**, i32*** %10, align 8
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %19, align 4
  %420 = and i32 %419, 2047
  %421 = or i32 4190208, %420
  %422 = call i32 @putbits24(i32* %418, i32 %421, i32 22, i32* %17, i32* %22)
  br label %440

423:                                              ; preds = %413
  %424 = load i32, i32* %19, align 4
  %425 = icmp slt i32 %424, 8192
  br i1 %425, label %426, label %433

426:                                              ; preds = %423
  %427 = load i32**, i32*** %10, align 8
  %428 = load i32*, i32** %427, align 8
  %429 = load i32, i32* %19, align 4
  %430 = and i32 %429, 4095
  %431 = or i32 16769024, %430
  %432 = call i32 @putbits24(i32* %428, i32 %431, i32 24, i32* %17, i32* %22)
  br label %439

433:                                              ; preds = %423
  %434 = load i32, i32* @MPPC_OK, align 4
  %435 = xor i32 %434, -1
  %436 = load i32, i32* %29, align 4
  %437 = and i32 %436, %435
  store i32 %437, i32* %29, align 4
  %438 = load i32, i32* %29, align 4
  store i32 %438, i32* %8, align 4
  br label %545

439:                                              ; preds = %426
  br label %440

440:                                              ; preds = %439, %416
  br label %441

441:                                              ; preds = %440, %406
  br label %442

442:                                              ; preds = %441, %396
  br label %443

443:                                              ; preds = %442, %386
  br label %444

444:                                              ; preds = %443, %376
  br label %445

445:                                              ; preds = %444, %366
  br label %446

446:                                              ; preds = %445, %356
  br label %447

447:                                              ; preds = %446, %346
  br label %448

448:                                              ; preds = %447, %336
  br label %449

449:                                              ; preds = %448, %326
  br label %450

450:                                              ; preds = %449, %319
  br label %115

451:                                              ; preds = %115
  br label %452

452:                                              ; preds = %490, %451
  %453 = load i32*, i32** %11, align 8
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* %21, align 4
  %456 = sub nsw i32 %454, %455
  %457 = icmp sgt i32 %456, 0
  br i1 %457, label %458, label %491

458:                                              ; preds = %452
  %459 = load i32**, i32*** %9, align 8
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %21, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = icmp slt i32 %464, 128
  br i1 %465, label %466, label %477

466:                                              ; preds = %458
  %467 = load i32**, i32*** %10, align 8
  %468 = load i32*, i32** %467, align 8
  %469 = load i32**, i32*** %9, align 8
  %470 = load i32*, i32** %469, align 8
  %471 = load i32, i32* %21, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %21, align 4
  %473 = sext i32 %471 to i64
  %474 = getelementptr inbounds i32, i32* %470, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @putbits8(i32* %468, i32 %475, i32 8, i32* %17, i32* %22)
  br label %490

477:                                              ; preds = %458
  %478 = load i32**, i32*** %10, align 8
  %479 = load i32*, i32** %478, align 8
  %480 = load i32**, i32*** %9, align 8
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %21, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %21, align 4
  %484 = sext i32 %482 to i64
  %485 = getelementptr inbounds i32, i32* %481, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = and i32 %486, 127
  %488 = or i32 256, %487
  %489 = call i32 @putbits16(i32* %479, i32 %488, i32 9, i32* %17, i32* %22)
  br label %490

490:                                              ; preds = %477, %466
  br label %452

491:                                              ; preds = %452
  %492 = load i32, i32* %22, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %502

494:                                              ; preds = %491
  %495 = load i32, i32* %22, align 4
  %496 = icmp ne i32 %495, 8
  br i1 %496, label %497, label %502

497:                                              ; preds = %494
  %498 = load i32**, i32*** %10, align 8
  %499 = load i32*, i32** %498, align 8
  %500 = load i32, i32* %22, align 4
  %501 = call i32 @putbits8(i32* %499, i32 0, i32 %500, i32* %17, i32* %22)
  br label %502

502:                                              ; preds = %497, %494, %491
  %503 = load i32*, i32** %11, align 8
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* %17, align 4
  %506 = icmp slt i32 %504, %505
  br i1 %506, label %512, label %507

507:                                              ; preds = %502
  %508 = load i32, i32* %14, align 4
  %509 = load i32, i32* @MPPC_SAVE_HISTORY, align 4
  %510 = and i32 %508, %509
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %527

512:                                              ; preds = %507, %502
  %513 = load i32*, i32** %11, align 8
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* %17, align 4
  %516 = icmp slt i32 %514, %515
  br i1 %516, label %517, label %521

517:                                              ; preds = %512
  %518 = load i32, i32* @MPPC_EXPANDED, align 4
  %519 = load i32, i32* %29, align 4
  %520 = or i32 %519, %518
  store i32 %520, i32* %29, align 4
  br label %521

521:                                              ; preds = %517, %512
  %522 = load i8*, i8** %13, align 8
  %523 = call i32 @bzero(i8* %522, i32 24)
  %524 = load i32, i32* @MPPE_HIST_LEN, align 4
  %525 = load %struct.MPPC_comp_state*, %struct.MPPC_comp_state** %16, align 8
  %526 = getelementptr inbounds %struct.MPPC_comp_state, %struct.MPPC_comp_state* %525, i32 0, i32 1
  store i32 %524, i32* %526, align 8
  br label %527

527:                                              ; preds = %521, %507
  %528 = load i32*, i32** %11, align 8
  %529 = load i32, i32* %528, align 4
  %530 = load i32**, i32*** %9, align 8
  %531 = load i32*, i32** %530, align 8
  %532 = sext i32 %529 to i64
  %533 = getelementptr inbounds i32, i32* %531, i64 %532
  store i32* %533, i32** %530, align 8
  %534 = load i32*, i32** %11, align 8
  store i32 0, i32* %534, align 4
  %535 = load i32, i32* %17, align 4
  %536 = load i32**, i32*** %10, align 8
  %537 = load i32*, i32** %536, align 8
  %538 = sext i32 %535 to i64
  %539 = getelementptr inbounds i32, i32* %537, i64 %538
  store i32* %539, i32** %536, align 8
  %540 = load i32, i32* %17, align 4
  %541 = load i32*, i32** %12, align 8
  %542 = load i32, i32* %541, align 4
  %543 = sub nsw i32 %542, %540
  store i32 %543, i32* %541, align 4
  %544 = load i32, i32* %29, align 4
  store i32 %544, i32* %8, align 4
  br label %545

545:                                              ; preds = %527, %433, %307, %52, %41
  %546 = load i32, i32* %8, align 4
  ret i32 %546
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @HASH(i32*) #1

declare dso_local i32 @putbits8(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @putbits16(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @__unreachable(...) #1

declare dso_local i32 @putbits24(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
