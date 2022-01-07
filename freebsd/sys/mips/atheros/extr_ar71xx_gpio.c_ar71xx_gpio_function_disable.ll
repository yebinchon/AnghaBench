; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_function_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_function_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_gpio_softc = type { i32 }

@ar71xx_soc = common dso_local global i64 0, align 8
@AR71XX_SOC_AR9341 = common dso_local global i64 0, align 8
@AR71XX_SOC_AR9342 = common dso_local global i64 0, align 8
@AR71XX_SOC_AR9344 = common dso_local global i64 0, align 8
@AR71XX_SOC_QCA9533 = common dso_local global i64 0, align 8
@AR71XX_SOC_QCA9533_V2 = common dso_local global i64 0, align 8
@AR71XX_SOC_QCA9556 = common dso_local global i64 0, align 8
@AR71XX_SOC_QCA9558 = common dso_local global i64 0, align 8
@AR934X_GPIO_REG_FUNC = common dso_local global i32 0, align 4
@AR71XX_GPIO_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar71xx_gpio_softc*, i32)* @ar71xx_gpio_function_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar71xx_gpio_function_disable(%struct.ar71xx_gpio_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ar71xx_gpio_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ar71xx_gpio_softc* %0, %struct.ar71xx_gpio_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @ar71xx_soc, align 8
  %6 = load i64, i64* @AR71XX_SOC_AR9341, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @ar71xx_soc, align 8
  %10 = load i64, i64* @AR71XX_SOC_AR9342, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* @ar71xx_soc, align 8
  %14 = load i64, i64* @AR71XX_SOC_AR9344, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @ar71xx_soc, align 8
  %18 = load i64, i64* @AR71XX_SOC_QCA9533, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @ar71xx_soc, align 8
  %22 = load i64, i64* @AR71XX_SOC_QCA9533_V2, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @ar71xx_soc, align 8
  %26 = load i64, i64* @AR71XX_SOC_QCA9556, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @ar71xx_soc, align 8
  %30 = load i64, i64* @AR71XX_SOC_QCA9558, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %24, %20, %16, %12, %8, %2
  %33 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %34 = load i32, i32* @AR934X_GPIO_REG_FUNC, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @GPIO_CLEAR_BITS(%struct.ar71xx_gpio_softc* %33, i32 %34, i32 %35)
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %39 = load i32, i32* @AR71XX_GPIO_FUNCTION, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @GPIO_CLEAR_BITS(%struct.ar71xx_gpio_softc* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @GPIO_CLEAR_BITS(%struct.ar71xx_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
