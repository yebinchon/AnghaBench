; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_aju_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_aju_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtag_uart_softc = type { %struct.tty* }
%struct.tty = type { i32 }

@ALTERA_JTAG_UART_CONTROL_RI = common dso_local global i32 0, align 4
@aju_intr_read_count = common dso_local global i32 0, align 4
@ALTERA_JTAG_UART_CONTROL_WI = common dso_local global i32 0, align 4
@aju_intr_write_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aju_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aju_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.altera_jtag_uart_softc*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.altera_jtag_uart_softc*
  store %struct.altera_jtag_uart_softc* %7, %struct.altera_jtag_uart_softc** %3, align 8
  %8 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %8, i32 0, i32 0
  %10 = load %struct.tty*, %struct.tty** %9, align 8
  store %struct.tty* %10, %struct.tty** %4, align 8
  %11 = load %struct.tty*, %struct.tty** %4, align 8
  %12 = call i32 @tty_lock(%struct.tty* %11)
  %13 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %14 = call i32 @AJU_LOCK(%struct.altera_jtag_uart_softc* %13)
  %15 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %16 = call i32 @aju_control_read(%struct.altera_jtag_uart_softc* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ALTERA_JTAG_UART_CONTROL_RI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = call i32 @atomic_add_int(i32* @aju_intr_read_count, i32 1)
  %23 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %24 = load %struct.tty*, %struct.tty** %4, align 8
  %25 = call i32 @aju_handle_input(%struct.altera_jtag_uart_softc* %23, %struct.tty* %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ALTERA_JTAG_UART_CONTROL_WI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = call i32 @atomic_add_int(i32* @aju_intr_write_count, i32 1)
  %33 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %34 = load %struct.tty*, %struct.tty** %4, align 8
  %35 = call i32 @aju_handle_output(%struct.altera_jtag_uart_softc* %33, %struct.tty* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %38 = call i32 @AJU_UNLOCK(%struct.altera_jtag_uart_softc* %37)
  %39 = load %struct.tty*, %struct.tty** %4, align 8
  %40 = call i32 @tty_unlock(%struct.tty* %39)
  ret void
}

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @AJU_LOCK(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @aju_control_read(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @aju_handle_input(%struct.altera_jtag_uart_softc*, %struct.tty*) #1

declare dso_local i32 @aju_handle_output(%struct.altera_jtag_uart_softc*, %struct.tty*) #1

declare dso_local i32 @AJU_UNLOCK(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
