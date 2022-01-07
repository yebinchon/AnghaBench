; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32*, i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ns8250_softc = type { i32 }

@REG_LSR = common dso_local global i32 0, align 4
@LSR_THRE = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@REG_IER = common dso_local global i32 0, align 4
@IER_ETXRDY = common dso_local global i32 0, align 4
@broken_txfifo = common dso_local global i64 0, align 8
@UART_DRAIN_TRANSMITTER = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns8250_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.ns8250_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = bitcast %struct.uart_softc* %6 to %struct.ns8250_softc*
  store %struct.ns8250_softc* %7, %struct.ns8250_softc** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 4
  store %struct.uart_bas* %9, %struct.uart_bas** %4, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @uart_lock(i32 %12)
  br label %14

14:                                               ; preds = %21, %1
  %15 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %16 = load i32, i32* @REG_LSR, align 4
  %17 = call i32 @uart_getreg(%struct.uart_bas* %15, i32 %16)
  %18 = load i32, i32* @LSR_THRE, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @DELAY(i32 4)
  br label %14

23:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %32 = load i32, i32* @REG_DATA, align 4
  %33 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %34 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @uart_setreg(%struct.uart_bas* %31, i32 %32, i32 %39)
  %41 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %42 = call i32 @uart_barrier(%struct.uart_bas* %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %48 = load i32, i32* @REG_IER, align 4
  %49 = load %struct.ns8250_softc*, %struct.ns8250_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IER_ETXRDY, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @uart_setreg(%struct.uart_bas* %47, i32 %48, i32 %53)
  %55 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %56 = call i32 @uart_barrier(%struct.uart_bas* %55)
  %57 = load i64, i64* @broken_txfifo, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %61 = load i32, i32* @UART_DRAIN_TRANSMITTER, align 4
  %62 = call i32 @ns8250_drain(%struct.uart_bas* %60, i32 %61)
  br label %66

63:                                               ; preds = %46
  %64 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %65 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %59
  %67 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %68 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @uart_unlock(i32 %69)
  %71 = load i64, i64* @broken_txfifo, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %75 = load i32, i32* @SER_INT_TXIDLE, align 4
  %76 = call i32 @uart_sched_softih(%struct.uart_softc* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %66
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @ns8250_drain(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

declare dso_local i32 @uart_sched_softih(%struct.uart_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
