; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiospi.c_gpio_spi_chip_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiospi.c_gpio_spi_chip_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_spi_softc = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"don't have CS%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_spi_softc*, i32)* @gpio_spi_chip_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_spi_chip_activate(%struct.gpio_spi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_spi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.gpio_spi_softc* %0, %struct.gpio_spi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %50 [
    i32 0, label %6
    i32 1, label %17
    i32 2, label %28
    i32 3, label %39
  ]

6:                                                ; preds = %2
  %7 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GPIOBUS_PIN_SET(i32 %9, i32 %12, i32 %15, i32 0)
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @GPIOBUS_PIN_SET(i32 %20, i32 %23, i32 %26, i32 0)
  br label %56

28:                                               ; preds = %2
  %29 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @GPIOBUS_PIN_SET(i32 %31, i32 %34, i32 %37, i32 0)
  br label %56

39:                                               ; preds = %2
  %40 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %41 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @GPIOBUS_PIN_SET(i32 %42, i32 %45, i32 %48, i32 0)
  br label %56

50:                                               ; preds = %2
  %51 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %52 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %39, %28, %17, %6
  %57 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %58 = call i32 @gpio_delay(%struct.gpio_spi_softc* %57)
  ret void
}

declare dso_local i32 @GPIOBUS_PIN_SET(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @gpio_delay(%struct.gpio_spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
