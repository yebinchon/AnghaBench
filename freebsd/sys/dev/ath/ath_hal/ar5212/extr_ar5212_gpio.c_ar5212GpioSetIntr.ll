; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_gpio.c_ar5212GpioSetIntr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_gpio.c_ar5212GpioSetIntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AR_GPIOCR = common dso_local global i32 0, align 4
@AR_GPIOCR_INT_MASK = common dso_local global i32 0, align 4
@AR_GPIOCR_INT_ENA = common dso_local global i32 0, align 4
@AR_GPIOCR_INT_SEL = common dso_local global i32 0, align 4
@AR_GPIOCR_INT_SELH = common dso_local global i32 0, align 4
@AR_GPIOCR_INT_SELL = common dso_local global i32 0, align 4
@HAL_INT_GPIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212GpioSetIntr(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = load i32, i32* @AR_GPIOCR, align 4
  %10 = call i32 @OS_REG_READ(%struct.ath_hal* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @AR_GPIOCR_CR_A(i32 %11)
  %13 = load i32, i32* @AR_GPIOCR_INT_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AR_GPIOCR_INT_ENA, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @AR_GPIOCR_INT_SEL, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @AR_GPIOCR_CR_N(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @AR_GPIOCR_INT(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* @AR_GPIOCR_INT_ENA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @AR_GPIOCR_INT_SELH, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @AR_GPIOCR_INT_SELL, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %43 = load i32, i32* @AR_GPIOCR, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @OS_REG_WRITE(%struct.ath_hal* %42, i32 %43, i32 %44)
  %46 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %47 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %48 = call %struct.TYPE_2__* @AH5212(%struct.ath_hal* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HAL_INT_GPIO, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @ar5212SetInterrupts(%struct.ath_hal* %46, i32 %52)
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_GPIOCR_CR_A(i32) #1

declare dso_local i32 @AR_GPIOCR_CR_N(i32) #1

declare dso_local i32 @AR_GPIOCR_INT(i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5212SetInterrupts(%struct.ath_hal*, i32) #1

declare dso_local %struct.TYPE_2__* @AH5212(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
