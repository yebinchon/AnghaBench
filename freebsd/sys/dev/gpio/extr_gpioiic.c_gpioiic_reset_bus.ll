; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioiic.c_gpioiic_reset_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioiic.c_gpioiic_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioiic_softc = type { i32, i32, i32, i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gpioiic_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpioiic_reset_bus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpioiic_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.gpioiic_softc* @device_get_softc(i32 %4)
  store %struct.gpioiic_softc* %5, %struct.gpioiic_softc** %3, align 8
  %6 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %3, align 8
  %7 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %3, align 8
  %10 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %3, align 8
  %13 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %16 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %8, i32 %11, i32 %14, i32 %15)
  %17 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %3, align 8
  %18 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %3, align 8
  %21 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %3, align 8
  %24 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %27 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %19, i32 %22, i32 %25, i32 %26)
  ret void
}

declare dso_local %struct.gpioiic_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIOBUS_PIN_SETFLAGS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
