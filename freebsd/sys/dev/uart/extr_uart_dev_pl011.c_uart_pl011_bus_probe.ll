; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_pl011.c_uart_pl011_bus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_pl011.c_uart_pl011_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32 }

@UART_PIDREG_2 = common dso_local global i32 0, align 4
@FIFO_RX_SIZE_R2 = common dso_local global i32 0, align 4
@FIFO_TX_SIZE_R2 = common dso_local global i32 0, align 4
@FIFO_RX_SIZE_R3 = common dso_local global i32 0, align 4
@FIFO_TX_SIZE_R3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PrimeCell UART (PL011)\00", align 1
@IS_FDT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_pl011_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_pl011_bus_probe(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 3
  %9 = load i32, i32* @UART_PIDREG_2, align 4
  %10 = call i32 @__uart_getreg(i32* %8, i32 %9)
  %11 = ashr i32 %10, 4
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %6, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 %13, 2
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* @FIFO_RX_SIZE_R2, align 4
  %17 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %18 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @FIFO_TX_SIZE_R2, align 4
  %20 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %21 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %29

22:                                               ; preds = %12
  %23 = load i32, i32* @FIFO_RX_SIZE_R3, align 4
  %24 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %25 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @FIFO_TX_SIZE_R3, align 4
  %27 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %31 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_set_desc(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @__uart_getreg(i32*, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
