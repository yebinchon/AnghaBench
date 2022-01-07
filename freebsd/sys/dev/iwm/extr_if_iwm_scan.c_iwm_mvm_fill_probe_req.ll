; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_fill_probe_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_fill_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_6__*, %struct.ieee80211com }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211com = type { i32, %struct.ieee80211_rateset*, i32, i32 }
%struct.ieee80211_rateset = type { i32 }
%struct.iwm_scan_probe_req = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.ieee80211vap = type { i32 }
%struct.ieee80211_frame = type { i32*, i32*, i32*, i32, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@IEEE80211_FC0_VERSION_0 = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_PROBE_REQ = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_NODS = common dso_local global i32 0, align 4
@ieee80211broadcastaddr = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@IEEE80211_RATE_SIZE = common dso_local global i32 0, align 4
@IEEE80211_ELEMID_DSPARMS = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@IEEE80211_F_HTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_scan_probe_req*)* @iwm_mvm_fill_probe_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_fill_probe_req(%struct.iwm_softc* %0, %struct.iwm_scan_probe_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca %struct.iwm_scan_probe_req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca %struct.ieee80211_frame*, align 8
  %9 = alloca %struct.ieee80211_rateset*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store %struct.iwm_scan_probe_req* %1, %struct.iwm_scan_probe_req** %5, align 8
  %13 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %14 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %13, i32 0, i32 1
  store %struct.ieee80211com* %14, %struct.ieee80211com** %6, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 3
  %17 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %16)
  store %struct.ieee80211vap* %17, %struct.ieee80211vap** %7, align 8
  %18 = load %struct.iwm_scan_probe_req*, %struct.iwm_scan_probe_req** %5, align 8
  %19 = getelementptr inbounds %struct.iwm_scan_probe_req, %struct.iwm_scan_probe_req* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %21, %struct.ieee80211_frame** %8, align 8
  store i64 8, i64* %10, align 8
  %22 = load %struct.iwm_scan_probe_req*, %struct.iwm_scan_probe_req** %5, align 8
  %23 = call i32 @memset(%struct.iwm_scan_probe_req* %22, i32 0, i32 48)
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %24, 42
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOBUFS, align 4
  store i32 %27, i32* %3, align 4
  br label %323

28:                                               ; preds = %2
  %29 = load i32, i32* @IEEE80211_FC0_VERSION_0, align 4
  %30 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IEEE80211_FC0_SUBTYPE_PROBE_REQ, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @IEEE80211_FC1_DIR_NODS, align 4
  %39 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ieee80211broadcastaddr, align 4
  %47 = call i32 @IEEE80211_ADDR_COPY(i32 %45, i32 %46)
  %48 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %52 = icmp ne %struct.ieee80211vap* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %28
  %54 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  br label %61

57:                                               ; preds = %28
  %58 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %56, %53 ], [ %60, %57 ]
  %63 = call i32 @IEEE80211_ADDR_COPY(i32 %50, i32 %62)
  %64 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %65 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ieee80211broadcastaddr, align 4
  %68 = call i32 @IEEE80211_ADDR_COPY(i32 %66, i32 %67)
  %69 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = bitcast i32* %72 to i64*
  store i64 0, i64* %73, align 8
  %74 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %75 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = bitcast i32* %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %79, i64 1
  %81 = bitcast %struct.ieee80211_frame* %80 to i32*
  store i32* %81, i32** %11, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32* @ieee80211_add_ssid(i32* %82, i32* null, i32 0)
  store i32* %83, i32** %11, align 8
  %84 = load %struct.iwm_scan_probe_req*, %struct.iwm_scan_probe_req** %5, align 8
  %85 = getelementptr inbounds %struct.iwm_scan_probe_req, %struct.iwm_scan_probe_req* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %89 = bitcast %struct.ieee80211_frame* %88 to i32*
  %90 = ptrtoint i32* %87 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i8* @htole16(i32 %94)
  %96 = load %struct.iwm_scan_probe_req*, %struct.iwm_scan_probe_req** %5, align 8
  %97 = getelementptr inbounds %struct.iwm_scan_probe_req, %struct.iwm_scan_probe_req* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %101 = bitcast %struct.ieee80211_frame* %100 to i32*
  %102 = ptrtoint i32* %99 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = load i64, i64* %10, align 8
  %107 = sub i64 %106, %105
  store i64 %107, i64* %10, align 8
  %108 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %109 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %108, i32 0, i32 1
  %110 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %109, align 8
  %111 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %112 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %110, i64 %111
  store %struct.ieee80211_rateset* %112, %struct.ieee80211_rateset** %9, align 8
  %113 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IEEE80211_RATE_SIZE, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %61
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %121 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 4, %122
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %119, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @ENOBUFS, align 4
  store i32 %127, i32* %3, align 4
  br label %323

