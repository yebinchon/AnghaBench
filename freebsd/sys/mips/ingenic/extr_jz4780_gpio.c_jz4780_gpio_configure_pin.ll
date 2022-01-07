; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_configure_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_configure_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_gpio_softc = type { i32 }

@JZ4780_GPIO_PINS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @jz4780_gpio_configure_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_gpio_configure_pin(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jz4780_gpio_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @JZ4780_GPIO_PINS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %5, align 4
  br label %37

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.jz4780_gpio_softc* @device_get_softc(i32 %18)
  store %struct.jz4780_gpio_softc* %19, %struct.jz4780_gpio_softc** %10, align 8
  %20 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %10, align 8
  %21 = call i32 @JZ4780_GPIO_LOCK(%struct.jz4780_gpio_softc* %20)
  %22 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @jz4780_gpio_pin_set_func(%struct.jz4780_gpio_softc* %22, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %10, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @jz4780_gpio_pin_set_bias(%struct.jz4780_gpio_softc* %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %28, %17
  %34 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %10, align 8
  %35 = call i32 @JZ4780_GPIO_UNLOCK(%struct.jz4780_gpio_softc* %34)
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %15
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.jz4780_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @JZ4780_GPIO_LOCK(%struct.jz4780_gpio_softc*) #1

declare dso_local i32 @jz4780_gpio_pin_set_func(%struct.jz4780_gpio_softc*, i32, i32) #1

declare dso_local i32 @jz4780_gpio_pin_set_bias(%struct.jz4780_gpio_softc*, i32, i32) #1

declare dso_local i32 @JZ4780_GPIO_UNLOCK(%struct.jz4780_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
