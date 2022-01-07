; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIOIN = common dso_local global i32 0, align 4
@GPIOOUT = common dso_local global i32 0, align 4
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @chipc_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_gpio_pin_get(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.chipc_gpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @CC_GPIO_VALID_PIN(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %46

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.chipc_gpio_softc* @device_get_softc(i32 %16)
  store %struct.chipc_gpio_softc* %17, %struct.chipc_gpio_softc** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %19 = call i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc* %18)
  %20 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @chipc_gpio_pin_get_mode(%struct.chipc_gpio_softc* %20, i32 %21)
  switch i32 %22, label %34 [
    i32 130, label %23
    i32 129, label %28
    i32 128, label %33
  ]

23:                                               ; preds = %15
  %24 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @GPIOIN, align 4
  %27 = call i32 @CC_GPIO_RDFLAG(%struct.chipc_gpio_softc* %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  br label %34

28:                                               ; preds = %15
  %29 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GPIOOUT, align 4
  %32 = call i32 @CC_GPIO_RDFLAG(%struct.chipc_gpio_softc* %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  br label %34

33:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %15, %33, %28, %23
  %35 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %36 = call i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc* %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @GPIO_PIN_HIGH, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @GPIO_PIN_LOW, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @CC_GPIO_VALID_PIN(i32) #1

declare dso_local %struct.chipc_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc*) #1

declare dso_local i32 @chipc_gpio_pin_get_mode(%struct.chipc_gpio_softc*, i32) #1

declare dso_local i32 @CC_GPIO_RDFLAG(%struct.chipc_gpio_softc*, i32, i32) #1

declare dso_local i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
