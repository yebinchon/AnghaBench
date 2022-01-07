; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_qoriq_gpio.c_qoriq_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_qoriq_gpio.c_qoriq_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qoriq_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_GPDAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @qoriq_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qoriq_gpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qoriq_gpio_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.qoriq_gpio_softc* @device_get_softc(i32 %8)
  store %struct.qoriq_gpio_softc* %9, %struct.qoriq_gpio_softc** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @VALID_PIN(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %6, align 8
  %17 = call i32 @GPIO_LOCK(%struct.qoriq_gpio_softc* %16)
  %18 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %6, align 8
  %19 = getelementptr inbounds %struct.qoriq_gpio_softc, %struct.qoriq_gpio_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GPIO_GPDAT, align 4
  %22 = call i32 @bus_read_4(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 31, %23
  %25 = shl i32 1, %24
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %6, align 8
  %29 = getelementptr inbounds %struct.qoriq_gpio_softc, %struct.qoriq_gpio_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GPIO_GPDAT, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @bus_write_4(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %6, align 8
  %35 = call i32 @GPIO_UNLOCK(%struct.qoriq_gpio_softc* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %15, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.qoriq_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @VALID_PIN(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.qoriq_gpio_softc*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.qoriq_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
