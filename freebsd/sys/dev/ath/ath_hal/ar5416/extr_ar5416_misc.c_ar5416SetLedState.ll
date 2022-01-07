; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416SetLedState.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416SetLedState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@ar5416SetLedState.ledbits = internal constant [8 x i32] [i32 129, i32 128, i32 128, i32 130, i32 130, i32 129, i32 129, i32 129], align 16
@AR_MAC_LED = common dso_local global i32 0, align 4
@AR_MAC_LED_ASSOC = common dso_local global i32 0, align 4
@AR_MAC_LED_MODE = common dso_local global i32 0, align 4
@AR_MAC_LED_MODE_PROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416SetLedState(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %6 = call i64 @AR_SREV_HOWL(%struct.ath_hal* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %24

9:                                                ; preds = %2
  %10 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %11 = load i32, i32* @AR_MAC_LED, align 4
  %12 = load i32, i32* @AR_MAC_LED_ASSOC, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* @ar5416SetLedState.ledbits, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %10, i32 %11, i32 %12, i32 %17)
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = load i32, i32* @AR_MAC_LED, align 4
  %21 = load i32, i32* @AR_MAC_LED_MODE, align 4
  %22 = load i32, i32* @AR_MAC_LED_MODE_PROP, align 4
  %23 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %19, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @AR_SREV_HOWL(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
