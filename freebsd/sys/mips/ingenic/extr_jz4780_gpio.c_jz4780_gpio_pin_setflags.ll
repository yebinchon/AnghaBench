; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_gpio_softc = type { i32 }

@JZ4780_GPIO_PINS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @jz4780_gpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_gpio_pin_setflags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jz4780_gpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @JZ4780_GPIO_PINS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.jz4780_gpio_softc* @device_get_softc(i32 %16)
  store %struct.jz4780_gpio_softc* %17, %struct.jz4780_gpio_softc** %8, align 8
  %18 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %19 = call i32 @JZ4780_GPIO_LOCK(%struct.jz4780_gpio_softc* %18)
  %20 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %24 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = call i32 @jz4780_gpio_pin_set_direction(%struct.jz4780_gpio_softc* %20, i32 %21, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %35 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = call i32 @jz4780_gpio_pin_set_bias(%struct.jz4780_gpio_softc* %31, i32 %32, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %30, %15
  %40 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %41 = call i32 @JZ4780_GPIO_UNLOCK(%struct.jz4780_gpio_softc* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.jz4780_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @JZ4780_GPIO_LOCK(%struct.jz4780_gpio_softc*) #1

declare dso_local i32 @jz4780_gpio_pin_set_direction(%struct.jz4780_gpio_softc*, i32, i32) #1

declare dso_local i32 @jz4780_gpio_pin_set_bias(%struct.jz4780_gpio_softc*, i32, i32) #1

declare dso_local i32 @JZ4780_GPIO_UNLOCK(%struct.jz4780_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
