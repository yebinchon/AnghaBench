; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rt2560_softc = type { i32, i32*, %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_CHAN_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"chan 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"setting channel to %u, txpower to %u\0A\00", align 1
@RAL_RF1 = common dso_local global i32 0, align 4
@RAL_RF2 = common dso_local global i32 0, align 4
@rt2560_rf2522_r2 = common dso_local global i32* null, align 8
@RAL_RF3 = common dso_local global i32 0, align 4
@rt2560_rf2523_r2 = common dso_local global i32* null, align 8
@RAL_RF4 = common dso_local global i32 0, align 4
@rt2560_rf2524_r2 = common dso_local global i32* null, align 8
@rt2560_rf2525_hi_r2 = common dso_local global i32* null, align 8
@rt2560_rf2525_r2 = common dso_local global i32* null, align 8
@rt2560_rf2525e_r2 = common dso_local global i32* null, align 8
@rt2560_rf2526_hi_r2 = common dso_local global i32* null, align 8
@rt2560_rf2526_r2 = common dso_local global i32* null, align 8
@rt2560_rf5222 = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown ral rev=%d\0A\00", align 1
@IEEE80211_F_SCAN = common dso_local global i32 0, align 4
@RT2560_JAPAN_FILTER = common dso_local global i32 0, align 4
@RT2560_CNT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*, %struct.ieee80211_channel*)* @rt2560_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_set_chan(%struct.rt2560_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rt2560_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %10 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %10, i32 0, i32 2
  store %struct.ieee80211com* %11, %struct.ieee80211com** %5, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %14 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %12, %struct.ieee80211_channel* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @IEEE80211_CHAN_ANY, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i1 [ false, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %23, i8* %26)
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %29 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %33 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @min(i32 %39, i32 31)
  store i32 %40, i32* %6, align 4
  br label %42

41:                                               ; preds = %21
  store i32 31, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 100, %45
  %47 = sdiv i32 %46, 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @DPRINTFN(%struct.rt2560_softc* %50, i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %55 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %297 [
    i32 134, label %57
    i32 133, label %76
    i32 132, label %102
    i32 131, label %128
    i32 130, label %179
    i32 129, label %205
    i32 128, label %249
  ]

57:                                               ; preds = %42
  %58 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %59 = load i32, i32* @RAL_RF1, align 4
  %60 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %58, i32 %59, i32 2068)
  %61 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %62 = load i32, i32* @RAL_RF2, align 4
  %63 = load i32*, i32** @rt2560_rf2522_r2, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %61, i32 %62, i32 %68)
  %70 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %71 = load i32, i32* @RAL_RF3, align 4
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 %72, 7
  %74 = or i32 %73, 64
  %75 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %70, i32 %71, i32 %74)
  br label %302

76:                                               ; preds = %42
  %77 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %78 = load i32, i32* @RAL_RF1, align 4
  %79 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %77, i32 %78, i32 34820)
  %80 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %81 = load i32, i32* @RAL_RF2, align 4
  %82 = load i32*, i32** @rt2560_rf2523_r2, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %80, i32 %81, i32 %87)
  %89 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %90 = load i32, i32* @RAL_RF3, align 4
  %91 = load i32, i32* %6, align 4
  %92 = shl i32 %91, 7
  %93 = or i32 %92, 229444
  %94 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %89, i32 %90, i32 %93)
  %95 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %96 = load i32, i32* @RAL_RF4, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 14
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 640, i32 646
  %101 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %95, i32 %96, i32 %100)
  br label %302

102:                                              ; preds = %42
  %103 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %104 = load i32, i32* @RAL_RF1, align 4
  %105 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %103, i32 %104, i32 51208)
  %106 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %107 = load i32, i32* @RAL_RF2, align 4
  %108 = load i32*, i32** @rt2560_rf2524_r2, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %106, i32 %107, i32 %113)
  %115 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %116 = load i32, i32* @RAL_RF3, align 4
  %117 = load i32, i32* %6, align 4
  %118 = shl i32 %117, 7
  %119 = or i32 %118, 64
  %120 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %115, i32 %116, i32 %119)
  %121 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %122 = load i32, i32* @RAL_RF4, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp eq i32 %123, 14
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 640, i32 646
  %127 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %121, i32 %122, i32 %126)
  br label %302

128:                                              ; preds = %42
  %129 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %130 = load i32, i32* @RAL_RF1, align 4
  %131 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %129, i32 %130, i32 34824)
  %132 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %133 = load i32, i32* @RAL_RF2, align 4
  %134 = load i32*, i32** @rt2560_rf2525_hi_r2, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %132, i32 %133, i32 %139)
  %141 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %142 = load i32, i32* @RAL_RF3, align 4
  %143 = load i32, i32* %6, align 4
  %144 = shl i32 %143, 7
  %145 = or i32 %144, 98372
  %146 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %141, i32 %142, i32 %145)
  %147 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %148 = load i32, i32* @RAL_RF4, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 14
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 640, i32 646
  %153 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %147, i32 %148, i32 %152)
  %154 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %155 = load i32, i32* @RAL_RF1, align 4
  %156 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %154, i32 %155, i32 34824)
  %157 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %158 = load i32, i32* @RAL_RF2, align 4
  %159 = load i32*, i32** @rt2560_rf2525_r2, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %157, i32 %158, i32 %164)
  %166 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %167 = load i32, i32* @RAL_RF3, align 4
  %168 = load i32, i32* %6, align 4
  %169 = shl i32 %168, 7
  %170 = or i32 %169, 98372
  %171 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %166, i32 %167, i32 %170)
  %172 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %173 = load i32, i32* @RAL_RF4, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp eq i32 %174, 14
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 640, i32 646
  %178 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %172, i32 %173, i32 %177)
  br label %302

