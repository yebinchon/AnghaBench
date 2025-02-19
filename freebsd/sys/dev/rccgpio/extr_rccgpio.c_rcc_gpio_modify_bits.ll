; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rccgpio/extr_rccgpio.c_rcc_gpio_modify_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rccgpio/extr_rccgpio.c_rcc_gpio_modify_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcc_gpio_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcc_gpio_softc*, i32, i32, i32)* @rcc_gpio_modify_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcc_gpio_modify_bits(%struct.rcc_gpio_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rcc_gpio_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rcc_gpio_softc* %0, %struct.rcc_gpio_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %11 = call i32 @RCC_GPIO_LOCK(%struct.rcc_gpio_softc* %10)
  %12 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @RCC_READ(%struct.rcc_gpio_softc* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @RCC_WRITE(%struct.rcc_gpio_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %27 = call i32 @RCC_GPIO_UNLOCK(%struct.rcc_gpio_softc* %26)
  ret void
}

declare dso_local i32 @RCC_GPIO_LOCK(%struct.rcc_gpio_softc*) #1

declare dso_local i32 @RCC_READ(%struct.rcc_gpio_softc*, i32) #1

declare dso_local i32 @RCC_WRITE(%struct.rcc_gpio_softc*, i32, i32) #1

declare dso_local i32 @RCC_GPIO_UNLOCK(%struct.rcc_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
