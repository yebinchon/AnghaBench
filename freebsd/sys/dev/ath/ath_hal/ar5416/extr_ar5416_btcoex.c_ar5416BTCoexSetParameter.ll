; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_btcoex.c_ar5416BTCoexSetParameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_btcoex.c_ar5416BTCoexSetParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5416 = type { i32 }

@HAL_BT_COEX_FLAG_LOW_ACK_PWR = common dso_local global i32 0, align 4
@AR_TPC = common dso_local global i32 0, align 4
@HAL_BT_COEX_LOW_ACK_POWER = common dso_local global i32 0, align 4
@HAL_BT_COEX_HIGH_ACK_POWER = common dso_local global i32 0, align 4
@HAL_BT_COEX_FLAG_LOWER_TX_PWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416BTCoexSetParameter(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hal_5416*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call %struct.ath_hal_5416* @AH5416(%struct.ath_hal* %8)
  store %struct.ath_hal_5416* %9, %struct.ath_hal_5416** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %37 [
    i32 128, label %11
    i32 130, label %36
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* @HAL_BT_COEX_FLAG_LOW_ACK_PWR, align 4
  %16 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %7, align 8
  %17 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %21 = load i32, i32* @AR_TPC, align 4
  %22 = load i32, i32* @HAL_BT_COEX_LOW_ACK_POWER, align 4
  %23 = call i32 @OS_REG_WRITE(%struct.ath_hal* %20, i32 %21, i32 %22)
  br label %35

24:                                               ; preds = %11
  %25 = load i32, i32* @HAL_BT_COEX_FLAG_LOW_ACK_PWR, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %7, align 8
  %28 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %32 = load i32, i32* @AR_TPC, align 4
  %33 = load i32, i32* @HAL_BT_COEX_HIGH_ACK_POWER, align 4
  %34 = call i32 @OS_REG_WRITE(%struct.ath_hal* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %24, %14
  br label %38

36:                                               ; preds = %3
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %36, %35
  ret void
}

declare dso_local %struct.ath_hal_5416* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
