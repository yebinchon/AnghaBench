; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_altera_jtag_uart_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_altera_jtag_uart_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtag_uart_softc = type { i32, i32, i32, i32, i32*, i32, %struct.tty* }
%struct.tty = type { i32 }

@ALTERA_JTAG_UART_FLAG_CONSOLE = common dso_local global i32 0, align 4
@aju_cons_sc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @altera_jtag_uart_detach(%struct.altera_jtag_uart_softc* %0) #0 {
  %2 = alloca %struct.altera_jtag_uart_softc*, align 8
  %3 = alloca %struct.tty*, align 8
  store %struct.altera_jtag_uart_softc* %0, %struct.altera_jtag_uart_softc** %2, align 8
  %4 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %5 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %4, i32 0, i32 6
  %6 = load %struct.tty*, %struct.tty** %5, align 8
  store %struct.tty* %6, %struct.tty** %3, align 8
  %7 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %13 = call i32 @AJU_LOCK(%struct.altera_jtag_uart_softc* %12)
  %14 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %15 = call i32 @aju_intr_disable(%struct.altera_jtag_uart_softc* %14)
  %16 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %17 = call i32 @AJU_UNLOCK(%struct.altera_jtag_uart_softc* %16)
  %18 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %19 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %22 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %25 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bus_teardown_intr(i32 %20, i32* %23, i32 %26)
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %30 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %29, i32 0, i32 2
  %31 = call i32 @callout_drain(i32* %30)
  br label %32

32:                                               ; preds = %28, %11
  %33 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %34 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %33, i32 0, i32 1
  %35 = call i32 @callout_drain(i32* %34)
  %36 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %37 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ALTERA_JTAG_UART_FLAG_CONSOLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32* null, i32** @aju_cons_sc, align 8
  br label %43

43:                                               ; preds = %42, %32
  %44 = load %struct.tty*, %struct.tty** %3, align 8
  %45 = call i32 @tty_lock(%struct.tty* %44)
  %46 = load %struct.tty*, %struct.tty** %3, align 8
  %47 = call i32 @tty_rel_gone(%struct.tty* %46)
  %48 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %2, align 8
  %49 = call i32 @AJU_LOCK_DESTROY(%struct.altera_jtag_uart_softc* %48)
  ret void
}

declare dso_local i32 @AJU_LOCK(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @aju_intr_disable(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @AJU_UNLOCK(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @tty_rel_gone(%struct.tty*) #1

declare dso_local i32 @AJU_LOCK_DESTROY(%struct.altera_jtag_uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
