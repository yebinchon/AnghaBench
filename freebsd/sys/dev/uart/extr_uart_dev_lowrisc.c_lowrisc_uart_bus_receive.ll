; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_lowrisc.c_lowrisc_uart_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_lowrisc.c_lowrisc_uart_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@UART_DR = common dso_local global i32 0, align 4
@UART_INT_STATUS = common dso_local global i32 0, align 4
@INT_STATUS_ACK = common dso_local global i32 0, align 4
@DR_RX_FIFO_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @lowrisc_uart_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowrisc_uart_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %5, i32 0, i32 3
  store %struct.uart_bas* %6, %struct.uart_bas** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @uart_lock(i32 %9)
  br label %11

11:                                               ; preds = %36, %1
  %12 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %13 = call i64 @uart_rx_full(%struct.uart_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %17 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %18 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %21 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %16, i32* %23, align 4
  br label %41

24:                                               ; preds = %11
  %25 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %26 = load i32, i32* @UART_DR, align 4
  %27 = call i32 @GETREG(%struct.uart_bas* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %29 = load i32, i32* @UART_INT_STATUS, align 4
  %30 = load i32, i32* @INT_STATUS_ACK, align 4
  %31 = call i32 @SETREG(%struct.uart_bas* %28, i32 %29, i32 %30)
  %32 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @uart_rx_put(%struct.uart_softc* %32, i32 %34)
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @DR_RX_FIFO_EMPTY, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %11, label %41

41:                                               ; preds = %36, %15
  %42 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @uart_unlock(i32 %44)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @GETREG(%struct.uart_bas*, i32) #1

declare dso_local i32 @SETREG(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
