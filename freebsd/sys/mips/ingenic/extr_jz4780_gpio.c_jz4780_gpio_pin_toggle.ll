; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@JZ4780_GPIO_PINS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@JZ_FUNC_GPIO = common dso_local global i64 0, align 8
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@JZ_GPIO_PIN = common dso_local global i32 0, align 4
@JZ_GPIO_PAT0C = common dso_local global i32 0, align 4
@JZ_GPIO_PAT0S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @jz4780_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_gpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jz4780_gpio_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @JZ4780_GPIO_PINS, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.jz4780_gpio_softc* @device_get_softc(i32 %19)
  store %struct.jz4780_gpio_softc* %20, %struct.jz4780_gpio_softc** %6, align 8
  %21 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %6, align 8
  %22 = call i32 @JZ4780_GPIO_LOCK(%struct.jz4780_gpio_softc* %21)
  %23 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %6, align 8
  %24 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @JZ_FUNC_GPIO, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %15
  %34 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %6, align 8
  %35 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %33
  %46 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %6, align 8
  %47 = load i32, i32* @JZ_GPIO_PIN, align 4
  %48 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @JZ_GPIO_PAT0C, align 4
  br label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @JZ_GPIO_PAT0S, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc* %49, i32 %59, i32 %60)
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %33, %15
  %63 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %6, align 8
  %64 = call i32 @JZ4780_GPIO_UNLOCK(%struct.jz4780_gpio_softc* %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.jz4780_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @JZ4780_GPIO_LOCK(%struct.jz4780_gpio_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.jz4780_gpio_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc*, i32, i32) #1

declare dso_local i32 @JZ4780_GPIO_UNLOCK(%struct.jz4780_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
