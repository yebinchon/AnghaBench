; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_media_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_media_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ieee80211com = type { i32, i32, i32, %struct.ieee80211_rateset* }
%struct.ieee80211_rateset = type { i32, i32* }
%struct.ifmedia = type { i32 }

@IEEE80211_MODE_AUTO = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IFM_IEEE80211_MCS = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI40 = common dso_local global i32 0, align 4
@ieee80211_htrates = common dso_local global %struct.TYPE_2__* null, align 8
@IEEE80211_HTCAP_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_5GHZ = common dso_local global i32 0, align 4
@IFM_IEEE80211_VHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*, %struct.ifmedia*, i32, i32, i32, i32)* @ieee80211_media_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_media_setup(%struct.ieee80211com* %0, %struct.ifmedia* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.ifmedia*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ieee80211_rateset*, align 8
  %21 = alloca %struct.ieee80211_rateset, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %7, align 8
  store %struct.ifmedia* %1, %struct.ifmedia** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @ifmedia_init(%struct.ifmedia* %22, i32 0, i32 %23, i32 %24)
  store i32 0, i32* %16, align 4
  %26 = call i32 @memset(%struct.ieee80211_rateset* %21, i32 0, i32 16)
  %27 = load i32, i32* @IEEE80211_MODE_AUTO, align 4
  store i32 %27, i32* %19, align 4
  br label %28

28:                                               ; preds = %138, %6
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %141

32:                                               ; preds = %28
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %19, align 4
  %37 = call i64 @isclr(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %138

40:                                               ; preds = %32
  %41 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* @IFM_AUTO, align 4
  %46 = call i32 @addmedia(%struct.ifmedia* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* @IEEE80211_MODE_AUTO, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %138

51:                                               ; preds = %40
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 3
  %54 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %53, align 8
  %55 = load i32, i32* %19, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %54, i64 %56
  store %struct.ieee80211_rateset* %57, %struct.ieee80211_rateset** %20, align 8
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %134, %51
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %20, align 8
  %61 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %137

64:                                               ; preds = %58
  %65 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %20, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %15, align 4
  %72 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @ieee80211_rate2media(%struct.ieee80211com* %72, i32 %73, i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  br label %134

79:                                               ; preds = %64
  %80 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @addmedia(%struct.ifmedia* %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %105, %79
  %90 = load i32, i32* %14, align 4
  %91 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %21, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %21, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %108

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %89

108:                                              ; preds = %103, %89
  %109 = load i32, i32* %14, align 4
  %110 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %21, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i32, i32* %18, align 4
  %115 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %21, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %21, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %113, %108
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %126 = and i32 %124, %125
  %127 = sdiv i32 %126, 2
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* %15, align 4
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %131, %123
  br label %134

134:                                              ; preds = %133, %78
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %58

137:                                              ; preds = %58
  br label %138

138:                                              ; preds = %137, %50, %39
  %139 = load i32, i32* %19, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %19, align 4
  br label %28

141:                                              ; preds = %28
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %168, %141
  %143 = load i32, i32* %13, align 4
  %144 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %21, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %171

147:                                              ; preds = %142
  %148 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %149 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %21, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IEEE80211_MODE_AUTO, align 4
  %156 = call i32 @ieee80211_rate2media(%struct.ieee80211com* %148, i32 %154, i32 %155)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %147
  br label %168

160:                                              ; preds = %147
  %161 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @IEEE80211_MODE_AUTO, align 4
  %165 = load i32, i32* %17, align 4
  %166 = call i32 @IFM_SUBTYPE(i32 %165)
  %167 = call i32 @addmedia(%struct.ifmedia* %161, i32 %162, i32 %163, i32 %164, i32 %166)
  br label %168

168:                                              ; preds = %160, %159
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %142

171:                                              ; preds = %142
  br label %172

172:                                              ; preds = %197, %171
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %175 = icmp ule i32 %173, %174
  br i1 %175, label %176, label %200

176:                                              ; preds = %172
  %177 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %178 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %19, align 4
  %181 = call i64 @isclr(i32 %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %197

184:                                              ; preds = %176
  %185 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* @IFM_AUTO, align 4
  %190 = call i32 @addmedia(%struct.ifmedia* %185, i32 %186, i32 %187, i32 %188, i32 %189)
  %191 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* @IFM_IEEE80211_MCS, align 4
  %196 = call i32 @addmedia(%struct.ifmedia* %191, i32 %192, i32 %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %184, %183
  %198 = load i32, i32* %19, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %19, align 4
  br label %172

200:                                              ; preds = %172
  %201 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %202 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %205 = call i64 @isset(i32 %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %200
  %208 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %209 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %212 = call i64 @isset(i32 %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %290

214:                                              ; preds = %207, %200
  %215 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* @IEEE80211_MODE_AUTO, align 4
  %219 = load i32, i32* @IFM_IEEE80211_MCS, align 4
  %220 = call i32 @addmedia(%struct.ifmedia* %215, i32 %216, i32 %217, i32 %218, i32 %219)
  %221 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %222 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = mul nsw i32 %223, 8
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* %13, align 4
  %226 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %227 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %246

232:                                              ; preds = %214
  %233 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %234 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @IEEE80211_HTCAP_SHORTGI40, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %232
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ieee80211_htrates, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %15, align 4
  br label %283

246:                                              ; preds = %232, %214
  %247 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %248 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %246
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ieee80211_htrates, align 8
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %15, align 4
  br label %282

260:                                              ; preds = %246
  %261 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %262 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @IEEE80211_HTCAP_SHORTGI20, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %260
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ieee80211_htrates, align 8
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %15, align 4
  br label %281

274:                                              ; preds = %260
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ieee80211_htrates, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %15, align 4
  br label %281

281:                                              ; preds = %274, %267
  br label %282

282:                                              ; preds = %281, %253
  br label %283

283:                                              ; preds = %282, %239
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* %16, align 4
  %286 = icmp sgt i32 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = load i32, i32* %15, align 4
  store i32 %288, i32* %16, align 4
  br label %289

289:                                              ; preds = %287, %283
  br label %290

290:                                              ; preds = %289, %207
  br label %291

291:                                              ; preds = %316, %290
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* @IEEE80211_MODE_VHT_5GHZ, align 4
  %294 = icmp ule i32 %292, %293
  br i1 %294, label %295, label %319

295:                                              ; preds = %291
  %296 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %297 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %19, align 4
  %300 = call i64 @isclr(i32 %298, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %295
  br label %316

303:                                              ; preds = %295
  %304 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %305 = load i32, i32* %9, align 4
  %306 = load i32, i32* %10, align 4
  %307 = load i32, i32* %19, align 4
  %308 = load i32, i32* @IFM_AUTO, align 4
  %309 = call i32 @addmedia(%struct.ifmedia* %304, i32 %305, i32 %306, i32 %307, i32 %308)
  %310 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %10, align 4
  %313 = load i32, i32* %19, align 4
  %314 = load i32, i32* @IFM_IEEE80211_VHT, align 4
  %315 = call i32 @addmedia(%struct.ifmedia* %310, i32 %311, i32 %312, i32 %313, i32 %314)
  br label %316

316:                                              ; preds = %303, %302
  %317 = load i32, i32* %19, align 4
  %318 = add i32 %317, 1
  store i32 %318, i32* %19, align 4
  br label %291

319:                                              ; preds = %291
  %320 = load i32, i32* %16, align 4
  ret i32 %320
}

declare dso_local i32 @ifmedia_init(%struct.ifmedia*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_rateset*, i32, i32) #1

declare dso_local i64 @isclr(i32, i32) #1

declare dso_local i32 @addmedia(%struct.ifmedia*, i32, i32, i32, i32) #1

declare dso_local i32 @ieee80211_rate2media(%struct.ieee80211com*, i32, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i64 @isset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
