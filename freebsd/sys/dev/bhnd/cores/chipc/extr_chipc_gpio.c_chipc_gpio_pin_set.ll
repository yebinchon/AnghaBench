; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPIOOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @chipc_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_gpio_pin_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.chipc_gpio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.chipc_gpio_softc* @device_get_softc(i32 %11)
  store %struct.chipc_gpio_softc* %12, %struct.chipc_gpio_softc** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @CC_GPIO_VALID_PIN(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %22 [
    i32 129, label %20
    i32 128, label %21
  ]

20:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %24

21:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %21, %20
  %25 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %26 = call i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc* %25)
  %27 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @chipc_gpio_pin_get_mode(%struct.chipc_gpio_softc* %27, i32 %28)
  switch i32 %29, label %38 [
    i32 132, label %30
    i32 130, label %30
    i32 131, label %32
  ]

30:                                               ; preds = %24, %24
  %31 = load i32, i32* @ENODEV, align 4
  store i32 %31, i32* %10, align 4
  br label %38

32:                                               ; preds = %24
  %33 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GPIOOUT, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @CC_GPIO_WRFLAG(%struct.chipc_gpio_softc* %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %24, %32, %30
  %39 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %40 = call i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %22, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.chipc_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @CC_GPIO_VALID_PIN(i32) #1

declare dso_local i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc*) #1

declare dso_local i32 @chipc_gpio_pin_get_mode(%struct.chipc_gpio_softc*, i32) #1

declare dso_local i32 @CC_GPIO_WRFLAG(%struct.chipc_gpio_softc*, i32, i32, i32) #1

declare dso_local i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
