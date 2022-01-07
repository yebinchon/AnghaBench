; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@JZ4780_GPIO_PINS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@JZ_FUNC_GPIO = common dso_local global i64 0, align 8
@JZ_GPIO_PAT0S = common dso_local global i32 0, align 4
@JZ_GPIO_PAT0C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @jz4780_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_gpio_pin_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jz4780_gpio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @JZ4780_GPIO_PINS, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 1, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.jz4780_gpio_softc* @device_get_softc(i32 %20)
  store %struct.jz4780_gpio_softc* %21, %struct.jz4780_gpio_softc** %8, align 8
  %22 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %23 = call i32 @JZ4780_GPIO_LOCK(%struct.jz4780_gpio_softc* %22)
  %24 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %25 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @JZ_FUNC_GPIO, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %16
  %35 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @JZ_GPIO_PAT0S, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @JZ_GPIO_PAT0C, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc* %35, i32 %43, i32 %44)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %16
  %47 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %48 = call i32 @JZ4780_GPIO_UNLOCK(%struct.jz4780_gpio_softc* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.jz4780_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @JZ4780_GPIO_LOCK(%struct.jz4780_gpio_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc*, i32, i32) #1

declare dso_local i32 @JZ4780_GPIO_UNLOCK(%struct.jz4780_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
