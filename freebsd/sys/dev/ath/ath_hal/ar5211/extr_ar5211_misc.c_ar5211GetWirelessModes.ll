; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_misc.c_ar5211GetWirelessModes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_misc.c_ar5211GetWirelessModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_EEP_AMODE = common dso_local global i32 0, align 4
@HAL_MODE_11A = common dso_local global i32 0, align 4
@AR_EEP_TURBO5DISABLE = common dso_local global i32 0, align 4
@HAL_MODE_TURBO = common dso_local global i32 0, align 4
@HAL_MODE_108A = common dso_local global i32 0, align 4
@AR_EEP_BMODE = common dso_local global i32 0, align 4
@HAL_MODE_11B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5211GetWirelessModes(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = load i32, i32* @AR_EEP_AMODE, align 4
  %6 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i32, i32* @HAL_MODE_11A, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = load i32, i32* @AR_EEP_TURBO5DISABLE, align 4
  %12 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @HAL_MODE_TURBO, align 4
  %16 = load i32, i32* @HAL_MODE_108A, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %8
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %23 = load i32, i32* @AR_EEP_BMODE, align 4
  %24 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @HAL_MODE_11B, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @ath_hal_eepromGetFlag(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
