; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfprog = type { i64, i32, i32, i32, i32 }
%struct.rt2661_softc = type { i32*, i32, i64, %struct.ieee80211_channel*, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_channel = type { i64 }

@RT2661_BBPR94_DEFAULT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"chan 0x%x\00", align 1
@rt2661_rf5225_1 = common dso_local global %struct.rfprog* null, align 8
@rt2661_rf5225_2 = common dso_local global %struct.rfprog* null, align 8
@RAL_RF1 = common dso_local global i32 0, align 4
@RAL_RF2 = common dso_local global i32 0, align 4
@RAL_RF3 = common dso_local global i32 0, align 4
@RAL_RF4 = common dso_local global i32 0, align 4
@RT2661_SMART_MODE = common dso_local global i32 0, align 4
@RT2661_RF_5325 = common dso_local global i64 0, align 8
@RT2661_RF_2529 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2661_softc*, %struct.ieee80211_channel*)* @rt2661_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2661_set_chan(%struct.rt2661_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rt2661_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.rfprog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %12 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %12, i32 0, i32 5
  store %struct.ieee80211com* %13, %struct.ieee80211com** %5, align 8
  %14 = load i32, i32* @RT2661_BBPR94_DEFAULT, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = call i64 @ieee80211_chan2ieee(%struct.ieee80211com* %15, %struct.ieee80211_channel* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @IEEE80211_CHAN_ANY, align 8
  %23 = icmp ne i64 %21, %22
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ false, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %11, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %26, i8* %28)
  %30 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load %struct.rfprog*, %struct.rfprog** @rt2661_rf5225_1, align 8
  br label %38

36:                                               ; preds = %24
  %37 = load %struct.rfprog*, %struct.rfprog** @rt2661_rf5225_2, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi %struct.rfprog* [ %35, %34 ], [ %37, %36 ]
  store %struct.rfprog* %39, %struct.rfprog** %6, align 8
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %49, %38
  %41 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %41, i64 %42
  %44 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %40

52:                                               ; preds = %40
  %53 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %54 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %74

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 31
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, 31
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %8, align 4
  store i32 31, i32* %9, align 4
  br label %73

73:                                               ; preds = %68, %65
  br label %74

74:                                               ; preds = %73, %61
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %79 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %78, i32 0, i32 3
  %80 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %79, align 8
  %81 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %77, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %86 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %87 = call i32 @rt2661_select_band(%struct.rt2661_softc* %85, %struct.ieee80211_channel* %86)
  %88 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %89 = call i32 @rt2661_select_antenna(%struct.rt2661_softc* %88)
  br label %90

90:                                               ; preds = %84, %74
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %92 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %93 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %92, i32 0, i32 3
  store %struct.ieee80211_channel* %91, %struct.ieee80211_channel** %93, align 8
  %94 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %95 = load i32, i32* @RAL_RF1, align 4
  %96 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %96, i64 %97
  %99 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %94, i32 %95, i32 %100)
  %102 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %103 = load i32, i32* @RAL_RF2, align 4
  %104 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %104, i64 %105
  %107 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %102, i32 %103, i32 %108)
  %110 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %111 = load i32, i32* @RAL_RF3, align 4
  %112 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %112, i64 %113
  %115 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = shl i32 %117, 7
  %119 = or i32 %116, %118
  %120 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %110, i32 %111, i32 %119)
  %121 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %122 = load i32, i32* @RAL_RF4, align 4
  %123 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %123, i64 %124
  %126 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %129 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = shl i32 %130, 10
  %132 = or i32 %127, %131
  %133 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %121, i32 %122, i32 %132)
  %134 = call i32 @DELAY(i32 200)
  %135 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %136 = load i32, i32* @RAL_RF1, align 4
  %137 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %138 = load i64, i64* %10, align 8
  %139 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %137, i64 %138
  %140 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %135, i32 %136, i32 %141)
  %143 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %144 = load i32, i32* @RAL_RF2, align 4
  %145 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %146 = load i64, i64* %10, align 8
  %147 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %145, i64 %146
  %148 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %143, i32 %144, i32 %149)
  %151 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %152 = load i32, i32* @RAL_RF3, align 4
  %153 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %154 = load i64, i64* %10, align 8
  %155 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %153, i64 %154
  %156 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = shl i32 %158, 7
  %160 = or i32 %157, %159
  %161 = or i32 %160, 1
  %162 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %151, i32 %152, i32 %161)
  %163 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %164 = load i32, i32* @RAL_RF4, align 4
  %165 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %165, i64 %166
  %168 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %171 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = shl i32 %172, 10
  %174 = or i32 %169, %173
  %175 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %163, i32 %164, i32 %174)
  %176 = call i32 @DELAY(i32 200)
  %177 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %178 = load i32, i32* @RAL_RF1, align 4
  %179 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %180 = load i64, i64* %10, align 8
  %181 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %179, i64 %180
  %182 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %177, i32 %178, i32 %183)
  %185 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %186 = load i32, i32* @RAL_RF2, align 4
  %187 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %188 = load i64, i64* %10, align 8
  %189 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %187, i64 %188
  %190 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %185, i32 %186, i32 %191)
  %193 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %194 = load i32, i32* @RAL_RF3, align 4
  %195 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %196 = load i64, i64* %10, align 8
  %197 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %195, i64 %196
  %198 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = shl i32 %200, 7
  %202 = or i32 %199, %201
  %203 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %193, i32 %194, i32 %202)
  %204 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %205 = load i32, i32* @RAL_RF4, align 4
  %206 = load %struct.rfprog*, %struct.rfprog** %6, align 8
  %207 = load i64, i64* %10, align 8
  %208 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %206, i64 %207
  %209 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %212 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = shl i32 %213, 10
  %215 = or i32 %210, %214
  %216 = call i32 @rt2661_rf_write(%struct.rt2661_softc* %204, i32 %205, i32 %215)
  %217 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %218 = call i32 @rt2661_bbp_read(%struct.rt2661_softc* %217, i32 3)
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* @RT2661_SMART_MODE, align 4
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %7, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %7, align 4
  %223 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %224 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @RT2661_RF_5325, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %234, label %228

228:                                              ; preds = %90
  %229 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %230 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @RT2661_RF_2529, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %228, %90
  %235 = load i32, i32* @RT2661_SMART_MODE, align 4
  %236 = load i32, i32* %7, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %7, align 4
  br label %238

238:                                              ; preds = %234, %228
  %239 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %239, i32 3, i32 %240)
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* @RT2661_BBPR94_DEFAULT, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %247 = load i32, i32* %8, align 4
  %248 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %246, i32 94, i32 %247)
  br label %249

249:                                              ; preds = %245, %238
  %250 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %251 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = call i32 @DELAY(i32 1000)
  br label %255

255:                                              ; preds = %253, %249
  ret void
}

declare dso_local i64 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rt2661_select_band(%struct.rt2661_softc*, %struct.ieee80211_channel*) #1

declare dso_local i32 @rt2661_select_antenna(%struct.rt2661_softc*) #1

declare dso_local i32 @rt2661_rf_write(%struct.rt2661_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @rt2661_bbp_read(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @rt2661_bbp_write(%struct.rt2661_softc*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
