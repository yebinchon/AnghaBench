; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_get_beacon_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_get_beacon_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_info = type { i8, i64, i64* }
%struct.ieee80211_ie_wpa = type { i8*, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"<hidden>\00", align 1
@CRYPT_NONE = common dso_local global i64 0, align 8
@IEEE80211_CAPINFO_PRIVACY = common dso_local global i32 0, align 4
@CRYPT_WEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"\00P\F2\00", align 1
@WPA_OUI_TYPE = common dso_local global i64 0, align 8
@WPA_VERSION = common dso_local global i32 0, align 4
@CRYPT_WPA1 = common dso_local global i64 0, align 8
@WPA_CSE_TKIP = common dso_local global i32 0, align 4
@CRYPT_WPA1_TKIP = common dso_local global i64 0, align 8
@WPA_ASE_8021X_PSK = common dso_local global i32 0, align 4
@CRYPT_WPA1_TKIP_PSK = common dso_local global i64 0, align 8
@WPA_CSE_CCMP = common dso_local global i32 0, align 4
@CRYPT_WPA1_CCMP = common dso_local global i64 0, align 8
@CRYPT_WPA1_CCMP_PSK = common dso_local global i64 0, align 8
@CRYPT_80211i = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\00\0F\AC\02\00", align 1
@CRYPT_80211i_TKIP = common dso_local global i64 0, align 8
@CRYPT_80211i_TKIP_PSK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_beacon_info(i8* %0, i32 %1, %struct.node_info* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_ie_wpa*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.node_info* %2, %struct.node_info** %6, align 8
  store i32 12, i32* %7, align 4
  %17 = load %struct.node_info*, %struct.node_info** %6, align 8
  %18 = getelementptr inbounds %struct.node_info, %struct.node_info* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = call i32 @strcpy(i64* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.node_info*, %struct.node_info** %6, align 8
  %22 = getelementptr inbounds %struct.node_info, %struct.node_info* %21, i32 0, i32 0
  store i8 0, i8* %22, align 8
  %23 = load i64, i64* @CRYPT_NONE, align 8
  %24 = load %struct.node_info*, %struct.node_info** %6, align 8
  %25 = getelementptr inbounds %struct.node_info, %struct.node_info* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @IEEE80211_BEACON_CAPABILITY(i8* %31)
  %33 = load i32, i32* @IEEE80211_CAPINFO_PRIVACY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load i64, i64* @CRYPT_WEP, align 8
  %38 = load %struct.node_info*, %struct.node_info** %6, align 8
  %39 = getelementptr inbounds %struct.node_info, %struct.node_info* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %3
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %298, %40
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %306

51:                                               ; preds = %48
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %62, 2
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  br label %306

68:                                               ; preds = %51
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %94

81:                                               ; preds = %74, %71
  %82 = load %struct.node_info*, %struct.node_info** %6, align 8
  %83 = getelementptr inbounds %struct.node_info, %struct.node_info* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @memcpy(i64* %84, i8* %85, i32 %86)
  %88 = load %struct.node_info*, %struct.node_info** %6, align 8
  %89 = getelementptr inbounds %struct.node_info, %struct.node_info* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %81, %80
  br label %297

95:                                               ; preds = %68
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %298

102:                                              ; preds = %98
  %103 = load i8*, i8** %4, align 8
  %104 = load i8, i8* %103, align 1
  %105 = load %struct.node_info*, %struct.node_info** %6, align 8
  %106 = getelementptr inbounds %struct.node_info, %struct.node_info* %105, i32 0, i32 0
  store i8 %104, i8* %106, align 8
  br label %296

107:                                              ; preds = %95
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 221
  br i1 %109, label %110, label %224

110:                                              ; preds = %107
  %111 = load %struct.node_info*, %struct.node_info** %6, align 8
  %112 = getelementptr inbounds %struct.node_info, %struct.node_info* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CRYPT_WEP, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %224

116:                                              ; preds = %110
  %117 = load i8*, i8** %4, align 8
  %118 = bitcast i8* %117 to %struct.ieee80211_ie_wpa*
  store %struct.ieee80211_ie_wpa* %118, %struct.ieee80211_ie_wpa** %10, align 8
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 6
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %298

122:                                              ; preds = %116
  %123 = load %struct.ieee80211_ie_wpa*, %struct.ieee80211_ie_wpa** %10, align 8
  %124 = getelementptr inbounds %struct.ieee80211_ie_wpa, %struct.ieee80211_ie_wpa* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @memcmp(i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  br label %130

129:                                              ; preds = %122
  br label %298

130:                                              ; preds = %128
  %131 = load %struct.ieee80211_ie_wpa*, %struct.ieee80211_ie_wpa** %10, align 8
  %132 = getelementptr inbounds %struct.ieee80211_ie_wpa, %struct.ieee80211_ie_wpa* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @WPA_OUI_TYPE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %223

136:                                              ; preds = %130
  %137 = load %struct.ieee80211_ie_wpa*, %struct.ieee80211_ie_wpa** %10, align 8
  %138 = getelementptr inbounds %struct.ieee80211_ie_wpa, %struct.ieee80211_ie_wpa* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @le16toh(i32 %139)
  %141 = load i32, i32* @WPA_VERSION, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %223

143:                                              ; preds = %136
  %144 = load i64, i64* @CRYPT_WPA1, align 8
  %145 = load %struct.node_info*, %struct.node_info** %6, align 8
  %146 = getelementptr inbounds %struct.node_info, %struct.node_info* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 12
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %298

150:                                              ; preds = %143
  %151 = load %struct.ieee80211_ie_wpa*, %struct.ieee80211_ie_wpa** %10, align 8
  %152 = getelementptr inbounds %struct.ieee80211_ie_wpa, %struct.ieee80211_ie_wpa* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  store i32 %157, i32* %11, align 4
  %158 = load %struct.ieee80211_ie_wpa*, %struct.ieee80211_ie_wpa** %10, align 8
  %159 = bitcast %struct.ieee80211_ie_wpa* %158 to i8*
  %160 = getelementptr inbounds i8, i8* %159, i64 12
  %161 = load %struct.ieee80211_ie_wpa*, %struct.ieee80211_ie_wpa** %10, align 8
  %162 = getelementptr inbounds %struct.ieee80211_ie_wpa, %struct.ieee80211_ie_wpa* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @le16toh(i32 %163)
  %165 = mul nsw i32 4, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %160, i64 %166
  store i8* %167, i8** %13, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = load i8*, i8** %13, align 8
  %171 = load i8*, i8** %4, align 8
  %172 = ptrtoint i8* %170 to i64
  %173 = ptrtoint i8* %171 to i64
  %174 = sub i64 %172, %173
  %175 = add nsw i64 %174, 6
  %176 = icmp slt i64 %169, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %150
  br label %298

178:                                              ; preds = %150
  %179 = load i8*, i8** %13, align 8
  %180 = bitcast i8* %179 to i16*
  %181 = load i16, i16* %180, align 2
  %182 = zext i16 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %298

185:                                              ; preds = %178
  %186 = load i8*, i8** %13, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 5
  store i8* %187, i8** %13, align 8
  %188 = load i8*, i8** %13, align 8
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @WPA_CSE_TKIP, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %185
  %195 = load i64, i64* @CRYPT_WPA1_TKIP, align 8
  %196 = load %struct.node_info*, %struct.node_info** %6, align 8
  %197 = getelementptr inbounds %struct.node_info, %struct.node_info* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @WPA_ASE_8021X_PSK, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load i64, i64* @CRYPT_WPA1_TKIP_PSK, align 8
  %203 = load %struct.node_info*, %struct.node_info** %6, align 8
  %204 = getelementptr inbounds %struct.node_info, %struct.node_info* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %201, %194
  br label %206

206:                                              ; preds = %205, %185
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @WPA_CSE_CCMP, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %206
  %211 = load i64, i64* @CRYPT_WPA1_CCMP, align 8
  %212 = load %struct.node_info*, %struct.node_info** %6, align 8
  %213 = getelementptr inbounds %struct.node_info, %struct.node_info* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @WPA_ASE_8021X_PSK, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %210
  %218 = load i64, i64* @CRYPT_WPA1_CCMP_PSK, align 8
  %219 = load %struct.node_info*, %struct.node_info** %6, align 8
  %220 = getelementptr inbounds %struct.node_info, %struct.node_info* %219, i32 0, i32 1
  store i64 %218, i64* %220, align 8
  br label %221

221:                                              ; preds = %217, %210
  br label %222

222:                                              ; preds = %221, %206
  br label %223

223:                                              ; preds = %222, %136, %130
  br label %295

224:                                              ; preds = %110, %107
  %225 = load i32, i32* %8, align 4
  %226 = icmp eq i32 %225, 48
  br i1 %226, label %227, label %294

227:                                              ; preds = %224
  %228 = load %struct.node_info*, %struct.node_info** %6, align 8
  %229 = getelementptr inbounds %struct.node_info, %struct.node_info* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @CRYPT_WEP, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %294

233:                                              ; preds = %227
  %234 = load i8*, i8** %4, align 8
  store i8* %234, i8** %14, align 8
  %235 = load i8*, i8** %14, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 0
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %293

240:                                              ; preds = %233
  %241 = load i8*, i8** %14, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %293

246:                                              ; preds = %240
  store i32 0, i32* %16, align 4
  %247 = load i8*, i8** %14, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 2
  store i8* %248, i8** %14, align 8
  %249 = load i64, i64* @CRYPT_80211i, align 8
  %250 = load %struct.node_info*, %struct.node_info** %6, align 8
  %251 = getelementptr inbounds %struct.node_info, %struct.node_info* %250, i32 0, i32 1
  store i64 %249, i64* %251, align 8
  %252 = load i8*, i8** %14, align 8
  %253 = call i32 @memcmp(i8* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %246
  %256 = load i64, i64* @CRYPT_80211i_TKIP, align 8
  %257 = load %struct.node_info*, %struct.node_info** %6, align 8
  %258 = getelementptr inbounds %struct.node_info, %struct.node_info* %257, i32 0, i32 1
  store i64 %256, i64* %258, align 8
  store i32 1, i32* %16, align 4
  br label %259

259:                                              ; preds = %255, %246
  %260 = load i8*, i8** %14, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 4
  store i8* %261, i8** %14, align 8
  %262 = load i8*, i8** %14, align 8
  %263 = bitcast i8* %262 to i16*
  store i16* %263, i16** %15, align 8
  %264 = load i16*, i16** %15, align 8
  %265 = load i16, i16* %264, align 2
  %266 = zext i16 %265 to i32
  %267 = mul nsw i32 %266, 4
  %268 = add nsw i32 2, %267
  %269 = load i8*, i8** %14, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8* %271, i8** %14, align 8
  %272 = load i8*, i8** %14, align 8
  %273 = bitcast i8* %272 to i16*
  store i16* %273, i16** %15, align 8
  %274 = load i16*, i16** %15, align 8
  %275 = load i16, i16* %274, align 2
  %276 = icmp ne i16 %275, 0
  br i1 %276, label %277, label %292

277:                                              ; preds = %259
  %278 = load i8*, i8** %14, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 2
  store i8* %279, i8** %14, align 8
  %280 = load i8*, i8** %14, align 8
  %281 = call i32 @memcmp(i8* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %277
  %284 = load i32, i32* %16, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load i64, i64* @CRYPT_80211i_TKIP_PSK, align 8
  %288 = load %struct.node_info*, %struct.node_info** %6, align 8
  %289 = getelementptr inbounds %struct.node_info, %struct.node_info* %288, i32 0, i32 1
  store i64 %287, i64* %289, align 8
  br label %290

290:                                              ; preds = %286, %283
  br label %291

291:                                              ; preds = %290, %277
  br label %292

292:                                              ; preds = %291, %259
  br label %293

293:                                              ; preds = %292, %240, %233
  br label %294

294:                                              ; preds = %293, %227, %224
  br label %295

295:                                              ; preds = %294, %223
  br label %296

296:                                              ; preds = %295, %102
  br label %297

297:                                              ; preds = %296, %94
  br label %298

298:                                              ; preds = %297, %184, %177, %149, %129, %121, %101
  %299 = load i32, i32* %9, align 4
  %300 = load i8*, i8** %4, align 8
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds i8, i8* %300, i64 %301
  store i8* %302, i8** %4, align 8
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* %5, align 4
  %305 = sub nsw i32 %304, %303
  store i32 %305, i32* %5, align 4
  br label %48

306:                                              ; preds = %67, %48
  ret void
}

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IEEE80211_BEACON_CAPABILITY(i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
