; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_aju_intr_writable_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_aju_intr_writable_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtag_uart_softc = type { i32 }

@aju_intr_writable_enabled = common dso_local global i32 0, align 4
@ALTERA_JTAG_UART_CONTROL_WE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_jtag_uart_softc*)* @aju_intr_writable_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aju_intr_writable_enable(%struct.altera_jtag_uart_softc* %0) #0 {
  %2 = alloca %struct.altera_jtag_uart_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.altera_jtag_uart_softc* %0, %struct.altera_jtag_uart_softc** %2, align 8
  %4 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %5 = call i32 @AJU_LOCK_ASSERT(%struct.altera_jtag_uart_softc* %4)
  %6 = call i32 @atomic_add_int(i32* @aju_intr_writable_enabled, i32 1)
  %7 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %8 = call i32 @aju_control_read(%struct.altera_jtag_uart_softc* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @ALTERA_JTAG_UART_CONTROL_WE, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @aju_control_write(%struct.altera_jtag_uart_softc* %12, i32 %13)
  ret void
}

declare dso_local i32 @AJU_LOCK_ASSERT(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @aju_control_read(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @aju_control_write(%struct.altera_jtag_uart_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
