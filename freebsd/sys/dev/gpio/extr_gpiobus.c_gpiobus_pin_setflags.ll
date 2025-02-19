; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_softc = type { i32 }
%struct.gpiobus_ivar = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64)* @gpiobus_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiobus_pin_setflags(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gpiobus_softc*, align 8
  %11 = alloca %struct.gpiobus_ivar*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.gpiobus_softc* @GPIOBUS_SOFTC(i32 %13)
  store %struct.gpiobus_softc* %14, %struct.gpiobus_softc** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32 %15)
  store %struct.gpiobus_ivar* %16, %struct.gpiobus_ivar** %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %11, align 8
  %19 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %57

24:                                               ; preds = %4
  %25 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %10, align 8
  %26 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %11, align 8
  %29 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @GPIO_PIN_GETCAPS(i32 %27, i32 %33, i64* %12)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %5, align 4
  br label %57

38:                                               ; preds = %24
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @gpio_check_flags(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %5, align 4
  br label %57

45:                                               ; preds = %38
  %46 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %10, align 8
  %47 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %11, align 8
  %50 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @GPIO_PIN_SETFLAGS(i32 %48, i32 %54, i64 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %45, %43, %36, %22
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.gpiobus_softc* @GPIOBUS_SOFTC(i32) #1

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32) #1

declare dso_local i64 @GPIO_PIN_GETCAPS(i32, i32, i64*) #1

declare dso_local i64 @gpio_check_flags(i64, i64) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
