; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_ani.c_ar5416AniLowerImmunity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_ani.c_ar5416AniLowerImmunity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { %struct.ar5212AniState* }
%struct.ar5212AniState = type { i64, i64, i64, i64, %struct.ar5212AniParams* }
%struct.ar5212AniParams = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }

@HAL_M_HOSTAP = common dso_local global i64 0, align 8
@HAL_ANI_FIRSTEP_LEVEL = common dso_local global i32 0, align 4
@HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i64 0, align 8
@HAL_ANI_SPUR_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@HAL_ANI_NOISE_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar5416AniLowerImmunity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416AniLowerImmunity(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5212*, align 8
  %4 = alloca %struct.ar5212AniState*, align 8
  %5 = alloca %struct.ar5212AniParams*, align 8
  %6 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %8 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %7)
  store %struct.ath_hal_5212* %8, %struct.ath_hal_5212** %3, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %10 = call i32 @ANI_ENA(%struct.ath_hal* %9)
  %11 = call i32 @HALASSERT(i32 %10)
  %12 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %12, i32 0, i32 0
  %14 = load %struct.ar5212AniState*, %struct.ar5212AniState** %13, align 8
  store %struct.ar5212AniState* %14, %struct.ar5212AniState** %4, align 8
  %15 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %16 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %15, i32 0, i32 4
  %17 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %16, align 8
  store %struct.ar5212AniParams* %17, %struct.ar5212AniParams** %5, align 8
  %18 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %19 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HAL_M_HOSTAP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %1
  %25 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %26 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %31 = load i32, i32* @HAL_ANI_FIRSTEP_LEVEL, align 4
  %32 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %33 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i64 @ar5416AniControl(%struct.ath_hal* %30, i32 %31, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %141

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %43 = call i64 @ANI_ENA_RSSI(%struct.ath_hal* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %109

45:                                               ; preds = %41
  %46 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %47 = call i64 @BEACON_RSSI(%struct.ath_hal_5212* %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %5, align 8
  %50 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %108

54:                                               ; preds = %45
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %5, align 8
  %57 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %54
  %61 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %62 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %67 = load i32, i32* @HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION, align 4
  %68 = load i64, i64* @AH_TRUE, align 8
  %69 = call i64 @ar5416AniControl(%struct.ath_hal* %66, i32 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %141

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %60
  %74 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %75 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %80 = load i32, i32* @HAL_ANI_FIRSTEP_LEVEL, align 4
  %81 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %82 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 1
  %85 = call i64 @ar5416AniControl(%struct.ath_hal* %79, i32 %80, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %141

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %73
  br label %107

90:                                               ; preds = %54
  %91 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %92 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %97 = load i32, i32* @HAL_ANI_FIRSTEP_LEVEL, align 4
  %98 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %99 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 1
  %102 = call i64 @ar5416AniControl(%struct.ath_hal* %96, i32 %97, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %141

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %90
  br label %107

107:                                              ; preds = %106, %89
  br label %108

108:                                              ; preds = %107, %53
  br label %109

109:                                              ; preds = %108, %41
  %110 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %111 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %116 = load i32, i32* @HAL_ANI_SPUR_IMMUNITY_LEVEL, align 4
  %117 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %118 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %119, 1
  %121 = call i64 @ar5416AniControl(%struct.ath_hal* %115, i32 %116, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %141

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %109
  %126 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %127 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %132 = load i32, i32* @HAL_ANI_NOISE_IMMUNITY_LEVEL, align 4
  %133 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %134 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, 1
  %137 = call i64 @ar5416AniControl(%struct.ath_hal* %131, i32 %132, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %141

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %38, %71, %87, %104, %123, %139, %140, %125
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @ANI_ENA(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @ar5416AniControl(%struct.ath_hal*, i32, i64) #1

declare dso_local i64 @ANI_ENA_RSSI(%struct.ath_hal*) #1

declare dso_local i64 @BEACON_RSSI(%struct.ath_hal_5212*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
