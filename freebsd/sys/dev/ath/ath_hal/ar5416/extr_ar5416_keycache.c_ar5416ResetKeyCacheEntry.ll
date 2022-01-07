; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_keycache.c_ar5416ResetKeyCacheEntry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_keycache.c_ar5416ResetKeyCacheEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5416 = type { i32* }

@keyType = common dso_local global i32* null, align 8
@HAL_CIPHER_CLR = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416ResetKeyCacheEntry(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath_hal_5416*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %8 = call %struct.ath_hal_5416* @AH5416(%struct.ath_hal* %7)
  store %struct.ath_hal_5416* %8, %struct.ath_hal_5416** %6, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @ar5212ResetKeyCacheEntry(%struct.ath_hal* %9, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32*, i32** @keyType, align 8
  %15 = load i64, i64* @HAL_CIPHER_CLR, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %6, align 8
  %19 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %17, i32* %22, align 4
  %23 = load i32, i32* @AH_TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @AH_FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.ath_hal_5416* @AH5416(%struct.ath_hal*) #1

declare dso_local i64 @ar5212ResetKeyCacheEntry(%struct.ath_hal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
