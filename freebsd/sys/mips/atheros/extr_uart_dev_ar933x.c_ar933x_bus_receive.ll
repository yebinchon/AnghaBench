; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@AR933X_UART_DATA_REG = common dso_local global i32 0, align 4
@AR933X_UART_DATA_RX_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @ar933x_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar933x_bus_receive(%struct.uart_softc* %0) #0 {
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

11:                                               ; preds = %28, %1
  %12 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %13 = call i64 @ar933x_rxready(%struct.uart_bas* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %17 = call i64 @uart_rx_full(%struct.uart_softc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %21 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %22 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %25 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %20, i32* %27, align 4
  br label %42

28:                                               ; preds = %15
  %29 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %30 = load i32, i32* @AR933X_UART_DATA_REG, align 4
  %31 = call i32 @ar933x_getreg(%struct.uart_bas* %29, i32 %30)
  %32 = and i32 %31, 255
  store i32 %32, i32* %4, align 4
  %33 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %34 = load i32, i32* @AR933X_UART_DATA_REG, align 4
  %35 = load i32, i32* @AR933X_UART_DATA_RX_CSR, align 4
  %36 = call i32 @ar933x_setreg(%struct.uart_bas* %33, i32 %34, i32 %35)
  %37 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %38 = call i32 @uart_barrier(%struct.uart_bas* %37)
  %39 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @uart_rx_put(%struct.uart_softc* %39, i32 %40)
  br label %11

42:                                               ; preds = %19, %11
  %43 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %44 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @uart_unlock(i32 %45)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i64 @ar933x_rxready(%struct.uart_bas*) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @ar933x_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @ar933x_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
