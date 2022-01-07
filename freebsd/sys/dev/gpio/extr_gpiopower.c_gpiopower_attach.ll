; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiopower.c_gpiopower_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiopower.c_gpiopower_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiopower_softc = type { i32, i32* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to map GPIO pin\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gpio-poweroff\00", align 1
@RB_HALT = common dso_local global i32 0, align 4
@RB_POWEROFF = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@gpiopower_assert = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpiopower_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiopower_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpiopower_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.gpiopower_softc* @device_get_softc(i32 %6)
  store %struct.gpiopower_softc* %7, %struct.gpiopower_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ofw_bus_get_node(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.gpiopower_softc*, %struct.gpiopower_softc** %4, align 8
  %16 = getelementptr inbounds %struct.gpiopower_softc, %struct.gpiopower_softc* %15, i32 0, i32 1
  %17 = call i32 @ofw_gpiobus_parse_gpios(i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %16)
  %18 = load %struct.gpiopower_softc*, %struct.gpiopower_softc** %4, align 8
  %19 = getelementptr inbounds %struct.gpiopower_softc, %struct.gpiopower_softc* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @ofw_bus_is_compatible(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* @RB_HALT, align 4
  %32 = load i32, i32* @RB_POWEROFF, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.gpiopower_softc*, %struct.gpiopower_softc** %4, align 8
  %35 = getelementptr inbounds %struct.gpiopower_softc, %struct.gpiopower_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %39

36:                                               ; preds = %26
  %37 = load %struct.gpiopower_softc*, %struct.gpiopower_softc** %4, align 8
  %38 = getelementptr inbounds %struct.gpiopower_softc, %struct.gpiopower_softc* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* @shutdown_final, align 4
  %41 = load i32, i32* @gpiopower_assert, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SHUTDOWN_PRI_LAST, align 4
  %44 = call i32 @EVENTHANDLER_REGISTER(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.gpiopower_softc*, %struct.gpiopower_softc** %4, align 8
  %46 = getelementptr inbounds %struct.gpiopower_softc, %struct.gpiopower_softc* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %49 = call i32 @gpio_pin_setflags(i32* %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %39, %22, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.gpiopower_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @ofw_gpiobus_parse_gpios(i32, i8*, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_pin_setflags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
