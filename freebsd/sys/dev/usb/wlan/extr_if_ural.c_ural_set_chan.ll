; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ural_softc = type { i32, i32*, %struct.ieee80211com }
%struct.ieee80211com = type { i32, i64, i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_CHAN_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"setting channel to %u, txpower to %u\0A\00", align 1
@RAL_RF1 = common dso_local global i32 0, align 4
@RAL_RF2 = common dso_local global i32 0, align 4
@ural_rf2522_r2 = common dso_local global i32* null, align 8
@RAL_RF3 = common dso_local global i32 0, align 4
@ural_rf2523_r2 = common dso_local global i32* null, align 8
@RAL_RF4 = common dso_local global i32 0, align 4
@ural_rf2524_r2 = common dso_local global i32* null, align 8
@ural_rf2525_hi_r2 = common dso_local global i32* null, align 8
@ural_rf2525_r2 = common dso_local global i32* null, align 8
@ural_rf2525e_r2 = common dso_local global i32* null, align 8
@ural_rf2526_hi_r2 = common dso_local global i32* null, align 8
@ural_rf2526_r2 = common dso_local global i32* null, align 8
@ural_rf5222 = common dso_local global %struct.TYPE_2__* null, align 8
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@IEEE80211_F_SCAN = common dso_local global i32 0, align 4
@RAL_JAPAN_FILTER = common dso_local global i32 0, align 4
@RAL_STA_CSR0 = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*, %struct.ieee80211_channel*)* @ural_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_set_chan(%struct.ural_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ural_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %10 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %10, i32 0, i32 2
  store %struct.ieee80211com* %11, %struct.ieee80211com** %5, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %14 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %12, %struct.ieee80211_channel* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @IEEE80211_CHAN_ANY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  br label %338

22:                                               ; preds = %17
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %24 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @min(i32 %34, i32 31)
  store i32 %35, i32* %6, align 4
  br label %37

36:                                               ; preds = %22
  store i32 31, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 100, %40
  %42 = sdiv i32 %41, 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %291 [
    i32 134, label %51
    i32 133, label %70
    i32 132, label %96
    i32 131, label %122
    i32 130, label %173
    i32 129, label %199
    i32 128, label %243
  ]

51:                                               ; preds = %37
  %52 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %53 = load i32, i32* @RAL_RF1, align 4
  %54 = call i32 @ural_rf_write(%struct.ural_softc* %52, i32 %53, i32 2068)
  %55 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %56 = load i32, i32* @RAL_RF2, align 4
  %57 = load i32*, i32** @ural_rf2522_r2, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ural_rf_write(%struct.ural_softc* %55, i32 %56, i32 %62)
  %64 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %65 = load i32, i32* @RAL_RF3, align 4
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 %66, 7
  %68 = or i32 %67, 64
  %69 = call i32 @ural_rf_write(%struct.ural_softc* %64, i32 %65, i32 %68)
  br label %291

70:                                               ; preds = %37
  %71 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %72 = load i32, i32* @RAL_RF1, align 4
  %73 = call i32 @ural_rf_write(%struct.ural_softc* %71, i32 %72, i32 34820)
  %74 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %75 = load i32, i32* @RAL_RF2, align 4
  %76 = load i32*, i32** @ural_rf2523_r2, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ural_rf_write(%struct.ural_softc* %74, i32 %75, i32 %81)
  %83 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %84 = load i32, i32* @RAL_RF3, align 4
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 %85, 7
  %87 = or i32 %86, 229444
  %88 = call i32 @ural_rf_write(%struct.ural_softc* %83, i32 %84, i32 %87)
  %89 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %90 = load i32, i32* @RAL_RF4, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 14
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 640, i32 646
  %95 = call i32 @ural_rf_write(%struct.ural_softc* %89, i32 %90, i32 %94)
  br label %291

96:                                               ; preds = %37
  %97 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %98 = load i32, i32* @RAL_RF1, align 4
  %99 = call i32 @ural_rf_write(%struct.ural_softc* %97, i32 %98, i32 51208)
  %100 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %101 = load i32, i32* @RAL_RF2, align 4
  %102 = load i32*, i32** @ural_rf2524_r2, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ural_rf_write(%struct.ural_softc* %100, i32 %101, i32 %107)
  %109 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %110 = load i32, i32* @RAL_RF3, align 4
  %111 = load i32, i32* %6, align 4
  %112 = shl i32 %111, 7
  %113 = or i32 %112, 64
  %114 = call i32 @ural_rf_write(%struct.ural_softc* %109, i32 %110, i32 %113)
  %115 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %116 = load i32, i32* @RAL_RF4, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 14
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 640, i32 646
  %121 = call i32 @ural_rf_write(%struct.ural_softc* %115, i32 %116, i32 %120)
  br label %291

122:                                              ; preds = %37
  %123 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %124 = load i32, i32* @RAL_RF1, align 4
  %125 = call i32 @ural_rf_write(%struct.ural_softc* %123, i32 %124, i32 34824)
  %126 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %127 = load i32, i32* @RAL_RF2, align 4
  %128 = load i32*, i32** @ural_rf2525_hi_r2, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ural_rf_write(%struct.ural_softc* %126, i32 %127, i32 %133)
  %135 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %136 = load i32, i32* @RAL_RF3, align 4
  %137 = load i32, i32* %6, align 4
  %138 = shl i32 %137, 7
  %139 = or i32 %138, 98372
  %140 = call i32 @ural_rf_write(%struct.ural_softc* %135, i32 %136, i32 %139)
  %141 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %142 = load i32, i32* @RAL_RF4, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, 14
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 640, i32 646
  %147 = call i32 @ural_rf_write(%struct.ural_softc* %141, i32 %142, i32 %146)
  %148 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %149 = load i32, i32* @RAL_RF1, align 4
  %150 = call i32 @ural_rf_write(%struct.ural_softc* %148, i32 %149, i32 34824)
  %151 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %152 = load i32, i32* @RAL_RF2, align 4
  %153 = load i32*, i32** @ural_rf2525_r2, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ural_rf_write(%struct.ural_softc* %151, i32 %152, i32 %158)
  %160 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %161 = load i32, i32* @RAL_RF3, align 4
  %162 = load i32, i32* %6, align 4
  %163 = shl i32 %162, 7
  %164 = or i32 %163, 98372
  %165 = call i32 @ural_rf_write(%struct.ural_softc* %160, i32 %161, i32 %164)
  %166 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %167 = load i32, i32* @RAL_RF4, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp eq i32 %168, 14
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 640, i32 646
  %172 = call i32 @ural_rf_write(%struct.ural_softc* %166, i32 %167, i32 %171)
  br label %291

173:                                              ; preds = %37
  %174 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %175 = load i32, i32* @RAL_RF1, align 4
  %176 = call i32 @ural_rf_write(%struct.ural_softc* %174, i32 %175, i32 34824)
  %177 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %178 = load i32, i32* @RAL_RF2, align 4
  %179 = load i32*, i32** @ural_rf2525e_r2, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ural_rf_write(%struct.ural_softc* %177, i32 %178, i32 %184)
  %186 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %187 = load i32, i32* @RAL_RF3, align 4
  %188 = load i32, i32* %6, align 4
  %189 = shl i32 %188, 7
  %190 = or i32 %189, 98372
  %191 = call i32 @ural_rf_write(%struct.ural_softc* %186, i32 %187, i32 %190)
  %192 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %193 = load i32, i32* @RAL_RF4, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp eq i32 %194, 14
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 646, i32 642
  %198 = call i32 @ural_rf_write(%struct.ural_softc* %192, i32 %193, i32 %197)
  br label %291

199:                                              ; preds = %37
  %200 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %201 = load i32, i32* @RAL_RF2, align 4
  %202 = load i32*, i32** @ural_rf2526_hi_r2, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ural_rf_write(%struct.ural_softc* %200, i32 %201, i32 %207)
  %209 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %210 = load i32, i32* @RAL_RF4, align 4
  %211 = load i32, i32* %9, align 4
  %212 = and i32 %211, 1
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 902, i32 897
  %216 = call i32 @ural_rf_write(%struct.ural_softc* %209, i32 %210, i32 %215)
  %217 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %218 = load i32, i32* @RAL_RF1, align 4
  %219 = call i32 @ural_rf_write(%struct.ural_softc* %217, i32 %218, i32 34820)
  %220 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %221 = load i32, i32* @RAL_RF2, align 4
  %222 = load i32*, i32** @ural_rf2526_r2, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @ural_rf_write(%struct.ural_softc* %220, i32 %221, i32 %227)
  %229 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %230 = load i32, i32* @RAL_RF3, align 4
  %231 = load i32, i32* %6, align 4
  %232 = shl i32 %231, 7
  %233 = or i32 %232, 98372
  %234 = call i32 @ural_rf_write(%struct.ural_softc* %229, i32 %230, i32 %233)
  %235 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %236 = load i32, i32* @RAL_RF4, align 4
  %237 = load i32, i32* %9, align 4
  %238 = and i32 %237, 1
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 902, i32 897
  %242 = call i32 @ural_rf_write(%struct.ural_softc* %235, i32 %236, i32 %241)
  br label %291

243:                                              ; preds = %37
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %254, %243
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ural_rf5222, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %9, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %244
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %244

257:                                              ; preds = %244
  %258 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %259 = load i32, i32* @RAL_RF1, align 4
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ural_rf5222, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @ural_rf_write(%struct.ural_softc* %258, i32 %259, i32 %265)
  %267 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %268 = load i32, i32* @RAL_RF2, align 4
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ural_rf5222, align 8
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ural_rf_write(%struct.ural_softc* %267, i32 %268, i32 %274)
  %276 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %277 = load i32, i32* @RAL_RF3, align 4
  %278 = load i32, i32* %6, align 4
  %279 = shl i32 %278, 7
  %280 = or i32 %279, 64
  %281 = call i32 @ural_rf_write(%struct.ural_softc* %276, i32 %277, i32 %280)
  %282 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %283 = load i32, i32* @RAL_RF4, align 4
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ural_rf5222, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @ural_rf_write(%struct.ural_softc* %282, i32 %283, i32 %289)
  br label %291

291:                                              ; preds = %37, %257, %199, %173, %122, %96, %70, %51
  %292 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %293 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %330

297:                                              ; preds = %291
  %298 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %299 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %302 = and i32 %300, %301
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %330

304:                                              ; preds = %297
  %305 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %306 = call i32 @ural_bbp_read(%struct.ural_softc* %305, i32 70)
  store i32 %306, i32* %7, align 4
  %307 = load i32, i32* @RAL_JAPAN_FILTER, align 4
  %308 = xor i32 %307, -1
  %309 = load i32, i32* %7, align 4
  %310 = and i32 %309, %308
  store i32 %310, i32* %7, align 4
  %311 = load i32, i32* %9, align 4
  %312 = icmp eq i32 %311, 14
  br i1 %312, label %313, label %317

313:                                              ; preds = %304
  %314 = load i32, i32* @RAL_JAPAN_FILTER, align 4
  %315 = load i32, i32* %7, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %7, align 4
  br label %317

317:                                              ; preds = %313, %304
  %318 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %319 = load i32, i32* %7, align 4
  %320 = call i32 @ural_bbp_write(%struct.ural_softc* %318, i32 70, i32 %319)
  %321 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %322 = load i32, i32* @RAL_STA_CSR0, align 4
  %323 = call i32 @ural_read(%struct.ural_softc* %321, i32 %322)
  %324 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %325 = load i32, i32* @hz, align 4
  %326 = sdiv i32 %325, 100
  %327 = call i32 @ural_pause(%struct.ural_softc* %324, i32 %326)
  %328 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %329 = call i32 @ural_disable_rf_tune(%struct.ural_softc* %328)
  br label %330

330:                                              ; preds = %317, %297, %291
  %331 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %332 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %333 = call i32 @ural_set_basicrates(%struct.ural_softc* %331, %struct.ieee80211_channel* %332)
  %334 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %335 = load i32, i32* @hz, align 4
  %336 = sdiv i32 %335, 100
  %337 = call i32 @ural_pause(%struct.ural_softc* %334, i32 %336)
  br label %338

338:                                              ; preds = %330, %21
  ret void
}

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

declare dso_local i32 @ural_rf_write(%struct.ural_softc*, i32, i32) #1

declare dso_local i32 @ural_bbp_read(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_bbp_write(%struct.ural_softc*, i32, i32) #1

declare dso_local i32 @ural_read(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_pause(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_disable_rf_tune(%struct.ural_softc*) #1

declare dso_local i32 @ural_set_basicrates(%struct.ural_softc*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
