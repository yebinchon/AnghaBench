; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetRatesArrayFromTargetPower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetRatesArrayFromTargetPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_10__ = type { i64* }

@Ar5416RateSize = common dso_local global i32 0, align 4
@rate24mb = common dso_local global i64 0, align 8
@rate18mb = common dso_local global i64 0, align 8
@rate12mb = common dso_local global i64 0, align 8
@rate9mb = common dso_local global i64 0, align 8
@rate6mb = common dso_local global i64 0, align 8
@rate36mb = common dso_local global i64 0, align 8
@rate48mb = common dso_local global i64 0, align 8
@rate54mb = common dso_local global i64 0, align 8
@rateXr = common dso_local global i64 0, align 8
@rateHt20_0 = common dso_local global i32 0, align 4
@rate1l = common dso_local global i64 0, align 8
@rate2l = common dso_local global i64 0, align 8
@rate2s = common dso_local global i64 0, align 8
@rate5_5l = common dso_local global i64 0, align 8
@rate5_5s = common dso_local global i64 0, align 8
@rate11l = common dso_local global i64 0, align 8
@rate11s = common dso_local global i64 0, align 8
@rateHt40_0 = common dso_local global i32 0, align 4
@rateDupOfdm = common dso_local global i64 0, align 8
@rateDupCck = common dso_local global i64 0, align 8
@rateExtOfdm = common dso_local global i64 0, align 8
@rateExtCck = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416SetRatesArrayFromTargetPower(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, i64* %2, %struct.TYPE_9__* %3, %struct.TYPE_9__* %4, %struct.TYPE_9__* %5, %struct.TYPE_9__* %6, %struct.TYPE_10__* %7, %struct.TYPE_10__* %8) #0 {
  %10 = alloca %struct.ath_hal*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %10, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %11, align 8
  store i64* %2, i64** %12, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %18, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %29, %9
  %21 = load i32, i32* %19, align 4
  %22 = load i32, i32* @Ar5416RateSize, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i64*, i64** %12, align 8
  %26 = load i32, i32* %19, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %19, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %19, align 4
  br label %20

32:                                               ; preds = %20
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %12, align 8
  %39 = load i64, i64* @rate24mb, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %37, i64* %40, align 8
  %41 = load i64*, i64** %12, align 8
  %42 = load i64, i64* @rate18mb, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %37, i64* %43, align 8
  %44 = load i64*, i64** %12, align 8
  %45 = load i64, i64* @rate12mb, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %37, i64* %46, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = load i64, i64* @rate9mb, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %37, i64* %49, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = load i64, i64* @rate6mb, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %37, i64* %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = load i64, i64* @rate36mb, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %57, i64* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %12, align 8
  %67 = load i64, i64* @rate48mb, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %65, i64* %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %12, align 8
  %75 = load i64, i64* @rate54mb, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %73, i64* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %12, align 8
  %83 = load i64, i64* @rateXr, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %81, i64* %84, align 8
  store i32 0, i32* %19, align 4
  br label %85

85:                                               ; preds = %103, %32
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ult i64 %87, 1
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = load i32, i32* @rateHt20_0, align 4
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %97, i64 %101
  store i64 %96, i64* %102, align 8
  br label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %19, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %19, align 4
  br label %85

106:                                              ; preds = %85
  %107 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %108 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %152

110:                                              ; preds = %106
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %12, align 8
  %117 = load i64, i64* @rate1l, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64 %115, i64* %118, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %12, align 8
  %125 = load i64, i64* @rate2l, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64 %123, i64* %126, align 8
  %127 = load i64*, i64** %12, align 8
  %128 = load i64, i64* @rate2s, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 %123, i64* %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %12, align 8
  %136 = load i64, i64* @rate5_5l, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  store i64 %134, i64* %137, align 8
  %138 = load i64*, i64** %12, align 8
  %139 = load i64, i64* @rate5_5s, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  store i64 %134, i64* %140, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %12, align 8
  %147 = load i64, i64* @rate11l, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  store i64 %145, i64* %148, align 8
  %149 = load i64*, i64** %12, align 8
  %150 = load i64, i64* @rate11s, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  store i64 %145, i64* %151, align 8
  br label %152

152:                                              ; preds = %110, %106
  %153 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %154 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %216

156:                                              ; preds = %152
  store i32 0, i32* %19, align 4
  br label %157

157:                                              ; preds = %175, %156
  %158 = load i32, i32* %19, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp ult i64 %159, 1
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %19, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load i64*, i64** %12, align 8
  %170 = load i32, i32* @rateHt40_0, align 4
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %169, i64 %173
  store i64 %168, i64* %174, align 8
  br label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %19, align 4
  br label %157

178:                                              ; preds = %157
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %12, align 8
  %185 = load i64, i64* @rateDupOfdm, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  store i64 %183, i64* %186, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64*, i64** %12, align 8
  %193 = load i64, i64* @rateDupCck, align 8
  %194 = getelementptr inbounds i64, i64* %192, i64 %193
  store i64 %191, i64* %194, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %12, align 8
  %201 = load i64, i64* @rateExtOfdm, align 8
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  store i64 %199, i64* %202, align 8
  %203 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %204 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %178
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64*, i64** %12, align 8
  %213 = load i64, i64* @rateExtCck, align 8
  %214 = getelementptr inbounds i64, i64* %212, i64 %213
  store i64 %211, i64* %214, align 8
  br label %215

215:                                              ; preds = %206, %178
  br label %216

216:                                              ; preds = %215, %152
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
