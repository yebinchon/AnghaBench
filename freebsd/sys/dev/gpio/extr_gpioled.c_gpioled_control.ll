; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioled.c_gpioled_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioled.c_gpioled_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioled_softc = type { i32, i32, i64 }

@GPIOLED_PIN = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @gpioled_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpioled_control(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpioled_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.gpioled_softc*
  store %struct.gpioled_softc* %7, %struct.gpioled_softc** %5, align 8
  %8 = load %struct.gpioled_softc*, %struct.gpioled_softc** %5, align 8
  %9 = call i32 @GPIOLED_LOCK(%struct.gpioled_softc* %8)
  %10 = load %struct.gpioled_softc*, %struct.gpioled_softc** %5, align 8
  %11 = getelementptr inbounds %struct.gpioled_softc, %struct.gpioled_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gpioled_softc*, %struct.gpioled_softc** %5, align 8
  %14 = getelementptr inbounds %struct.gpioled_softc, %struct.gpioled_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GPIOLED_PIN, align 4
  %17 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %18 = call i64 @GPIOBUS_PIN_SETFLAGS(i32 %12, i32 %15, i32 %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load %struct.gpioled_softc*, %struct.gpioled_softc** %5, align 8
  %22 = getelementptr inbounds %struct.gpioled_softc, %struct.gpioled_softc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.gpioled_softc*, %struct.gpioled_softc** %5, align 8
  %32 = getelementptr inbounds %struct.gpioled_softc, %struct.gpioled_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gpioled_softc*, %struct.gpioled_softc** %5, align 8
  %35 = getelementptr inbounds %struct.gpioled_softc, %struct.gpioled_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GPIOLED_PIN, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @GPIO_PIN_HIGH, align 4
  br label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @GPIO_PIN_LOW, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @GPIOBUS_PIN_SET(i32 %33, i32 %36, i32 %37, i32 %45)
  br label %47

47:                                               ; preds = %44, %2
  %48 = load %struct.gpioled_softc*, %struct.gpioled_softc** %5, align 8
  %49 = call i32 @GPIOLED_UNLOCK(%struct.gpioled_softc* %48)
  ret void
}

declare dso_local i32 @GPIOLED_LOCK(%struct.gpioled_softc*) #1

declare dso_local i64 @GPIOBUS_PIN_SETFLAGS(i32, i32, i32, i32) #1

declare dso_local i32 @GPIOBUS_PIN_SET(i32, i32, i32, i32) #1

declare dso_local i32 @GPIOLED_UNLOCK(%struct.gpioled_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
