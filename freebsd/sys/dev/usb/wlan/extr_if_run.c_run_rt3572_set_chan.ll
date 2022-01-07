; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3572_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3572_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.run_softc = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@rt2860_rf2850 = common dso_local global %struct.TYPE_4__* null, align 8
@rt3070_freqs = common dso_local global %struct.TYPE_3__* null, align 8
@RT2860_GPIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, i32)* @run_rt3572_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt3572_set_chan(%struct.run_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %20, %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt2860_rf2850, align 8
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %25 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %32 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sle i32 %38, 14
  br i1 %39, label %40, label %51

40:                                               ; preds = %23
  %41 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %42 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %43 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @run_bbp_write(%struct.run_softc* %41, i32 25, i32 %44)
  %46 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %47 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %48 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @run_bbp_write(%struct.run_softc* %46, i32 26, i32 %49)
  br label %56

51:                                               ; preds = %23
  %52 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %53 = call i32 @run_bbp_write(%struct.run_softc* %52, i32 25, i32 9)
  %54 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %55 = call i32 @run_bbp_write(%struct.run_softc* %54, i32 26, i32 255)
  br label %56

56:                                               ; preds = %51, %40
  %57 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @run_rt3070_rf_write(%struct.run_softc* %57, i32 2, i32 %63)
  %65 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @run_rt3070_rf_write(%struct.run_softc* %65, i32 3, i32 %71)
  %73 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %74 = call i32 @run_rt3070_rf_read(%struct.run_softc* %73, i32 6, i32* %8)
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, -16
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %76, %82
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp sle i32 %84, 14
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 8, i32 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @run_rt3070_rf_write(%struct.run_softc* %90, i32 6, i32 %91)
  %93 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %94 = call i32 @run_rt3070_rf_read(%struct.run_softc* %93, i32 5, i32* %8)
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, -13
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp sle i32 %97, 14
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 4, i32 8
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @run_rt3070_rf_write(%struct.run_softc* %103, i32 5, i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = icmp sle i32 %106, 14
  br i1 %107, label %108, label %111

108:                                              ; preds = %56
  %109 = load i32, i32* %5, align 4
  %110 = or i32 96, %109
  store i32 %110, i32* %8, align 4
  br label %119

111:                                              ; preds = %56
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, 12
  %114 = shl i32 %113, 1
  %115 = or i32 224, %114
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, 3
  %118 = or i32 %115, %117
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %111, %108
  %120 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @run_rt3070_rf_write(%struct.run_softc* %120, i32 12, i32 %121)
  %123 = load i32, i32* %4, align 4
  %124 = icmp sle i32 %123, 14
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %6, align 4
  %127 = or i32 96, %126
  store i32 %127, i32* %8, align 4
  br label %136

128:                                              ; preds = %119
  %129 = load i32, i32* %6, align 4
  %130 = and i32 %129, 12
  %131 = shl i32 %130, 1
  %132 = or i32 224, %131
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, 3
  %135 = or i32 %132, %134
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %128, %125
  %137 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @run_rt3070_rf_write(%struct.run_softc* %137, i32 13, i32 %138)
  %140 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %141 = call i32 @run_rt3070_rf_read(%struct.run_softc* %140, i32 1, i32* %8)
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, -253
  store i32 %143, i32* %8, align 4
  %144 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %145 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %136
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, 160
  store i32 %150, i32* %8, align 4
  br label %160

151:                                              ; preds = %136
  %152 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %153 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, 128
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %156, %151
  br label %160

160:                                              ; preds = %159, %148
  %161 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %162 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* %8, align 4
  %167 = or i32 %166, 80
  store i32 %167, i32* %8, align 4
  br label %177

168:                                              ; preds = %160
  %169 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %170 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, i32* %8, align 4
  %175 = or i32 %174, 64
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %173, %168
  br label %177

177:                                              ; preds = %176, %165
  %178 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @run_rt3070_rf_write(%struct.run_softc* %178, i32 1, i32 %179)
  %181 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %182 = call i32 @run_rt3070_rf_read(%struct.run_softc* %181, i32 23, i32* %8)
  %183 = load i32, i32* %8, align 4
  %184 = and i32 %183, -128
  %185 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %186 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %184, %187
  store i32 %188, i32* %8, align 4
  %189 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @run_rt3070_rf_write(%struct.run_softc* %189, i32 23, i32 %190)
  %192 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %193 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %8, align 4
  %195 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @run_rt3070_rf_write(%struct.run_softc* %195, i32 24, i32 %196)
  %198 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @run_rt3070_rf_write(%struct.run_softc* %198, i32 31, i32 %199)
  %201 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %202 = call i32 @run_rt3070_rf_read(%struct.run_softc* %201, i32 7, i32* %8)
  %203 = load i32, i32* %4, align 4
  %204 = icmp sle i32 %203, 14
  br i1 %204, label %205, label %206

205:                                              ; preds = %177
  br label %210

206:                                              ; preds = %177
  %207 = load i32, i32* %8, align 4
  %208 = and i32 %207, -201
  %209 = or i32 %208, 20
  br label %210

210:                                              ; preds = %206, %205
  %211 = phi i32 [ 216, %205 ], [ %209, %206 ]
  store i32 %211, i32* %8, align 4
  %212 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @run_rt3070_rf_write(%struct.run_softc* %212, i32 7, i32 %213)
  %215 = load i32, i32* %4, align 4
  %216 = icmp sle i32 %215, 14
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 195, i32 192
  store i32 %218, i32* %8, align 4
  %219 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @run_rt3070_rf_write(%struct.run_softc* %219, i32 9, i32 %220)
  %222 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %223 = call i32 @run_rt3070_rf_write(%struct.run_softc* %222, i32 10, i32 241)
  %224 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %225 = load i32, i32* %4, align 4
  %226 = icmp sle i32 %225, 14
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 185, i32 0
  %229 = call i32 @run_rt3070_rf_write(%struct.run_softc* %224, i32 11, i32 %228)
  %230 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %231 = load i32, i32* %4, align 4
  %232 = icmp sle i32 %231, 14
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 83, i32 67
  %235 = call i32 @run_rt3070_rf_write(%struct.run_softc* %230, i32 15, i32 %234)
  %236 = load i32, i32* %4, align 4
  %237 = icmp sle i32 %236, 14
  br i1 %237, label %238, label %243

238:                                              ; preds = %210
  %239 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %240 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = or i32 72, %241
  store i32 %242, i32* %8, align 4
  br label %248

243:                                              ; preds = %210
  %244 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %245 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 4
  %247 = or i32 120, %246
  store i32 %247, i32* %8, align 4
  br label %248

248:                                              ; preds = %243, %238
  %249 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @run_rt3070_rf_write(%struct.run_softc* %249, i32 16, i32 %250)
  %252 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %253 = call i32 @run_rt3070_rf_write(%struct.run_softc* %252, i32 17, i32 35)
  %254 = load i32, i32* %4, align 4
  %255 = icmp sle i32 %254, 14
  br i1 %255, label %256, label %257

256:                                              ; preds = %248
  store i32 147, i32* %8, align 4
  br label %268

257:                                              ; preds = %248
  %258 = load i32, i32* %4, align 4
  %259 = icmp sle i32 %258, 64
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  store i32 183, i32* %8, align 4
  br label %267

261:                                              ; preds = %257
  %262 = load i32, i32* %4, align 4
  %263 = icmp sle i32 %262, 128
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 116, i32* %8, align 4
  br label %266

265:                                              ; preds = %261
  store i32 114, i32* %8, align 4
  br label %266

266:                                              ; preds = %265, %264
  br label %267

267:                                              ; preds = %266, %260
  br label %268

268:                                              ; preds = %267, %256
  %269 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @run_rt3070_rf_write(%struct.run_softc* %269, i32 19, i32 %270)
  %272 = load i32, i32* %4, align 4
  %273 = icmp sle i32 %272, 14
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  store i32 179, i32* %8, align 4
  br label %286

275:                                              ; preds = %268
  %276 = load i32, i32* %4, align 4
  %277 = icmp sle i32 %276, 64
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  store i32 246, i32* %8, align 4
  br label %285

279:                                              ; preds = %275
  %280 = load i32, i32* %4, align 4
  %281 = icmp sle i32 %280, 128
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  store i32 244, i32* %8, align 4
  br label %284

283:                                              ; preds = %279
  store i32 243, i32* %8, align 4
  br label %284

284:                                              ; preds = %283, %282
  br label %285

285:                                              ; preds = %284, %278
  br label %286

286:                                              ; preds = %285, %274
  %287 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %288 = load i32, i32* %8, align 4
  %289 = call i32 @run_rt3070_rf_write(%struct.run_softc* %287, i32 20, i32 %288)
  %290 = load i32, i32* %4, align 4
  %291 = icmp sle i32 %290, 14
  br i1 %291, label %292, label %293

292:                                              ; preds = %286
  store i32 21, i32* %8, align 4
  br label %299

293:                                              ; preds = %286
  %294 = load i32, i32* %4, align 4
  %295 = icmp sle i32 %294, 64
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  store i32 61, i32* %8, align 4
  br label %298

297:                                              ; preds = %293
  store i32 1, i32* %8, align 4
  br label %298

298:                                              ; preds = %297, %296
  br label %299

299:                                              ; preds = %298, %292
  %300 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %301 = load i32, i32* %8, align 4
  %302 = call i32 @run_rt3070_rf_write(%struct.run_softc* %300, i32 25, i32 %301)
  %303 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %304 = load i32, i32* %4, align 4
  %305 = icmp sle i32 %304, 14
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i32 133, i32 135
  %308 = call i32 @run_rt3070_rf_write(%struct.run_softc* %303, i32 26, i32 %307)
  %309 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %310 = load i32, i32* %4, align 4
  %311 = icmp sle i32 %310, 14
  %312 = zext i1 %311 to i64
  %313 = select i1 %311, i32 0, i32 1
  %314 = call i32 @run_rt3070_rf_write(%struct.run_softc* %309, i32 27, i32 %313)
  %315 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %316 = load i32, i32* %4, align 4
  %317 = icmp sle i32 %316, 14
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i32 155, i32 159
  %320 = call i32 @run_rt3070_rf_write(%struct.run_softc* %315, i32 29, i32 %319)
  %321 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %322 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %323 = call i32 @run_read(%struct.run_softc* %321, i32 %322, i32* %7)
  %324 = load i32, i32* %7, align 4
  %325 = and i32 %324, -32897
  store i32 %325, i32* %7, align 4
  %326 = load i32, i32* %4, align 4
  %327 = icmp sle i32 %326, 14
  br i1 %327, label %328, label %331

328:                                              ; preds = %299
  %329 = load i32, i32* %7, align 4
  %330 = or i32 %329, 128
  store i32 %330, i32* %7, align 4
  br label %331

331:                                              ; preds = %328, %299
  %332 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %333 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %334 = load i32, i32* %7, align 4
  %335 = call i32 @run_write(%struct.run_softc* %332, i32 %333, i32 %334)
  %336 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %337 = call i32 @run_rt3070_rf_read(%struct.run_softc* %336, i32 7, i32* %8)
  %338 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %339 = load i32, i32* %8, align 4
  %340 = or i32 %339, 1
  %341 = call i32 @run_rt3070_rf_write(%struct.run_softc* %338, i32 7, i32 %340)
  %342 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %343 = call i32 @run_delay(%struct.run_softc* %342, i32 2)
  ret void
}

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
