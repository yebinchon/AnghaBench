; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i8* }

@WlanDriverCaps_burst = common dso_local global i32 0, align 4
@TruthValue_false = common dso_local global i8* null, align 8
@WlanDriverCaps_dfs = common dso_local global i32 0, align 4
@WlanDriverCaps_athFastFrames = common dso_local global i32 0, align 4
@WlanDriverCaps_athTurbo = common dso_local global i32 0, align 4
@WlanDriverCaps_txPmgt = common dso_local global i32 0, align 4
@WlanDriverCaps_txFrag = common dso_local global i32 0, align 4
@IEEE80211_FRAG_MAX = common dso_local global i32 0, align 4
@WlanDriverCaps_wds = common dso_local global i32 0, align 4
@WlanDriverCaps_pmgt = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_hostAp = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_meshPoint = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_ibss = common dso_local global i32 0, align 4
@WlanHTCaps_htcHt = common dso_local global i32 0, align 4
@WlanHTCaps_htcAmpdu = common dso_local global i32 0, align 4
@WlanIfaceDot11nPduType_disabled = common dso_local global i8* null, align 8
@WlanHTCaps_htcAmsdu = common dso_local global i32 0, align 4
@WlanHTCaps_htcRifs = common dso_local global i32 0, align 4
@WlanHTCaps_shortGi20 = common dso_local global i32 0, align 4
@WlanHTCaps_shortGi40 = common dso_local global i32 0, align 4
@WlanHTCaps_htcSmps = common dso_local global i32 0, align 4
@wlanIfaceDot11nSMPSMode_disabled = common dso_local global i32 0, align 4
@WlanDriverCaps_tdma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*, i32)* @wlan_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_config_check(%struct.wlan_iface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca i32, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %283 [
    i32 144, label %7
    i32 143, label %20
    i32 140, label %33
    i32 129, label %46
    i32 128, label %59
    i32 139, label %71
    i32 141, label %84
    i32 138, label %97
    i32 145, label %110
    i32 142, label %132
    i32 137, label %154
    i32 147, label %167
    i32 146, label %180
    i32 136, label %193
    i32 135, label %206
    i32 134, label %222
    i32 132, label %235
    i32 131, label %247
    i32 130, label %259
    i32 133, label %271
  ]

7:                                                ; preds = %2
  %8 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %9 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @WlanDriverCaps_burst, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = load i8*, i8** @TruthValue_false, align 8
  %17 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %18 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %17, i32 0, i32 22
  store i8* %16, i8** %18, align 8
  store i32 -1, i32* %3, align 4
  br label %285

19:                                               ; preds = %7
  br label %284

20:                                               ; preds = %2
  %21 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %22 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WlanDriverCaps_dfs, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i8*, i8** @TruthValue_false, align 8
  %30 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %31 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %30, i32 0, i32 21
  store i8* %29, i8** %31, align 8
  store i32 -1, i32* %3, align 4
  br label %285

32:                                               ; preds = %20
  br label %284

33:                                               ; preds = %2
  %34 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %35 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @WlanDriverCaps_athFastFrames, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i8*, i8** @TruthValue_false, align 8
  %43 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %44 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %43, i32 0, i32 20
  store i8* %42, i8** %44, align 8
  store i32 -1, i32* %3, align 4
  br label %285

45:                                               ; preds = %33
  br label %284

46:                                               ; preds = %2
  %47 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %48 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @WlanDriverCaps_athTurbo, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i8*, i8** @TruthValue_false, align 8
  %56 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %57 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %56, i32 0, i32 19
  store i8* %55, i8** %57, align 8
  store i32 -1, i32* %3, align 4
  br label %285

58:                                               ; preds = %46
  br label %284

59:                                               ; preds = %2
  %60 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %61 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @WlanDriverCaps_txPmgt, align 4
  %64 = shl i32 1, %63
  %65 = and i32 %62, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %69 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %68, i32 0, i32 18
  store i32 0, i32* %69, align 4
  store i32 -1, i32* %3, align 4
  br label %285

70:                                               ; preds = %59
  br label %284

71:                                               ; preds = %2
  %72 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %73 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @WlanDriverCaps_txFrag, align 4
  %76 = shl i32 1, %75
  %77 = and i32 %74, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32, i32* @IEEE80211_FRAG_MAX, align 4
  %81 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %82 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %81, i32 0, i32 17
  store i32 %80, i32* %82, align 8
  store i32 -1, i32* %3, align 4
  br label %285

83:                                               ; preds = %71
  br label %284

84:                                               ; preds = %2
  %85 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %86 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @WlanDriverCaps_wds, align 4
  %89 = shl i32 1, %88
  %90 = and i32 %87, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i8*, i8** @TruthValue_false, align 8
  %94 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %95 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %94, i32 0, i32 16
  store i8* %93, i8** %95, align 8
  store i32 -1, i32* %3, align 4
  br label %285

96:                                               ; preds = %84
  br label %284

97:                                               ; preds = %2
  %98 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %99 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @WlanDriverCaps_pmgt, align 4
  %102 = shl i32 1, %101
  %103 = and i32 %100, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i8*, i8** @TruthValue_false, align 8
  %107 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %108 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %107, i32 0, i32 15
  store i8* %106, i8** %108, align 8
  store i32 -1, i32* %3, align 4
  br label %285

109:                                              ; preds = %97
  br label %284

110:                                              ; preds = %2
  %111 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %112 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @WlanIfaceOperatingModeType_hostAp, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %110
  %117 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %118 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %117, i32 0, i32 14
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @WlanIfaceOperatingModeType_meshPoint, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %124 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %123, i32 0, i32 14
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @WlanIfaceOperatingModeType_ibss, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %130 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %129, i32 0, i32 1
  store i32 100, i32* %130, align 4
  store i32 -1, i32* %3, align 4
  br label %285

131:                                              ; preds = %122, %116, %110
  br label %284

132:                                              ; preds = %2
  %133 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %134 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %133, i32 0, i32 14
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @WlanIfaceOperatingModeType_hostAp, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %132
  %139 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %140 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %139, i32 0, i32 14
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @WlanIfaceOperatingModeType_meshPoint, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %146 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %145, i32 0, i32 14
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @WlanIfaceOperatingModeType_ibss, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %152 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %151, i32 0, i32 2
  store i32 1, i32* %152, align 8
  store i32 -1, i32* %3, align 4
  br label %285

153:                                              ; preds = %144, %138, %132
  br label %284

154:                                              ; preds = %2
  %155 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %156 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @WlanHTCaps_htcHt, align 4
  %159 = shl i32 1, %158
  %160 = and i32 %157, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i8*, i8** @TruthValue_false, align 8
  %164 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %165 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %164, i32 0, i32 13
  store i8* %163, i8** %165, align 8
  store i32 -1, i32* %3, align 4
  br label %285

166:                                              ; preds = %154
  br label %284

167:                                              ; preds = %2
  %168 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %169 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @WlanHTCaps_htcAmpdu, align 4
  %172 = shl i32 1, %171
  %173 = and i32 %170, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %167
  %176 = load i8*, i8** @WlanIfaceDot11nPduType_disabled, align 8
  %177 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %178 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %177, i32 0, i32 12
  store i8* %176, i8** %178, align 8
  store i32 -1, i32* %3, align 4
  br label %285

179:                                              ; preds = %167
  br label %284

180:                                              ; preds = %2
  %181 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %182 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @WlanHTCaps_htcAmsdu, align 4
  %185 = shl i32 1, %184
  %186 = and i32 %183, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load i8*, i8** @WlanIfaceDot11nPduType_disabled, align 8
  %190 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %191 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %190, i32 0, i32 11
  store i8* %189, i8** %191, align 8
  store i32 -1, i32* %3, align 4
  br label %285

192:                                              ; preds = %180
  br label %284

193:                                              ; preds = %2
  %194 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %195 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @WlanHTCaps_htcRifs, align 4
  %198 = shl i32 1, %197
  %199 = and i32 %196, %198
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %193
  %202 = load i8*, i8** @TruthValue_false, align 8
  %203 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %204 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %203, i32 0, i32 10
  store i8* %202, i8** %204, align 8
  store i32 -1, i32* %3, align 4
  br label %285

205:                                              ; preds = %193
  br label %284

206:                                              ; preds = %2
  %207 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %208 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @WlanHTCaps_shortGi20, align 4
  %211 = shl i32 1, %210
  %212 = load i32, i32* @WlanHTCaps_shortGi40, align 4
  %213 = shl i32 1, %212
  %214 = or i32 %211, %213
  %215 = and i32 %209, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %206
  %218 = load i8*, i8** @TruthValue_false, align 8
  %219 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %220 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %219, i32 0, i32 9
  store i8* %218, i8** %220, align 8
  store i32 -1, i32* %3, align 4
  br label %285

221:                                              ; preds = %206
  br label %284

222:                                              ; preds = %2
  %223 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %224 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @WlanHTCaps_htcSmps, align 4
  %227 = shl i32 1, %226
  %228 = and i32 %225, %227
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %222
  %231 = load i32, i32* @wlanIfaceDot11nSMPSMode_disabled, align 4
  %232 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %233 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 8
  store i32 -1, i32* %3, align 4
  br label %285

234:                                              ; preds = %222
  br label %284

235:                                              ; preds = %2
  %236 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %237 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @WlanDriverCaps_tdma, align 4
  %240 = shl i32 1, %239
  %241 = and i32 %238, %240
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %235
  %244 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %245 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %244, i32 0, i32 7
  store i32 0, i32* %245, align 4
  store i32 -1, i32* %3, align 4
  br label %285

246:                                              ; preds = %235
  br label %284

247:                                              ; preds = %2
  %248 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %249 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @WlanDriverCaps_tdma, align 4
  %252 = shl i32 1, %251
  %253 = and i32 %250, %252
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %247
  %256 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %257 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %256, i32 0, i32 6
  store i32 0, i32* %257, align 8
  store i32 -1, i32* %3, align 4
  br label %285

258:                                              ; preds = %247
  br label %284

259:                                              ; preds = %2
  %260 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %261 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @WlanDriverCaps_tdma, align 4
  %264 = shl i32 1, %263
  %265 = and i32 %262, %264
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %259
  %268 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %269 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %268, i32 0, i32 5
  store i32 0, i32* %269, align 4
  store i32 -1, i32* %3, align 4
  br label %285

270:                                              ; preds = %259
  br label %284

271:                                              ; preds = %2
  %272 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %273 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @WlanDriverCaps_tdma, align 4
  %276 = shl i32 1, %275
  %277 = and i32 %274, %276
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %271
  %280 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %281 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %280, i32 0, i32 4
  store i32 0, i32* %281, align 8
  store i32 -1, i32* %3, align 4
  br label %285

282:                                              ; preds = %271
  br label %284

283:                                              ; preds = %2
  br label %284

284:                                              ; preds = %283, %282, %270, %258, %246, %234, %221, %205, %192, %179, %166, %153, %131, %109, %96, %83, %70, %58, %45, %32, %19
  store i32 0, i32* %3, align 4
  br label %285

285:                                              ; preds = %284, %279, %267, %255, %243, %230, %217, %201, %188, %175, %162, %150, %128, %105, %92, %79, %67, %54, %41, %28, %15
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
