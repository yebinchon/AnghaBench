; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416ChipReset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416ChipReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ath_hal = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.ath_hal*, %struct.ieee80211_channel*)* }

@AH_MARK_CHIPRESET = common dso_local global i32 0, align 4
@AR_EEP_OL_PWRCTRL = common dso_local global i32 0, align 4
@HAL_RESET_POWER_ON = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@HAL_RESET_WARM = common dso_local global i32 0, align 4
@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@ahp = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416ChipReset(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %7 = load i32, i32* @AH_MARK_CHIPRESET, align 4
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %9 = icmp ne %struct.ieee80211_channel* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 0, %14 ]
  %17 = call i32 @OS_MARK(%struct.ath_hal* %6, i32 %7, i32 %16)
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = call i64 @AR_SREV_MERLIN(%struct.ath_hal* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %23 = load i32, i32* @AR_EEP_OL_PWRCTRL, align 4
  %24 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %28 = load i32, i32* @HAL_RESET_POWER_ON, align 4
  %29 = call i32 @ar5416SetResetReg(%struct.ath_hal* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @AH_FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %77

33:                                               ; preds = %26
  br label %57

34:                                               ; preds = %21, %15
  %35 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %36 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %42 = load i32, i32* @HAL_RESET_POWER_ON, align 4
  %43 = call i32 @ar5416SetResetReg(%struct.ath_hal* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @AH_FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %77

47:                                               ; preds = %40
  br label %56

48:                                               ; preds = %34
  %49 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %50 = load i32, i32* @HAL_RESET_WARM, align 4
  %51 = call i32 @ar5416SetResetReg(%struct.ath_hal* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @AH_FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %77

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %47
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %59 = load i32, i32* @HAL_PM_AWAKE, align 4
  %60 = load i32, i32* @AH_TRUE, align 4
  %61 = call i32 @ar5416SetPowerMode(%struct.ath_hal* %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @AH_FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %77

65:                                               ; preds = %57
  %66 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %67 = call %struct.TYPE_6__* @AH5416(%struct.ath_hal* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32 (%struct.ath_hal*, %struct.ieee80211_channel*)*, i32 (%struct.ath_hal*, %struct.ieee80211_channel*)** %68, align 8
  %70 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %72 = call i32 %69(%struct.ath_hal* %70, %struct.ieee80211_channel* %71)
  %73 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %75 = call i32 @ar5416SetRfMode(%struct.ath_hal* %73, %struct.ieee80211_channel* %74)
  %76 = load i32, i32* @AH_TRUE, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %65, %63, %53, %45, %31
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @OS_MARK(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_MERLIN(%struct.ath_hal*) #1

declare dso_local i64 @ath_hal_eepromGetFlag(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar5416SetResetReg(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar5416SetPowerMode(%struct.ath_hal*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @ar5416SetRfMode(%struct.ath_hal*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
