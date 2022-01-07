; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetRateDurationTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetRateDurationTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }

@HAL_MODE_11A_HALF_RATE = common dso_local global i32 0, align 4
@HAL_MODE_11A_QUARTER_RATE = common dso_local global i32 0, align 4
@HAL_MODE_TURBO = common dso_local global i32 0, align 4
@HAL_MODE_11G = common dso_local global i32 0, align 4
@WLAN_CTRL_FRAME_SIZE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@IEEE80211_T_CCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212SetRateDurationTable(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %9 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = load i32, i32* @HAL_MODE_11A_HALF_RATE, align 4
  %14 = call %struct.TYPE_6__* @ar5212GetRateTable(%struct.ath_hal* %12, i32 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %5, align 8
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %21 = load i32, i32* @HAL_MODE_11A_QUARTER_RATE, align 4
  %22 = call %struct.TYPE_6__* @ar5212GetRateTable(%struct.ath_hal* %20, i32 %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %5, align 8
  br label %35

23:                                               ; preds = %15
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %26 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @HAL_MODE_TURBO, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @HAL_MODE_11G, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call %struct.TYPE_6__* @ar5212GetRateTable(%struct.ath_hal* %24, i32 %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %5, align 8
  br label %35

35:                                               ; preds = %32, %19
  br label %36

36:                                               ; preds = %35, %11
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %69, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @AR_RATE_DURATION(i32 %52)
  %54 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = load i32, i32* @WLAN_CTRL_FRAME_SIZE, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AH_FALSE, align 4
  %66 = load i32, i32* @AH_TRUE, align 4
  %67 = call i32 @ath_hal_computetxtime(%struct.ath_hal* %54, %struct.TYPE_6__* %55, i32 %56, i32 %64, i32 %65, i32 %66)
  %68 = call i32 @OS_REG_WRITE(%struct.ath_hal* %44, i32 %53, i32 %67)
  br label %69

69:                                               ; preds = %43
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %37

72:                                               ; preds = %37
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %74 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %168, label %76

76:                                               ; preds = %72
  %77 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %78 = load i32, i32* @HAL_MODE_11G, align 4
  %79 = call %struct.TYPE_6__* @ar5212GetRateTable(%struct.ath_hal* %77, i32 %78)
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %164, %76
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %167

86:                                               ; preds = %80
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @AR_RATE_DURATION(i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IEEE80211_T_CCK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %86
  br label %164

107:                                              ; preds = %86
  %108 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = load i32, i32* @WLAN_CTRL_FRAME_SIZE, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @AH_FALSE, align 4
  %122 = load i32, i32* @AH_TRUE, align 4
  %123 = call i32 @ath_hal_computetxtime(%struct.ath_hal* %110, %struct.TYPE_6__* %111, i32 %112, i32 %120, i32 %121, i32 %122)
  %124 = call i32 @OS_REG_WRITE(%struct.ath_hal* %108, i32 %109, i32 %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %107
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = shl i32 %142, 2
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %7, align 4
  %146 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = load i32, i32* @WLAN_CTRL_FRAME_SIZE, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @AH_TRUE, align 4
  %160 = load i32, i32* @AH_TRUE, align 4
  %161 = call i32 @ath_hal_computetxtime(%struct.ath_hal* %148, %struct.TYPE_6__* %149, i32 %150, i32 %158, i32 %159, i32 %160)
  %162 = call i32 @OS_REG_WRITE(%struct.ath_hal* %146, i32 %147, i32 %161)
  br label %163

163:                                              ; preds = %134, %107
  br label %164

164:                                              ; preds = %163, %106
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %80

167:                                              ; preds = %80
  br label %168

168:                                              ; preds = %167, %72
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local %struct.TYPE_6__* @ar5212GetRateTable(%struct.ath_hal*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_RATE_DURATION(i32) #1

declare dso_local i32 @ath_hal_computetxtime(%struct.ath_hal*, %struct.TYPE_6__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
