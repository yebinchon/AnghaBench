; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_STAT = common dso_local global i32 0, align 4
@UART_CTRL = common dso_local global i32 0, align 4
@STAT_TX_IDLE = common dso_local global i32 0, align 4
@CTRL_TX_IDLE_INT = common dso_local global i32 0, align 4
@STAT_TX_FIFO_EMPT = common dso_local global i32 0, align 4
@ONE_FRAME_TIME = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@STAT_TRANS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_mvebu_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_mvebu_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 1
  store %struct.uart_bas* %8, %struct.uart_bas** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uart_lock(i32 %11)
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load i32, i32* @UART_STAT, align 4
  %15 = call i32 @uart_getreg(%struct.uart_bas* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %17 = load i32, i32* @UART_CTRL, align 4
  %18 = call i32 @uart_getreg(%struct.uart_bas* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @STAT_TX_IDLE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @STAT_TX_IDLE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CTRL_TX_IDLE_INT, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @CTRL_TX_IDLE_INT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %32 = load i32, i32* @UART_CTRL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @CTRL_TX_IDLE_INT, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @uart_setreg(%struct.uart_bas* %31, i32 %32, i32 %36)
  %38 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %39 = call i32 @uart_barrier(%struct.uart_bas* %38)
  br label %40

40:                                               ; preds = %48, %30
  %41 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %42 = load i32, i32* @UART_STAT, align 4
  %43 = call i32 @uart_getreg(%struct.uart_bas* %41, i32 %42)
  %44 = load i32, i32* @STAT_TX_FIFO_EMPT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @ONE_FRAME_TIME, align 4
  %50 = sdiv i32 %49, 2
  %51 = call i32 @DELAY(i32 %50)
  br label %40

52:                                               ; preds = %40
  %53 = load i32, i32* @SER_INT_TXIDLE, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %24, %1
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @STAT_TRANS_MASK, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @stat_ipend_trans(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %64 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @uart_unlock(i32 %65)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @stat_ipend_trans(i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
