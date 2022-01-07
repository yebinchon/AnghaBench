; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212GetRfgain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212GetRfgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i64 }
%struct.ath_hal_5212 = type { i64, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }

@HAL_RFGAIN_INACTIVE = common dso_local global i64 0, align 8
@HAL_RFGAIN_READ_REQUESTED = common dso_local global i64 0, align 8
@AR_PHY_PAPD_PROBE = common dso_local global i32 0, align 4
@AR_PHY_PAPD_PROBE_NEXT_TX = common dso_local global i64 0, align 8
@AR_PHY_PAPD_PROBE_GAINF_S = common dso_local global i64 0, align 8
@AR_PHY_PAPD_PROBE_TYPE = common dso_local global i32 0, align 4
@AR_PHY_PAPD_PROBE_TYPE_CCK = common dso_local global i64 0, align 8
@AR5212_MAGIC = common dso_local global i64 0, align 8
@AR_PHY_CHIP_ID_REV_2 = common dso_local global i64 0, align 8
@PHY_PROBE_CCK_CORRECTION = common dso_local global i64 0, align 8
@HAL_RFGAIN_NEED_CHANGE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4
@IQ_CAL_INACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar5212GetRfgain(%struct.ath_hal* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ath_hal_5212*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %11 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %10)
  store %struct.ath_hal_5212* %11, %struct.ath_hal_5212** %4, align 8
  %12 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %4, align 8
  %13 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %12, i32 0, i32 4
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %4, align 8
  %20 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %1
  %24 = load i64, i64* @HAL_RFGAIN_INACTIVE, align 8
  store i64 %24, i64* %2, align 8
  br label %143

25:                                               ; preds = %18
  %26 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %4, align 8
  %27 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HAL_RFGAIN_READ_REQUESTED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %139

31:                                               ; preds = %25
  %32 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %33 = load i32, i32* @AR_PHY_PAPD_PROBE, align 4
  %34 = call i64 @OS_REG_READ(%struct.ath_hal* %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @AR_PHY_PAPD_PROBE_NEXT_TX, align 8
  %37 = and i64 %35, %36
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %138

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @AR_PHY_PAPD_PROBE_GAINF_S, align 8
  %42 = ashr i64 %40, %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @AR_PHY_PAPD_PROBE_TYPE, align 4
  %47 = call i64 @MS(i64 %45, i32 %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @AR_PHY_PAPD_PROBE_TYPE_CCK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %39
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = call %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal* %52)
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %8, align 8
  %56 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %57 = call i32 @IS_RAD5112_ANY(%struct.ath_hal* %56)
  %58 = call i32 @HALASSERT(i32 %57)
  %59 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %60 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AR5212_MAGIC, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @HALASSERT(i32 %64)
  %66 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %67 = call %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal* %66)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AR_PHY_CHIP_ID_REV_2, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %51
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %86

80:                                               ; preds = %51
  %81 = load i64, i64* @PHY_PROBE_CCK_CORRECTION, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %80, %72
  br label %87

87:                                               ; preds = %86, %39
  %88 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %89 = call i64 @IS_RADX112_REV2(%struct.ath_hal* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %93 = call i64 @ar5212GetGainFCorrection(%struct.ath_hal* %92)
  store i64 %93, i64* %9, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %108

105:                                              ; preds = %91
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %105, %99
  br label %109

109:                                              ; preds = %108, %87
  %110 = load i64, i64* @HAL_RFGAIN_INACTIVE, align 8
  %111 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %4, align 8
  %112 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = call i32 @ar5212InvalidGainReadback(%struct.ath_hal* %113, %struct.TYPE_8__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %137, label %117

117:                                              ; preds = %109
  %118 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = call i64 @ar5212IsGainAdjustNeeded(%struct.ath_hal* %118, %struct.TYPE_8__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = call i64 @ar5212AdjustGain(%struct.ath_hal* %123, %struct.TYPE_8__* %124)
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i64, i64* @HAL_RFGAIN_NEED_CHANGE, align 8
  %129 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %4, align 8
  %130 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* @AH_TRUE, align 4
  %132 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %4, align 8
  %133 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @IQ_CAL_INACTIVE, align 4
  %135 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %4, align 8
  %136 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %127, %122, %117, %109
  br label %138

138:                                              ; preds = %137, %31
  br label %139

139:                                              ; preds = %138, %25
  %140 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %4, align 8
  %141 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %2, align 8
  br label %143

143:                                              ; preds = %139, %23
  %144 = load i64, i64* %2, align 8
  ret i64 %144
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @MS(i64, i32) #1

declare dso_local %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @IS_RAD5112_ANY(%struct.ath_hal*) #1

declare dso_local i64 @IS_RADX112_REV2(%struct.ath_hal*) #1

declare dso_local i64 @ar5212GetGainFCorrection(%struct.ath_hal*) #1

declare dso_local i32 @ar5212InvalidGainReadback(%struct.ath_hal*, %struct.TYPE_8__*) #1

declare dso_local i64 @ar5212IsGainAdjustNeeded(%struct.ath_hal*, %struct.TYPE_8__*) #1

declare dso_local i64 @ar5212AdjustGain(%struct.ath_hal*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
