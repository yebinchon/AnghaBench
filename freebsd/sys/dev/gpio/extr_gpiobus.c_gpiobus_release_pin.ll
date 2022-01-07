; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_release_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_release_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"gpiobus_acquire_pin: invalid pin %d, max=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"gpiobus_acquire_pin: pin %d is not mapped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiobus_release_pin(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.gpiobus_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.gpiobus_softc* @device_get_softc(i32 %7)
  store %struct.gpiobus_softc* %8, %struct.gpiobus_softc** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %6, align 8
  %11 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %6, align 8
  %18 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, 1
  %21 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %20)
  store i32 -1, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %6, align 8
  %24 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  store i32 -1, i32* %3, align 4
  br label %42

35:                                               ; preds = %22
  %36 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %6, align 8
  %37 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %31, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.gpiobus_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
