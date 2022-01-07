; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211_txparam*, i32, i32, %struct.ieee80211com* }
%struct.ieee80211_txparam = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, %struct.run_softc* }
%struct.run_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.run_vap = type { i32, i32 (%struct.ieee80211vap.0*, i32, i32)*, i32* }
%struct.ieee80211vap.0 = type opaque
%struct.ieee80211_node = type { i32 }

@RUN_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@ieee80211_state_name = common dso_local global i32* null, align 8
@RUN_RATECTL_OFF = common dso_local global i32 0, align 4
@RT2860_LED_RADIO = common dso_local global i32 0, align 4
@RT2860_TX_STA_CNT0 = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANYC = common dso_local global i32 0, align 4
@IEEE80211_FIXED_RATE_NONE = common dso_local global i32 0, align 4
@RT2860_LED_LINK_2GHZ = common dso_local global i32 0, align 4
@RT2860_LED_LINK_5GHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"undefined state\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@run_ratectl_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32, i32)* @run_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_newstate(%struct.ieee80211vap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_txparam*, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.run_softc*, align 8
  %11 = alloca %struct.run_vap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 4
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %19, align 8
  store %struct.ieee80211com* %20, %struct.ieee80211com** %9, align 8
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 3
  %23 = load %struct.run_softc*, %struct.run_softc** %22, align 8
  store %struct.run_softc* %23, %struct.run_softc** %10, align 8
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %25 = call %struct.run_vap* @RUN_VAP(%struct.ieee80211vap* %24)
  store %struct.run_vap* %25, %struct.run_vap** %11, align 8
  store i32 0, i32* %15, align 4
  %26 = load %struct.run_vap*, %struct.run_vap** %11, align 8
  %27 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 1, %28
  store i32 %29, i32* %16, align 4
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  %33 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %34 = load i32, i32* @RUN_DEBUG_STATE, align 4
  %35 = load i32*, i32** @ieee80211_state_name, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** @ieee80211_state_name, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.run_softc*, i32, i8*, ...) @RUN_DPRINTF(%struct.run_softc* %33, i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44)
  %46 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %47 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %46)
  %48 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %49 = call i32 @RUN_LOCK(%struct.run_softc* %48)
  %50 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %51 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* @RUN_RATECTL_OFF, align 4
  %54 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %55 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %57 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %56, i32 0, i32 5
  %58 = call i32 @usb_callout_stop(i32* %57)
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 128
  br i1 %60, label %61, label %65

61:                                               ; preds = %3
  %62 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %63 = load i32, i32* @RT2860_LED_RADIO, align 4
  %64 = call i32 @run_set_leds(%struct.run_softc* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %3
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %268 [
    i32 129, label %67
    i32 128, label %91
  ]

67:                                               ; preds = %65
  store i32 1, i32* %15, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 128
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %272

71:                                               ; preds = %67
  %72 = load i32, i32* %16, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %16, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %79 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %83 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %71
  %88 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %89 = call i32 @run_disable_tsf(%struct.run_softc* %88)
  br label %90

90:                                               ; preds = %87, %71
  br label %272

91:                                               ; preds = %65
  %92 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %93 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %16, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %91
  %99 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %100 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 1, i32* %15, align 4
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %108 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %91
  %112 = load %struct.run_vap*, %struct.run_vap** %11, align 8
  %113 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @m_freem(i32* %114)
  %116 = load %struct.run_vap*, %struct.run_vap** %11, align 8
  %117 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %116, i32 0, i32 2
  store i32* null, i32** %117, align 8
  %118 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %119 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %179 [
    i32 133, label %121
    i32 131, label %121
    i32 132, label %134
    i32 130, label %153
  ]

121:                                              ; preds = %111, %111
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %124 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %128 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %131 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %133 = call i32 @run_update_beacon_cb(%struct.ieee80211vap* %132)
  br label %185

134:                                              ; preds = %111
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %137 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %141 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %134
  %145 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %146 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %149 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %144, %134
  %151 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %152 = call i32 @run_update_beacon_cb(%struct.ieee80211vap* %151)
  br label %185

153:                                              ; preds = %111
  %154 = load i32, i32* %16, align 4
  %155 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %156 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %160 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %174, label %163

163:                                              ; preds = %153
  %164 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %165 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %170 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %173 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %168, %163, %153
  %175 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %176 = load i32, i32* @RT2860_TX_STA_CNT0, align 4
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %178 = call i32 @run_read_region_1(%struct.run_softc* %175, i32 %176, i32* %177, i32 12)
  br label %185

179:                                              ; preds = %111
  %180 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %181 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %184 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %179, %174, %150, %121
  %186 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %187 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @IEEE80211_M_MONITOR, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %249

191:                                              ; preds = %185
  %192 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %193 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @IEEE80211_CHAN_ANYC, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %199 = call i32 @RUN_UNLOCK(%struct.run_softc* %198)
  %200 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %201 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %200)
  store i32 -1, i32* %4, align 4
  br label %300

