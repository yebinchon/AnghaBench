; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_misc.c_ar5211GpioSetIntr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_misc.c_ar5211GpioSetIntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AR_GPIOCR = common dso_local global i32 0, align 4
@AR_GPIOCR_INT_SEL0 = common dso_local global i32 0, align 4
@AR_GPIOCR_INT_SELH = common dso_local global i32 0, align 4
@AR_GPIOCR_INT_ENA = common dso_local global i32 0, align 4
@AR_GPIOCR_0_CR_A = common dso_local global i32 0, align 4
@HAL_INT_GPIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5211GpioSetIntr(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
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
  %11 = load i32, i32* @AR_GPIOCR_INT_SEL0, align 4
  %12 = load i32, i32* @AR_GPIOCR_INT_SELH, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AR_GPIOCR_INT_ENA, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @AR_GPIOCR_0_CR_A, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @AR_GPIOCR_INT_SEL0, align 4
  %22 = load i32, i32* @AR_GPIOCR_INT_ENA, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @AR_GPIOCR_INT_SELH, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %34 = load i32, i32* @AR_GPIOCR, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @OS_REG_WRITE(%struct.ath_hal* %33, i32 %34, i32 %35)
  %37 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %38 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %39 = call %struct.TYPE_2__* @AH5211(%struct.ath_hal* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HAL_INT_GPIO, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ar5211SetInterrupts(%struct.ath_hal* %37, i32 %43)
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5211SetInterrupts(%struct.ath_hal*, i32) #1

declare dso_local %struct.TYPE_2__* @AH5211(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
