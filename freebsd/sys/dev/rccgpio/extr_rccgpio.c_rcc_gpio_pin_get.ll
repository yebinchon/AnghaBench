; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rccgpio/extr_rccgpio.c_rcc_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rccgpio/extr_rccgpio.c_rcc_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rcc_gpio_softc = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@rcc_pins = common dso_local global %struct.TYPE_2__* null, align 8
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@RCC_GPIO_GP_LVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*)* @rcc_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcc_gpio_pin_get(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rcc_gpio_softc*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.rcc_gpio_softc* @device_get_softc(i32 %10)
  store %struct.rcc_gpio_softc* %11, %struct.rcc_gpio_softc** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %14 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %21 = call i32 @RCC_GPIO_LOCK(%struct.rcc_gpio_softc* %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcc_pins, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %32 = load i32, i32* @RCC_GPIO_GP_LVL, align 4
  %33 = call i64 @RCC_READ(%struct.rcc_gpio_softc* %31, i32 %32)
  store i64 %33, i64* %9, align 8
  br label %38

34:                                               ; preds = %19
  %35 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %36 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %40 = call i32 @RCC_GPIO_UNLOCK(%struct.rcc_gpio_softc* %39)
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcc_pins, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = sext i32 %47 to i64
  %49 = and i64 %41, %48
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %38, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.rcc_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @RCC_GPIO_LOCK(%struct.rcc_gpio_softc*) #1

declare dso_local i64 @RCC_READ(%struct.rcc_gpio_softc*, i32) #1

declare dso_local i32 @RCC_GPIO_UNLOCK(%struct.rcc_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
