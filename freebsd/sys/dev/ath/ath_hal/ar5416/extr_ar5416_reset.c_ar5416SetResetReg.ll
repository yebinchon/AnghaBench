; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetResetReg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetResetReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_EN = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_ON_INT = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416SetResetReg(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %7 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %8 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %9 = load i32, i32* @AR_RTC_FORCE_WAKE_ON_INT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @OS_REG_WRITE(%struct.ath_hal* %6, i32 %7, i32 %10)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %20 [
    i32 129, label %13
    i32 128, label %16
    i32 130, label %16
  ]

13:                                               ; preds = %2
  %14 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %15 = call i32 @ar5416SetResetPowerOn(%struct.ath_hal* %14)
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %2, %2
  %17 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ar5416SetReset(%struct.ath_hal* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @AH_FALSE, align 4
  %22 = call i32 @HALASSERT(i32 %21)
  %23 = load i32, i32* @AH_FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %16, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5416SetResetPowerOn(%struct.ath_hal*) #1

declare dso_local i32 @ar5416SetReset(%struct.ath_hal*, i32) #1

declare dso_local i32 @HALASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
