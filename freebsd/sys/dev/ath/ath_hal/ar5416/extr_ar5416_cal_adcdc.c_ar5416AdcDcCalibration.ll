; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_cal_adcdc.c_ar5416AdcDcCalibration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_cal_adcdc.c_ar5416AdcDcCalibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar5416PerCal = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.ar5416PerCal }

@HAL_DEBUG_PERCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Starting ADC DC Offset Cal for Chain %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" pwr_meas_odd_i = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" pwr_meas_even_i = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" pwr_meas_odd_q = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" pwr_meas_even_q = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c" dc_offset_mismatch_i = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c" dc_offset_mismatch_q = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"ADC DC Offset Cal done for Chain %d\0A\00", align 1
@AR_PHY_NEW_ADC_DC_OFFSET_CORR_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416AdcDcCalibration(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar5416PerCal*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = call %struct.TYPE_6__* @AH5416(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.ar5416PerCal* %18, %struct.ar5416PerCal** %5, align 8
  %19 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %20 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 5
  %28 = shl i32 1, %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %124, %2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %127

37:                                               ; preds = %33
  %38 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %39 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 %40(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %44 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %43, i32 0, i32 1
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 %45(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %49 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %48, i32 0, i32 2
  %50 = load i32 (i32)*, i32 (i32)** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 %50(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %54 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %53, i32 0, i32 3
  %55 = load i32 (i32)*, i32 (i32)** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 %55(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @HALDEBUG(%struct.ath_hal* %58, i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %63 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @HALDEBUG(%struct.ath_hal* %62, i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %67 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @HALDEBUG(%struct.ath_hal* %66, i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %71 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @HALDEBUG(%struct.ath_hal* %70, i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %75 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @HALDEBUG(%struct.ath_hal* %74, i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @HALASSERT(i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %80, %81
  %83 = mul nsw i32 %82, 2
  %84 = load i32, i32* %7, align 4
  %85 = sdiv i32 %83, %84
  %86 = and i32 %85, 511
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %87, %88
  %90 = mul nsw i32 %89, 2
  %91 = load i32, i32* %7, align 4
  %92 = sdiv i32 %90, %91
  %93 = and i32 %92, 511
  store i32 %93, i32* %13, align 4
  %94 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %95 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @HALDEBUG(%struct.ath_hal* %94, i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %99 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @HALDEBUG(%struct.ath_hal* %98, i32 %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i32 %103)
  %105 = call i32 @OS_REG_READ(%struct.ath_hal* %102, i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = and i32 %106, -1073737729
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %13, align 4
  %109 = shl i32 %108, 12
  %110 = load i32, i32* %14, align 4
  %111 = shl i32 %110, 21
  %112 = or i32 %109, %111
  %113 = load i32, i32* %15, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %15, align 4
  %115 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i32 %116)
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @OS_REG_WRITE(%struct.ath_hal* %115, i32 %117, i32 %118)
  %120 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %121 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @HALDEBUG(%struct.ath_hal* %120, i32 %121, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %37
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %33

127:                                              ; preds = %33
  %128 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %129 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i32 0)
  %130 = load i32, i32* @AR_PHY_NEW_ADC_DC_OFFSET_CORR_ENABLE, align 4
  %131 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %128, i32 %129, i32 %130)
  ret void
}

declare dso_local %struct.TYPE_6__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
