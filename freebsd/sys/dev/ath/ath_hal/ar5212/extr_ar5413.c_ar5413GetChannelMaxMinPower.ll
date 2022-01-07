; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5413.c_ar5413GetChannelMaxMinPower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5413.c_ar5413GetChannelMaxMinPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@AH_NULL = common dso_local global i8* null, align 8
@headerInfo11G = common dso_local global i64 0, align 8
@headerInfo11B = common dso_local global i64 0, align 8
@headerInfo11A = common dso_local global i64 0, align 8
@AH_FALSE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.ieee80211_channel*, i32*, i32*)* @ar5413GetChannelMaxMinPower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5413GetChannelMaxMinPower(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %24 = call %struct.TYPE_10__* @AH_PRIVATE(%struct.ath_hal* %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %11, align 8
  %27 = load i8*, i8** @AH_NULL, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %12, align 8
  %29 = load i8*, i8** @AH_NULL, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %13, align 8
  %31 = load i32*, i32** %8, align 8
  store i32 0, i32* %31, align 4
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %33 = call i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %4
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %37 = call i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i64, i64* @headerInfo11G, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %43
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %12, align 8
  br label %65

45:                                               ; preds = %35
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %47 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i64, i64* @headerInfo11B, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %53
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %12, align 8
  br label %64

55:                                               ; preds = %45
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %57 = call i32 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %56)
  %58 = call i32 @HALASSERT(i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i64, i64* @headerInfo11A, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %62
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %12, align 8
  br label %64

64:                                               ; preds = %55, %49
  br label %65

65:                                               ; preds = %64, %39
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %14, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %13, align 8
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @AH_FALSE, align 4
  store i32 %75, i32* %5, align 4
  br label %265

76:                                               ; preds = %65
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %93, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %84, %91
  br i1 %92, label %93, label %130

93:                                               ; preds = %83, %76
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 0
  %104 = call i32 @ar5413GetMaxPower(%struct.ath_hal* %101, %struct.TYPE_8__* %103)
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  %106 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 0
  %109 = call i32 @ar5413GetMinPower(%struct.ath_hal* %106, %struct.TYPE_8__* %108)
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @AH_TRUE, align 4
  store i32 %111, i32* %5, align 4
  br label %265

112:                                              ; preds = %93
  %113 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %117
  %119 = call i32 @ar5413GetMaxPower(%struct.ath_hal* %113, %struct.TYPE_8__* %118)
  %120 = load i32*, i32** %8, align 8
  store i32 %119, i32* %120, align 4
  %121 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %125
  %127 = call i32 @ar5413GetMinPower(%struct.ath_hal* %121, %struct.TYPE_8__* %126)
  %128 = load i32*, i32** %9, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* @AH_TRUE, align 4
  store i32 %129, i32* %5, align 4
  br label %265

130:                                              ; preds = %83
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %147, %130
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %136, %142
  br label %144

144:                                              ; preds = %135, %131
  %145 = phi i1 [ false, %131 ], [ %143, %135 ]
  br i1 %145, label %146, label %150

146:                                              ; preds = %144
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  store i32 %148, i32* %18, align 4
  br label %131

150:                                              ; preds = %144
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %152 = load i32, i32* %19, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %156, %162
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %238

166:                                              ; preds = %150
  %167 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = call i32 @ar5413GetMaxPower(%struct.ath_hal* %167, %struct.TYPE_8__* %171)
  %173 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %175 = load i32, i32* %18, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %176
  %178 = call i32 @ar5413GetMaxPower(%struct.ath_hal* %173, %struct.TYPE_8__* %177)
  %179 = sub nsw i32 %172, %178
  store i32 %179, i32* %16, align 4
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %181, %187
  %189 = mul nsw i32 %180, %188
  %190 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i64 %193
  %195 = call i32 @ar5413GetMaxPower(%struct.ath_hal* %190, %struct.TYPE_8__* %194)
  %196 = load i32, i32* %15, align 4
  %197 = mul nsw i32 %195, %196
  %198 = add nsw i32 %189, %197
  %199 = load i32, i32* %15, align 4
  %200 = sdiv i32 %198, %199
  %201 = load i32*, i32** %8, align 8
  store i32 %200, i32* %201, align 4
  %202 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %205
  %207 = call i32 @ar5413GetMinPower(%struct.ath_hal* %202, %struct.TYPE_8__* %206)
  %208 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i64 %211
  %213 = call i32 @ar5413GetMinPower(%struct.ath_hal* %208, %struct.TYPE_8__* %212)
  %214 = sub nsw i32 %207, %213
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %216, %222
  %224 = mul nsw i32 %215, %223
  %225 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %227 = load i32, i32* %18, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i64 %228
  %230 = call i32 @ar5413GetMinPower(%struct.ath_hal* %225, %struct.TYPE_8__* %229)
  %231 = load i32, i32* %15, align 4
  %232 = mul nsw i32 %230, %231
  %233 = add nsw i32 %224, %232
  %234 = load i32, i32* %15, align 4
  %235 = sdiv i32 %233, %234
  %236 = load i32*, i32** %9, align 8
  store i32 %235, i32* %236, align 4
  %237 = load i32, i32* @AH_TRUE, align 4
  store i32 %237, i32* %5, align 4
  br label %265

238:                                              ; preds = %150
  %239 = load i32, i32* %10, align 4
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %241 = load i32, i32* %19, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %239, %245
  br i1 %246, label %247, label %263

247:                                              ; preds = %238
  %248 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %250 = load i32, i32* %19, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i64 %251
  %253 = call i32 @ar5413GetMaxPower(%struct.ath_hal* %248, %struct.TYPE_8__* %252)
  %254 = load i32*, i32** %8, align 8
  store i32 %253, i32* %254, align 4
  %255 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %257 = load i32, i32* %19, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i64 %258
  %260 = call i32 @ar5413GetMinPower(%struct.ath_hal* %255, %struct.TYPE_8__* %259)
  %261 = load i32*, i32** %9, align 8
  store i32 %260, i32* %261, align 4
  %262 = load i32, i32* @AH_TRUE, align 4
  store i32 %262, i32* %5, align 4
  br label %265

263:                                              ; preds = %238
  %264 = load i32, i32* @AH_FALSE, align 4
  store i32 %264, i32* %5, align 4
  br label %265

265:                                              ; preds = %263, %247, %166, %112, %100, %74
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare dso_local %struct.TYPE_10__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @ar5413GetMaxPower(%struct.ath_hal*, %struct.TYPE_8__*) #1

declare dso_local i32 @ar5413GetMinPower(%struct.ath_hal*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
