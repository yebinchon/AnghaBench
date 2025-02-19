; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.msm_uart_softc = type { i32 }

@UART_DM_CR = common dso_local global i32 0, align 4
@UART_DM_RESET_STALE_INT = common dso_local global i32 0, align 4
@UART_DM_STALE_EVENT_ENABLE = common dso_local global i32 0, align 4
@UART_DM_RXLEV = common dso_local global i32 0, align 4
@UART_DM_IMR = common dso_local global i32 0, align 4
@UART_DM_SR = common dso_local global i32 0, align 4
@UART_DM_SR_RXRDY = common dso_local global i32 0, align 4
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @msm_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.msm_uart_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = bitcast %struct.uart_softc* %6 to %struct.msm_uart_softc*
  store %struct.msm_uart_softc* %7, %struct.msm_uart_softc** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 3
  store %struct.uart_bas* %9, %struct.uart_bas** %4, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @uart_lock(i32 %12)
  %14 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %15 = load i32, i32* @UART_DM_CR, align 4
  %16 = load i32, i32* @UART_DM_RESET_STALE_INT, align 4
  %17 = call i32 @SETREG(%struct.uart_bas* %14, i32 %15, i32 %16)
  %18 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %19 = load i32, i32* @UART_DM_CR, align 4
  %20 = load i32, i32* @UART_DM_STALE_EVENT_ENABLE, align 4
  %21 = call i32 @SETREG(%struct.uart_bas* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @UART_DM_RXLEV, align 4
  %23 = load %struct.msm_uart_softc*, %struct.msm_uart_softc** %3, align 8
  %24 = getelementptr inbounds %struct.msm_uart_softc, %struct.msm_uart_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %28 = load i32, i32* @UART_DM_IMR, align 4
  %29 = load %struct.msm_uart_softc*, %struct.msm_uart_softc** %3, align 8
  %30 = getelementptr inbounds %struct.msm_uart_softc, %struct.msm_uart_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SETREG(%struct.uart_bas* %27, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %53, %1
  %34 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %35 = load i32, i32* @UART_DM_SR, align 4
  %36 = call i32 @uart_getreg(%struct.uart_bas* %34, i32 %35)
  %37 = load i32, i32* @UART_DM_SR_RXRDY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %42 = call i64 @uart_rx_full(%struct.uart_softc* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %46 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %47 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %50 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %45, i32* %52, align 4
  br label %62

53:                                               ; preds = %40
  %54 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %55 = call i32 @UART_DM_RF(i32 0)
  %56 = call i32 @uart_getreg(%struct.uart_bas* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %58 = call i32 @uart_barrier(%struct.uart_bas* %57)
  %59 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @uart_rx_put(%struct.uart_softc* %59, i32 %60)
  br label %33

62:                                               ; preds = %44, %33
  %63 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %64 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @uart_unlock(i32 %65)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @SETREG(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @UART_DM_RF(i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
