; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio.c_dwgpio_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio.c_dwgpio_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwgpio_softc = type { i32 }
%struct.gpio_pin = type { i32, i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwgpio_softc*, %struct.gpio_pin*, i32)* @dwgpio_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwgpio_pin_configure(%struct.dwgpio_softc* %0, %struct.gpio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.dwgpio_softc*, align 8
  %5 = alloca %struct.gpio_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwgpio_softc* %0, %struct.dwgpio_softc** %4, align 8
  store %struct.gpio_pin* %1, %struct.gpio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %9 = call i32 @GPIO_LOCK(%struct.dwgpio_softc* %8)
  %10 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %11 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %12 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GPIO_SWPORT_DDR(i32 %13)
  %15 = call i32 @READ4(%struct.dwgpio_softc* %10, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %18 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %3
  %23 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %24 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %28 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %22
  %36 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %37 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %38 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %42 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %60

47:                                               ; preds = %22
  %48 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %49 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %50 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %54 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %47, %35
  br label %61

61:                                               ; preds = %60, %3
  %62 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %63 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %64 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @GPIO_SWPORT_DDR(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @WRITE4(%struct.dwgpio_softc* %62, i32 %66, i32 %67)
  %69 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %70 = call i32 @GPIO_UNLOCK(%struct.dwgpio_softc* %69)
  ret void
}

declare dso_local i32 @GPIO_LOCK(%struct.dwgpio_softc*) #1

declare dso_local i32 @READ4(%struct.dwgpio_softc*, i32) #1

declare dso_local i32 @GPIO_SWPORT_DDR(i32) #1

declare dso_local i32 @WRITE4(%struct.dwgpio_softc*, i32, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.dwgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