128:                                              ; preds = %118
  br label %140

129:                                              ; preds = %61
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %132 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 2, %133
  %135 = sext i32 %134 to i64
  %136 = icmp ult i64 %130, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i32, i32* @ENOBUFS, align 4
  store i32 %138, i32* %3, align 4
  br label %323

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i32*, i32** %11, align 8
  %142 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %143 = bitcast %struct.ieee80211_frame* %142 to i32*
  %144 = ptrtoint i32* %141 to i64
  %145 = ptrtoint i32* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = call i8* @htole16(i32 %148)
  %150 = load %struct.iwm_scan_probe_req*, %struct.iwm_scan_probe_req** %5, align 8
  %151 = getelementptr inbounds %struct.iwm_scan_probe_req, %struct.iwm_scan_probe_req* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  store i8* %149, i8** %154, align 8
  %155 = load i32*, i32** %11, align 8
  store i32* %155, i32** %12, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %158 = call i32* @ieee80211_add_rates(i32* %156, %struct.ieee80211_rateset* %157)
  store i32* %158, i32** %11, align 8
  %159 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %160 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @IEEE80211_RATE_SIZE, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %140
  %165 = load i32*, i32** %11, align 8
  %166 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %167 = call i32* @ieee80211_add_xrates(i32* %165, %struct.ieee80211_rateset* %166)
  store i32* %167, i32** %11, align 8
  br label %168

