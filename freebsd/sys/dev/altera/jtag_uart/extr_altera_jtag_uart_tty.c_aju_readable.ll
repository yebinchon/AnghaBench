; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_aju_readable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_aju_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtag_uart_softc = type { i32*, i32* }

@ALTERA_JTAG_UART_DATA_RVALID = common dso_local global i32 0, align 4
@ALTERA_JTAG_UART_DATA_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_jtag_uart_softc*)* @aju_readable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aju_readable(%struct.altera_jtag_uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_jtag_uart_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.altera_jtag_uart_softc* %0, %struct.altera_jtag_uart_softc** %3, align 8
  %5 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %6 = call i32 @AJU_LOCK_ASSERT(%struct.altera_jtag_uart_softc* %5)
  %7 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %8 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %15 = call i32 @aju_data_read(%struct.altera_jtag_uart_softc* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ALTERA_JTAG_UART_DATA_RVALID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %22 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ALTERA_JTAG_UART_DATA_DATA, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %28 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32 %26, i32* %29, align 4
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %20, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @AJU_LOCK_ASSERT(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @aju_data_read(%struct.altera_jtag_uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
