; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt5592_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt5592_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5592_freqs = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.run_softc = type { i32*, i32*, i32, i32 }

@RT5592_DEBUG_INDEX = common dso_local global i32 0, align 4
@RT5592_SEL_XTAL = common dso_local global i32 0, align 4
@rt5592_freqs_40mhz = common dso_local global %struct.rt5592_freqs* null, align 8
@rt5592_freqs_20mhz = common dso_local global %struct.rt5592_freqs* null, align 8
@rt2860_rf2850 = common dso_local global %struct.TYPE_7__* null, align 8
@RT3070_LDO_CFG0 = common dso_local global i32 0, align 4
@rt5592_2ghz_def_rf = common dso_local global %struct.TYPE_6__* null, align 8
@rt5592_5ghz_def_rf = common dso_local global %struct.TYPE_6__* null, align 8
@rt5592_chan_5ghz = common dso_local global %struct.TYPE_6__* null, align 8
@RT3070_RF_BLOCK = common dso_local global i32 0, align 4
@RT3070_PLL_PD = common dso_local global i32 0, align 4
@RT3070_RX0_PD = common dso_local global i32 0, align 4
@RT3070_TX0_PD = common dso_local global i32 0, align 4
@RT3070_TX1_PD = common dso_local global i32 0, align 4
@RT3070_RX1_PD = common dso_local global i32 0, align 4
@RT5390_VCOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, i64)* @run_rt5592_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt5592_set_chan(%struct.run_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rt5592_freqs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %14 = load i32, i32* @RT5592_DEBUG_INDEX, align 4
  %15 = call i32 @run_read(%struct.run_softc* %13, i32 %14, i32* %6)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @RT5592_SEL_XTAL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load %struct.rt5592_freqs*, %struct.rt5592_freqs** @rt5592_freqs_40mhz, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load %struct.rt5592_freqs*, %struct.rt5592_freqs** @rt5592_freqs_20mhz, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi %struct.rt5592_freqs* [ %21, %20 ], [ %23, %22 ]
  store %struct.rt5592_freqs* %25, %struct.rt5592_freqs** %5, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %36, %24
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt2860_rf2850, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = load %struct.rt5592_freqs*, %struct.rt5592_freqs** %5, align 8
  %40 = getelementptr inbounds %struct.rt5592_freqs, %struct.rt5592_freqs* %39, i32 1
  store %struct.rt5592_freqs* %40, %struct.rt5592_freqs** %5, align 8
  br label %26

41:                                               ; preds = %26
  %42 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %43 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %50 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %57 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %58 = call i32 @run_read(%struct.run_softc* %56, i32 %57, i32* %6)
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, -469762049
  store i32 %60, i32* %6, align 4
  %61 = load i64, i64* %4, align 8
  %62 = icmp sgt i64 %61, 14
  br i1 %62, label %63, label %66

63:                                               ; preds = %41
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, 335544320
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %41
  %67 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %68 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @run_write(%struct.run_softc* %67, i32 %68, i32 %69)
  %71 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %72 = load %struct.rt5592_freqs*, %struct.rt5592_freqs** %5, align 8
  %73 = getelementptr inbounds %struct.rt5592_freqs, %struct.rt5592_freqs* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 255
  %76 = call i32 @run_rt3070_rf_write(%struct.run_softc* %71, i32 8, i32 %75)
  %77 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %78 = call i32 @run_rt3070_rf_read(%struct.run_softc* %77, i32 9, i32* %8)
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, -17
  store i32 %80, i32* %8, align 4
  %81 = load %struct.rt5592_freqs*, %struct.rt5592_freqs** %5, align 8
  %82 = getelementptr inbounds %struct.rt5592_freqs, %struct.rt5592_freqs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 256
  %85 = ashr i32 %84, 8
  %86 = shl i32 %85, 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @run_rt3070_rf_write(%struct.run_softc* %89, i32 9, i32 %90)
  %92 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %93 = call i32 @run_rt3070_rf_read(%struct.run_softc* %92, i32 9, i32* %8)
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, -16
  store i32 %95, i32* %8, align 4
  %96 = load %struct.rt5592_freqs*, %struct.rt5592_freqs** %5, align 8
  %97 = getelementptr inbounds %struct.rt5592_freqs, %struct.rt5592_freqs* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 15
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @run_rt3070_rf_write(%struct.run_softc* %102, i32 9, i32 %103)
  %105 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %106 = call i32 @run_rt3070_rf_read(%struct.run_softc* %105, i32 11, i32* %8)
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, -13
  store i32 %108, i32* %8, align 4
  %109 = load %struct.rt5592_freqs*, %struct.rt5592_freqs** %5, align 8
  %110 = getelementptr inbounds %struct.rt5592_freqs, %struct.rt5592_freqs* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 8
  %113 = and i32 %112, 3
  %114 = shl i32 %113, 2
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  %117 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @run_rt3070_rf_write(%struct.run_softc* %117, i32 11, i32 %118)
  %120 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %121 = call i32 @run_rt3070_rf_read(%struct.run_softc* %120, i32 9, i32* %8)
  %122 = load i32, i32* %8, align 4
  %123 = and i32 %122, -129
  store i32 %123, i32* %8, align 4
  %124 = load %struct.rt5592_freqs*, %struct.rt5592_freqs** %5, align 8
  %125 = getelementptr inbounds %struct.rt5592_freqs, %struct.rt5592_freqs* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 8
  %128 = and i32 %127, 4
  %129 = ashr i32 %128, 2
  %130 = shl i32 %129, 7
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  %133 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @run_rt3070_rf_write(%struct.run_softc* %133, i32 9, i32 %134)
  %136 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %137 = call i32 @run_rt3070_rf_read(%struct.run_softc* %136, i32 11, i32* %8)
  %138 = load i32, i32* %8, align 4
  %139 = and i32 %138, -4
  store i32 %139, i32* %8, align 4
  %140 = load %struct.rt5592_freqs*, %struct.rt5592_freqs** %5, align 8
  %141 = getelementptr inbounds %struct.rt5592_freqs, %struct.rt5592_freqs* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* %8, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @run_rt3070_rf_write(%struct.run_softc* %146, i32 11, i32 %147)
  %149 = load i64, i64* %4, align 8
  %150 = icmp sle i64 %149, 14
  br i1 %150, label %151, label %188

151:                                              ; preds = %66
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %172, %151
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_2ghz_def_rf, align 8
  %155 = call i32 @nitems(%struct.TYPE_6__* %154)
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %152
  %158 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_2ghz_def_rf, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_2ghz_def_rf, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @run_rt3070_rf_write(%struct.run_softc* %158, i32 %164, i32 %170)
  br label %172

172:                                              ; preds = %157
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %152

175:                                              ; preds = %152
  %176 = load i64, i64* %4, align 8
  %177 = icmp sle i64 %176, 10
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 7, i32 6
  store i32 %179, i32* %8, align 4
  %180 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @run_rt3070_rf_write(%struct.run_softc* %180, i32 23, i32 %181)
  %183 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @run_rt3070_rf_write(%struct.run_softc* %183, i32 59, i32 %184)
  %186 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %187 = call i32 @run_rt3070_rf_write(%struct.run_softc* %186, i32 55, i32 67)
  store i32 2, i32* %7, align 4
  store i32 39, i32* %9, align 4
  br label %256

188:                                              ; preds = %66
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %209, %188
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_5ghz_def_rf, align 8
  %192 = call i32 @nitems(%struct.TYPE_6__* %191)
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %189
  %195 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_5ghz_def_rf, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_5ghz_def_rf, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @run_rt3070_rf_write(%struct.run_softc* %195, i32 %201, i32 %207)
  br label %209

209:                                              ; preds = %194
  %210 = load i32, i32* %12, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %12, align 4
  br label %189

212:                                              ; preds = %189
  store i32 0, i32* %12, align 4
  br label %213

213:                                              ; preds = %252, %212
  %214 = load i32, i32* %12, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_chan_5ghz, align 8
  %216 = call i32 @nitems(%struct.TYPE_6__* %215)
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %255

218:                                              ; preds = %213
  %219 = load i64, i64* %4, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_chan_5ghz, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = icmp sge i64 %219, %225
  br i1 %226, label %227, label %251

227:                                              ; preds = %218
  %228 = load i64, i64* %4, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_chan_5ghz, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp sle i64 %228, %234
  br i1 %235, label %236, label %251

236:                                              ; preds = %227
  %237 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_chan_5ghz, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5592_chan_5ghz, align 8
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @run_rt3070_rf_write(%struct.run_softc* %237, i32 %243, i32 %249)
  br label %251

251:                                              ; preds = %236, %227, %218
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %12, align 4
  br label %213

255:                                              ; preds = %213
  store i32 3, i32* %7, align 4
  store i32 43, i32* %9, align 4
  br label %256

256:                                              ; preds = %255, %175
  %257 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %258 = call i32 @run_rt3070_rf_read(%struct.run_softc* %257, i32 49, i32* %8)
  %259 = load i32, i32* %8, align 4
  %260 = and i32 %259, -193
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %7, align 4
  %262 = shl i32 %261, 6
  %263 = load i32, i32* %8, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %8, align 4
  %266 = and i32 %265, -64
  %267 = load i32, i32* %10, align 4
  %268 = and i32 %267, 63
  %269 = or i32 %266, %268
  store i32 %269, i32* %8, align 4
  %270 = load i32, i32* %8, align 4
  %271 = and i32 %270, 63
  %272 = load i32, i32* %9, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %256
  %275 = load i32, i32* %8, align 4
  %276 = and i32 %275, -64
  %277 = load i32, i32* %9, align 4
  %278 = or i32 %276, %277
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %274, %256
  %280 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %281 = load i32, i32* %8, align 4
  %282 = call i32 @run_rt3070_rf_write(%struct.run_softc* %280, i32 49, i32 %281)
  %283 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %284 = call i32 @run_rt3070_rf_read(%struct.run_softc* %283, i32 50, i32* %8)
  %285 = load i32, i32* %8, align 4
  %286 = and i32 %285, -193
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* %7, align 4
  %288 = shl i32 %287, 6
  %289 = load i32, i32* %8, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = and i32 %291, -64
  %293 = load i32, i32* %11, align 4
  %294 = and i32 %293, 63
  %295 = or i32 %292, %294
  store i32 %295, i32* %8, align 4
  %296 = load i32, i32* %8, align 4
  %297 = and i32 %296, 63
  %298 = load i32, i32* %9, align 4
  %299 = icmp sgt i32 %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %279
  %301 = load i32, i32* %8, align 4
  %302 = and i32 %301, -64
  %303 = load i32, i32* %9, align 4
  %304 = or i32 %302, %303
  store i32 %304, i32* %8, align 4
  br label %305

305:                                              ; preds = %300, %279
  %306 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %307 = load i32, i32* %8, align 4
  %308 = call i32 @run_rt3070_rf_write(%struct.run_softc* %306, i32 50, i32 %307)
  %309 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %310 = call i32 @run_rt3070_rf_read(%struct.run_softc* %309, i32 1, i32* %8)
  %311 = load i32, i32* @RT3070_RF_BLOCK, align 4
  %312 = load i32, i32* @RT3070_PLL_PD, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @RT3070_RX0_PD, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @RT3070_TX0_PD, align 4
  %317 = or i32 %315, %316
  %318 = load i32, i32* %8, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %8, align 4
  %320 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %321 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = icmp sgt i32 %322, 1
  br i1 %323, label %324, label %328

324:                                              ; preds = %305
  %325 = load i32, i32* @RT3070_TX1_PD, align 4
  %326 = load i32, i32* %8, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %8, align 4
  br label %328

328:                                              ; preds = %324, %305
  %329 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %330 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = icmp sgt i32 %331, 1
  br i1 %332, label %333, label %337

333:                                              ; preds = %328
  %334 = load i32, i32* @RT3070_RX1_PD, align 4
  %335 = load i32, i32* %8, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %8, align 4
  br label %337

337:                                              ; preds = %333, %328
  %338 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %339 = load i32, i32* %8, align 4
  %340 = call i32 @run_rt3070_rf_write(%struct.run_softc* %338, i32 1, i32 %339)
  %341 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %342 = call i32 @run_rt3070_rf_write(%struct.run_softc* %341, i32 6, i32 228)
  %343 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %344 = call i32 @run_rt3070_rf_write(%struct.run_softc* %343, i32 30, i32 16)
  %345 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %346 = call i32 @run_rt3070_rf_write(%struct.run_softc* %345, i32 31, i32 128)
  %347 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %348 = call i32 @run_rt3070_rf_write(%struct.run_softc* %347, i32 32, i32 128)
  %349 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %350 = call i32 @run_adjust_freq_offset(%struct.run_softc* %349)
  %351 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %352 = call i32 @run_rt3070_rf_read(%struct.run_softc* %351, i32 3, i32* %8)
  %353 = load i32, i32* @RT5390_VCOCAL, align 4
  %354 = load i32, i32* %8, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %8, align 4
  %356 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %357 = load i32, i32* %8, align 4
  %358 = call i32 @run_rt3070_rf_write(%struct.run_softc* %356, i32 3, i32 %357)
  ret void
}

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @nitems(%struct.TYPE_6__*) #1

declare dso_local i32 @run_adjust_freq_offset(%struct.run_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
