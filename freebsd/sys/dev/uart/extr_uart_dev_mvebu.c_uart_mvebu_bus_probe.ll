; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_bus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Marvell Armada 3700 UART\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_mvebu_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_mvebu_bus_probe(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %4 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %5 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @ofw_bus_status_okay(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @compat_data, align 4
  %16 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %35

22:                                               ; preds = %11
  %23 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_set_desc(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 0
  store i32 32, i32* %28, align 8
  %29 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %29, i32 0, i32 1
  store i32 64, i32* %30, align 4
  %31 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %32 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %34 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %22, %20, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
