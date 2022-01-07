; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_cal.c_ar9285_hw_cl_cal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_cal.c_ar9285_hw_cl_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR_PHY_CL_CAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_PARALLEL_CAL_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_TURBO = common dso_local global i32 0, align 4
@AR_PHY_FC_DYN2040_EN = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_FLTR_CAL = common dso_local global i32 0, align 4
@AR_PHY_TPCRG1 = common dso_local global i32 0, align 4
@AR_PHY_TPCRG1_PD_CAL_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_CAL = common dso_local global i32 0, align 4
@HAL_DEBUG_PERCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"offset calibration failed to complete in 1ms; noisy environment?\0A\00", align 1
@AH_FALSE = common dso_local global i32 0, align 4
@AR_PHY_ADC_CTL = common dso_local global i32 0, align 4
@AR_PHY_ADC_CTL_OFF_PWDADC = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9285_hw_cl_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9285_hw_cl_cal(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %7 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %8 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %9 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %6, i32 %7, i32 %8)
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %11 = call i64 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %2
  %14 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %15 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %16 = load i32, i32* @AR_PHY_PARALLEL_CAL_ENABLE, align 4
  %17 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %14, i32 %15, i32 %16)
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = load i32, i32* @AR_PHY_TURBO, align 4
  %20 = load i32, i32* @AR_PHY_FC_DYN2040_EN, align 4
  %21 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %18, i32 %19, i32 %20)
  %22 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %23 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %24 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %25 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %22, i32 %23, i32 %24)
  %26 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %27 = load i32, i32* @AR_PHY_TPCRG1, align 4
  %28 = load i32, i32* @AR_PHY_TPCRG1_PD_CAL_ENABLE, align 4
  %29 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %26, i32 %27, i32 %28)
  %30 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %31 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %32 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %33 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %30, i32 %31, i32 %32)
  %34 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %35 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %36 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %37 = call i32 @ath_hal_wait(%struct.ath_hal* %34, i32 %35, i32 %36, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %13
  %40 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %41 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %42 = call i32 @HALDEBUG(%struct.ath_hal* %40, i32 %41, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @AH_FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %98

44:                                               ; preds = %13
  %45 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %46 = load i32, i32* @AR_PHY_TURBO, align 4
  %47 = load i32, i32* @AR_PHY_FC_DYN2040_EN, align 4
  %48 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %45, i32 %46, i32 %47)
  %49 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %50 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %51 = load i32, i32* @AR_PHY_PARALLEL_CAL_ENABLE, align 4
  %52 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %49, i32 %50, i32 %51)
  %53 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %54 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %55 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %56 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %44, %2
  %58 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %59 = load i32, i32* @AR_PHY_ADC_CTL, align 4
  %60 = load i32, i32* @AR_PHY_ADC_CTL_OFF_PWDADC, align 4
  %61 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %58, i32 %59, i32 %60)
  %62 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %63 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %64 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %65 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %62, i32 %63, i32 %64)
  %66 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %67 = load i32, i32* @AR_PHY_TPCRG1, align 4
  %68 = load i32, i32* @AR_PHY_TPCRG1_PD_CAL_ENABLE, align 4
  %69 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %66, i32 %67, i32 %68)
  %70 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %71 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %72 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %73 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %70, i32 %71, i32 %72)
  %74 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %75 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %76 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %77 = call i32 @ath_hal_wait(%struct.ath_hal* %74, i32 %75, i32 %76, i32 0)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %57
  %80 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %81 = load i32, i32* @HAL_DEBUG_PERCAL, align 4
  %82 = call i32 @HALDEBUG(%struct.ath_hal* %80, i32 %81, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @AH_FALSE, align 4
  store i32 %83, i32* %3, align 4
  br label %98

84:                                               ; preds = %57
  %85 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %86 = load i32, i32* @AR_PHY_ADC_CTL, align 4
  %87 = load i32, i32* @AR_PHY_ADC_CTL_OFF_PWDADC, align 4
  %88 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %85, i32 %86, i32 %87)
  %89 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %90 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %91 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %92 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %89, i32 %90, i32 %91)
  %93 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %94 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %95 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %96 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @AH_TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %84, %79, %39
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ath_hal_wait(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
