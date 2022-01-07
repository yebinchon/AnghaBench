; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_oe_set_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_oe_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_gpio_softc = type { i32 }

@AR71XX_GPIO_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar71xx_gpio_softc*, i32)* @ar71xx_gpio_oe_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar71xx_gpio_oe_set_input(%struct.ar71xx_gpio_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ar71xx_gpio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar71xx_gpio_softc* %0, %struct.ar71xx_gpio_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 1, %6
  store i32 %7, i32* %5, align 4
  %8 = call i64 (...) @ar71xx_gpio_oe_is_high()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %12 = load i32, i32* @AR71XX_GPIO_OE, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GPIO_CLEAR_BITS(%struct.ar71xx_gpio_softc* %11, i32 %12, i32 %13)
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %17 = load i32, i32* @AR71XX_GPIO_OE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @GPIO_SET_BITS(%struct.ar71xx_gpio_softc* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  ret void
}

declare dso_local i64 @ar71xx_gpio_oe_is_high(...) #1

declare dso_local i32 @GPIO_CLEAR_BITS(%struct.ar71xx_gpio_softc*, i32, i32) #1

declare dso_local i32 @GPIO_SET_BITS(%struct.ar71xx_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
