; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_softc = type { i32 }
%struct.gpiobus_ivar = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @gpiobus_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiobus_pin_toggle(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.gpiobus_softc*, align 8
  %9 = alloca %struct.gpiobus_ivar*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.gpiobus_softc* @GPIOBUS_SOFTC(i32 %10)
  store %struct.gpiobus_softc* %11, %struct.gpiobus_softc** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32 %12)
  store %struct.gpiobus_ivar* %13, %struct.gpiobus_ivar** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %9, align 8
  %16 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %3
  %22 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %23 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %9, align 8
  %26 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GPIO_PIN_TOGGLE(i32 %24, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.gpiobus_softc* @GPIOBUS_SOFTC(i32) #1

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32) #1

declare dso_local i32 @GPIO_PIN_TOGGLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
