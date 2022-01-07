; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas, i32 }
%struct.uart_bas = type { i32 }
%struct.oct16550_softc = type { i32, i32, i32 }

@UART_DRAIN_TRANSMITTER = common dso_local global i32 0, align 4
@REG_MCR = common dso_local global i32 0, align 4
@FCR_ENABLE = common dso_local global i32 0, align 4
@FCR_RX_HIGH = common dso_local global i32 0, align 4
@REG_FCR = common dso_local global i32 0, align 4
@UART_FLUSH_RECEIVER = common dso_local global i32 0, align 4
@UART_FLUSH_TRANSMITTER = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@REG_IER = common dso_local global i32 0, align 4
@IER_EMSC = common dso_local global i32 0, align 4
@IER_ERLS = common dso_local global i32 0, align 4
@IER_ERXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @oct16550_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oct16550_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.oct16550_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = bitcast %struct.uart_softc* %6 to %struct.oct16550_softc*
  store %struct.oct16550_softc* %7, %struct.oct16550_softc** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 1
  store %struct.uart_bas* %13, %struct.uart_bas** %4, align 8
  %14 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %15 = load i32, i32* @UART_DRAIN_TRANSMITTER, align 4
  %16 = call i32 @oct16550_drain(%struct.uart_bas* %14, i32 %15)
  %17 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %18 = load i32, i32* @REG_MCR, align 4
  %19 = call i32 @uart_getreg(%struct.uart_bas* %17, i32 %18)
  %20 = load %struct.oct16550_softc*, %struct.oct16550_softc** %3, align 8
  %21 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @FCR_ENABLE, align 4
  %23 = load i32, i32* @FCR_RX_HIGH, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.oct16550_softc*, %struct.oct16550_softc** %3, align 8
  %26 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %28 = load i32, i32* @REG_FCR, align 4
  %29 = load %struct.oct16550_softc*, %struct.oct16550_softc** %3, align 8
  %30 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @uart_setreg(%struct.uart_bas* %27, i32 %28, i32 %31)
  %33 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %34 = call i32 @uart_barrier(%struct.uart_bas* %33)
  %35 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %36 = load i32, i32* @UART_FLUSH_RECEIVER, align 4
  %37 = load i32, i32* @UART_FLUSH_TRANSMITTER, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @oct16550_bus_flush(%struct.uart_softc* %35, i32 %38)
  %40 = load %struct.oct16550_softc*, %struct.oct16550_softc** %3, align 8
  %41 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MCR_DTR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load i32, i32* @SER_DTR, align 4
  %48 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %49 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %1
  %53 = load %struct.oct16550_softc*, %struct.oct16550_softc** %3, align 8
  %54 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MCR_RTS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* @SER_RTS, align 4
  %61 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %62 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %52
  %66 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %67 = call i32 @oct16550_bus_getsig(%struct.uart_softc* %66)
  %68 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %69 = call i32 @oct16550_clrint(%struct.uart_bas* %68)
  %70 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %71 = load i32, i32* @REG_IER, align 4
  %72 = call i32 @uart_getreg(%struct.uart_bas* %70, i32 %71)
  %73 = and i32 %72, 240
  %74 = load %struct.oct16550_softc*, %struct.oct16550_softc** %3, align 8
  %75 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @IER_EMSC, align 4
  %77 = load i32, i32* @IER_ERLS, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @IER_ERXRDY, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.oct16550_softc*, %struct.oct16550_softc** %3, align 8
  %82 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %86 = load i32, i32* @REG_IER, align 4
  %87 = load %struct.oct16550_softc*, %struct.oct16550_softc** %3, align 8
  %88 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @uart_setreg(%struct.uart_bas* %85, i32 %86, i32 %89)
  %91 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %92 = call i32 @uart_barrier(%struct.uart_bas* %91)
  ret i32 0
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @oct16550_drain(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @oct16550_bus_flush(%struct.uart_softc*, i32) #1

declare dso_local i32 @oct16550_bus_getsig(%struct.uart_softc*) #1

declare dso_local i32 @oct16550_clrint(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
