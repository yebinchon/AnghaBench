; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar2425.c_ar2425GetChannelMaxMinPower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar2425.c_ar2425GetChannelMaxMinPower.c"
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
@AH_FALSE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.ieee80211_channel*, i32*, i32*)* @ar2425GetChannelMaxMinPower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar2425GetChannelMaxMinPower(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, i32* %2, i32* %3) #0 {
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
  br label %58

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
  br label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @AH_FALSE, align 4
  store i32 %56, i32* %5, align 4
  br label %258

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %39
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %14, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @AH_FALSE, align 4
  store i32 %68, i32* %5, align 4
  br label %258

69:                                               ; preds = %58
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %77, %84
  br i1 %85, label %86, label %123

86:                                               ; preds = %76, %69
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 0
  %97 = call i32 @ar2425GetMaxPower(%struct.ath_hal* %94, %struct.TYPE_8__* %96)
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 0
  %102 = call i32 @ar2425GetMinPower(%struct.ath_hal* %99, %struct.TYPE_8__* %101)
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @AH_TRUE, align 4
  store i32 %104, i32* %5, align 4
  br label %258

105:                                              ; preds = %86
  %106 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %110
  %112 = call i32 @ar2425GetMaxPower(%struct.ath_hal* %106, %struct.TYPE_8__* %111)
  %113 = load i32*, i32** %8, align 8
  store i32 %112, i32* %113, align 4
  %114 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 %118
  %120 = call i32 @ar2425GetMinPower(%struct.ath_hal* %114, %struct.TYPE_8__* %119)
  %121 = load i32*, i32** %9, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @AH_TRUE, align 4
  store i32 %122, i32* %5, align 4
  br label %258

123:                                              ; preds = %76
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %124

124:                                              ; preds = %140, %123
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %129, %135
  br label %137

137:                                              ; preds = %128, %124
  %138 = phi i1 [ false, %124 ], [ %136, %128 ]
  br i1 %138, label %139, label %143

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %19, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %19, align 4
  store i32 %141, i32* %18, align 4
  br label %124

143:                                              ; preds = %137
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %149, %155
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %231

159:                                              ; preds = %143
  %160 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 %163
  %165 = call i32 @ar2425GetMaxPower(%struct.ath_hal* %160, %struct.TYPE_8__* %164)
  %166 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %169
  %171 = call i32 @ar2425GetMaxPower(%struct.ath_hal* %166, %struct.TYPE_8__* %170)
  %172 = sub nsw i32 %165, %171
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %174, %180
  %182 = mul nsw i32 %173, %181
  %183 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %186
  %188 = call i32 @ar2425GetMaxPower(%struct.ath_hal* %183, %struct.TYPE_8__* %187)
  %189 = load i32, i32* %15, align 4
  %190 = mul nsw i32 %188, %189
  %191 = add nsw i32 %182, %190
  %192 = load i32, i32* %15, align 4
  %193 = sdiv i32 %191, %192
  %194 = load i32*, i32** %8, align 8
  store i32 %193, i32* %194, align 4
  %195 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 %198
  %200 = call i32 @ar2425GetMinPower(%struct.ath_hal* %195, %struct.TYPE_8__* %199)
  %201 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i64 %204
  %206 = call i32 @ar2425GetMinPower(%struct.ath_hal* %201, %struct.TYPE_8__* %205)
  %207 = sub nsw i32 %200, %206
  store i32 %207, i32* %17, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %209, %215
  %217 = mul nsw i32 %208, %216
  %218 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %220 = load i32, i32* %18, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i64 %221
  %223 = call i32 @ar2425GetMinPower(%struct.ath_hal* %218, %struct.TYPE_8__* %222)
  %224 = load i32, i32* %15, align 4
  %225 = mul nsw i32 %223, %224
  %226 = add nsw i32 %217, %225
  %227 = load i32, i32* %15, align 4
  %228 = sdiv i32 %226, %227
  %229 = load i32*, i32** %9, align 8
  store i32 %228, i32* %229, align 4
  %230 = load i32, i32* @AH_TRUE, align 4
  store i32 %230, i32* %5, align 4
  br label %258

231:                                              ; preds = %143
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %234 = load i32, i32* %19, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %232, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %231
  %241 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 %244
  %246 = call i32 @ar2425GetMaxPower(%struct.ath_hal* %241, %struct.TYPE_8__* %245)
  %247 = load i32*, i32** %8, align 8
  store i32 %246, i32* %247, align 4
  %248 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %250 = load i32, i32* %19, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i64 %251
  %253 = call i32 @ar2425GetMinPower(%struct.ath_hal* %248, %struct.TYPE_8__* %252)
  %254 = load i32*, i32** %9, align 8
  store i32 %253, i32* %254, align 4
  %255 = load i32, i32* @AH_TRUE, align 4
  store i32 %255, i32* %5, align 4
  br label %258

256:                                              ; preds = %231
  %257 = load i32, i32* @AH_FALSE, align 4
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %256, %240, %159, %105, %93, %67, %55
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local %struct.TYPE_10__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i32 @ar2425GetMaxPower(%struct.ath_hal*, %struct.TYPE_8__*) #1

declare dso_local i32 @ar2425GetMinPower(%struct.ath_hal*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
