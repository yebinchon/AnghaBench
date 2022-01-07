; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt5390_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt5390_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.rt2860_softc = type { i32*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"chan %d not support\00", align 1
@rt2860_rf2850 = common dso_local global %struct.TYPE_4__* null, align 8
@rt3090_freqs = common dso_local global %struct.TYPE_3__* null, align 8
@RT3070_RF_BLOCK = common dso_local global i32 0, align 4
@RT3070_PLL_PD = common dso_local global i32 0, align 4
@RT3070_RX0_PD = common dso_local global i32 0, align 4
@RT3070_TX0_PD = common dso_local global i32 0, align 4
@RT3070_RX1_PD = common dso_local global i32 0, align 4
@RT3070_TX1_PD = common dso_local global i32 0, align 4
@RT3593_RESCAL = common dso_local global i32 0, align 4
@RT3593_VCOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*, i32)* @rt5390_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5390_set_chan(%struct.rt2860_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 14
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i1 [ false, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %33, %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt2860_rf2850, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %38 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %45 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3090_freqs, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %51, i32 8, i32 %57)
  %59 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3090_freqs, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 15
  %67 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %59, i32 9, i32 %66)
  %68 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %69 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %68, i32 11)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, -4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3090_freqs, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 3
  %79 = or i32 %71, %78
  store i32 %79, i32* %6, align 4
  %80 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %80, i32 11, i32 %81)
  %83 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %84 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %83, i32 49)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, -64
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 63
  %89 = or i32 %86, %88
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 63
  %92 = icmp sgt i32 %91, 39
  br i1 %92, label %93, label %97

93:                                               ; preds = %36
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, -64
  %96 = or i32 %95, 39
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %36
  %98 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %98, i32 49, i32 %99)
  %101 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %102 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 21394
  br i1 %104, label %105, label %124

105:                                              ; preds = %97
  %106 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %107 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %106, i32 50)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, -64
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, 63
  %112 = or i32 %109, %111
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = and i32 %113, 63
  %115 = icmp sgt i32 %114, 39
  br i1 %115, label %116, label %120

116:                                              ; preds = %105
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, -64
  %119 = or i32 %118, 39
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %116, %105
  %121 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %121, i32 50, i32 %122)
  br label %124

124:                                              ; preds = %120, %97
  %125 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %126 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %125, i32 1)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* @RT3070_RF_BLOCK, align 4
  %128 = load i32, i32* @RT3070_PLL_PD, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @RT3070_RX0_PD, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @RT3070_TX0_PD, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  %136 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %137 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 21394
  br i1 %139, label %140, label %146

140:                                              ; preds = %124
  %141 = load i32, i32* @RT3070_RX1_PD, align 4
  %142 = load i32, i32* @RT3070_TX1_PD, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %6, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %140, %124
  %147 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %147, i32 1, i32 %148)
  %150 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %151 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %150, i32 2)
  store i32 %151, i32* %6, align 4
  %152 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @RT3593_RESCAL, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %152, i32 2, i32 %155)
  %157 = call i32 @DELAY(i32 1000)
  %158 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @RT3593_RESCAL, align 4
  %161 = xor i32 %160, -1
  %162 = and i32 %159, %161
  %163 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %158, i32 2, i32 %162)
  %164 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %165 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %164, i32 17)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %6, align 4
  %168 = and i32 %167, -128
  %169 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %170 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 127
  %173 = or i32 %168, %172
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @MIN(i32 %174, i32 95)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %146
  %180 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %181 = load i32, i32* %7, align 4
  %182 = shl i32 %181, 8
  %183 = load i32, i32* %6, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %180, i32 116, i32 %184, i32 0)
  br label %186

186:                                              ; preds = %179, %146
  %187 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %188 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 21392
  br i1 %190, label %191, label %255

191:                                              ; preds = %186
  %192 = load i32, i32* %4, align 4
  %193 = icmp sle i32 %192, 4
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 115, i32* %6, align 4
  br label %212

