; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_gpio_softc = type { i32 }
%struct.gpio_pin = type { i32, i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar71xx_gpio_softc*, %struct.gpio_pin*, i32)* @ar71xx_gpio_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar71xx_gpio_pin_configure(%struct.ar71xx_gpio_softc* %0, %struct.gpio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.ar71xx_gpio_softc*, align 8
  %5 = alloca %struct.gpio_pin*, align 8
  %6 = alloca i32, align 4
  store %struct.ar71xx_gpio_softc* %0, %struct.ar71xx_gpio_softc** %4, align 8
  store %struct.gpio_pin* %1, %struct.gpio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %9 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %3
  %14 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %15 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %19 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %28 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %29 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %4, align 8
  %33 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %34 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ar71xx_gpio_oe_set_output(%struct.ar71xx_gpio_softc* %32, i32 %35)
  br label %48

37:                                               ; preds = %13
  %38 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %39 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %40 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %4, align 8
  %44 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %45 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ar71xx_gpio_oe_set_input(%struct.ar71xx_gpio_softc* %43, i32 %46)
  br label %48

48:                                               ; preds = %37, %26
  br label %49

49:                                               ; preds = %48, %3
  ret void
}

declare dso_local i32 @ar71xx_gpio_oe_set_output(%struct.ar71xx_gpio_softc*, i32) #1

declare dso_local i32 @ar71xx_gpio_oe_set_input(%struct.ar71xx_gpio_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
