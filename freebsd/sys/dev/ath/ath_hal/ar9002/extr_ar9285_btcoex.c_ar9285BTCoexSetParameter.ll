; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_btcoex.c_ar9285BTCoexSetParameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_btcoex.c_ar9285BTCoexSetParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5416 = type { i32 }

@HAL_BT_COEX_FLAG_ANT_DIV_ALLOW = common dso_local global i32 0, align 4
@HAL_BT_COEX_FLAG_ANT_DIV_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9285BTCoexSetParameter(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
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
  switch i32 %10, label %40 [
    i32 128, label %11
  ]

11:                                               ; preds = %3
  %12 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %13 = call i32 @AR_SREV_KITE(%struct.ath_hal* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load i32, i32* @HAL_BT_COEX_FLAG_ANT_DIV_ALLOW, align 4
  %17 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %7, align 8
  %18 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, i32* @HAL_BT_COEX_FLAG_ANT_DIV_ENABLE, align 4
  %25 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %7, align 8
  %26 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %36

29:                                               ; preds = %15
  %30 = load i32, i32* @HAL_BT_COEX_FLAG_ANT_DIV_ENABLE, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %7, align 8
  %33 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %23
  %37 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %38 = call i32 @ar9285BTCoexAntennaDiversity(%struct.ath_hal* %37)
  br label %39

39:                                               ; preds = %36, %11
  br label %45

40:                                               ; preds = %3
  %41 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ar5416BTCoexSetParameter(%struct.ath_hal* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %39
  ret void
}

declare dso_local %struct.ath_hal_5416* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_KITE(%struct.ath_hal*) #1

declare dso_local i32 @ar9285BTCoexAntennaDiversity(%struct.ath_hal*) #1

declare dso_local i32 @ar5416BTCoexSetParameter(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