202:                                              ; preds = %191
  %203 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %204 = call i32 @run_updateslot(%struct.ieee80211com* %203)
  %205 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %206 = call i32 @run_enable_mrr(%struct.run_softc* %205)
  %207 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %208 = call i32 @run_set_txpreamble(%struct.run_softc* %207)
  %209 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %210 = call i32 @run_set_basicrates(%struct.run_softc* %209)
  %211 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %212 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %213)
  store %struct.ieee80211_node* %214, %struct.ieee80211_node** %17, align 8
  %215 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %216 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ieee80211_node*, %struct.ieee80211_node** %17, align 8
  %219 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @IEEE80211_ADDR_COPY(i32 %217, i32 %220)
  %222 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %223 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %224 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @run_set_bssid(%struct.run_softc* %222, i32 %225)
  %227 = load %struct.ieee80211_node*, %struct.ieee80211_node** %17, align 8
  %228 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %227)
  %229 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %230 = call i32 @run_enable_tsf_sync(%struct.run_softc* %229)
  %231 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %232 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %231, i32 0, i32 1
  %233 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %232, align 8
  %234 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %235 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @ieee80211_chan2mode(i32 %236)
  %238 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %233, i64 %237
  store %struct.ieee80211_txparam* %238, %struct.ieee80211_txparam** %8, align 8
  %239 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %240 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @IEEE80211_FIXED_RATE_NONE, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %202
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %14, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %14, align 4
  br label %248

248:                                              ; preds = %244, %202
  br label %252

249:                                              ; preds = %185
  %250 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %251 = call i32 @run_enable_tsf(%struct.run_softc* %250)
  br label %252

252:                                              ; preds = %249, %248
  %253 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %254 = load i32, i32* @RT2860_LED_RADIO, align 4
  %255 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %256 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @IEEE80211_IS_CHAN_2GHZ(i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %252
  %261 = load i32, i32* @RT2860_LED_LINK_2GHZ, align 4
  br label %264

262:                                              ; preds = %252
  %263 = load i32, i32* @RT2860_LED_LINK_5GHZ, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i32 [ %261, %260 ], [ %263, %262 ]
  %266 = or i32 %254, %265
  %267 = call i32 @run_set_leds(%struct.run_softc* %253, i32 %266)
  br label %272

268:                                              ; preds = %65
  %269 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %270 = load i32, i32* @RUN_DEBUG_STATE, align 4
  %271 = call i32 (%struct.run_softc*, i32, i8*, ...) @RUN_DPRINTF(%struct.run_softc* %269, i32 %270, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %272

272:                                              ; preds = %268, %264, %90, %70
  %273 = load i32, i32* %14, align 4
  %274 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %275 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 4
  %276 = icmp ne i32 %273, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %272
  %278 = load i32, i32* %15, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %277
  %281 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %282 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %281, i32 0, i32 5
  %283 = load i32, i32* @hz, align 4
  %284 = load i32, i32* @run_ratectl_to, align 4
  %285 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %286 = call i32 @usb_callout_reset(i32* %282, i32 %283, i32 %284, %struct.run_softc* %285)
  br label %287

287:                                              ; preds = %280, %277, %272
  %288 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  %289 = call i32 @RUN_UNLOCK(%struct.run_softc* %288)
  %290 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %291 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %290)
  %292 = load %struct.run_vap*, %struct.run_vap** %11, align 8
  %293 = getelementptr inbounds %struct.run_vap, %struct.run_vap* %292, i32 0, i32 1
  %294 = load i32 (%struct.ieee80211vap.0*, i32, i32)*, i32 (%struct.ieee80211vap.0*, i32, i32)** %293, align 8
  %295 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %296 = bitcast %struct.ieee80211vap* %295 to %struct.ieee80211vap.0*
  %297 = load i32, i32* %6, align 4
  %298 = load i32, i32* %7, align 4
  %299 = call i32 %294(%struct.ieee80211vap.0* %296, i32 %297, i32 %298)
  store i32 %299, i32* %4, align 4
  br label %300

300:                                              ; preds = %287, %197
  %301 = load i32, i32* %4, align 4
  ret i32 %301
}

declare dso_local %struct.run_vap* @RUN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, ...) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @usb_callout_stop(i32*) #1

declare dso_local i32 @run_set_leds(%struct.run_softc*, i32) #1

declare dso_local i32 @run_disable_tsf(%struct.run_softc*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @run_update_beacon_cb(%struct.ieee80211vap*) #1

declare dso_local i32 @run_read_region_1(%struct.run_softc*, i32, i32*, i32) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @run_updateslot(%struct.ieee80211com*) #1

declare dso_local i32 @run_enable_mrr(%struct.run_softc*) #1

declare dso_local i32 @run_set_txpreamble(%struct.run_softc*) #1

declare dso_local i32 @run_set_basicrates(%struct.run_softc*) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @run_set_bssid(%struct.run_softc*, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @run_enable_tsf_sync(%struct.run_softc*) #1

declare dso_local i64 @ieee80211_chan2mode(i32) #1

declare dso_local i32 @run_enable_tsf(%struct.run_softc*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32, %struct.run_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