179:                                              ; preds = %42
  %180 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %181 = load i32, i32* @RAL_RF1, align 4
  %182 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %180, i32 %181, i32 34824)
  %183 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %184 = load i32, i32* @RAL_RF2, align 4
  %185 = load i32*, i32** @rt2560_rf2525e_r2, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %183, i32 %184, i32 %190)
  %192 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %193 = load i32, i32* @RAL_RF3, align 4
  %194 = load i32, i32* %6, align 4
  %195 = shl i32 %194, 7
  %196 = or i32 %195, 98372
  %197 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %192, i32 %193, i32 %196)
  %198 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %199 = load i32, i32* @RAL_RF4, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp eq i32 %200, 14
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 646, i32 642
  %204 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %198, i32 %199, i32 %203)
  br label %302

205:                                              ; preds = %42
  %206 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %207 = load i32, i32* @RAL_RF2, align 4
  %208 = load i32*, i32** @rt2560_rf2526_hi_r2, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %206, i32 %207, i32 %213)
  %215 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %216 = load i32, i32* @RAL_RF4, align 4
  %217 = load i32, i32* %9, align 4
  %218 = and i32 %217, 1
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 902, i32 897
  %222 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %215, i32 %216, i32 %221)
  %223 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %224 = load i32, i32* @RAL_RF1, align 4
  %225 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %223, i32 %224, i32 34820)
  %226 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %227 = load i32, i32* @RAL_RF2, align 4
  %228 = load i32*, i32** @rt2560_rf2526_r2, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %226, i32 %227, i32 %233)
  %235 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %236 = load i32, i32* @RAL_RF3, align 4
  %237 = load i32, i32* %6, align 4
  %238 = shl i32 %237, 7
  %239 = or i32 %238, 98372
  %240 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %235, i32 %236, i32 %239)
  %241 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %242 = load i32, i32* @RAL_RF4, align 4
  %243 = load i32, i32* %9, align 4
  %244 = and i32 %243, 1
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i32 902, i32 897
  %248 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %241, i32 %242, i32 %247)
  br label %302

249:                                              ; preds = %42
  store i32 0, i32* %8, align 4
  br label %250

250:                                              ; preds = %260, %249
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt2560_rf5222, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %9, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %250
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %8, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %8, align 4
  br label %250

263:                                              ; preds = %250
  %264 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %265 = load i32, i32* @RAL_RF1, align 4
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt2560_rf5222, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %264, i32 %265, i32 %271)
  %273 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %274 = load i32, i32* @RAL_RF2, align 4
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt2560_rf5222, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %273, i32 %274, i32 %280)
  %282 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %283 = load i32, i32* @RAL_RF3, align 4
  %284 = load i32, i32* %6, align 4
  %285 = shl i32 %284, 7
  %286 = or i32 %285, 64
  %287 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %282, i32 %283, i32 %286)
  %288 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %289 = load i32, i32* @RAL_RF4, align 4
  %290 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt2560_rf5222, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @rt2560_rf_write(%struct.rt2560_softc* %288, i32 %289, i32 %295)
  br label %302

297:                                              ; preds = %42
  %298 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %299 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %300)
  br label %302

302:                                              ; preds = %297, %263, %205, %179, %128, %102, %76, %57
  %303 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %304 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %307 = and i32 %305, %306
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %329

309:                                              ; preds = %302
  %310 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %311 = call i32 @rt2560_bbp_read(%struct.rt2560_softc* %310, i32 70)
  store i32 %311, i32* %7, align 4
  %312 = load i32, i32* @RT2560_JAPAN_FILTER, align 4
  %313 = xor i32 %312, -1
  %314 = load i32, i32* %7, align 4
  %315 = and i32 %314, %313
  store i32 %315, i32* %7, align 4
  %316 = load i32, i32* %9, align 4
  %317 = icmp eq i32 %316, 14
  br i1 %317, label %318, label %322

318:                                              ; preds = %309
  %319 = load i32, i32* @RT2560_JAPAN_FILTER, align 4
  %320 = load i32, i32* %7, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %7, align 4
  br label %322

322:                                              ; preds = %318, %309
  %323 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %324 = load i32, i32* %7, align 4
  %325 = call i32 @rt2560_bbp_write(%struct.rt2560_softc* %323, i32 70, i32 %324)
  %326 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %327 = load i32, i32* @RT2560_CNT0, align 4
  %328 = call i32 @RAL_READ(%struct.rt2560_softc* %326, i32 %327)
  br label %329

329:                                              ; preds = %322, %302
  ret void
}

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DPRINTFN(%struct.rt2560_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @rt2560_rf_write(%struct.rt2560_softc*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @rt2560_bbp_read(%struct.rt2560_softc*, i32) #1

declare dso_local i32 @rt2560_bbp_write(%struct.rt2560_softc*, i32, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2560_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
