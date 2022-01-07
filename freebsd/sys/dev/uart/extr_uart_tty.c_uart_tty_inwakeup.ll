; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_inwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_inwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uart_softc = type { i64, i32, i64 }

@CRTS_IFLOW = common dso_local global i32 0, align 4
@SER_DRTS = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @uart_tty_inwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_tty_inwakeup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.uart_softc*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = call %struct.uart_softc* @tty_softc(%struct.tty* %4)
  store %struct.uart_softc* %5, %struct.uart_softc** %3, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %7 = icmp eq %struct.uart_softc* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  br label %44

14:                                               ; preds = %8
  %15 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.tty*, %struct.tty** %2, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CRTS_IFLOW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %29 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %34 = load i32, i32* @SER_DRTS, align 4
  %35 = load i32, i32* @SER_RTS, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @UART_SETSIG(%struct.uart_softc* %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %27, %19
  %39 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %40 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %42 = load i32, i32* @SER_INT_RXREADY, align 4
  %43 = call i32 @uart_sched_softih(%struct.uart_softc* %41, i32 %42)
  br label %44

44:                                               ; preds = %13, %38, %14
  ret void
}

declare dso_local %struct.uart_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @UART_SETSIG(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_sched_softih(%struct.uart_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
