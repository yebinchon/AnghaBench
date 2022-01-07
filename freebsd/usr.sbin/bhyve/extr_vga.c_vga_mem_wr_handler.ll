; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_mem_wr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_mem_wr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vga_softc = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmctx*, i32, i32, i8*)* @vga_mem_wr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_mem_wr_handler(%struct.vmctx* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.vga_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.vga_softc*
  store %struct.vga_softc* %23, %struct.vga_softc** %9, align 8
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %21, align 4
  %25 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %26 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %55 [
    i32 0, label %29
    i32 1, label %37
    i32 2, label %45
    i32 3, label %47
  ]

29:                                               ; preds = %4
  %30 = load i32, i32* %21, align 4
  %31 = sub nsw i32 %30, 655360
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* @KB, align 4
  %33 = mul nsw i32 128, %32
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %21, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %21, align 4
  br label %55

37:                                               ; preds = %4
  %38 = load i32, i32* %21, align 4
  %39 = sub nsw i32 %38, 655360
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* @KB, align 4
  %41 = mul nsw i32 64, %40
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %21, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %21, align 4
  br label %55

45:                                               ; preds = %4
  %46 = call i32 @assert(i32 0)
  br label %47

47:                                               ; preds = %4, %45
  %48 = load i32, i32* %21, align 4
  %49 = sub nsw i32 %48, 753664
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* @KB, align 4
  %51 = mul nsw i32 32, %50
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %21, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %21, align 4
  br label %55

55:                                               ; preds = %4, %47, %37, %29
  %56 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %57 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %18, align 4
  %60 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %61 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %19, align 4
  %64 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %65 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %69 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %11, align 4
  %72 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %73 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %12, align 4
  %76 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %77 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %13, align 4
  %80 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %81 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %873 [
    i32 0, label %84
    i32 1, label %468
    i32 2, label %469
    i32 3, label %663
  ]

84:                                               ; preds = %55
  %85 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %86 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %91 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %89, %93
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %97 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 8, %99
  %101 = shl i32 %95, %100
  %102 = or i32 %94, %101
  store i32 %102, i32* %7, align 4
  %103 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %104 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %467 [
    i32 0, label %107
    i32 8, label %208
    i32 16, label %297
    i32 24, label %382
  ]

107:                                              ; preds = %84
  %108 = load i32, i32* %18, align 4
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* %20, align 4
  br label %114

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i32 [ %112, %111 ], [ 0, %113 ]
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %18, align 4
  %117 = and i32 %116, 2
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %20, align 4
  br label %122

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i32 [ %120, %119 ], [ 0, %121 ]
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %18, align 4
  %125 = and i32 %124, 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %20, align 4
  br label %130

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %18, align 4
  %133 = and i32 %132, 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %20, align 4
  br label %138

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i32 [ %136, %135 ], [ 0, %137 ]
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %19, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %20, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  br label %152

148:                                              ; preds = %138
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %20, align 4
  %151 = and i32 %149, %150
  br label %152

152:                                              ; preds = %148, %143
  %153 = phi i32 [ %147, %143 ], [ %151, %148 ]
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %19, align 4
  %155 = and i32 %154, 2
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %20, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  br label %166

162:                                              ; preds = %152
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %20, align 4
  %165 = and i32 %163, %164
  br label %166

166:                                              ; preds = %162, %157
  %167 = phi i32 [ %161, %157 ], [ %165, %162 ]
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %19, align 4
  %169 = and i32 %168, 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %20, align 4
  %174 = xor i32 %173, -1
  %175 = and i32 %172, %174
  br label %180

176:                                              ; preds = %166
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %20, align 4
  %179 = and i32 %177, %178
  br label %180

180:                                              ; preds = %176, %171
  %181 = phi i32 [ %175, %171 ], [ %179, %176 ]
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %19, align 4
  %183 = and i32 %182, 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %20, align 4
  %188 = xor i32 %187, -1
  %189 = and i32 %186, %188
  br label %194

190:                                              ; preds = %180
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %20, align 4
  %193 = and i32 %191, %192
  br label %194

194:                                              ; preds = %190, %185
  %195 = phi i32 [ %189, %185 ], [ %193, %190 ]
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %10, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %11, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %12, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %13, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %13, align 4
  br label %467

208:                                              ; preds = %84
  %209 = load i32, i32* %18, align 4
  %210 = and i32 %209, 1
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %216

213:                                              ; preds = %208
  %214 = load i32, i32* %20, align 4
  %215 = xor i32 %214, -1
  br label %216

216:                                              ; preds = %213, %212
  %217 = phi i32 [ 255, %212 ], [ %215, %213 ]
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %18, align 4
  %219 = and i32 %218, 2
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %225

222:                                              ; preds = %216
  %223 = load i32, i32* %20, align 4
  %224 = xor i32 %223, -1
  br label %225

225:                                              ; preds = %222, %221
  %226 = phi i32 [ 255, %221 ], [ %224, %222 ]
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* %18, align 4
  %228 = and i32 %227, 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %234

231:                                              ; preds = %225
  %232 = load i32, i32* %20, align 4
  %233 = xor i32 %232, -1
  br label %234

234:                                              ; preds = %231, %230
  %235 = phi i32 [ 255, %230 ], [ %233, %231 ]
  store i32 %235, i32* %16, align 4
  %236 = load i32, i32* %18, align 4
  %237 = and i32 %236, 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %243

240:                                              ; preds = %234
  %241 = load i32, i32* %20, align 4
  %242 = xor i32 %241, -1
  br label %243

243:                                              ; preds = %240, %239
  %244 = phi i32 [ 255, %239 ], [ %242, %240 ]
  store i32 %244, i32* %17, align 4
  %245 = load i32, i32* %19, align 4
  %246 = and i32 %245, 1
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %14, align 4
  %251 = and i32 %249, %250
  br label %256

252:                                              ; preds = %243
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* %14, align 4
  %255 = and i32 %253, %254
  br label %256

256:                                              ; preds = %252, %248
  %257 = phi i32 [ %251, %248 ], [ %255, %252 ]
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %19, align 4
  %259 = and i32 %258, 2
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = load i32, i32* %11, align 4
  %263 = load i32, i32* %15, align 4
  %264 = and i32 %262, %263
  br label %269

265:                                              ; preds = %256
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %15, align 4
  %268 = and i32 %266, %267
  br label %269

269:                                              ; preds = %265, %261
  %270 = phi i32 [ %264, %261 ], [ %268, %265 ]
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %19, align 4
  %272 = and i32 %271, 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %269
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %16, align 4
  %277 = and i32 %275, %276
  br label %282

278:                                              ; preds = %269
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %16, align 4
  %281 = and i32 %279, %280
  br label %282

282:                                              ; preds = %278, %274
  %283 = phi i32 [ %277, %274 ], [ %281, %278 ]
  store i32 %283, i32* %12, align 4
  %284 = load i32, i32* %19, align 4
  %285 = and i32 %284, 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %282
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %17, align 4
  %290 = and i32 %288, %289
  br label %295

291:                                              ; preds = %282
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* %17, align 4
  %294 = and i32 %292, %293
  br label %295

295:                                              ; preds = %291, %287
  %296 = phi i32 [ %290, %287 ], [ %294, %291 ]
  store i32 %296, i32* %13, align 4
  br label %467

297:                                              ; preds = %84
  %298 = load i32, i32* %18, align 4
  %299 = and i32 %298, 1
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = load i32, i32* %20, align 4
  br label %304

303:                                              ; preds = %297
  br label %304

304:                                              ; preds = %303, %301
  %305 = phi i32 [ %302, %301 ], [ 0, %303 ]
  store i32 %305, i32* %14, align 4
  %306 = load i32, i32* %18, align 4
  %307 = and i32 %306, 2
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = load i32, i32* %20, align 4
  br label %312

311:                                              ; preds = %304
  br label %312

312:                                              ; preds = %311, %309
  %313 = phi i32 [ %310, %309 ], [ 0, %311 ]
  store i32 %313, i32* %15, align 4
  %314 = load i32, i32* %18, align 4
  %315 = and i32 %314, 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load i32, i32* %20, align 4
  br label %320

319:                                              ; preds = %312
  br label %320

320:                                              ; preds = %319, %317
  %321 = phi i32 [ %318, %317 ], [ 0, %319 ]
  store i32 %321, i32* %16, align 4
  %322 = load i32, i32* %18, align 4
  %323 = and i32 %322, 8
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %320
  %326 = load i32, i32* %20, align 4
  br label %328

327:                                              ; preds = %320
  br label %328

328:                                              ; preds = %327, %325
  %329 = phi i32 [ %326, %325 ], [ 0, %327 ]
  store i32 %329, i32* %17, align 4
  %330 = load i32, i32* %19, align 4
  %331 = and i32 %330, 1
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %328
  %334 = load i32, i32* %10, align 4
  %335 = load i32, i32* %14, align 4
  %336 = or i32 %334, %335
  br label %341

337:                                              ; preds = %328
  %338 = load i32, i32* %7, align 4
  %339 = load i32, i32* %14, align 4
  %340 = or i32 %338, %339
  br label %341

341:                                              ; preds = %337, %333
  %342 = phi i32 [ %336, %333 ], [ %340, %337 ]
  store i32 %342, i32* %10, align 4
  %343 = load i32, i32* %19, align 4
  %344 = and i32 %343, 2
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %341
  %347 = load i32, i32* %11, align 4
  %348 = load i32, i32* %15, align 4
  %349 = or i32 %347, %348
  br label %354

350:                                              ; preds = %341
  %351 = load i32, i32* %7, align 4
  %352 = load i32, i32* %15, align 4
  %353 = or i32 %351, %352
  br label %354

354:                                              ; preds = %350, %346
  %355 = phi i32 [ %349, %346 ], [ %353, %350 ]
  store i32 %355, i32* %11, align 4
  %356 = load i32, i32* %19, align 4
  %357 = and i32 %356, 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %354
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* %16, align 4
  %362 = or i32 %360, %361
  br label %367

363:                                              ; preds = %354
  %364 = load i32, i32* %7, align 4
  %365 = load i32, i32* %16, align 4
  %366 = or i32 %364, %365
  br label %367

367:                                              ; preds = %363, %359
  %368 = phi i32 [ %362, %359 ], [ %366, %363 ]
  store i32 %368, i32* %12, align 4
  %369 = load i32, i32* %19, align 4
  %370 = and i32 %369, 8
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %367
  %373 = load i32, i32* %13, align 4
  %374 = load i32, i32* %17, align 4
  %375 = or i32 %373, %374
  br label %380

376:                                              ; preds = %367
  %377 = load i32, i32* %7, align 4
  %378 = load i32, i32* %17, align 4
  %379 = or i32 %377, %378
  br label %380

380:                                              ; preds = %376, %372
  %381 = phi i32 [ %375, %372 ], [ %379, %376 ]
  store i32 %381, i32* %13, align 4
  br label %467

382:                                              ; preds = %84
  %383 = load i32, i32* %18, align 4
  %384 = and i32 %383, 1
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %382
  %387 = load i32, i32* %20, align 4
  br label %389

388:                                              ; preds = %382
  br label %389

389:                                              ; preds = %388, %386
  %390 = phi i32 [ %387, %386 ], [ 0, %388 ]
  store i32 %390, i32* %14, align 4
  %391 = load i32, i32* %18, align 4
  %392 = and i32 %391, 2
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %389
  %395 = load i32, i32* %20, align 4
  br label %397

396:                                              ; preds = %389
  br label %397

397:                                              ; preds = %396, %394
  %398 = phi i32 [ %395, %394 ], [ 0, %396 ]
  store i32 %398, i32* %15, align 4
  %399 = load i32, i32* %18, align 4
  %400 = and i32 %399, 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %397
  %403 = load i32, i32* %20, align 4
  br label %405

404:                                              ; preds = %397
  br label %405

405:                                              ; preds = %404, %402
  %406 = phi i32 [ %403, %402 ], [ 0, %404 ]
  store i32 %406, i32* %16, align 4
  %407 = load i32, i32* %18, align 4
  %408 = and i32 %407, 8
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %405
  %411 = load i32, i32* %20, align 4
  br label %413

412:                                              ; preds = %405
  br label %413

413:                                              ; preds = %412, %410
  %414 = phi i32 [ %411, %410 ], [ 0, %412 ]
  store i32 %414, i32* %17, align 4
  %415 = load i32, i32* %19, align 4
  %416 = and i32 %415, 1
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %413
  %419 = load i32, i32* %10, align 4
  %420 = load i32, i32* %14, align 4
  %421 = xor i32 %419, %420
  br label %426

422:                                              ; preds = %413
  %423 = load i32, i32* %7, align 4
  %424 = load i32, i32* %14, align 4
  %425 = xor i32 %423, %424
  br label %426

426:                                              ; preds = %422, %418
  %427 = phi i32 [ %421, %418 ], [ %425, %422 ]
  store i32 %427, i32* %10, align 4
  %428 = load i32, i32* %19, align 4
  %429 = and i32 %428, 2
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %426
  %432 = load i32, i32* %11, align 4
  %433 = load i32, i32* %15, align 4
  %434 = xor i32 %432, %433
  br label %439

435:                                              ; preds = %426
  %436 = load i32, i32* %7, align 4
  %437 = load i32, i32* %15, align 4
  %438 = xor i32 %436, %437
  br label %439

439:                                              ; preds = %435, %431
  %440 = phi i32 [ %434, %431 ], [ %438, %435 ]
  store i32 %440, i32* %11, align 4
  %441 = load i32, i32* %19, align 4
  %442 = and i32 %441, 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %439
  %445 = load i32, i32* %12, align 4
  %446 = load i32, i32* %16, align 4
  %447 = xor i32 %445, %446
  br label %452

448:                                              ; preds = %439
  %449 = load i32, i32* %7, align 4
  %450 = load i32, i32* %16, align 4
  %451 = xor i32 %449, %450
  br label %452

452:                                              ; preds = %448, %444
  %453 = phi i32 [ %447, %444 ], [ %451, %448 ]
  store i32 %453, i32* %12, align 4
  %454 = load i32, i32* %19, align 4
  %455 = and i32 %454, 8
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %452
  %458 = load i32, i32* %13, align 4
  %459 = load i32, i32* %17, align 4
  %460 = xor i32 %458, %459
  br label %465

461:                                              ; preds = %452
  %462 = load i32, i32* %7, align 4
  %463 = load i32, i32* %17, align 4
  %464 = xor i32 %462, %463
  br label %465

465:                                              ; preds = %461, %457
  %466 = phi i32 [ %460, %457 ], [ %464, %461 ]
  store i32 %466, i32* %13, align 4
  br label %467

467:                                              ; preds = %84, %465, %380, %295, %194
  br label %873

468:                                              ; preds = %55
  br label %873

469:                                              ; preds = %55
  %470 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %471 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %470, i32 0, i32 2
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i32 0, i32 8
  %473 = load i32, i32* %472, align 8
  store i32 %473, i32* %20, align 4
  %474 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %475 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %475, i32 0, i32 11
  %477 = load i32, i32* %476, align 8
  switch i32 %477, label %662 [
    i32 0, label %478
    i32 8, label %535
    i32 16, label %580
    i32 24, label %621
  ]

478:                                              ; preds = %469
  %479 = load i32, i32* %7, align 4
  %480 = and i32 %479, 1
  %481 = icmp ne i32 %480, 0
  %482 = zext i1 %481 to i64
  %483 = select i1 %481, i32 255, i32 0
  %484 = load i32, i32* %20, align 4
  %485 = and i32 %483, %484
  store i32 %485, i32* %14, align 4
  %486 = load i32, i32* %7, align 4
  %487 = and i32 %486, 2
  %488 = icmp ne i32 %487, 0
  %489 = zext i1 %488 to i64
  %490 = select i1 %488, i32 255, i32 0
  %491 = load i32, i32* %20, align 4
  %492 = and i32 %490, %491
  store i32 %492, i32* %15, align 4
  %493 = load i32, i32* %7, align 4
  %494 = and i32 %493, 4
  %495 = icmp ne i32 %494, 0
  %496 = zext i1 %495 to i64
  %497 = select i1 %495, i32 255, i32 0
  %498 = load i32, i32* %20, align 4
  %499 = and i32 %497, %498
  store i32 %499, i32* %16, align 4
  %500 = load i32, i32* %7, align 4
  %501 = and i32 %500, 8
  %502 = icmp ne i32 %501, 0
  %503 = zext i1 %502 to i64
  %504 = select i1 %502, i32 255, i32 0
  %505 = load i32, i32* %20, align 4
  %506 = and i32 %504, %505
  store i32 %506, i32* %17, align 4
  %507 = load i32, i32* %20, align 4
  %508 = xor i32 %507, -1
  %509 = load i32, i32* %10, align 4
  %510 = and i32 %509, %508
  store i32 %510, i32* %10, align 4
  %511 = load i32, i32* %20, align 4
  %512 = xor i32 %511, -1
  %513 = load i32, i32* %11, align 4
  %514 = and i32 %513, %512
  store i32 %514, i32* %11, align 4
  %515 = load i32, i32* %20, align 4
  %516 = xor i32 %515, -1
  %517 = load i32, i32* %12, align 4
  %518 = and i32 %517, %516
  store i32 %518, i32* %12, align 4
  %519 = load i32, i32* %20, align 4
  %520 = xor i32 %519, -1
  %521 = load i32, i32* %13, align 4
  %522 = and i32 %521, %520
  store i32 %522, i32* %13, align 4
  %523 = load i32, i32* %14, align 4
  %524 = load i32, i32* %10, align 4
  %525 = or i32 %524, %523
  store i32 %525, i32* %10, align 4
  %526 = load i32, i32* %15, align 4
  %527 = load i32, i32* %11, align 4
  %528 = or i32 %527, %526
  store i32 %528, i32* %11, align 4
  %529 = load i32, i32* %16, align 4
  %530 = load i32, i32* %12, align 4
  %531 = or i32 %530, %529
  store i32 %531, i32* %12, align 4
  %532 = load i32, i32* %17, align 4
  %533 = load i32, i32* %13, align 4
  %534 = or i32 %533, %532
  store i32 %534, i32* %13, align 4
  br label %662

535:                                              ; preds = %469
  %536 = load i32, i32* %7, align 4
  %537 = and i32 %536, 1
  %538 = icmp ne i32 %537, 0
  %539 = zext i1 %538 to i64
  %540 = select i1 %538, i32 255, i32 0
  %541 = load i32, i32* %20, align 4
  %542 = xor i32 %541, -1
  %543 = or i32 %540, %542
  store i32 %543, i32* %14, align 4
  %544 = load i32, i32* %7, align 4
  %545 = and i32 %544, 2
  %546 = icmp ne i32 %545, 0
  %547 = zext i1 %546 to i64
  %548 = select i1 %546, i32 255, i32 0
  %549 = load i32, i32* %20, align 4
  %550 = xor i32 %549, -1
  %551 = or i32 %548, %550
  store i32 %551, i32* %15, align 4
  %552 = load i32, i32* %7, align 4
  %553 = and i32 %552, 4
  %554 = icmp ne i32 %553, 0
  %555 = zext i1 %554 to i64
  %556 = select i1 %554, i32 255, i32 0
  %557 = load i32, i32* %20, align 4
  %558 = xor i32 %557, -1
  %559 = or i32 %556, %558
  store i32 %559, i32* %16, align 4
  %560 = load i32, i32* %7, align 4
  %561 = and i32 %560, 8
  %562 = icmp ne i32 %561, 0
  %563 = zext i1 %562 to i64
  %564 = select i1 %562, i32 255, i32 0
  %565 = load i32, i32* %20, align 4
  %566 = xor i32 %565, -1
  %567 = or i32 %564, %566
  store i32 %567, i32* %17, align 4
  %568 = load i32, i32* %14, align 4
  %569 = load i32, i32* %10, align 4
  %570 = and i32 %569, %568
  store i32 %570, i32* %10, align 4
  %571 = load i32, i32* %15, align 4
  %572 = load i32, i32* %11, align 4
  %573 = and i32 %572, %571
  store i32 %573, i32* %11, align 4
  %574 = load i32, i32* %16, align 4
  %575 = load i32, i32* %12, align 4
  %576 = and i32 %575, %574
  store i32 %576, i32* %12, align 4
  %577 = load i32, i32* %17, align 4
  %578 = load i32, i32* %13, align 4
  %579 = and i32 %578, %577
  store i32 %579, i32* %13, align 4
  br label %662

580:                                              ; preds = %469
  %581 = load i32, i32* %7, align 4
  %582 = and i32 %581, 1
  %583 = icmp ne i32 %582, 0
  %584 = zext i1 %583 to i64
  %585 = select i1 %583, i32 255, i32 0
  %586 = load i32, i32* %20, align 4
  %587 = and i32 %585, %586
  store i32 %587, i32* %14, align 4
  %588 = load i32, i32* %7, align 4
  %589 = and i32 %588, 2
  %590 = icmp ne i32 %589, 0
  %591 = zext i1 %590 to i64
  %592 = select i1 %590, i32 255, i32 0
  %593 = load i32, i32* %20, align 4
  %594 = and i32 %592, %593
  store i32 %594, i32* %15, align 4
  %595 = load i32, i32* %7, align 4
  %596 = and i32 %595, 4
  %597 = icmp ne i32 %596, 0
  %598 = zext i1 %597 to i64
  %599 = select i1 %597, i32 255, i32 0
  %600 = load i32, i32* %20, align 4
  %601 = and i32 %599, %600
  store i32 %601, i32* %16, align 4
  %602 = load i32, i32* %7, align 4
  %603 = and i32 %602, 8
  %604 = icmp ne i32 %603, 0
  %605 = zext i1 %604 to i64
  %606 = select i1 %604, i32 255, i32 0
  %607 = load i32, i32* %20, align 4
  %608 = and i32 %606, %607
  store i32 %608, i32* %17, align 4
  %609 = load i32, i32* %14, align 4
  %610 = load i32, i32* %10, align 4
  %611 = or i32 %610, %609
  store i32 %611, i32* %10, align 4
  %612 = load i32, i32* %15, align 4
  %613 = load i32, i32* %11, align 4
  %614 = or i32 %613, %612
  store i32 %614, i32* %11, align 4
  %615 = load i32, i32* %16, align 4
  %616 = load i32, i32* %12, align 4
  %617 = or i32 %616, %615
  store i32 %617, i32* %12, align 4
  %618 = load i32, i32* %17, align 4
  %619 = load i32, i32* %13, align 4
  %620 = or i32 %619, %618
  store i32 %620, i32* %13, align 4
  br label %662

621:                                              ; preds = %469
  %622 = load i32, i32* %7, align 4
  %623 = and i32 %622, 1
  %624 = icmp ne i32 %623, 0
  %625 = zext i1 %624 to i64
  %626 = select i1 %624, i32 255, i32 0
  %627 = load i32, i32* %20, align 4
  %628 = and i32 %626, %627
  store i32 %628, i32* %14, align 4
  %629 = load i32, i32* %7, align 4
  %630 = and i32 %629, 2
  %631 = icmp ne i32 %630, 0
  %632 = zext i1 %631 to i64
  %633 = select i1 %631, i32 255, i32 0
  %634 = load i32, i32* %20, align 4
  %635 = and i32 %633, %634
  store i32 %635, i32* %15, align 4
  %636 = load i32, i32* %7, align 4
  %637 = and i32 %636, 4
  %638 = icmp ne i32 %637, 0
  %639 = zext i1 %638 to i64
  %640 = select i1 %638, i32 255, i32 0
  %641 = load i32, i32* %20, align 4
  %642 = and i32 %640, %641
  store i32 %642, i32* %16, align 4
  %643 = load i32, i32* %7, align 4
  %644 = and i32 %643, 8
  %645 = icmp ne i32 %644, 0
  %646 = zext i1 %645 to i64
  %647 = select i1 %645, i32 255, i32 0
  %648 = load i32, i32* %20, align 4
  %649 = and i32 %647, %648
  store i32 %649, i32* %17, align 4
  %650 = load i32, i32* %14, align 4
  %651 = load i32, i32* %10, align 4
  %652 = xor i32 %651, %650
  store i32 %652, i32* %10, align 4
  %653 = load i32, i32* %15, align 4
  %654 = load i32, i32* %11, align 4
  %655 = xor i32 %654, %653
  store i32 %655, i32* %11, align 4
  %656 = load i32, i32* %16, align 4
  %657 = load i32, i32* %12, align 4
  %658 = xor i32 %657, %656
  store i32 %658, i32* %12, align 4
  %659 = load i32, i32* %17, align 4
  %660 = load i32, i32* %13, align 4
  %661 = xor i32 %660, %659
  store i32 %661, i32* %13, align 4
  br label %662

662:                                              ; preds = %469, %621, %580, %535, %478
  br label %873

663:                                              ; preds = %55
  %664 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %665 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %664, i32 0, i32 2
  %666 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %665, i32 0, i32 8
  %667 = load i32, i32* %666, align 8
  %668 = load i32, i32* %7, align 4
  %669 = and i32 %667, %668
  store i32 %669, i32* %20, align 4
  %670 = load i32, i32* %7, align 4
  %671 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %672 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %671, i32 0, i32 2
  %673 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %672, i32 0, i32 9
  %674 = load i32, i32* %673, align 4
  %675 = ashr i32 %670, %674
  %676 = load i32, i32* %7, align 4
  %677 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %678 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %677, i32 0, i32 2
  %679 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %678, i32 0, i32 9
  %680 = load i32, i32* %679, align 4
  %681 = sub nsw i32 8, %680
  %682 = shl i32 %676, %681
  %683 = or i32 %675, %682
  store i32 %683, i32* %7, align 4
  %684 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %685 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %684, i32 0, i32 2
  %686 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %685, i32 0, i32 11
  %687 = load i32, i32* %686, align 8
  switch i32 %687, label %872 [
    i32 0, label %688
    i32 8, label %745
    i32 16, label %790
    i32 24, label %831
  ]

688:                                              ; preds = %663
  %689 = load i32, i32* %18, align 4
  %690 = and i32 %689, 1
  %691 = icmp ne i32 %690, 0
  %692 = zext i1 %691 to i64
  %693 = select i1 %691, i32 255, i32 0
  %694 = load i32, i32* %20, align 4
  %695 = and i32 %693, %694
  store i32 %695, i32* %14, align 4
  %696 = load i32, i32* %18, align 4
  %697 = and i32 %696, 2
  %698 = icmp ne i32 %697, 0
  %699 = zext i1 %698 to i64
  %700 = select i1 %698, i32 255, i32 0
  %701 = load i32, i32* %20, align 4
  %702 = and i32 %700, %701
  store i32 %702, i32* %15, align 4
  %703 = load i32, i32* %18, align 4
  %704 = and i32 %703, 4
  %705 = icmp ne i32 %704, 0
  %706 = zext i1 %705 to i64
  %707 = select i1 %705, i32 255, i32 0
  %708 = load i32, i32* %20, align 4
  %709 = and i32 %707, %708
  store i32 %709, i32* %16, align 4
  %710 = load i32, i32* %18, align 4
  %711 = and i32 %710, 8
  %712 = icmp ne i32 %711, 0
  %713 = zext i1 %712 to i64
  %714 = select i1 %712, i32 255, i32 0
  %715 = load i32, i32* %20, align 4
  %716 = and i32 %714, %715
  store i32 %716, i32* %17, align 4
  %717 = load i32, i32* %20, align 4
  %718 = xor i32 %717, -1
  %719 = load i32, i32* %10, align 4
  %720 = and i32 %719, %718
  store i32 %720, i32* %10, align 4
  %721 = load i32, i32* %20, align 4
  %722 = xor i32 %721, -1
  %723 = load i32, i32* %11, align 4
  %724 = and i32 %723, %722
  store i32 %724, i32* %11, align 4
  %725 = load i32, i32* %20, align 4
  %726 = xor i32 %725, -1
  %727 = load i32, i32* %12, align 4
  %728 = and i32 %727, %726
  store i32 %728, i32* %12, align 4
  %729 = load i32, i32* %20, align 4
  %730 = xor i32 %729, -1
  %731 = load i32, i32* %13, align 4
  %732 = and i32 %731, %730
  store i32 %732, i32* %13, align 4
  %733 = load i32, i32* %14, align 4
  %734 = load i32, i32* %10, align 4
  %735 = or i32 %734, %733
  store i32 %735, i32* %10, align 4
  %736 = load i32, i32* %15, align 4
  %737 = load i32, i32* %11, align 4
  %738 = or i32 %737, %736
  store i32 %738, i32* %11, align 4
  %739 = load i32, i32* %16, align 4
  %740 = load i32, i32* %12, align 4
  %741 = or i32 %740, %739
  store i32 %741, i32* %12, align 4
  %742 = load i32, i32* %17, align 4
  %743 = load i32, i32* %13, align 4
  %744 = or i32 %743, %742
  store i32 %744, i32* %13, align 4
  br label %872

745:                                              ; preds = %663
  %746 = load i32, i32* %18, align 4
  %747 = and i32 %746, 1
  %748 = icmp ne i32 %747, 0
  %749 = zext i1 %748 to i64
  %750 = select i1 %748, i32 255, i32 0
  %751 = load i32, i32* %20, align 4
  %752 = xor i32 %751, -1
  %753 = or i32 %750, %752
  store i32 %753, i32* %14, align 4
  %754 = load i32, i32* %18, align 4
  %755 = and i32 %754, 2
  %756 = icmp ne i32 %755, 0
  %757 = zext i1 %756 to i64
  %758 = select i1 %756, i32 255, i32 0
  %759 = load i32, i32* %20, align 4
  %760 = xor i32 %759, -1
  %761 = or i32 %758, %760
  store i32 %761, i32* %15, align 4
  %762 = load i32, i32* %18, align 4
  %763 = and i32 %762, 4
  %764 = icmp ne i32 %763, 0
  %765 = zext i1 %764 to i64
  %766 = select i1 %764, i32 255, i32 0
  %767 = load i32, i32* %20, align 4
  %768 = xor i32 %767, -1
  %769 = or i32 %766, %768
  store i32 %769, i32* %16, align 4
  %770 = load i32, i32* %18, align 4
  %771 = and i32 %770, 8
  %772 = icmp ne i32 %771, 0
  %773 = zext i1 %772 to i64
  %774 = select i1 %772, i32 255, i32 0
  %775 = load i32, i32* %20, align 4
  %776 = xor i32 %775, -1
  %777 = or i32 %774, %776
  store i32 %777, i32* %17, align 4
  %778 = load i32, i32* %14, align 4
  %779 = load i32, i32* %10, align 4
  %780 = and i32 %779, %778
  store i32 %780, i32* %10, align 4
  %781 = load i32, i32* %15, align 4
  %782 = load i32, i32* %11, align 4
  %783 = and i32 %782, %781
  store i32 %783, i32* %11, align 4
  %784 = load i32, i32* %16, align 4
  %785 = load i32, i32* %12, align 4
  %786 = and i32 %785, %784
  store i32 %786, i32* %12, align 4
  %787 = load i32, i32* %17, align 4
  %788 = load i32, i32* %13, align 4
  %789 = and i32 %788, %787
  store i32 %789, i32* %13, align 4
  br label %872

790:                                              ; preds = %663
  %791 = load i32, i32* %18, align 4
  %792 = and i32 %791, 1
  %793 = icmp ne i32 %792, 0
  %794 = zext i1 %793 to i64
  %795 = select i1 %793, i32 255, i32 0
  %796 = load i32, i32* %20, align 4
  %797 = and i32 %795, %796
  store i32 %797, i32* %14, align 4
  %798 = load i32, i32* %18, align 4
  %799 = and i32 %798, 2
  %800 = icmp ne i32 %799, 0
  %801 = zext i1 %800 to i64
  %802 = select i1 %800, i32 255, i32 0
  %803 = load i32, i32* %20, align 4
  %804 = and i32 %802, %803
  store i32 %804, i32* %15, align 4
  %805 = load i32, i32* %18, align 4
  %806 = and i32 %805, 4
  %807 = icmp ne i32 %806, 0
  %808 = zext i1 %807 to i64
  %809 = select i1 %807, i32 255, i32 0
  %810 = load i32, i32* %20, align 4
  %811 = and i32 %809, %810
  store i32 %811, i32* %16, align 4
  %812 = load i32, i32* %18, align 4
  %813 = and i32 %812, 8
  %814 = icmp ne i32 %813, 0
  %815 = zext i1 %814 to i64
  %816 = select i1 %814, i32 255, i32 0
  %817 = load i32, i32* %20, align 4
  %818 = and i32 %816, %817
  store i32 %818, i32* %17, align 4
  %819 = load i32, i32* %14, align 4
  %820 = load i32, i32* %10, align 4
  %821 = or i32 %820, %819
  store i32 %821, i32* %10, align 4
  %822 = load i32, i32* %15, align 4
  %823 = load i32, i32* %11, align 4
  %824 = or i32 %823, %822
  store i32 %824, i32* %11, align 4
  %825 = load i32, i32* %16, align 4
  %826 = load i32, i32* %12, align 4
  %827 = or i32 %826, %825
  store i32 %827, i32* %12, align 4
  %828 = load i32, i32* %17, align 4
  %829 = load i32, i32* %13, align 4
  %830 = or i32 %829, %828
  store i32 %830, i32* %13, align 4
  br label %872

831:                                              ; preds = %663
  %832 = load i32, i32* %18, align 4
  %833 = and i32 %832, 1
  %834 = icmp ne i32 %833, 0
  %835 = zext i1 %834 to i64
  %836 = select i1 %834, i32 255, i32 0
  %837 = load i32, i32* %20, align 4
  %838 = and i32 %836, %837
  store i32 %838, i32* %14, align 4
  %839 = load i32, i32* %18, align 4
  %840 = and i32 %839, 2
  %841 = icmp ne i32 %840, 0
  %842 = zext i1 %841 to i64
  %843 = select i1 %841, i32 255, i32 0
  %844 = load i32, i32* %20, align 4
  %845 = and i32 %843, %844
  store i32 %845, i32* %15, align 4
  %846 = load i32, i32* %18, align 4
  %847 = and i32 %846, 4
  %848 = icmp ne i32 %847, 0
  %849 = zext i1 %848 to i64
  %850 = select i1 %848, i32 255, i32 0
  %851 = load i32, i32* %20, align 4
  %852 = and i32 %850, %851
  store i32 %852, i32* %16, align 4
  %853 = load i32, i32* %18, align 4
  %854 = and i32 %853, 8
  %855 = icmp ne i32 %854, 0
  %856 = zext i1 %855 to i64
  %857 = select i1 %855, i32 255, i32 0
  %858 = load i32, i32* %20, align 4
  %859 = and i32 %857, %858
  store i32 %859, i32* %17, align 4
  %860 = load i32, i32* %14, align 4
  %861 = load i32, i32* %10, align 4
  %862 = xor i32 %861, %860
  store i32 %862, i32* %10, align 4
  %863 = load i32, i32* %15, align 4
  %864 = load i32, i32* %11, align 4
  %865 = xor i32 %864, %863
  store i32 %865, i32* %11, align 4
  %866 = load i32, i32* %16, align 4
  %867 = load i32, i32* %12, align 4
  %868 = xor i32 %867, %866
  store i32 %868, i32* %12, align 4
  %869 = load i32, i32* %17, align 4
  %870 = load i32, i32* %13, align 4
  %871 = xor i32 %870, %869
  store i32 %871, i32* %13, align 4
  br label %872

872:                                              ; preds = %663, %831, %790, %745, %688
  br label %873

873:                                              ; preds = %55, %872, %662, %468, %467
  %874 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %875 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %874, i32 0, i32 2
  %876 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %875, i32 0, i32 10
  %877 = load i64, i64* %876, align 8
  %878 = icmp ne i64 %877, 0
  br i1 %878, label %879, label %960

879:                                              ; preds = %873
  %880 = load i32, i32* %21, align 4
  %881 = and i32 %880, 1
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %883, label %922

883:                                              ; preds = %879
  %884 = load i32, i32* %21, align 4
  %885 = and i32 %884, -2
  store i32 %885, i32* %21, align 4
  %886 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %887 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %886, i32 0, i32 1
  %888 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %887, i32 0, i32 0
  %889 = load i32, i32* %888, align 8
  %890 = and i32 %889, 2
  %891 = icmp ne i32 %890, 0
  br i1 %891, label %892, label %903

892:                                              ; preds = %883
  %893 = load i32, i32* %11, align 4
  %894 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %895 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %894, i32 0, i32 0
  %896 = load i32*, i32** %895, align 8
  %897 = load i32, i32* %21, align 4
  %898 = load i32, i32* @KB, align 4
  %899 = mul nsw i32 64, %898
  %900 = add nsw i32 %897, %899
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i32, i32* %896, i64 %901
  store i32 %893, i32* %902, align 4
  br label %903

903:                                              ; preds = %892, %883
  %904 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %905 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %904, i32 0, i32 1
  %906 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %905, i32 0, i32 0
  %907 = load i32, i32* %906, align 8
  %908 = and i32 %907, 8
  %909 = icmp ne i32 %908, 0
  br i1 %909, label %910, label %921

910:                                              ; preds = %903
  %911 = load i32, i32* %13, align 4
  %912 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %913 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %912, i32 0, i32 0
  %914 = load i32*, i32** %913, align 8
  %915 = load i32, i32* %21, align 4
  %916 = load i32, i32* @KB, align 4
  %917 = mul nsw i32 192, %916
  %918 = add nsw i32 %915, %917
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds i32, i32* %914, i64 %919
  store i32 %911, i32* %920, align 4
  br label %921

921:                                              ; preds = %910, %903
  br label %959

922:                                              ; preds = %879
  %923 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %924 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %923, i32 0, i32 1
  %925 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %924, i32 0, i32 0
  %926 = load i32, i32* %925, align 8
  %927 = and i32 %926, 1
  %928 = icmp ne i32 %927, 0
  br i1 %928, label %929, label %940

929:                                              ; preds = %922
  %930 = load i32, i32* %10, align 4
  %931 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %932 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %931, i32 0, i32 0
  %933 = load i32*, i32** %932, align 8
  %934 = load i32, i32* %21, align 4
  %935 = load i32, i32* @KB, align 4
  %936 = mul nsw i32 0, %935
  %937 = add nsw i32 %934, %936
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds i32, i32* %933, i64 %938
  store i32 %930, i32* %939, align 4
  br label %940

940:                                              ; preds = %929, %922
  %941 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %942 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %941, i32 0, i32 1
  %943 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %942, i32 0, i32 0
  %944 = load i32, i32* %943, align 8
  %945 = and i32 %944, 4
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %947, label %958

947:                                              ; preds = %940
  %948 = load i32, i32* %12, align 4
  %949 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %950 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %949, i32 0, i32 0
  %951 = load i32*, i32** %950, align 8
  %952 = load i32, i32* %21, align 4
  %953 = load i32, i32* @KB, align 4
  %954 = mul nsw i32 128, %953
  %955 = add nsw i32 %952, %954
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds i32, i32* %951, i64 %956
  store i32 %948, i32* %957, align 4
  br label %958

958:                                              ; preds = %947, %940
  br label %959

959:                                              ; preds = %958, %921
  br label %1033

960:                                              ; preds = %873
  %961 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %962 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %961, i32 0, i32 1
  %963 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %962, i32 0, i32 0
  %964 = load i32, i32* %963, align 8
  %965 = and i32 %964, 1
  %966 = icmp ne i32 %965, 0
  br i1 %966, label %967, label %978

967:                                              ; preds = %960
  %968 = load i32, i32* %10, align 4
  %969 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %970 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %969, i32 0, i32 0
  %971 = load i32*, i32** %970, align 8
  %972 = load i32, i32* %21, align 4
  %973 = load i32, i32* @KB, align 4
  %974 = mul nsw i32 0, %973
  %975 = add nsw i32 %972, %974
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds i32, i32* %971, i64 %976
  store i32 %968, i32* %977, align 4
  br label %978

978:                                              ; preds = %967, %960
  %979 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %980 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %979, i32 0, i32 1
  %981 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %980, i32 0, i32 0
  %982 = load i32, i32* %981, align 8
  %983 = and i32 %982, 2
  %984 = icmp ne i32 %983, 0
  br i1 %984, label %985, label %996

985:                                              ; preds = %978
  %986 = load i32, i32* %11, align 4
  %987 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %988 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %987, i32 0, i32 0
  %989 = load i32*, i32** %988, align 8
  %990 = load i32, i32* %21, align 4
  %991 = load i32, i32* @KB, align 4
  %992 = mul nsw i32 64, %991
  %993 = add nsw i32 %990, %992
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds i32, i32* %989, i64 %994
  store i32 %986, i32* %995, align 4
  br label %996

996:                                              ; preds = %985, %978
  %997 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %998 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %997, i32 0, i32 1
  %999 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %998, i32 0, i32 0
  %1000 = load i32, i32* %999, align 8
  %1001 = and i32 %1000, 4
  %1002 = icmp ne i32 %1001, 0
  br i1 %1002, label %1003, label %1014

1003:                                             ; preds = %996
  %1004 = load i32, i32* %12, align 4
  %1005 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %1006 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %1005, i32 0, i32 0
  %1007 = load i32*, i32** %1006, align 8
  %1008 = load i32, i32* %21, align 4
  %1009 = load i32, i32* @KB, align 4
  %1010 = mul nsw i32 128, %1009
  %1011 = add nsw i32 %1008, %1010
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds i32, i32* %1007, i64 %1012
  store i32 %1004, i32* %1013, align 4
  br label %1014

1014:                                             ; preds = %1003, %996
  %1015 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %1016 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %1015, i32 0, i32 1
  %1017 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1016, i32 0, i32 0
  %1018 = load i32, i32* %1017, align 8
  %1019 = and i32 %1018, 8
  %1020 = icmp ne i32 %1019, 0
  br i1 %1020, label %1021, label %1032

1021:                                             ; preds = %1014
  %1022 = load i32, i32* %13, align 4
  %1023 = load %struct.vga_softc*, %struct.vga_softc** %9, align 8
  %1024 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %1023, i32 0, i32 0
  %1025 = load i32*, i32** %1024, align 8
  %1026 = load i32, i32* %21, align 4
  %1027 = load i32, i32* @KB, align 4
  %1028 = mul nsw i32 192, %1027
  %1029 = add nsw i32 %1026, %1028
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds i32, i32* %1025, i64 %1030
  store i32 %1022, i32* %1031, align 4
  br label %1032

1032:                                             ; preds = %1021, %1014
  br label %1033

1033:                                             ; preds = %1032, %959
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
