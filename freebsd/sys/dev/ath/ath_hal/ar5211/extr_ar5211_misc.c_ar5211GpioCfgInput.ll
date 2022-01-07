; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_misc.c_ar5211GpioCfgInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_misc.c_ar5211GpioCfgInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_NUM_GPIO = common dso_local global i32 0, align 4
@AR_GPIOCR = common dso_local global i32 0, align 4
@AR_GPIOCR_0_CR_A = common dso_local global i32 0, align 4
@AR_GPIOCR_CR_SHIFT = common dso_local global i32 0, align 4
@AR_GPIOCR_0_CR_N = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5211GpioCfgInput(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AR_NUM_GPIO, align 4
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @HALASSERT(i32 %9)
  %11 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %12 = load i32, i32* @AR_GPIOCR, align 4
  %13 = call i32 @OS_REG_READ(%struct.ath_hal* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @AR_GPIOCR_0_CR_A, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AR_GPIOCR_CR_SHIFT, align 4
  %17 = mul nsw i32 %15, %16
  %18 = shl i32 %14, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @AR_GPIOCR_0_CR_N, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @AR_GPIOCR_CR_SHIFT, align 4
  %25 = mul nsw i32 %23, %24
  %26 = shl i32 %22, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = load i32, i32* @AR_GPIOCR, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @OS_REG_WRITE(%struct.ath_hal* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @AH_TRUE, align 4
  ret i32 %33
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
