; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416GetWirelessModes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416GetWirelessModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AH_TRUE = common dso_local global i64 0, align 8
@HAL_MODE_11A = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT20 = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT40PLUS = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT40MINUS = common dso_local global i32 0, align 4
@HAL_MODE_11G = common dso_local global i32 0, align 4
@HAL_MODE_11NG_HT20 = common dso_local global i32 0, align 4
@HAL_MODE_11NG_HT40PLUS = common dso_local global i32 0, align 4
@HAL_MODE_11NG_HT40MINUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416GetWirelessModes(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal_private*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %6)
  store %struct.ath_hal_private* %7, %struct.ath_hal_private** %4, align 8
  %8 = load %struct.ath_hal_private*, %struct.ath_hal_private** %4, align 8
  %9 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %8, i32 0, i32 0
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = call i32 @ar5212GetWirelessModes(%struct.ath_hal* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AH_TRUE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @HAL_MODE_11A, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* @HAL_MODE_11NA_HT20, align 4
  %24 = load i32, i32* @HAL_MODE_11NA_HT40PLUS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HAL_MODE_11NA_HT40MINUS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %17, %1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AH_TRUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @HAL_MODE_11G, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* @HAL_MODE_11NG_HT20, align 4
  %43 = load i32, i32* @HAL_MODE_11NG_HT40PLUS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @HAL_MODE_11NG_HT40MINUS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %36, %30
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ar5212GetWirelessModes(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
