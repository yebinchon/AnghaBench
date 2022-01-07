; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_set_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_set_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@JZ_FUNC_DEV_3 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@JZ_GPIO_INTC = common dso_local global i32 0, align 4
@JZ_GPIO_MASKC = common dso_local global i32 0, align 4
@JZ_GPIO_PAT1S = common dso_local global i32 0, align 4
@JZ_GPIO_PAT1C = common dso_local global i32 0, align 4
@JZ_GPIO_PAT0S = common dso_local global i32 0, align 4
@JZ_GPIO_PAT0C = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_gpio_softc*, i32, i32)* @jz4780_gpio_pin_set_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_gpio_pin_set_func(%struct.jz4780_gpio_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jz4780_gpio_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jz4780_gpio_softc* %0, %struct.jz4780_gpio_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = shl i32 1, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i64, i64* @JZ_FUNC_DEV_3, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %75

17:                                               ; preds = %3
  %18 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %5, align 8
  %19 = load i32, i32* @JZ_GPIO_INTC, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %5, align 8
  %23 = load i32, i32* @JZ_GPIO_MASKC, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %5, align 8
  %31 = load i32, i32* @JZ_GPIO_PAT1S, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc* %30, i32 %31, i32 %32)
  br label %39

34:                                               ; preds = %17
  %35 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %5, align 8
  %36 = load i32, i32* @JZ_GPIO_PAT1C, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %5, align 8
  %45 = load i32, i32* @JZ_GPIO_PAT0S, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc* %44, i32 %45, i32 %46)
  br label %53

48:                                               ; preds = %39
  %49 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %5, align 8
  %50 = load i32, i32* @JZ_GPIO_PAT0C, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %55 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %5, align 8
  %59 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %57
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %5, align 8
  %69 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %67, i32* %74, align 4
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %53, %15
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @CSR_WRITE_4(%struct.jz4780_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
