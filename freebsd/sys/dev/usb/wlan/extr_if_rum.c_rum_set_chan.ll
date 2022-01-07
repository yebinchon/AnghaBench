; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfprog = type { i32, i32, i32, i32, i32 }
%struct.rum_softc = type { i64, i32*, i32, %struct.ieee80211com }
%struct.ieee80211com = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

@RT2573_BBPR94_DEFAULT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANY = common dso_local global i32 0, align 4
@RT2573_RF_5225 = common dso_local global i64 0, align 8
@RT2573_RF_2527 = common dso_local global i64 0, align 8
@rum_rf5225 = common dso_local global %struct.rfprog* null, align 8
@rum_rf5226 = common dso_local global %struct.rfprog* null, align 8
@RT2573_RF1 = common dso_local global i32 0, align 4
@RT2573_RF2 = common dso_local global i32 0, align 4
@RT2573_RF3 = common dso_local global i32 0, align 4
@RT2573_RF4 = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@RT2573_SMART_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*, %struct.ieee80211_channel*)* @rum_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_set_chan(%struct.rum_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rum_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.rfprog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %12 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %12, i32 0, i32 3
  store %struct.ieee80211com* %13, %struct.ieee80211com** %5, align 8
  %14 = load i32, i32* @RT2573_BBPR94_DEFAULT, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %15, %struct.ieee80211_channel* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @IEEE80211_CHAN_ANY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %2
  br label %273

25:                                               ; preds = %20
  %26 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %27 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RT2573_RF_5225, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %33 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RT2573_RF_2527, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %25
  %38 = load %struct.rfprog*, %struct.rfprog** @rum_rf5225, align 8
  br label %41

39:                                               ; preds = %31
  %40 = load %struct.rfprog*, %struct.rfprog** @rum_rf5226, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi %struct.rfprog* [ %38, %37 ], [ %40, %39 ]
  store %struct.rfprog* %42, %struct.rfprog** %6, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %53, %41
  %44 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %44, i64 %46
  %48 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %43

56:                                               ; preds = %43
  %57 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %58 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %79

70:                                               ; preds = %56
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 31
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 31
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %8, align 4
  store i32 31, i32* %9, align 4
  br label %78

78:                                               ; preds = %73, %70
  br label %79

79:                                               ; preds = %78, %66
  %80 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %83, i32 0, i32 0
  %85 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %84, align 8
  %86 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %82, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %92 = call i32 @rum_select_band(%struct.rum_softc* %90, %struct.ieee80211_channel* %91)
  %93 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %94 = call i32 @rum_select_antenna(%struct.rum_softc* %93)
  br label %95

95:                                               ; preds = %89, %79
  %96 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %97 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %97, i32 0, i32 0
  store %struct.ieee80211_channel* %96, %struct.ieee80211_channel** %98, align 8
  %99 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %100 = load i32, i32* @RT2573_RF1, align 4
  %101 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %101, i64 %103
  %105 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @rum_rf_write(%struct.rum_softc* %99, i32 %100, i32 %106)
  %108 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %109 = load i32, i32* @RT2573_RF2, align 4
  %110 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %110, i64 %112
  %114 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @rum_rf_write(%struct.rum_softc* %108, i32 %109, i32 %115)
  %117 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %118 = load i32, i32* @RT2573_RF3, align 4
  %119 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %119, i64 %121
  %123 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = shl i32 %125, 7
  %127 = or i32 %124, %126
  %128 = call i32 @rum_rf_write(%struct.rum_softc* %117, i32 %118, i32 %127)
  %129 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %130 = load i32, i32* @RT2573_RF4, align 4
  %131 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %131, i64 %133
  %135 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %138 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 %139, 10
  %141 = or i32 %136, %140
  %142 = call i32 @rum_rf_write(%struct.rum_softc* %129, i32 %130, i32 %141)
  %143 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %144 = load i32, i32* @RT2573_RF1, align 4
  %145 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %145, i64 %147
  %149 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @rum_rf_write(%struct.rum_softc* %143, i32 %144, i32 %150)
  %152 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %153 = load i32, i32* @RT2573_RF2, align 4
  %154 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %154, i64 %156
  %158 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @rum_rf_write(%struct.rum_softc* %152, i32 %153, i32 %159)
  %161 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %162 = load i32, i32* @RT2573_RF3, align 4
  %163 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %163, i64 %165
  %167 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %9, align 4
  %170 = shl i32 %169, 7
  %171 = or i32 %168, %170
  %172 = or i32 %171, 1
  %173 = call i32 @rum_rf_write(%struct.rum_softc* %161, i32 %162, i32 %172)
  %174 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %175 = load i32, i32* @RT2573_RF4, align 4
  %176 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %176, i64 %178
  %180 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %183 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = shl i32 %184, 10
  %186 = or i32 %181, %185
  %187 = call i32 @rum_rf_write(%struct.rum_softc* %174, i32 %175, i32 %186)
  %188 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %189 = load i32, i32* @RT2573_RF1, align 4
  %190 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %190, i64 %192
  %194 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @rum_rf_write(%struct.rum_softc* %188, i32 %189, i32 %195)
  %197 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %198 = load i32, i32* @RT2573_RF2, align 4
  %199 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %199, i64 %201
  %203 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @rum_rf_write(%struct.rum_softc* %197, i32 %198, i32 %204)
  %206 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %207 = load i32, i32* @RT2573_RF3, align 4
  %208 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %208, i64 %210
  %212 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %9, align 4
  %215 = shl i32 %214, 7
  %216 = or i32 %213, %215
  %217 = call i32 @rum_rf_write(%struct.rum_softc* %206, i32 %207, i32 %216)
  %218 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %219 = load i32, i32* @RT2573_RF4, align 4
  %220 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %220, i64 %222
  %224 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %227 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = shl i32 %228, 10
  %230 = or i32 %225, %229
  %231 = call i32 @rum_rf_write(%struct.rum_softc* %218, i32 %219, i32 %230)
  %232 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %233 = load i32, i32* @hz, align 4
  %234 = sdiv i32 %233, 100
  %235 = call i32 @rum_pause(%struct.rum_softc* %232, i32 %234)
  %236 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %237 = call i32 @rum_bbp_read(%struct.rum_softc* %236, i32 3)
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* @RT2573_SMART_MODE, align 4
  %239 = xor i32 %238, -1
  %240 = load i32, i32* %7, align 4
  %241 = and i32 %240, %239
  store i32 %241, i32* %7, align 4
  %242 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %243 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @RT2573_RF_5225, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %95
  %248 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %249 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @RT2573_RF_2527, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %247, %95
  %254 = load i32, i32* @RT2573_SMART_MODE, align 4
  %255 = load i32, i32* %7, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %7, align 4
  br label %257

257:                                              ; preds = %253, %247
  %258 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @rum_bbp_write(%struct.rum_softc* %258, i32 3, i32 %259)
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* @RT2573_BBPR94_DEFAULT, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %257
  %265 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @rum_bbp_write(%struct.rum_softc* %265, i32 94, i32 %266)
  br label %268

268:                                              ; preds = %264, %257
  %269 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %270 = load i32, i32* @hz, align 4
  %271 = sdiv i32 %270, 100
  %272 = call i32 @rum_pause(%struct.rum_softc* %269, i32 %271)
  br label %273

273:                                              ; preds = %268, %24
  ret void
}

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i32 @rum_select_band(%struct.rum_softc*, %struct.ieee80211_channel*) #1

declare dso_local i32 @rum_select_antenna(%struct.rum_softc*) #1

declare dso_local i32 @rum_rf_write(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @rum_pause(%struct.rum_softc*, i32) #1

declare dso_local i32 @rum_bbp_read(%struct.rum_softc*, i32) #1

declare dso_local i32 @rum_bbp_write(%struct.rum_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
