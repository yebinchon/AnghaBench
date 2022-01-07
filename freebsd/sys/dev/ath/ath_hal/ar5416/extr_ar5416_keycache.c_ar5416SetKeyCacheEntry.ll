; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_keycache.c_ar5416SetKeyCacheEntry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_keycache.c_ar5416SetKeyCacheEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ath_hal_5416 = type { i32* }

@keyType = common dso_local global i32* null, align 8
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416SetKeyCacheEntry(%struct.ath_hal* %0, i64 %1, %struct.TYPE_4__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hal*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath_hal_5416*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %14 = call %struct.ath_hal_5416* @AH5416(%struct.ath_hal* %13)
  store %struct.ath_hal_5416* %14, %struct.ath_hal_5416** %12, align 8
  %15 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @ar5212SetKeyCacheEntry(%struct.ath_hal* %15, i64 %16, %struct.TYPE_4__* %17, i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load i32*, i32** @keyType, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %12, align 8
  %30 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* @AH_TRUE, align 4
  store i32 %34, i32* %6, align 4
  br label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @AH_FALSE, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %22
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.ath_hal_5416* @AH5416(%struct.ath_hal*) #1

declare dso_local i64 @ar5212SetKeyCacheEntry(%struct.ath_hal*, i64, %struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
