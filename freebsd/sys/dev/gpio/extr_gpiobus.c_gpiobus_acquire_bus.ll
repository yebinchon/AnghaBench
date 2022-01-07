; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_acquire_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_acquire_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_softc = type { i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s: %s still owns the bus.\00", align 1
@GPIOBUS_DONTWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"gpiobuswait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @gpiobus_acquire_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiobus_acquire_bus(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpiobus_softc*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.gpiobus_softc* @device_get_softc(i32* %9)
  store %struct.gpiobus_softc* %10, %struct.gpiobus_softc** %8, align 8
  %11 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %12 = call i32 @GPIOBUS_ASSERT_UNLOCKED(%struct.gpiobus_softc* %11)
  %13 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %14 = call i32 @GPIOBUS_LOCK(%struct.gpiobus_softc* %13)
  %15 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %16 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %3
  %20 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %21 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @device_get_nameunit(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @device_get_nameunit(i32* %28)
  %30 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @GPIOBUS_DONTWAIT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %37 = call i32 @GPIOBUS_UNLOCK(%struct.gpiobus_softc* %36)
  %38 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %38, i32* %4, align 4
  br label %57

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %45, %39
  %41 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %42 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %47 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %48 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %47, i32 0, i32 1
  %49 = call i32 @mtx_sleep(%struct.gpiobus_softc* %46, i32* %48, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %40

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %3
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %54 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %8, align 8
  %56 = call i32 @GPIOBUS_UNLOCK(%struct.gpiobus_softc* %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %35
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.gpiobus_softc* @device_get_softc(i32*) #1

declare dso_local i32 @GPIOBUS_ASSERT_UNLOCKED(%struct.gpiobus_softc*) #1

declare dso_local i32 @GPIOBUS_LOCK(%struct.gpiobus_softc*) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32 @GPIOBUS_UNLOCK(%struct.gpiobus_softc*) #1

declare dso_local i32 @mtx_sleep(%struct.gpiobus_softc*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
