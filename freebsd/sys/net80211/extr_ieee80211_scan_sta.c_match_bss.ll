; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_match_bss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_match_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i64, i32, i32, i32, i32, %struct.ieee80211_mesh_state*, %struct.ieee80211_tdma_state*, %struct.ieee80211com* }
%struct.ieee80211_mesh_state = type { i64, i32 }
%struct.ieee80211_tdma_state = type { i64 }
%struct.ieee80211com = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.ieee80211_scan_state = type { i32, i32 }
%struct.sta_entry = type { i64, i64, i32, %struct.ieee80211_scan_entry }
%struct.ieee80211_scan_entry = type { i32, i64*, i64*, i32, i32*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@MATCH_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_MODE_AUTO = common dso_local global i64 0, align 8
@IEEE80211_CHAN_ALLTURBO = common dso_local global i32 0, align 4
@chanflags = common dso_local global i32* null, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_CAPINFO_IBSS = common dso_local global i32 0, align 4
@MATCH_CAPINFO = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_ESS = common dso_local global i32 0, align 4
@IEEE80211_FEXT_DOTD = common dso_local global i32 0, align 4
@CTRY_DEFAULT = common dso_local global i64 0, align 8
@MATCH_CC = common dso_local global i32 0, align 4
@IEEE80211_F_PRIVACY = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_PRIVACY = common dso_local global i32 0, align 4
@MATCH_PRIVACY = common dso_local global i32 0, align 4
@STA_DEMOTE11B = common dso_local global i32 0, align 4
@IEEE80211_RATE_BASIC = common dso_local global i32 0, align 4
@MATCH_RATE = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@MATCH_SSID = common dso_local global i32 0, align 4
@IEEE80211_F_DESBSSID = common dso_local global i32 0, align 4
@MATCH_BSSID = common dso_local global i32 0, align 4
@STA_FAILS_MAX = common dso_local global i64 0, align 8
@MATCH_FAILS = common dso_local global i32 0, align 4
@STA_PURGE_SCANS = common dso_local global i64 0, align 8
@MATCH_NOTSEEN = common dso_local global i32 0, align 4
@STA_RSSI_MIN = common dso_local global i32 0, align 4
@MATCH_RSSI = common dso_local global i32 0, align 4
@IEEE80211_C_TDMA = common dso_local global i32 0, align 4
@IEEE80211_ELEMID_MESHID = common dso_local global i64 0, align 8
@IEEE80211_M_AHDEMO = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@MATCH_MESHID = common dso_local global i32 0, align 4
@MATCH_MESH_NOID = common dso_local global i32 0, align 4
@MATCH_TDMA_LOCAL = common dso_local global i32 0, align 4
@MATCH_TDMA_NOIE = common dso_local global i32 0, align 4
@MATCH_TDMA_NOSLOT = common dso_local global i32 0, align 4
@MATCH_TDMA_NOTMASTER = common dso_local global i32 0, align 4
@MATCH_TDMA_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_scan_state*, %struct.sta_entry*, i32)* @match_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_bss(%struct.ieee80211vap* %0, %struct.ieee80211_scan_state* %1, %struct.sta_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211_scan_state*, align 8
  %7 = alloca %struct.sta_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.ieee80211_scan_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211_scan_state* %1, %struct.ieee80211_scan_state** %6, align 8
  store %struct.sta_entry* %2, %struct.sta_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %14, align 8
  store %struct.ieee80211com* %15, %struct.ieee80211com** %9, align 8
  %16 = load %struct.sta_entry*, %struct.sta_entry** %7, align 8
  %17 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %16, i32 0, i32 3
  store %struct.ieee80211_scan_entry* %17, %struct.ieee80211_scan_entry** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %22 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %23 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %22, i32 0, i32 5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %21, %struct.TYPE_11__* %24)
  %26 = call i64 @isclr(i32 %20, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* @MATCH_CHANNEL, align 4
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %28, %4
  %33 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IEEE80211_MODE_AUTO, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %40 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %39, i32 0, i32 5
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IEEE80211_CHAN_ALLTURBO, align 4
  %45 = and i32 %43, %44
  %46 = load i32*, i32** @chanflags, align 8
  %47 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %45, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %38
  %54 = load i32, i32* @MATCH_CHANNEL, align 4
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %53, %38, %32
  %58 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %65 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IEEE80211_CAPINFO_IBSS, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @MATCH_CAPINFO, align 4
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %70, %63
  br label %128

75:                                               ; preds = %57
  %76 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %77 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IEEE80211_CAPINFO_ESS, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* @MATCH_CAPINFO, align 4
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %88 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %87, i32 0, i32 5
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = call i64 @IEEE80211_IS_CHAN_11D(%struct.TYPE_11__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %94 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IEEE80211_FEXT_DOTD, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %92, %86
  %100 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %101 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %99
  %107 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %108 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CTRY_DEFAULT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %123, label %113

113:                                              ; preds = %106
  %114 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %115 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %118 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @isocmp(i64* %116, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %113, %106
  %124 = load i32, i32* @MATCH_CC, align 4
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %123, %113, %99, %92
  br label %128

128:                                              ; preds = %127, %74
  %129 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %130 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IEEE80211_F_PRIVACY, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %128
  %136 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %137 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IEEE80211_CAPINFO_PRIVACY, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i32, i32* @MATCH_PRIVACY, align 4
  %144 = load i32, i32* %12, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %142, %135
  br label %159

147:                                              ; preds = %128
  %148 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %149 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IEEE80211_CAPINFO_PRIVACY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load i32, i32* @MATCH_PRIVACY, align 4
  %156 = load i32, i32* %12, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %154, %147
  br label %159

159:                                              ; preds = %158, %146
  %160 = load i32, i32* @STA_DEMOTE11B, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.sta_entry*, %struct.sta_entry** %7, align 8
  %163 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %167 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %168 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %167, i32 0, i32 5
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %171 = call i32 @check_rate(%struct.ieee80211vap* %166, %struct.TYPE_11__* %169, %struct.ieee80211_scan_entry* %170)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %210

176:                                              ; preds = %159
  %177 = load i32, i32* @MATCH_RATE, align 4
  %178 = load i32, i32* %12, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %12, align 4
  %180 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %181 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %180, i32 0, i32 5
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = call i64 @IEEE80211_IS_CHAN_ANYG(%struct.TYPE_11__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %176
  %186 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %187 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %188 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %189 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %188, i32 0, i32 5
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = call %struct.TYPE_11__* @demote11b(%struct.ieee80211vap* %187, %struct.TYPE_11__* %190)
  %192 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %193 = call i32 @check_rate(%struct.ieee80211vap* %186, %struct.TYPE_11__* %191, %struct.ieee80211_scan_entry* %192)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %196 = and i32 %194, %195
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %185
  %199 = load i32, i32* @MATCH_RATE, align 4
  %200 = xor i32 %199, -1
  %201 = load i32, i32* %12, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* @STA_DEMOTE11B, align 4
  %204 = load %struct.sta_entry*, %struct.sta_entry** %7, align 8
  %205 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %198, %185
  br label %209

209:                                              ; preds = %208, %176
  br label %237

210:                                              ; preds = %159
  %211 = load i32, i32* %11, align 4
  %212 = icmp slt i32 %211, 48
  br i1 %212, label %213, label %236

213:                                              ; preds = %210
  %214 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %215 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @IEEE80211_MODE_AUTO, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %229, label %219

219:                                              ; preds = %213
  %220 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %221 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %219
  %226 = load i32, i32* @MATCH_RATE, align 4
  %227 = load i32, i32* %12, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %12, align 4
  br label %235

229:                                              ; preds = %219, %213
  %230 = load i32, i32* @STA_DEMOTE11B, align 4
  %231 = load %struct.sta_entry*, %struct.sta_entry** %7, align 8
  %232 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %225
  br label %236

236:                                              ; preds = %235, %210
  br label %237

237:                                              ; preds = %236, %209
  %238 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %6, align 8
  %239 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %258

242:                                              ; preds = %237
  %243 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %244 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %6, align 8
  %247 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %6, align 8
  %250 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @match_ssid(i32* %245, i32 %248, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %242
  %255 = load i32, i32* @MATCH_SSID, align 4
  %256 = load i32, i32* %12, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %12, align 4
  br label %258

258:                                              ; preds = %254, %242, %237
  %259 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %260 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @IEEE80211_F_DESBSSID, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %278

265:                                              ; preds = %258
  %266 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %267 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %270 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @IEEE80211_ADDR_EQ(i32 %268, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %265
  %275 = load i32, i32* @MATCH_BSSID, align 4
  %276 = load i32, i32* %12, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %12, align 4
  br label %278

278:                                              ; preds = %274, %265, %258
  %279 = load %struct.sta_entry*, %struct.sta_entry** %7, align 8
  %280 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @STA_FAILS_MAX, align 8
  %283 = icmp sge i64 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %278
  %285 = load i32, i32* @MATCH_FAILS, align 4
  %286 = load i32, i32* %12, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %12, align 4
  br label %288

288:                                              ; preds = %284, %278
  %289 = load %struct.sta_entry*, %struct.sta_entry** %7, align 8
  %290 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @STA_PURGE_SCANS, align 8
  %293 = icmp sge i64 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = load i32, i32* @MATCH_NOTSEEN, align 4
  %296 = load i32, i32* %12, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %12, align 4
  br label %298

298:                                              ; preds = %294, %288
  %299 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %10, align 8
  %300 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @STA_RSSI_MIN, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %308

304:                                              ; preds = %298
  %305 = load i32, i32* @MATCH_RSSI, align 4
  %306 = load i32, i32* %12, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %12, align 4
  br label %308

308:                                              ; preds = %304, %298
  %309 = load i32, i32* %12, align 4
  ret i32 %309
}

declare dso_local i64 @isclr(i32, i32) #1

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.TYPE_11__*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_11D(%struct.TYPE_11__*) #1

declare dso_local i32 @isocmp(i64*, i32) #1

declare dso_local i32 @check_rate(%struct.ieee80211vap*, %struct.TYPE_11__*, %struct.ieee80211_scan_entry*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @demote11b(%struct.ieee80211vap*, %struct.TYPE_11__*) #1

declare dso_local i32 @match_ssid(i32*, i32, i32) #1

declare dso_local i32 @IEEE80211_ADDR_EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
