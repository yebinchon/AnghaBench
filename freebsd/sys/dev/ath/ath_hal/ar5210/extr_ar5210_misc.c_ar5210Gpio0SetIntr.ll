; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_misc.c_ar5210Gpio0SetIntr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_misc.c_ar5210Gpio0SetIntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AR_GPIOCR = common dso_local global i32 0, align 4
@AR_GPIOCR_INT_SELH = common dso_local global i32 0, align 4
@AR_GPIOCR_INT_ENA = common dso_local global i32 0, align 4
@HAL_INT_GPIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5210Gpio0SetIntr(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
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
  %12 = call i32 @AR_GPIOCR_INT_SEL(i32 %11)
  %13 = load i32, i32* @AR_GPIOCR_INT_SELH, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AR_GPIOCR_INT_ENA, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @AR_GPIOCR_ALL(i32 %17)
  %19 = or i32 %16, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @AR_GPIOCR_INT_SEL(i32 %23)
  %25 = load i32, i32* @AR_GPIOCR_INT_ENA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32, i32* @AR_GPIOCR_INT_SELH, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %3
  %36 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %37 = load i32, i32* @AR_GPIOCR, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @OS_REG_WRITE(%struct.ath_hal* %36, i32 %37, i32 %38)
  %40 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %41 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %42 = call %struct.TYPE_2__* @AH5210(%struct.ath_hal* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HAL_INT_GPIO, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ar5210SetInterrupts(%struct.ath_hal* %40, i32 %46)
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_GPIOCR_INT_SEL(i32) #1

declare dso_local i32 @AR_GPIOCR_ALL(i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5210SetInterrupts(%struct.ath_hal*, i32) #1

declare dso_local %struct.TYPE_2__* @AH5210(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
