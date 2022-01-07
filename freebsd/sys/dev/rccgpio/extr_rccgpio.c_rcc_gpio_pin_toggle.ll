; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rccgpio/extr_rccgpio.c_rcc_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rccgpio/extr_rccgpio.c_rcc_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rcc_gpio_softc = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@rcc_pins = common dso_local global %struct.TYPE_2__* null, align 8
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@RCC_GPIO_GP_LVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @rcc_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcc_gpio_pin_toggle(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.rcc_gpio_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.rcc_gpio_softc* @device_get_softc(i32 %7)
  store %struct.rcc_gpio_softc* %8, %struct.rcc_gpio_softc** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %6, align 8
  %11 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcc_pins, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %73

27:                                               ; preds = %16
  %28 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %6, align 8
  %29 = call i32 @RCC_GPIO_LOCK(%struct.rcc_gpio_softc* %28)
  %30 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %6, align 8
  %31 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcc_pins, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %32, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %27
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcc_pins, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %6, align 8
  %49 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %64

52:                                               ; preds = %27
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcc_pins, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %6, align 8
  %61 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %52, %41
  %65 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %6, align 8
  %66 = load i32, i32* @RCC_GPIO_GP_LVL, align 4
  %67 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %6, align 8
  %68 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @RCC_WRITE(%struct.rcc_gpio_softc* %65, i32 %66, i32 %69)
  %71 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %6, align 8
  %72 = call i32 @RCC_GPIO_UNLOCK(%struct.rcc_gpio_softc* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %64, %25, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.rcc_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @RCC_GPIO_LOCK(%struct.rcc_gpio_softc*) #1

declare dso_local i32 @RCC_WRITE(%struct.rcc_gpio_softc*, i32, i32) #1

declare dso_local i32 @RCC_GPIO_UNLOCK(%struct.rcc_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
