; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5112.c_ar5112GetChannelMaxMinPower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5112.c_ar5112GetChannelMaxMinPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }

@AH_NULL = common dso_local global i8* null, align 8
@headerInfo11A = common dso_local global i64 0, align 8
@headerInfo11G = common dso_local global i64 0, align 8
@headerInfo11B = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.ieee80211_channel*, i32*, i32*)* @ar5112GetChannelMaxMinPower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5112GetChannelMaxMinPower(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %24 = call %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal* %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  store i32 0, i32* %12, align 4
  %27 = load i8*, i8** @AH_NULL, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %18, align 8
  %29 = load i8*, i8** @AH_NULL, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %19, align 8
  %31 = load i32*, i32** %8, align 8
  store i32 0, i32* %31, align 4
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %33 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %19, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %40 = load i64, i64* @headerInfo11A, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %18, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %45 = load i64, i64* @headerInfo11A, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  br label %93

49:                                               ; preds = %4
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %51 = call i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %55 = call i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53, %49
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %19, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %62 = load i64, i64* @headerInfo11G, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %18, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %67 = load i64, i64* @headerInfo11G, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %12, align 4
  br label %92

71:                                               ; preds = %53
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %73 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %19, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %80 = load i64, i64* @headerInfo11B, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %18, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %85 = load i64, i64* @headerInfo11B, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %12, align 4
  br label %91

89:                                               ; preds = %71
  %90 = load i32, i32* @AH_TRUE, align 4
  store i32 %90, i32* %5, align 4
  br label %296

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %57
  br label %93

93:                                               ; preds = %92, %35
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @AH_FALSE, align 4
  store i32 %97, i32* %5, align 4
  br label %296

98:                                               ; preds = %93
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %99, %103
  br i1 %104, label %115, label %105

105:                                              ; preds = %98
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %106, %113
  br i1 %114, label %115, label %152

115:                                              ; preds = %105, %98
  %116 = load i64, i64* %10, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %116, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %115
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %8, align 8
  store i32 %126, i32* %127, align 4
  %128 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 0
  %131 = call i32 @ar5112GetMinPower(%struct.ath_hal* %128, %struct.TYPE_7__* %130)
  %132 = load i32*, i32** %9, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* @AH_TRUE, align 4
  store i32 %133, i32* %5, align 4
  br label %296

134:                                              ; preds = %115
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32*, i32** %8, align 8
  store i32 %141, i32* %142, align 4
  %143 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %147
  %149 = call i32 @ar5112GetMinPower(%struct.ath_hal* %143, %struct.TYPE_7__* %148)
  %150 = load i32*, i32** %9, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* @AH_TRUE, align 4
  store i32 %151, i32* %5, align 4
  br label %296

152:                                              ; preds = %105
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %153

153:                                              ; preds = %169, %152
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load i64, i64* %10, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %158, %164
  br label %166

166:                                              ; preds = %157, %153
  %167 = phi i1 [ false, %153 ], [ %165, %157 ]
  br i1 %167, label %168, label %172

168:                                              ; preds = %166
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  store i32 %170, i32* %14, align 4
  br label %153

172:                                              ; preds = %166
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = sub nsw i64 %178, %184
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %269

189:                                              ; preds = %172
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %195, %201
  store i32 %202, i32* %16, align 4
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %10, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 %205, %211
  %213 = mul nsw i64 %204, %212
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %15, align 4
  %221 = mul nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %213, %222
  %224 = load i32, i32* %15, align 4
  %225 = sext i32 %224 to i64
  %226 = sdiv i64 %223, %225
  %227 = trunc i64 %226 to i32
  %228 = load i32*, i32** %8, align 8
  store i32 %227, i32* %228, align 4
  %229 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i64 %232
  %234 = call i32 @ar5112GetMinPower(%struct.ath_hal* %229, %struct.TYPE_7__* %233)
  %235 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %238
  %240 = call i32 @ar5112GetMinPower(%struct.ath_hal* %235, %struct.TYPE_7__* %239)
  %241 = sub nsw i32 %234, %240
  store i32 %241, i32* %17, align 4
  %242 = load i32, i32* %17, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* %10, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %244, %250
  %252 = mul nsw i64 %243, %251
  %253 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i64 %256
  %258 = call i32 @ar5112GetMinPower(%struct.ath_hal* %253, %struct.TYPE_7__* %257)
  %259 = load i32, i32* %15, align 4
  %260 = mul nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %252, %261
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = sdiv i64 %262, %264
  %266 = trunc i64 %265 to i32
  %267 = load i32*, i32** %9, align 8
  store i32 %266, i32* %267, align 4
  %268 = load i32, i32* @AH_TRUE, align 4
  store i32 %268, i32* %5, align 4
  br label %296

269:                                              ; preds = %172
  %270 = load i64, i64* %10, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %270, %276
  br i1 %277, label %278, label %294

278:                                              ; preds = %269
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = load i32*, i32** %8, align 8
  store i32 %284, i32* %285, align 4
  %286 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i64 %289
  %291 = call i32 @ar5112GetMinPower(%struct.ath_hal* %286, %struct.TYPE_7__* %290)
  %292 = load i32*, i32** %9, align 8
  store i32 %291, i32* %292, align 4
  %293 = load i32, i32* @AH_TRUE, align 4
  store i32 %293, i32* %5, align 4
  br label %296

294:                                              ; preds = %269
  %295 = load i32, i32* @AH_FALSE, align 4
  store i32 %295, i32* %5, align 4
  br label %296

296:                                              ; preds = %294, %278, %189, %134, %122, %96, %89
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i32 @ar5112GetMinPower(%struct.ath_hal*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
