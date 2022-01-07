; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_send_screen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_send_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i32, i32, i32, i32*, i32, i64, i32 }
%struct.bhyvegc_image = type { i32, i32, i32* }

@PIX_PER_CELL = common dso_local global i32 0, align 4
@PIXCELL_MASK = common dso_local global i32 0, align 4
@RFB_SEND_ALL_THRESH = common dso_local global i32 0, align 4
@PIXCELL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfb_softc*, i32, i32)* @rfb_send_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfb_send_screen(%struct.rfb_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhyvegc_image*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.rfb_softc* %0, %struct.rfb_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %25 = call i32 (...) @console_refresh()
  %26 = call %struct.bhyvegc_image* (...) @console_get_image()
  store %struct.bhyvegc_image* %26, %struct.bhyvegc_image** %8, align 8
  %27 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %28 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %27, i32 0, i32 4
  %29 = call i32 @pthread_mutex_lock(i32* %28)
  %30 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %31 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %36 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %35, i32 0, i32 4
  %37 = call i32 @pthread_mutex_unlock(i32* %36)
  store i32 1, i32* %4, align 4
  br label %341

38:                                               ; preds = %3
  %39 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %40 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %42 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %41, i32 0, i32 4
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  store i32 0, i32* %21, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %50 = call i32 @rfb_send_all(%struct.rfb_softc* %47, i32 %48, %struct.bhyvegc_image* %49)
  store i32 %50, i32* %21, align 4
  br label %331

51:                                               ; preds = %38
  %52 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %53 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %56 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %58 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %61 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %63 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %16, align 4
  %65 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %66 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %17, align 4
  %68 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %69 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PIX_PER_CELL, align 4
  %72 = call i32 @howmany(i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %74 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PIX_PER_CELL, align 4
  %77 = call i32 @howmany(i32 %75, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @PIXCELL_MASK, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* @PIXCELL_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %20, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %51
  %87 = load i32, i32* @PIX_PER_CELL, align 4
  store i32 %87, i32* %20, align 4
  br label %88

88:                                               ; preds = %86, %51
  %89 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %90 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %18, align 8
  %92 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %93 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32* %98, i32** %22, align 8
  %99 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %100 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i32*
  store i32* %105, i32** %23, align 8
  store i32 0, i32* %24, align 4
  %106 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %107 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %111, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memset(i32* %108, i32 0, i32 %115)
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %243, %88
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %246

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @PIXCELL_MASK, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32, i32* %14, align 4
  %128 = load i32*, i32** %22, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %22, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32*, i32** %23, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %23, align 8
  br label %135

135:                                              ; preds = %126, %121
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %239, %135
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %242

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %14, align 4
  %143 = sub nsw i32 %142, 1
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i32, i32* %19, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* %19, align 4
  store i32 %149, i32* %13, align 4
  br label %152

150:                                              ; preds = %145, %140
  %151 = load i32, i32* @PIX_PER_CELL, align 4
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %154 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %152
  %158 = load i32*, i32** %18, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = load i32*, i32** %22, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @fast_crc32(i32* %158, i32 %162, i32 %167)
  %169 = load i32*, i32** %22, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  br label %189

173:                                              ; preds = %152
  %174 = load i32*, i32** %22, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %18, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = mul i64 %181, 4
  %183 = trunc i64 %182 to i32
  %184 = call i32 @crc32(i32 %178, i32* %179, i32 %183)
  %185 = load i32*, i32** %22, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %184, i32* %188, align 4
  br label %189

189:                                              ; preds = %173, %157
  %190 = load i32, i32* %13, align 4
  %191 = load i32*, i32** %18, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32* %193, i32** %18, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @PIXCELL_MASK, align 4
  %196 = and i32 %194, %195
  %197 = load i32, i32* @PIXCELL_MASK, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %204, label %199

199:                                              ; preds = %189
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %17, align 4
  %202 = sub nsw i32 %201, 1
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %238

204:                                              ; preds = %199, %189
  %205 = load i32*, i32** %23, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %22, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %209, %214
  br i1 %215, label %216, label %232

216:                                              ; preds = %204
  %217 = load i32*, i32** %22, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %23, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %221, i32* %225, align 4
  %226 = load i32*, i32** %22, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  store i32 1, i32* %229, align 4
  %230 = load i32, i32* %24, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %24, align 4
  br label %237

232:                                              ; preds = %204
  %233 = load i32*, i32** %22, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 0, i32* %236, align 4
  br label %237

237:                                              ; preds = %232, %216
  br label %238

238:                                              ; preds = %237, %199
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %10, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %10, align 4
  br label %136

242:                                              ; preds = %136
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %11, align 4
  br label %117

246:                                              ; preds = %117
  %247 = load i32, i32* %24, align 4
  %248 = mul nsw i32 %247, 100
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %15, align 4
  %251 = mul nsw i32 %249, %250
  %252 = sdiv i32 %248, %251
  %253 = load i32, i32* @RFB_SEND_ALL_THRESH, align 4
  %254 = icmp sge i32 %252, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %246
  %256 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %257 = load i32, i32* %6, align 4
  %258 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %259 = call i32 @rfb_send_all(%struct.rfb_softc* %256, i32 %257, %struct.bhyvegc_image* %258)
  store i32 %259, i32* %21, align 4
  br label %331

260:                                              ; preds = %246
  %261 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %262 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  store i32* %263, i32** %22, align 8
  store i32 0, i32* %11, align 4
  br label %264

264:                                              ; preds = %326, %260
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* %17, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %330

268:                                              ; preds = %264
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* @PIXCELL_SHIFT, align 4
  %271 = ashr i32 %269, %270
  store i32 %271, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %272

272:                                              ; preds = %322, %268
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %14, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %325

276:                                              ; preds = %272
  %277 = load i32*, i32** %22, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %22, align 8
  %279 = load i32, i32* %277, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  br label %322

282:                                              ; preds = %276
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* %14, align 4
  %285 = sub nsw i32 %284, 1
  %286 = icmp eq i32 %283, %285
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = load i32, i32* %19, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  %291 = load i32, i32* %19, align 4
  store i32 %291, i32* %13, align 4
  br label %294

292:                                              ; preds = %287, %282
  %293 = load i32, i32* @PIX_PER_CELL, align 4
  store i32 %293, i32* %13, align 4
  br label %294

294:                                              ; preds = %292, %290
  %295 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %296 = load i32, i32* %6, align 4
  %297 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* @PIX_PER_CELL, align 4
  %300 = mul nsw i32 %298, %299
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* @PIX_PER_CELL, align 4
  %303 = mul nsw i32 %301, %302
  %304 = load i32, i32* %13, align 4
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* @PIX_PER_CELL, align 4
  %307 = add nsw i32 %305, %306
  %308 = load i32, i32* %17, align 4
  %309 = icmp sge i32 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %294
  %311 = load i32, i32* %20, align 4
  br label %314

312:                                              ; preds = %294
  %313 = load i32, i32* @PIX_PER_CELL, align 4
  br label %314

314:                                              ; preds = %312, %310
  %315 = phi i32 [ %311, %310 ], [ %313, %312 ]
  %316 = call i32 @rfb_send_rect(%struct.rfb_softc* %295, i32 %296, %struct.bhyvegc_image* %297, i32 %300, i32 %303, i32 %304, i32 %315)
  store i32 %316, i32* %9, align 4
  %317 = load i32, i32* %9, align 4
  %318 = icmp sle i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %314
  %320 = load i32, i32* %9, align 4
  store i32 %320, i32* %21, align 4
  br label %331

321:                                              ; preds = %314
  br label %322

322:                                              ; preds = %321, %281
  %323 = load i32, i32* %10, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %10, align 4
  br label %272

325:                                              ; preds = %272
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* @PIX_PER_CELL, align 4
  %328 = load i32, i32* %11, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %11, align 4
  br label %264

330:                                              ; preds = %264
  store i32 1, i32* %21, align 4
  br label %331

331:                                              ; preds = %330, %319, %255, %46
  %332 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %333 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %332, i32 0, i32 4
  %334 = call i32 @pthread_mutex_lock(i32* %333)
  %335 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %336 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %335, i32 0, i32 0
  store i32 0, i32* %336, align 8
  %337 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %338 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %337, i32 0, i32 4
  %339 = call i32 @pthread_mutex_unlock(i32* %338)
  %340 = load i32, i32* %21, align 4
  store i32 %340, i32* %4, align 4
  br label %341

341:                                              ; preds = %331, %34
  %342 = load i32, i32* %4, align 4
  ret i32 %342
}

declare dso_local i32 @console_refresh(...) #1

declare dso_local %struct.bhyvegc_image* @console_get_image(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @rfb_send_all(%struct.rfb_softc*, i32, %struct.bhyvegc_image*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fast_crc32(i32*, i32, i32) #1

declare dso_local i32 @crc32(i32, i32*, i32) #1

declare dso_local i32 @rfb_send_rect(%struct.rfb_softc*, i32, %struct.bhyvegc_image*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
