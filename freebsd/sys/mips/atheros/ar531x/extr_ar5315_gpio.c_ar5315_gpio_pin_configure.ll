; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_gpio.c_ar5315_gpio_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_gpio.c_ar5315_gpio_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5315_gpio_softc = type { i32 }
%struct.gpio_pin = type { i32, i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar5315_gpio_softc*, %struct.gpio_pin*, i32)* @ar5315_gpio_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5315_gpio_pin_configure(%struct.ar5315_gpio_softc* %0, %struct.gpio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.ar5315_gpio_softc*, align 8
  %5 = alloca %struct.gpio_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ar5315_gpio_softc* %0, %struct.ar5315_gpio_softc** %4, align 8
  store %struct.gpio_pin* %1, %struct.gpio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %9 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %14 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %20 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %24 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %18
  %32 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %33 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %34 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ar5315_gpio_softc*, %struct.ar5315_gpio_softc** %4, align 8
  %38 = call i32 (...) @ar531x_gpio_cr()
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @GPIO_SET_BITS(%struct.ar5315_gpio_softc* %37, i32 %38, i32 %39)
  br label %51

41:                                               ; preds = %18
  %42 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %43 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %44 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ar5315_gpio_softc*, %struct.ar5315_gpio_softc** %4, align 8
  %48 = call i32 (...) @ar531x_gpio_cr()
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @GPIO_CLEAR_BITS(%struct.ar5315_gpio_softc* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %41, %31
  br label %52

52:                                               ; preds = %51, %3
  ret void
}

declare dso_local i32 @GPIO_SET_BITS(%struct.ar5315_gpio_softc*, i32, i32) #1

declare dso_local i32 @ar531x_gpio_cr(...) #1

declare dso_local i32 @GPIO_CLEAR_BITS(%struct.ar5315_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
