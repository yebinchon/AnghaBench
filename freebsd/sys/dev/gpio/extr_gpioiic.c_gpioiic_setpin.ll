; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioiic.c_gpioiic_setpin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioiic.c_gpioiic_setpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioiic_softc = type { i32, i32 }

@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpioiic_softc*, i32, i32)* @gpioiic_setpin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpioiic_setpin(%struct.gpioiic_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpioiic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpioiic_softc* %0, %struct.gpioiic_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %4, align 8
  %12 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %4, align 8
  %15 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @GPIOBUS_PIN_SET(i32 %13, i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %4, align 8
  %20 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %4, align 8
  %23 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %27 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %21, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %10
  %31 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %4, align 8
  %32 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %4, align 8
  %35 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @GPIOBUS_PIN_SET(i32 %33, i32 %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %30, %10
  br label %50

40:                                               ; preds = %3
  %41 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %4, align 8
  %42 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %4, align 8
  %45 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %49 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %43, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @GPIOBUS_PIN_SET(i32, i32, i32, i32) #1

declare dso_local i32 @GPIOBUS_PIN_SETFLAGS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
