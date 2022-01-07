; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_bus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.uart_softc = type { i32, i32, i32, i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@CVMX_CLOCK_SCLK = common dso_local global i32 0, align 4
@uart_oct16550_class = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@REG_MCR = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@UART_DRAIN_TRANSMITTER = common dso_local global i32 0, align 4
@REG_FCR = common dso_local global i32 0, align 4
@FCR_ENABLE = common dso_local global i32 0, align 4
@FCR_XMT_RST = common dso_local global i32 0, align 4
@FCR_RCV_RST = common dso_local global i32 0, align 4
@UART_FLUSH_RECEIVER = common dso_local global i32 0, align 4
@UART_FLUSH_TRANSMITTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Octeon-16550 channel 1\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Octeon-16550 channel 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @oct16550_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oct16550_bus_probe(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 5
  store %struct.uart_bas* %7, %struct.uart_bas** %4, align 8
  %8 = load i32, i32* @CVMX_CLOCK_SCLK, align 4
  %9 = call i32 @cvmx_clock_get_rate(i32 %8)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uart_oct16550_class, i32 0, i32 0), align 4
  %10 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %11 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %13 = call i32 @oct16550_probe(%struct.uart_bas* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %20 = load i32, i32* @REG_MCR, align 4
  %21 = load i32, i32* @MCR_DTR, align 4
  %22 = load i32, i32* @MCR_RTS, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @uart_setreg(%struct.uart_bas* %19, i32 %20, i32 %23)
  %25 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %26 = load i32, i32* @UART_DRAIN_TRANSMITTER, align 4
  %27 = call i32 @oct16550_drain(%struct.uart_bas* %25, i32 %26)
  %28 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %29 = load i32, i32* @REG_FCR, align 4
  %30 = load i32, i32* @FCR_ENABLE, align 4
  %31 = load i32, i32* @FCR_XMT_RST, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FCR_RCV_RST, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @uart_setreg(%struct.uart_bas* %28, i32 %29, i32 %34)
  %36 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %37 = call i32 @uart_barrier(%struct.uart_bas* %36)
  %38 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %39 = load i32, i32* @UART_FLUSH_RECEIVER, align 4
  %40 = load i32, i32* @UART_FLUSH_TRANSMITTER, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @oct16550_flush(%struct.uart_bas* %38, i32 %41)
  %43 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %44 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @device_get_unit(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %18
  %49 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %50 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_set_desc(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %58

53:                                               ; preds = %18
  %54 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %55 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_set_desc(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %60 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %59, i32 0, i32 0
  store i32 64, i32* %60, align 4
  %61 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %62 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %61, i32 0, i32 1
  store i32 64, i32* %62, align 4
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %16
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

declare dso_local i32 @oct16550_probe(%struct.uart_bas*) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @oct16550_drain(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @oct16550_flush(%struct.uart_bas*, i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
