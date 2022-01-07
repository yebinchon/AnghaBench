; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_ani.c_ar5416AniOfdmErrTrigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_ani.c_ar5416AniOfdmErrTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { %struct.ar5212AniState* }
%struct.ar5212AniState = type { i64, i64, i64, i64, %struct.ar5212AniParams* }
%struct.ar5212AniParams = type { i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, %struct.ieee80211_channel* }

@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@HAL_ANI_NOISE_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@HAL_ANI_SPUR_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@HAL_M_HOSTAP = common dso_local global i64 0, align 8
@HAL_ANI_FIRSTEP_LEVEL = common dso_local global i32 0, align 4
@HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar5416AniOfdmErrTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416AniOfdmErrTrigger(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5212*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ar5212AniState*, align 8
  %6 = alloca %struct.ar5212AniParams*, align 8
  %7 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %9 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %8)
  store %struct.ath_hal_5212* %9, %struct.ath_hal_5212** %3, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  store %struct.ieee80211_channel* %13, %struct.ieee80211_channel** %4, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %16 = icmp ne %struct.ieee80211_channel* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @HALASSERT(i32 %17)
  %19 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %20 = call i32 @ANI_ENA(%struct.ath_hal* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %207

23:                                               ; preds = %1
  %24 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %25 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %24, i32 0, i32 0
  %26 = load %struct.ar5212AniState*, %struct.ar5212AniState** %25, align 8
  store %struct.ar5212AniState* %26, %struct.ar5212AniState** %5, align 8
  %27 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %28 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %27, i32 0, i32 4
  %29 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %28, align 8
  store %struct.ar5212AniParams* %29, %struct.ar5212AniParams** %6, align 8
  %30 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %31 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %35 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %23
  %39 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %40 = load i32, i32* @HAL_ANI_NOISE_IMMUNITY_LEVEL, align 4
  %41 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %42 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i64 @ar5416AniControl(%struct.ath_hal* %39, i32 %40, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %207

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %23
  %50 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %51 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %55 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %49
  %59 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %60 = load i32, i32* @HAL_ANI_SPUR_IMMUNITY_LEVEL, align 4
  %61 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %62 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = call i64 @ar5416AniControl(%struct.ath_hal* %59, i32 %60, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %207

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %49
  %70 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %71 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HAL_M_HOSTAP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %78 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %81 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %76
  %85 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %86 = load i32, i32* @HAL_ANI_FIRSTEP_LEVEL, align 4
  %87 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %88 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  %91 = call i64 @ar5416AniControl(%struct.ath_hal* %85, i32 %86, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %207

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %76
  br label %96

96:                                               ; preds = %95, %69
  %97 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %98 = call i64 @ANI_ENA_RSSI(%struct.ath_hal* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %207

100:                                              ; preds = %96
  %101 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %102 = call i64 @BEACON_RSSI(%struct.ath_hal_5212* %101)
  store i64 %102, i64* %7, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %105 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %141

108:                                              ; preds = %100
  %109 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %110 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %108
  %114 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %115 = load i32, i32* @HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION, align 4
  %116 = load i64, i64* @AH_FALSE, align 8
  %117 = call i64 @ar5416AniControl(%struct.ath_hal* %114, i32 %115, i64 %116)
  %118 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %119 = load i32, i32* @HAL_ANI_SPUR_IMMUNITY_LEVEL, align 4
  %120 = call i64 @ar5416AniControl(%struct.ath_hal* %118, i32 %119, i64 0)
  br label %207

121:                                              ; preds = %108
  %122 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %123 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %126 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %121
  %130 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %131 = load i32, i32* @HAL_ANI_FIRSTEP_LEVEL, align 4
  %132 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %133 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  %136 = call i64 @ar5416AniControl(%struct.ath_hal* %130, i32 %131, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %207

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %121
  br label %206

141:                                              ; preds = %100
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %144 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %142, %145
  br i1 %146, label %147, label %177

147:                                              ; preds = %141
  %148 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %149 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %154 = load i32, i32* @HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION, align 4
  %155 = load i64, i64* @AH_TRUE, align 8
  %156 = call i64 @ar5416AniControl(%struct.ath_hal* %153, i32 %154, i64 %155)
  br label %157

157:                                              ; preds = %152, %147
  %158 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %159 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %162 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %160, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %157
  %166 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %167 = load i32, i32* @HAL_ANI_FIRSTEP_LEVEL, align 4
  %168 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %169 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  %172 = call i64 @ar5416AniControl(%struct.ath_hal* %166, i32 %167, i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  br label %207

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175, %157
  br label %205

177:                                              ; preds = %141
  %178 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %179 = call i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %204

181:                                              ; preds = %177
  %182 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %183 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %188 = load i32, i32* @HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION, align 4
  %189 = load i64, i64* @AH_FALSE, align 8
  %190 = call i64 @ar5416AniControl(%struct.ath_hal* %187, i32 %188, i64 %189)
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.ar5212AniState*, %struct.ar5212AniState** %5, align 8
  %193 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %198 = load i32, i32* @HAL_ANI_FIRSTEP_LEVEL, align 4
  %199 = call i64 @ar5416AniControl(%struct.ath_hal* %197, i32 %198, i64 0)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %207

202:                                              ; preds = %196
  br label %203

203:                                              ; preds = %202, %191
  br label %204

204:                                              ; preds = %203, %177
  br label %205

205:                                              ; preds = %204, %176
  br label %206

206:                                              ; preds = %205, %140
  br label %207

207:                                              ; preds = %22, %47, %67, %93, %113, %138, %174, %201, %206, %96
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @ANI_ENA(%struct.ath_hal*) #1

declare dso_local i64 @ar5416AniControl(%struct.ath_hal*, i32, i64) #1

declare dso_local i64 @ANI_ENA_RSSI(%struct.ath_hal*) #1

declare dso_local i64 @BEACON_RSSI(%struct.ath_hal_5212*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
