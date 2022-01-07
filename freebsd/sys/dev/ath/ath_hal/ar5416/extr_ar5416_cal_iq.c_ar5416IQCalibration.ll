; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_cal_iq.c_ar5416IQCalibration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_cal_iq.c_ar5416IQCalibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar5416PerCal = type { i32 (i32)*, i32 (i32)*, i32 (i32)* }
%struct.TYPE_2__ = type { %struct.ar5416PerCal }

@HAL_DEBUG_PERCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Start IQ Cal and Correction for Chain %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Orignal: iq_corr_meas = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c" pwr_meas_i = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" pwr_meas_q = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c" iqCorrNeg is 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c" iCoff = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" qCoff = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"New:  iCoff = 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c" : iCoff = 0x%x  qCoff = 0x%x\0A\00", align 1
@AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"IQ Cal and Correction done for Chain %d\0A\00", align 1
@AR_PHY_TIMING_CTRL4 = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416IQCalibration(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar5416PerCal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ar5416PerCal* %17, %struct.ar5416PerCal** %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %134, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %137

22:                                               ; preds = %18
  %23 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %24 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %23, i32 0, i32 0
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %25(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %29 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %28, i32 0, i32 1
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 %30(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ar5416PerCal*, %struct.ar5416PerCal** %5, align 8
  %34 = getelementptr inbounds %struct.ar5416PerCal, %struct.ar5416PerCal* %33, i32 0, i32 2
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 %35(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %39 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %38, i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %43 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %42, i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 0, i32* %12, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ugt i32 %46, -2147483648
  br i1 %47, label %48, label %52

48:                                               ; preds = %22
  %49 = load i32, i32* %9, align 4
  %50 = sub i32 -1, %49
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %52

52:                                               ; preds = %48, %22
  %53 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %54 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %53, i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %57, i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %62 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %61, i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = sdiv i32 %65, 2
  %67 = load i32, i32* %8, align 4
  %68 = sdiv i32 %67, 2
  %69 = add nsw i32 %66, %68
  %70 = sdiv i32 %69, 128
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sdiv i32 %71, 64
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %133

75:                                               ; preds = %52
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sdiv i32 %79, %80
  %82 = sub nsw i32 %81, 64
  store i32 %82, i32* %14, align 4
  %83 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %84 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %83, i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %88 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %87, i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = and i32 %91, 63
  store i32 %92, i32* %13, align 4
  %93 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %94 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %93, i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %75
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 64, %100
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %99, %75
  %103 = load i32, i32* %14, align 4
  %104 = icmp sgt i32 %103, 15
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 15, i32* %14, align 4
  br label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %14, align 4
  %108 = icmp sle i32 %107, -16
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 -16, i32* %14, align 4
  br label %110

110:                                              ; preds = %109, %106
  br label %111

111:                                              ; preds = %110, %105
  %112 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %113 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %112, i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @AR_PHY_TIMING_CTRL4_CHAIN(i32 %118)
  %120 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %117, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @AR_PHY_TIMING_CTRL4_CHAIN(i32 %124)
  %126 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %123, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %130 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %129, i32 %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %111, %52
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %18

137:                                              ; preds = %18
  %138 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %139 = load i32, i32* @AR_PHY_TIMING_CTRL4, align 4
  %140 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_ENABLE, align 4
  %141 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %138, i32 %139, i32 %140)
  ret void
}

declare dso_local %struct.TYPE_2__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32, ...) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4_CHAIN(i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
