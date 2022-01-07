; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rccgpio/extr_rccgpio.c_rcc_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rccgpio/extr_rccgpio.c_rcc_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rcc_gpio_softc = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@rcc_pins = common dso_local global %struct.TYPE_2__* null, align 8
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@RCC_GPIO_GP_LVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @rcc_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcc_gpio_pin_set(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rcc_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.rcc_gpio_softc* @device_get_softc(i32 %9)
  store %struct.rcc_gpio_softc* %10, %struct.rcc_gpio_softc** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %13 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %66

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcc_pins, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %66

29:                                               ; preds = %18
  %30 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %31 = call i32 @RCC_GPIO_LOCK(%struct.rcc_gpio_softc* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcc_pins, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %42 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %57

45:                                               ; preds = %29
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcc_pins, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %54 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %45, %34
  %58 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %59 = load i32, i32* @RCC_GPIO_GP_LVL, align 4
  %60 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %61 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @RCC_WRITE(%struct.rcc_gpio_softc* %58, i32 %59, i32 %62)
  %64 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %8, align 8
  %65 = call i32 @RCC_GPIO_UNLOCK(%struct.rcc_gpio_softc* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %57, %27, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
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
