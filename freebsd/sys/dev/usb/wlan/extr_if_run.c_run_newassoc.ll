; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_newassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_newassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.ieee80211_node = type { i64, i32, %struct.ieee80211vap*, %struct.ieee80211_rateset }
%struct.ieee80211vap = type { i64, %struct.TYPE_5__*, %struct.ieee80211com* }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211com = type { i32, %struct.run_softc* }
%struct.run_softc = type { i64, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.ieee80211_node*, i32*, i32 }
%struct.ieee80211_rateset = type { i32, i64* }
%struct.run_node = type { i64*, i64*, i64 }

@IEEE80211_M_STA = common dso_local global i64 0, align 8
@RT2870_WCID_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"wcid=%d out of range\0A\00", align 1
@RUN_DEBUG_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cmdq_store=%d\0A\00", align 1
@run_newassoc_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"new assoc isnew=%d associd=%x addr=%s\0A\00", align 1
@IEEE80211_RATE_VAL = common dso_local global i64 0, align 8
@RT2860_RIDX_MAX = common dso_local global i64 0, align 8
@rt2860_rates = common dso_local global %struct.TYPE_6__* null, align 8
@IEEE80211_RATE_BASIC = common dso_local global i32 0, align 4
@RUN_DEBUG_RATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"rate=0x%02x ridx=%d ctl_ridx=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"rate=%d, mgmt_ridx=%d\0A\00", align 1
@RUN_RATECTL_OFF = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@run_ratectl_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, i32)* @run_newassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_newassoc(%struct.ieee80211_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.run_node*, align 8
  %6 = alloca %struct.ieee80211_rateset*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.run_softc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %17 = call %struct.run_node* @RUN_NODE(%struct.ieee80211_node* %16)
  store %struct.run_node* %17, %struct.run_node** %5, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %18, i32 0, i32 3
  store %struct.ieee80211_rateset* %19, %struct.ieee80211_rateset** %6, align 8
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %20, i32 0, i32 2
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %21, align 8
  store %struct.ieee80211vap* %22, %struct.ieee80211vap** %7, align 8
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 2
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %24, align 8
  store %struct.ieee80211com* %25, %struct.ieee80211com** %8, align 8
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %26, i32 0, i32 1
  %28 = load %struct.run_softc*, %struct.run_softc** %27, align 8
  store %struct.run_softc* %28, %struct.run_softc** %9, align 8
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_M_STA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %40

35:                                               ; preds = %2
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @RUN_AID2WCID(i64 %38)
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi i32 [ 1, %34 ], [ %39, %35 ]
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @RT2870_WCID_MAX, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %48 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %315

52:                                               ; preds = %40
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %99

55:                                               ; preds = %52
  %56 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %55
  %61 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %62 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %61, i32 0, i32 4
  %63 = call i64 @RUN_CMDQ_GET(i32* %62)
  store i64 %63, i64* %15, align 8
  %64 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %65 = load i32, i32* @RUN_DEBUG_STATE, align 4
  %66 = load i64, i64* %15, align 8
  %67 = call i32 (%struct.run_softc*, i32, i8*, i64, ...) @RUN_DPRINTF(%struct.run_softc* %64, i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* @run_newassoc_cb, align 4
  %69 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %70 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i32 %68, i32* %74, align 8
  %75 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %76 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  %81 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %82 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %83 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store %struct.ieee80211_node* %81, %struct.ieee80211_node** %87, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %90 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i64 %88, i64* %94, align 8
  %95 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %96 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %97 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %96, i32 0, i32 2
  %98 = call i32 @ieee80211_runtask(%struct.ieee80211com* %95, i32* %97)
  br label %99

99:                                               ; preds = %60, %55, %52
  %100 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %101 = load i32, i32* @RUN_DEBUG_STATE, align 4
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %105 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %108 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ether_sprintf(i32 %109)
  %111 = call i32 (%struct.run_softc*, i32, i8*, i64, ...) @RUN_DPRINTF(%struct.run_softc* %100, i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %103, i64 %106, i32 %110)
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %254, %99
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %115 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %257

118:                                              ; preds = %112
  %119 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %120 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IEEE80211_RATE_VAL, align 8
  %127 = and i64 %125, %126
  store i64 %127, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %128

128:                                              ; preds = %142, %118
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* @RT2860_RIDX_MAX, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt2860_rates, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %10, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %145

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %11, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %11, align 8
  br label %128

145:                                              ; preds = %140, %128
  %146 = load i64, i64* %11, align 8
  %147 = load %struct.run_node*, %struct.run_node** %5, align 8
  %148 = getelementptr inbounds %struct.run_node, %struct.run_node* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 %146, i64* %152, align 8
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %195, %145
  %155 = load i32, i32* %14, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %198

157:                                              ; preds = %154
  %158 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %159 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %166 = sext i32 %165 to i64
  %167 = and i64 %164, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %194

169:                                              ; preds = %157
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt2860_rates, align 8
  %171 = load %struct.run_node*, %struct.run_node** %5, align 8
  %172 = getelementptr inbounds %struct.run_node, %struct.run_node* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt2860_rates, align 8
  %182 = load %struct.run_node*, %struct.run_node** %5, align 8
  %183 = getelementptr inbounds %struct.run_node, %struct.run_node* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %180, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %169
  br label %198

194:                                              ; preds = %169, %157
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %14, align 4
  br label %154

198:                                              ; preds = %193, %154
  %199 = load i32, i32* %14, align 4
  %200 = icmp sge i32 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %198
  %202 = load %struct.run_node*, %struct.run_node** %5, align 8
  %203 = getelementptr inbounds %struct.run_node, %struct.run_node* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.run_node*, %struct.run_node** %5, align 8
  %210 = getelementptr inbounds %struct.run_node, %struct.run_node* %209, i32 0, i32 1
  %211 = load i64*, i64** %210, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  store i64 %208, i64* %214, align 8
  br label %227

215:                                              ; preds = %198
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt2860_rates, align 8
  %217 = load i64, i64* %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.run_node*, %struct.run_node** %5, align 8
  %222 = getelementptr inbounds %struct.run_node, %struct.run_node* %221, i32 0, i32 1
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  store i64 %220, i64* %226, align 8
  br label %227

227:                                              ; preds = %215, %201
  %228 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %229 = load i32, i32* @RUN_DEBUG_STATE, align 4
  %230 = load i32, i32* @RUN_DEBUG_RATE, align 4
  %231 = or i32 %229, %230
  %232 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %233 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %232, i32 0, i32 1
  %234 = load i64*, i64** %233, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.run_node*, %struct.run_node** %5, align 8
  %240 = getelementptr inbounds %struct.run_node, %struct.run_node* %239, i32 0, i32 0
  %241 = load i64*, i64** %240, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %241, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.run_node*, %struct.run_node** %5, align 8
  %247 = getelementptr inbounds %struct.run_node, %struct.run_node* %246, i32 0, i32 1
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = call i32 (%struct.run_softc*, i32, i8*, i64, ...) @RUN_DPRINTF(%struct.run_softc* %228, i32 %231, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %238, i64 %245, i64 %252)
  br label %254

254:                                              ; preds = %227
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %13, align 4
  br label %112

257:                                              ; preds = %112
  %258 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %259 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %258, i32 0, i32 1
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %262 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i64 @ieee80211_chan2mode(i32 %263)
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %268

268:                                              ; preds = %282, %257
  %269 = load i64, i64* %11, align 8
  %270 = load i64, i64* @RT2860_RIDX_MAX, align 8
  %271 = icmp slt i64 %269, %270
  br i1 %271, label %272, label %285

272:                                              ; preds = %268
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt2860_rates, align 8
  %274 = load i64, i64* %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* %10, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %272
  br label %285

281:                                              ; preds = %272
  br label %282

282:                                              ; preds = %281
  %283 = load i64, i64* %11, align 8
  %284 = add nsw i64 %283, 1
  store i64 %284, i64* %11, align 8
  br label %268

285:                                              ; preds = %280, %268
  %286 = load i64, i64* %11, align 8
  %287 = load %struct.run_node*, %struct.run_node** %5, align 8
  %288 = getelementptr inbounds %struct.run_node, %struct.run_node* %287, i32 0, i32 2
  store i64 %286, i64* %288, align 8
  %289 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %290 = load i32, i32* @RUN_DEBUG_STATE, align 4
  %291 = load i32, i32* @RUN_DEBUG_RATE, align 4
  %292 = or i32 %290, %291
  %293 = load i64, i64* %10, align 8
  %294 = load %struct.run_node*, %struct.run_node** %5, align 8
  %295 = getelementptr inbounds %struct.run_node, %struct.run_node* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = call i32 (%struct.run_softc*, i32, i8*, i64, ...) @RUN_DPRINTF(%struct.run_softc* %289, i32 %292, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %293, i64 %296)
  %298 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %299 = call i32 @RUN_LOCK(%struct.run_softc* %298)
  %300 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %301 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @RUN_RATECTL_OFF, align 8
  %304 = icmp ne i64 %302, %303
  br i1 %304, label %305, label %312

305:                                              ; preds = %285
  %306 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %307 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %306, i32 0, i32 1
  %308 = load i32, i32* @hz, align 4
  %309 = load i32, i32* @run_ratectl_to, align 4
  %310 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %311 = call i32 @usb_callout_reset(i32* %307, i32 %308, i32 %309, %struct.run_softc* %310)
  br label %312

312:                                              ; preds = %305, %285
  %313 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %314 = call i32 @RUN_UNLOCK(%struct.run_softc* %313)
  br label %315

315:                                              ; preds = %312, %46
  ret void
}

declare dso_local %struct.run_node* @RUN_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @RUN_AID2WCID(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @RUN_CMDQ_GET(i32*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i64, ...) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @ether_sprintf(i32) #1

declare dso_local i64 @ieee80211_chan2mode(i32) #1

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32, %struct.run_softc*) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
