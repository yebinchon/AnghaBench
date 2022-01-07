; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_snmp2value.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_snmp2value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TruthValue_true = common dso_local global i32 0, align 4
@TruthValue_false = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@IEEE80211_FRAG_MIN = common dso_local global i32 0, align 4
@IEEE80211_FRAG_MAX = common dso_local global i32 0, align 4
@IEEE80211_RTS_MIN = common dso_local global i32 0, align 4
@IEEE80211_RTS_MAX = common dso_local global i32 0, align 4
@WLAN_BGSCAN_IDLE_MIN = common dso_local global i32 0, align 4
@WLAN_SCAN_VALID_MIN = common dso_local global i32 0, align 4
@IEEE80211_HWBMISS_MIN = common dso_local global i32 0, align 4
@IEEE80211_HWBMISS_MAX = common dso_local global i32 0, align 4
@IEEE80211_ROAMING_DEVICE = common dso_local global i32 0, align 4
@IEEE80211_ROAMING_MANUAL = common dso_local global i32 0, align 4
@IEEE80211_ROAMING_AUTO = common dso_local global i32 0, align 4
@IEEE80211_BINTVAL_MIN = common dso_local global i32 0, align 4
@IEEE80211_BINTVAL_MAX = common dso_local global i32 0, align 4
@IEEE80211_DTIM_MIN = common dso_local global i32 0, align 4
@IEEE80211_DTIM_MAX = common dso_local global i32 0, align 4
@IEEE80211_PROTMODE_CTS = common dso_local global i32 0, align 4
@IEEE80211_PROTMODE_RTSCTS = common dso_local global i32 0, align 4
@IEEE80211_PROTMODE_OFF = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MPDUDENSITY_NA = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MPDUDENSITY_025 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MPDUDENSITY_05 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MPDUDENSITY_1 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MPDUDENSITY_2 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MPDUDENSITY_4 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MPDUDENSITY_8 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MPDUDENSITY_16 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MAXRXAMPDU_8K = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MAXRXAMPDU_16K = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MAXRXAMPDU_32K = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MAXRXAMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MAXAMSDU_3839 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MAXAMSDU_7935 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI40 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SMPS_OFF = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SMPS_ENA = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SMPS_DYNAMIC = common dso_local global i32 0, align 4
@WLAN_TDMA_MAXSLOTS = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @wlan_config_snmp2value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_config_snmp2value(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %315 [
    i32 174, label %10
    i32 172, label %10
    i32 167, label %10
    i32 145, label %10
    i32 143, label %10
    i32 179, label %10
    i32 171, label %10
    i32 170, label %10
    i32 168, label %10
    i32 160, label %10
    i32 181, label %10
    i32 165, label %10
    i32 161, label %10
    i32 158, label %10
    i32 157, label %10
    i32 163, label %10
    i32 164, label %10
    i32 155, label %10
    i32 156, label %24
    i32 150, label %25
    i32 173, label %26
    i32 144, label %27
    i32 166, label %31
    i32 153, label %44
    i32 178, label %57
    i32 177, label %66
    i32 176, label %75
    i32 175, label %88
    i32 154, label %89
    i32 180, label %103
    i32 169, label %116
    i32 159, label %129
    i32 186, label %143
    i32 185, label %155
    i32 184, label %184
    i32 183, label %201
    i32 182, label %213
    i32 162, label %232
    i32 152, label %241
    i32 151, label %258
    i32 148, label %272
    i32 147, label %284
    i32 146, label %296
    i32 149, label %307
  ]

10:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TruthValue_true, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32*, i32** %7, align 8
  store i32 1, i32* %15, align 4
  br label %23

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @TruthValue_false, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %21, i32* %4, align 4
  br label %319

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %14
  br label %317

24:                                               ; preds = %3
  br label %317

25:                                               ; preds = %3
  br label %317

26:                                               ; preds = %3
  br label %317

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 2
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %317

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IEEE80211_FRAG_MIN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @IEEE80211_FRAG_MAX, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %40, i32* %4, align 4
  br label %319

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %317

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @IEEE80211_RTS_MIN, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @IEEE80211_RTS_MAX, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %53, i32* %4, align 4
  br label %319

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %317

57:                                               ; preds = %3
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @WLAN_BGSCAN_IDLE_MIN, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %62, i32* %4, align 4
  br label %319

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %317

66:                                               ; preds = %3
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @WLAN_SCAN_VALID_MIN, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %71, i32* %4, align 4
  br label %319

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %317

75:                                               ; preds = %3
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @IEEE80211_HWBMISS_MIN, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @IEEE80211_HWBMISS_MAX, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79, %75
  %84 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %84, i32* %4, align 4
  br label %319

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  br label %317

88:                                               ; preds = %3
  br label %317

89:                                               ; preds = %3
  %90 = load i32, i32* %6, align 4
  switch i32 %90, label %100 [
    i32 129, label %91
    i32 128, label %94
    i32 130, label %97
  ]

91:                                               ; preds = %89
  %92 = load i32, i32* @IEEE80211_ROAMING_DEVICE, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  br label %102

94:                                               ; preds = %89
  %95 = load i32, i32* @IEEE80211_ROAMING_MANUAL, align 4
  %96 = load i32*, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  br label %102

97:                                               ; preds = %89
  %98 = load i32, i32* @IEEE80211_ROAMING_AUTO, align 4
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  br label %102

100:                                              ; preds = %89
  %101 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %101, i32* %4, align 4
  br label %319

102:                                              ; preds = %97, %94, %91
  br label %317

103:                                              ; preds = %3
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @IEEE80211_BINTVAL_MIN, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @IEEE80211_BINTVAL_MAX, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %103
  %112 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %112, i32* %4, align 4
  br label %319

113:                                              ; preds = %107
  %114 = load i32, i32* %6, align 4
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  br label %317

116:                                              ; preds = %3
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @IEEE80211_DTIM_MIN, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @IEEE80211_DTIM_MAX, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120, %116
  %125 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %125, i32* %4, align 4
  br label %319

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  br label %317

129:                                              ; preds = %3
  %130 = load i32, i32* %6, align 4
  switch i32 %130, label %140 [
    i32 138, label %131
    i32 136, label %134
    i32 137, label %137
  ]

131:                                              ; preds = %129
  %132 = load i32, i32* @IEEE80211_PROTMODE_CTS, align 4
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  br label %142

134:                                              ; preds = %129
  %135 = load i32, i32* @IEEE80211_PROTMODE_RTSCTS, align 4
  %136 = load i32*, i32** %7, align 8
  store i32 %135, i32* %136, align 4
  br label %142

137:                                              ; preds = %129
  %138 = load i32, i32* @IEEE80211_PROTMODE_OFF, align 4
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  br label %142

140:                                              ; preds = %129
  %141 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %141, i32* %4, align 4
  br label %319

142:                                              ; preds = %137, %134, %131
  br label %317

143:                                              ; preds = %3
  %144 = load i32, i32* %6, align 4
  switch i32 %144, label %152 [
    i32 142, label %145
    i32 139, label %146
    i32 141, label %148
    i32 140, label %150
  ]

145:                                              ; preds = %143
  br label %154

146:                                              ; preds = %143
  %147 = load i32*, i32** %7, align 8
  store i32 1, i32* %147, align 4
  br label %154

148:                                              ; preds = %143
  %149 = load i32*, i32** %7, align 8
  store i32 2, i32* %149, align 4
  br label %154

150:                                              ; preds = %143
  %151 = load i32*, i32** %7, align 8
  store i32 3, i32* %151, align 4
  br label %154

152:                                              ; preds = %143
  %153 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %153, i32* %4, align 4
  br label %319

154:                                              ; preds = %150, %148, %146, %145
  br label %317

155:                                              ; preds = %3
  %156 = load i32, i32* %6, align 4
  switch i32 %156, label %181 [
    i32 0, label %157
    i32 25, label %160
    i32 50, label %163
    i32 100, label %166
    i32 200, label %169
    i32 400, label %172
    i32 800, label %175
    i32 1600, label %178
  ]

157:                                              ; preds = %155
  %158 = load i32, i32* @IEEE80211_HTCAP_MPDUDENSITY_NA, align 4
  %159 = load i32*, i32** %7, align 8
  store i32 %158, i32* %159, align 4
  br label %183

160:                                              ; preds = %155
  %161 = load i32, i32* @IEEE80211_HTCAP_MPDUDENSITY_025, align 4
  %162 = load i32*, i32** %7, align 8
  store i32 %161, i32* %162, align 4
  br label %183

163:                                              ; preds = %155
  %164 = load i32, i32* @IEEE80211_HTCAP_MPDUDENSITY_05, align 4
  %165 = load i32*, i32** %7, align 8
  store i32 %164, i32* %165, align 4
  br label %183

166:                                              ; preds = %155
  %167 = load i32, i32* @IEEE80211_HTCAP_MPDUDENSITY_1, align 4
  %168 = load i32*, i32** %7, align 8
  store i32 %167, i32* %168, align 4
  br label %183

169:                                              ; preds = %155
  %170 = load i32, i32* @IEEE80211_HTCAP_MPDUDENSITY_2, align 4
  %171 = load i32*, i32** %7, align 8
  store i32 %170, i32* %171, align 4
  br label %183

172:                                              ; preds = %155
  %173 = load i32, i32* @IEEE80211_HTCAP_MPDUDENSITY_4, align 4
  %174 = load i32*, i32** %7, align 8
  store i32 %173, i32* %174, align 4
  br label %183

175:                                              ; preds = %155
  %176 = load i32, i32* @IEEE80211_HTCAP_MPDUDENSITY_8, align 4
  %177 = load i32*, i32** %7, align 8
  store i32 %176, i32* %177, align 4
  br label %183

178:                                              ; preds = %155
  %179 = load i32, i32* @IEEE80211_HTCAP_MPDUDENSITY_16, align 4
  %180 = load i32*, i32** %7, align 8
  store i32 %179, i32* %180, align 4
  br label %183

181:                                              ; preds = %155
  %182 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %182, i32* %4, align 4
  br label %319

183:                                              ; preds = %178, %175, %172, %169, %166, %163, %160, %157
  br label %317

184:                                              ; preds = %3
  %185 = load i32, i32* %6, align 4
  switch i32 %185, label %198 [
    i32 8192, label %186
    i32 16384, label %189
    i32 32768, label %192
    i32 65536, label %195
  ]

186:                                              ; preds = %184
  %187 = load i32, i32* @IEEE80211_HTCAP_MAXRXAMPDU_8K, align 4
  %188 = load i32*, i32** %7, align 8
  store i32 %187, i32* %188, align 4
  br label %200

189:                                              ; preds = %184
  %190 = load i32, i32* @IEEE80211_HTCAP_MAXRXAMPDU_16K, align 4
  %191 = load i32*, i32** %7, align 8
  store i32 %190, i32* %191, align 4
  br label %200

192:                                              ; preds = %184
  %193 = load i32, i32* @IEEE80211_HTCAP_MAXRXAMPDU_32K, align 4
  %194 = load i32*, i32** %7, align 8
  store i32 %193, i32* %194, align 4
  br label %200

195:                                              ; preds = %184
  %196 = load i32, i32* @IEEE80211_HTCAP_MAXRXAMPDU_64K, align 4
  %197 = load i32*, i32** %7, align 8
  store i32 %196, i32* %197, align 4
  br label %200

198:                                              ; preds = %184
  %199 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %199, i32* %4, align 4
  br label %319

200:                                              ; preds = %195, %192, %189, %186
  br label %317

201:                                              ; preds = %3
  %202 = load i32, i32* %6, align 4
  switch i32 %202, label %210 [
    i32 142, label %203
    i32 139, label %204
    i32 141, label %206
    i32 140, label %208
  ]

203:                                              ; preds = %201
  br label %212

204:                                              ; preds = %201
  %205 = load i32*, i32** %7, align 8
  store i32 1, i32* %205, align 4
  br label %212

206:                                              ; preds = %201
  %207 = load i32*, i32** %7, align 8
  store i32 2, i32* %207, align 4
  br label %212

208:                                              ; preds = %201
  %209 = load i32*, i32** %7, align 8
  store i32 3, i32* %209, align 4
  br label %212

210:                                              ; preds = %201
  %211 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %211, i32* %4, align 4
  br label %319

212:                                              ; preds = %208, %206, %204, %203
  br label %317

213:                                              ; preds = %3
  %214 = load i32, i32* %6, align 4
  %215 = icmp eq i32 %214, 3839
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %6, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216, %213
  %220 = load i32, i32* @IEEE80211_HTCAP_MAXAMSDU_3839, align 4
  %221 = load i32*, i32** %7, align 8
  store i32 %220, i32* %221, align 4
  br label %231

222:                                              ; preds = %216
  %223 = load i32, i32* %6, align 4
  %224 = icmp eq i32 %223, 7935
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32, i32* @IEEE80211_HTCAP_MAXAMSDU_7935, align 4
  %227 = load i32*, i32** %7, align 8
  store i32 %226, i32* %227, align 4
  br label %230

228:                                              ; preds = %222
  %229 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %229, i32* %4, align 4
  br label %319

230:                                              ; preds = %225
  br label %231

231:                                              ; preds = %230, %219
  br label %317

232:                                              ; preds = %3
  %233 = load i32, i32* %6, align 4
  switch i32 %233, label %238 [
    i32 134, label %234
    i32 135, label %237
  ]

234:                                              ; preds = %232
  %235 = load i32, i32* @IEEE80211_PROTMODE_RTSCTS, align 4
  %236 = load i32*, i32** %7, align 8
  store i32 %235, i32* %236, align 4
  br label %240

237:                                              ; preds = %232
  br label %240

238:                                              ; preds = %232
  %239 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %239, i32* %4, align 4
  br label %319

240:                                              ; preds = %237, %234
  br label %317

241:                                              ; preds = %3
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @TruthValue_true, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load i32, i32* @IEEE80211_HTCAP_SHORTGI20, align 4
  %247 = load i32, i32* @IEEE80211_HTCAP_SHORTGI40, align 4
  %248 = or i32 %246, %247
  %249 = load i32*, i32** %7, align 8
  store i32 %248, i32* %249, align 4
  br label %257

250:                                              ; preds = %241
  %251 = load i32, i32* %6, align 4
  %252 = load i32, i32* @TruthValue_false, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %255, i32* %4, align 4
  br label %319

256:                                              ; preds = %250
  br label %257

257:                                              ; preds = %256, %245
  br label %317

258:                                              ; preds = %3
  %259 = load i32, i32* %6, align 4
  switch i32 %259, label %269 [
    i32 133, label %260
    i32 131, label %263
    i32 132, label %266
  ]

260:                                              ; preds = %258
  %261 = load i32, i32* @IEEE80211_HTCAP_SMPS_OFF, align 4
  %262 = load i32*, i32** %7, align 8
  store i32 %261, i32* %262, align 4
  br label %271

263:                                              ; preds = %258
  %264 = load i32, i32* @IEEE80211_HTCAP_SMPS_ENA, align 4
  %265 = load i32*, i32** %7, align 8
  store i32 %264, i32* %265, align 4
  br label %271

266:                                              ; preds = %258
  %267 = load i32, i32* @IEEE80211_HTCAP_SMPS_DYNAMIC, align 4
  %268 = load i32*, i32** %7, align 8
  store i32 %267, i32* %268, align 4
  br label %271

269:                                              ; preds = %258
  %270 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %270, i32* %4, align 4
  br label %319

271:                                              ; preds = %266, %263, %260
  br label %317

272:                                              ; preds = %3
  %273 = load i32, i32* %6, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* @WLAN_TDMA_MAXSLOTS, align 4
  %278 = icmp sgt i32 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %275, %272
  %280 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %280, i32* %4, align 4
  br label %319

281:                                              ; preds = %275
  %282 = load i32, i32* %6, align 4
  %283 = load i32*, i32** %7, align 8
  store i32 %282, i32* %283, align 4
  br label %317

284:                                              ; preds = %3
  %285 = load i32, i32* %6, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %284
  %288 = load i32, i32* %6, align 4
  %289 = load i32, i32* @WLAN_TDMA_MAXSLOTS, align 4
  %290 = icmp sgt i32 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %287, %284
  %292 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %292, i32* %4, align 4
  br label %319

293:                                              ; preds = %287
  %294 = load i32, i32* %6, align 4
  %295 = load i32*, i32** %7, align 8
  store i32 %294, i32* %295, align 4
  br label %317

296:                                              ; preds = %3
  %297 = load i32, i32* %6, align 4
  %298 = icmp slt i32 %297, 200
  br i1 %298, label %302, label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %6, align 4
  %301 = icmp sgt i32 %300, 1048575
  br i1 %301, label %302, label %304

302:                                              ; preds = %299, %296
  %303 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %303, i32* %4, align 4
  br label %319

304:                                              ; preds = %299
  %305 = load i32, i32* %6, align 4
  %306 = load i32*, i32** %7, align 8
  store i32 %305, i32* %306, align 4
  br label %317

307:                                              ; preds = %3
  %308 = load i32, i32* %6, align 4
  %309 = icmp slt i32 %308, 1
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  %311 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %311, i32* %4, align 4
  br label %319

312:                                              ; preds = %307
  %313 = load i32, i32* %6, align 4
  %314 = load i32*, i32** %7, align 8
  store i32 %313, i32* %314, align 4
  br label %317

315:                                              ; preds = %3
  %316 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %316, i32* %4, align 4
  br label %319

317:                                              ; preds = %312, %304, %293, %281, %271, %257, %240, %231, %212, %200, %183, %154, %142, %126, %113, %102, %88, %85, %72, %63, %54, %41, %27, %26, %25, %24, %23
  %318 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %318, i32* %4, align 4
  br label %319

319:                                              ; preds = %317, %315, %310, %302, %291, %279, %269, %254, %238, %228, %210, %198, %181, %152, %140, %124, %111, %100, %83, %70, %61, %52, %39, %20
  %320 = load i32, i32* %4, align 4
  ret i32 %320
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
