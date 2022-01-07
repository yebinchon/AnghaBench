; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_gpio.c_ar5416GpioGet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_gpio.c_ar5416GpioGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AR_GPIO_IN_OUT = common dso_local global i32 0, align 4
@AR9287_GPIO_IN_VAL = common dso_local global i32 0, align 4
@AR9285_GPIO_IN_VAL = common dso_local global i32 0, align 4
@AR928X_GPIO_IN_VAL = common dso_local global i32 0, align 4
@AR_GPIO_IN_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar5416GpioGet(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 4294967295, i64* %3, align 8
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %17 = call i64 @AR_SREV_KIWI_10_OR_LATER(%struct.ath_hal* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %21 = load i32, i32* @AR_GPIO_IN_OUT, align 4
  %22 = call i32 @OS_REG_READ(%struct.ath_hal* %20, i32 %21)
  %23 = load i32, i32* @AR9287_GPIO_IN_VAL, align 4
  %24 = call i64 @MS(i32 %22, i32 %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %19, %15
  %26 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %27 = call i64 @AR_SREV_KITE_10_OR_LATER(%struct.ath_hal* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %31 = load i32, i32* @AR_GPIO_IN_OUT, align 4
  %32 = call i32 @OS_REG_READ(%struct.ath_hal* %30, i32 %31)
  %33 = load i32, i32* @AR9285_GPIO_IN_VAL, align 4
  %34 = call i64 @MS(i32 %32, i32 %33)
  store i64 %34, i64* %6, align 8
  br label %52

35:                                               ; preds = %25
  %36 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %37 = call i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %41 = load i32, i32* @AR_GPIO_IN_OUT, align 4
  %42 = call i32 @OS_REG_READ(%struct.ath_hal* %40, i32 %41)
  %43 = load i32, i32* @AR928X_GPIO_IN_VAL, align 4
  %44 = call i64 @MS(i32 %42, i32 %43)
  store i64 %44, i64* %6, align 8
  br label %51

45:                                               ; preds = %35
  %46 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %47 = load i32, i32* @AR_GPIO_IN_OUT, align 4
  %48 = call i32 @OS_REG_READ(%struct.ath_hal* %46, i32 %47)
  %49 = load i32, i32* @AR_GPIO_IN_VAL, align 4
  %50 = call i64 @MS(i32 %48, i32 %49)
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @AR_GPIO_BIT(i64 %54)
  %56 = and i64 %53, %55
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %52, %14
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_KIWI_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_KITE_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i64 @AR_GPIO_BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