168:                                              ; preds = %164, %140
  %169 = load i32*, i32** %11, align 8
  %170 = load i32*, i32** %12, align 8
  %171 = ptrtoint i32* %169 to i64
  %172 = ptrtoint i32* %170 to i64
  %173 = sub i64 %171, %172
  %174 = sdiv exact i64 %173, 4
  %175 = trunc i64 %174 to i32
  %176 = call i8* @htole16(i32 %175)
  %177 = load %struct.iwm_scan_probe_req*, %struct.iwm_scan_probe_req** %5, align 8
  %178 = getelementptr inbounds %struct.iwm_scan_probe_req, %struct.iwm_scan_probe_req* %177, i32 0, i32 1
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  store i8* %176, i8** %181, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = ptrtoint i32* %182 to i64
  %185 = ptrtoint i32* %183 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 4
  %188 = load i64, i64* %10, align 8
  %189 = sub i64 %188, %187
  store i64 %189, i64* %10, align 8
  %190 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %191 = call i64 @iwm_mvm_rrm_scan_needed(%struct.iwm_softc* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %168
  %194 = load i64, i64* %10, align 8
  %195 = icmp ult i64 %194, 3
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* @ENOBUFS, align 4
  store i32 %197, i32* %3, align 4
  br label %323

198:                                              ; preds = %193
  %199 = load i32, i32* @IEEE80211_ELEMID_DSPARMS, align 4
  %200 = load i32*, i32** %11, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %11, align 8
  store i32 %199, i32* %200, align 4
  %202 = load i32*, i32** %11, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %11, align 8
  store i32 1, i32* %202, align 4
  %204 = load i32*, i32** %11, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %11, align 8
  store i32 0, i32* %204, align 4
  %206 = load i64, i64* %10, align 8
  %207 = sub i64 %206, 3
  store i64 %207, i64* %10, align 8
  br label %208

208:                                              ; preds = %198, %168
  %209 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %210 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %209, i32 0, i32 0
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %298

215:                                              ; preds = %208
  %216 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %217 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %216, i32 0, i32 1
  %218 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %217, align 8
  %219 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %220 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %218, i64 %219
  store %struct.ieee80211_rateset* %220, %struct.ieee80211_rateset** %9, align 8
  %221 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %222 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @IEEE80211_RATE_SIZE, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %215
  %227 = load i64, i64* %10, align 8
  %228 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %229 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 4, %230
  %232 = sext i32 %231 to i64
  %233 = icmp ult i64 %227, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = load i32, i32* @ENOBUFS, align 4
  store i32 %235, i32* %3, align 4
  br label %323

236:                                              ; preds = %226
  br label %248

237:                                              ; preds = %215
  %238 = load i64, i64* %10, align 8
  %239 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %240 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 2, %241
  %243 = sext i32 %242 to i64
  %244 = icmp ult i64 %238, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %237
  %246 = load i32, i32* @ENOBUFS, align 4
  store i32 %246, i32* %3, align 4
  br label %323

247:                                              ; preds = %237
  br label %248

248:                                              ; preds = %247, %236
  %249 = load i32*, i32** %11, align 8
  %250 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %251 = bitcast %struct.ieee80211_frame* %250 to i32*
  %252 = ptrtoint i32* %249 to i64
  %253 = ptrtoint i32* %251 to i64
  %254 = sub i64 %252, %253
  %255 = sdiv exact i64 %254, 4
  %256 = trunc i64 %255 to i32
  %257 = call i8* @htole16(i32 %256)
  %258 = load %struct.iwm_scan_probe_req*, %struct.iwm_scan_probe_req** %5, align 8
  %259 = getelementptr inbounds %struct.iwm_scan_probe_req, %struct.iwm_scan_probe_req* %258, i32 0, i32 1
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i64 1
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  store i8* %257, i8** %262, align 8
  %263 = load i32*, i32** %11, align 8
  store i32* %263, i32** %12, align 8
  %264 = load i32*, i32** %11, align 8
  %265 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %266 = call i32* @ieee80211_add_rates(i32* %264, %struct.ieee80211_rateset* %265)
  store i32* %266, i32** %11, align 8
  %267 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %268 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @IEEE80211_RATE_SIZE, align 4
  %271 = icmp sgt i32 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %248
  %273 = load i32*, i32** %11, align 8
  %274 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %9, align 8
  %275 = call i32* @ieee80211_add_xrates(i32* %273, %struct.ieee80211_rateset* %274)
  store i32* %275, i32** %11, align 8
  br label %276

276:                                              ; preds = %272, %248
  %277 = load i32*, i32** %11, align 8
  %278 = load i32*, i32** %12, align 8
  %279 = ptrtoint i32* %277 to i64
  %280 = ptrtoint i32* %278 to i64
  %281 = sub i64 %279, %280
  %282 = sdiv exact i64 %281, 4
  %283 = trunc i64 %282 to i32
  %284 = call i8* @htole16(i32 %283)
  %285 = load %struct.iwm_scan_probe_req*, %struct.iwm_scan_probe_req** %5, align 8
  %286 = getelementptr inbounds %struct.iwm_scan_probe_req, %struct.iwm_scan_probe_req* %285, i32 0, i32 1
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i64 1
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  store i8* %284, i8** %289, align 8
  %290 = load i32*, i32** %11, align 8
  %291 = load i32*, i32** %12, align 8
  %292 = ptrtoint i32* %290 to i64
  %293 = ptrtoint i32* %291 to i64
  %294 = sub i64 %292, %293
  %295 = sdiv exact i64 %294, 4
  %296 = load i64, i64* %10, align 8
  %297 = sub i64 %296, %295
  store i64 %297, i64* %10, align 8
  br label %298

298:                                              ; preds = %276, %208
  %299 = load i32*, i32** %11, align 8
  %300 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %301 = bitcast %struct.ieee80211_frame* %300 to i32*
  %302 = ptrtoint i32* %299 to i64
  %303 = ptrtoint i32* %301 to i64
  %304 = sub i64 %302, %303
  %305 = sdiv exact i64 %304, 4
  %306 = trunc i64 %305 to i32
  %307 = call i8* @htole16(i32 %306)
  %308 = load %struct.iwm_scan_probe_req*, %struct.iwm_scan_probe_req** %5, align 8
  %309 = getelementptr inbounds %struct.iwm_scan_probe_req, %struct.iwm_scan_probe_req* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 1
  store i8* %307, i8** %310, align 8
  %311 = load i32*, i32** %11, align 8
  store i32* %311, i32** %12, align 8
  %312 = load i32*, i32** %11, align 8
  %313 = load i32*, i32** %12, align 8
  %314 = ptrtoint i32* %312 to i64
  %315 = ptrtoint i32* %313 to i64
  %316 = sub i64 %314, %315
  %317 = sdiv exact i64 %316, 4
  %318 = trunc i64 %317 to i32
  %319 = call i8* @htole16(i32 %318)
  %320 = load %struct.iwm_scan_probe_req*, %struct.iwm_scan_probe_req** %5, align 8
  %321 = getelementptr inbounds %struct.iwm_scan_probe_req, %struct.iwm_scan_probe_req* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 0
  store i8* %319, i8** %322, align 8
  store i32 0, i32* %3, align 4
  br label %323

323:                                              ; preds = %298, %245, %234, %196, %137, %126, %26
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @memset(%struct.iwm_scan_probe_req*, i32, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32* @ieee80211_add_ssid(i32*, i32*, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32* @ieee80211_add_rates(i32*, %struct.ieee80211_rateset*) #1

declare dso_local i32* @ieee80211_add_xrates(i32*, %struct.ieee80211_rateset*) #1

declare dso_local i64 @iwm_mvm_rrm_scan_needed(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
