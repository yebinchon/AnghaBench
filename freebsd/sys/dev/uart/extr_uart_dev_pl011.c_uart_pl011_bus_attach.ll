; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_pl011.c_uart_pl011_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_pl011.c_uart_pl011_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.uart_pl011_softc = type { i32 }

@UART_RXREADY = common dso_local global i32 0, align 4
@RIS_RTIM = common dso_local global i32 0, align 4
@UART_TXEMPTY = common dso_local global i32 0, align 4
@UART_IMSC = common dso_local global i32 0, align 4
@UART_ICR = common dso_local global i32 0, align 4
@IMSC_MASK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_pl011_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_pl011_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_pl011_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = bitcast %struct.uart_softc* %5 to %struct.uart_pl011_softc*
  store %struct.uart_pl011_softc* %6, %struct.uart_pl011_softc** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 0
  store %struct.uart_bas* %8, %struct.uart_bas** %4, align 8
  %9 = load i32, i32* @UART_RXREADY, align 4
  %10 = load i32, i32* @RIS_RTIM, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @UART_TXEMPTY, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.uart_pl011_softc*, %struct.uart_pl011_softc** %3, align 8
  %15 = getelementptr inbounds %struct.uart_pl011_softc, %struct.uart_pl011_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %17 = load i32, i32* @UART_IMSC, align 4
  %18 = load %struct.uart_pl011_softc*, %struct.uart_pl011_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uart_pl011_softc, %struct.uart_pl011_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__uart_setreg(%struct.uart_bas* %16, i32 %17, i32 %20)
  %22 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %23 = load i32, i32* @UART_ICR, align 4
  %24 = load i32, i32* @IMSC_MASK_ALL, align 4
  %25 = call i32 @__uart_setreg(%struct.uart_bas* %22, i32 %23, i32 %24)
  ret i32 0
}

declare dso_local i32 @__uart_setreg(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
