; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_gpio.c_ar5315_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_gpio.c_ar5315_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5315_gpio_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ar5315_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5315_gpio_pin_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar5315_gpio_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ar5315_gpio_softc* @device_get_softc(i32 %9)
  store %struct.ar5315_gpio_softc* %10, %struct.ar5315_gpio_softc** %7, align 8
  %11 = load %struct.ar5315_gpio_softc*, %struct.ar5315_gpio_softc** %7, align 8
  %12 = call i32 (...) @ar531x_gpio_do()
  %13 = call i32 @GPIO_READ(%struct.ar5315_gpio_softc* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.ar5315_gpio_softc*, %struct.ar5315_gpio_softc** %7, align 8
  %29 = call i32 (...) @ar531x_gpio_do()
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @GPIO_WRITE(%struct.ar5315_gpio_softc* %28, i32 %29, i32 %30)
  ret i32 0
}

declare dso_local %struct.ar5315_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_READ(%struct.ar5315_gpio_softc*, i32) #1

declare dso_local i32 @ar531x_gpio_do(...) #1

declare dso_local i32 @GPIO_WRITE(%struct.ar5315_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
