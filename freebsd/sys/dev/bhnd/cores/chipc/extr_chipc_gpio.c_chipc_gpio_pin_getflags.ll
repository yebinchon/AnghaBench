; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@NO_PULLUPDOWN = common dso_local global i32 0, align 4
@GPIOPU = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIOPD = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@NO_DCTIMER = common dso_local global i32 0, align 4
@GPIOTIMEROUTMASK = common dso_local global i32 0, align 4
@GPIO_PIN_PULSATE = common dso_local global i32 0, align 4
@GPIO_PIN_TRISTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @chipc_gpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_gpio_pin_getflags(i32 %0, i32 %1, i32* %2) #0 {
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
  br label %82

16:                                               ; preds = %3
  %17 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %18 = call i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc* %17)
  %19 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @chipc_gpio_pin_get_mode(%struct.chipc_gpio_softc* %19, i32 %20)
  switch i32 %21, label %79 [
    i32 130, label %22
    i32 129, label %54
    i32 128, label %74
  ]

22:                                               ; preds = %16
  %23 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %26 = load i32, i32* @NO_PULLUPDOWN, align 4
  %27 = call i32 @CC_GPIO_QUIRK(%struct.chipc_gpio_softc* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %22
  %30 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @GPIOPU, align 4
  %33 = call i32 @CC_GPIO_RDFLAG(%struct.chipc_gpio_softc* %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %52

40:                                               ; preds = %29
  %41 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @GPIOPD, align 4
  %44 = call i32 @CC_GPIO_RDFLAG(%struct.chipc_gpio_softc* %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %22
  br label %79

54:                                               ; preds = %16
  %55 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %58 = load i32, i32* @NO_DCTIMER, align 4
  %59 = call i32 @CC_GPIO_QUIRK(%struct.chipc_gpio_softc* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %54
  %62 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @GPIOTIMEROUTMASK, align 4
  %65 = call i32 @CC_GPIO_RDFLAG(%struct.chipc_gpio_softc* %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* @GPIO_PIN_PULSATE, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72, %54
  br label %79

74:                                               ; preds = %16
  %75 = load i32, i32* @GPIO_PIN_TRISTATE, align 4
  %76 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %77 = or i32 %75, %76
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %16, %74, %73, %53
  %80 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %81 = call i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc* %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %14
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.chipc_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @CC_GPIO_VALID_PIN(i32) #1

declare dso_local i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc*) #1

declare dso_local i32 @chipc_gpio_pin_get_mode(%struct.chipc_gpio_softc*, i32) #1

declare dso_local i32 @CC_GPIO_QUIRK(%struct.chipc_gpio_softc*, i32) #1

declare dso_local i32 @CC_GPIO_RDFLAG(%struct.chipc_gpio_softc*, i32, i32) #1

declare dso_local i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