195:                                              ; preds = %191
  %196 = load i32, i32* %4, align 4
  %197 = icmp sge i32 %196, 5
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i32, i32* %4, align 4
  %200 = icmp sle i32 %199, 6
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 99, i32* %6, align 4
  br label %211

202:                                              ; preds = %198, %195
  %203 = load i32, i32* %4, align 4
  %204 = icmp sge i32 %203, 7
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32, i32* %4, align 4
  %207 = icmp sle i32 %206, 10
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 83, i32* %6, align 4
  br label %210

209:                                              ; preds = %205, %202
  store i32 43, i32* %6, align 4
  br label %210

210:                                              ; preds = %209, %208
  br label %211

211:                                              ; preds = %210, %201
  br label %212

212:                                              ; preds = %211, %194
  %213 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %213, i32 55, i32 %214)
  %216 = load i32, i32* %4, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  store i32 12, i32* %6, align 4
  br label %251

219:                                              ; preds = %212
  %220 = load i32, i32* %4, align 4
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  store i32 11, i32* %6, align 4
  br label %250

223:                                              ; preds = %219
  %224 = load i32, i32* %4, align 4
  %225 = icmp eq i32 %224, 3
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 10, i32* %6, align 4
  br label %249

227:                                              ; preds = %223
  %228 = load i32, i32* %4, align 4
  %229 = icmp sge i32 %228, 4
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i32, i32* %4, align 4
  %232 = icmp sle i32 %231, 6
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  store i32 9, i32* %6, align 4
  br label %248

234:                                              ; preds = %230, %227
  %235 = load i32, i32* %4, align 4
  %236 = icmp sge i32 %235, 7
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load i32, i32* %4, align 4
  %239 = icmp sle i32 %238, 12
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store i32 8, i32* %6, align 4
  br label %247

241:                                              ; preds = %237, %234
  %242 = load i32, i32* %4, align 4
  %243 = icmp eq i32 %242, 13
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store i32 7, i32* %6, align 4
  br label %246

245:                                              ; preds = %241
  store i32 6, i32* %6, align 4
  br label %246

246:                                              ; preds = %245, %244
  br label %247

247:                                              ; preds = %246, %240
  br label %248

248:                                              ; preds = %247, %233
  br label %249

249:                                              ; preds = %248, %226
  br label %250

250:                                              ; preds = %249, %222
  br label %251

251:                                              ; preds = %250, %218
  %252 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %253 = load i32, i32* %6, align 4
  %254 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %252, i32 59, i32 %253)
  br label %255

255:                                              ; preds = %251, %186
  %256 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %257 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, 32
  %260 = ashr i32 %259, 5
  store i32 %260, i32* %5, align 4
  %261 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %262 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %261, i32 30)
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = and i32 %263, -7
  %265 = load i32, i32* %5, align 4
  %266 = shl i32 %265, 1
  %267 = or i32 %264, %266
  %268 = load i32, i32* %5, align 4
  %269 = shl i32 %268, 2
  %270 = or i32 %267, %269
  store i32 %270, i32* %6, align 4
  %271 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %272 = load i32, i32* %6, align 4
  %273 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %271, i32 30, i32 %272)
  %274 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %275 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %274, i32 30)
  store i32 %275, i32* %6, align 4
  %276 = load i32, i32* %6, align 4
  %277 = and i32 %276, -25
  %278 = or i32 %277, 16
  store i32 %278, i32* %6, align 4
  %279 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %280 = load i32, i32* %6, align 4
  %281 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %279, i32 30, i32 %280)
  %282 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %283 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %282, i32 3)
  store i32 %283, i32* %6, align 4
  %284 = load i32, i32* @RT3593_VCOCAL, align 4
  %285 = load i32, i32* %6, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %6, align 4
  %287 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %288 = load i32, i32* %6, align 4
  %289 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %287, i32 3, i32 %288)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rt3090_rf_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt3090_rf_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @rt2860_mcu_cmd(%struct.rt2860_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
