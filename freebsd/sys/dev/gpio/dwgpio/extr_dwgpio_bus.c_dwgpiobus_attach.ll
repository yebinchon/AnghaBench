; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio_bus.c_dwgpiobus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio_bus.c_dwgpiobus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwgpiobus_softc = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@dwgpio_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not allocate resources.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dwgpiobus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwgpiobus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwgpiobus_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.dwgpiobus_softc* @device_get_softc(i32 %6)
  store %struct.dwgpiobus_softc* %7, %struct.dwgpiobus_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.dwgpiobus_softc*, %struct.dwgpiobus_softc** %4, align 8
  %10 = getelementptr inbounds %struct.dwgpiobus_softc, %struct.dwgpiobus_softc* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @dwgpio_spec, align 4
  %20 = load %struct.dwgpiobus_softc*, %struct.dwgpiobus_softc** %4, align 8
  %21 = getelementptr inbounds %struct.dwgpiobus_softc, %struct.dwgpiobus_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @bus_alloc_resources(i32 %18, i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %50

29:                                               ; preds = %17
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @simplebus_init(i32 %30, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @bus_generic_probe(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @OF_child(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %44, %29
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @simplebus_add_device(i32 %41, i32 %42, i32 0, i32* null, i32 -1, i32* null)
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @OF_peer(i32 %45)
  store i32 %46, i32* %5, align 4
  br label %37

47:                                               ; preds = %37
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @bus_generic_attach(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %25, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.dwgpiobus_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @simplebus_init(i32, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @simplebus_add_device(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
