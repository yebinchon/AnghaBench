; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_cal_adcgain.c_ar5416AdcGainCalibration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_cal_adcgain.c_ar5416AdcGainCalibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar5416PerCal = type { i64 (i64)*, i64 (i64)*, i64 (i64)*, i64 (i64)* }
%struct.TYPE_2__ = type { %struct.ar5416PerCal }

@HAL_DEBUG_PERCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Start ADC Gain Cal for Chain %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  pwr_meas_odd_i = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"  pwr_meas_even_i = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"  pwr_meas_odd_q = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"  pwr_meas_even_q = 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c" gain_mismatch_i = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c" gain_mismatch_q = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"ADC Gain Cal done for Chain %d\0A\00", align 1
@AR_PHY_NEW_ADC_GAIN_CORR_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416AdcGainCalibration(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ar5416PerCal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ar5416PerCal* %16, %struct.ar5416PerCal** %5, align 8
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %108, %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %111

21:                                               ; preds = %17
  %22 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %23 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %22, i32 0, i32 0
  %24 = load i64 (i64)*, i64 (i64)** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 %24(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %28 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %27, i32 0, i32 1
  %29 = load i64 (i64)*, i64 (i64)** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 %29(i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %33 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %32, i32 0, i32 2
  %34 = load i64 (i64)*, i64 (i64)** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 %34(i64 %35)
  store i64 %36, i64* %9, align 8
  %37 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %38 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %37, i32 0, i32 3
  %39 = load i64 (i64)*, i64 (i64)** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 %39(i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %43 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @HALDEBUG(%struct.ath_hal* %42, i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @HALDEBUG(%struct.ath_hal* %46, i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %51 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @HALDEBUG(%struct.ath_hal* %50, i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %55 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @HALDEBUG(%struct.ath_hal* %54, i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @HALDEBUG(%struct.ath_hal* %58, i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %21
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %107

67:                                               ; preds = %64
  %68 = load i64, i64* %8, align 8
  %69 = mul nsw i64 %68, 32
  %70 = load i64, i64* %7, align 8
  %71 = sdiv i64 %69, %70
  %72 = and i64 %71, 63
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %9, align 8
  %74 = mul nsw i64 %73, 32
  %75 = load i64, i64* %10, align 8
  %76 = sdiv i64 %74, %75
  %77 = and i64 %76, 63
  store i64 %77, i64* %12, align 8
  %78 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %79 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @HALDEBUG(%struct.ath_hal* %78, i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %80)
  %82 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %83 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @HALDEBUG(%struct.ath_hal* %82, i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %84)
  %86 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 %87)
  %89 = call i64 @OS_REG_READ(%struct.ath_hal* %86, i32 %88)
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = and i64 %90, 4294963200
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %11, align 8
  %94 = shl i64 %93, 6
  %95 = or i64 %92, %94
  %96 = load i64, i64* %13, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %13, align 8
  %98 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 %99)
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @OS_REG_WRITE(%struct.ath_hal* %98, i32 %100, i64 %101)
  %103 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %104 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @HALDEBUG(%struct.ath_hal* %103, i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %67, %64, %21
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %6, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %17

111:                                              ; preds = %17
  %112 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %113 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 0)
  %114 = load i32, i32* @AR_PHY_NEW_ADC_GAIN_CORR_ENABLE, align 4
  %115 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %112, i32 %113, i32 %114)
  ret void
}

declare dso_local %struct.TYPE_2__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i64) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i64) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
