; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_getcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_getcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_TRISTATE = common dso_local global i32 0, align 4
@NO_PULLUPDOWN = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@NO_DCTIMER = common dso_local global i32 0, align 4
@GPIO_PIN_PULSATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @chipc_gpio_pin_getcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_gpio_pin_getcaps(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.chipc_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.chipc_gpio_softc* @device_get_softc(i32 %9)
  store %struct.chipc_gpio_softc* %10, %struct.chipc_gpio_softc** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @CC_GPIO_VALID_PIN(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %45

16:                                               ; preds = %3
  %17 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %18 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @GPIO_PIN_TRISTATE, align 4
  %21 = or i32 %19, %20
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %24 = load i32, i32* @NO_PULLUPDOWN, align 4
  %25 = call i32 @CC_GPIO_QUIRK(%struct.chipc_gpio_softc* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %29 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %30 = or i32 %28, %29
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %16
  %35 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %36 = load i32, i32* @NO_DCTIMER, align 4
  %37 = call i32 @CC_GPIO_QUIRK(%struct.chipc_gpio_softc* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @GPIO_PIN_PULSATE, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %34
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.chipc_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @CC_GPIO_VALID_PIN(i32) #1

declare dso_local i32 @CC_GPIO_QUIRK(%struct.chipc_gpio_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
