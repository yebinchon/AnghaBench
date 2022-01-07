; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_outwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_outwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uart_softc = type { i32, i64, i32, i32, i32, i64, i64 }

@CCTS_OFLOW = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @uart_tty_outwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_tty_outwakeup(%struct.tty* %0) #0 {
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
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  br label %59

14:                                               ; preds = %8
  %15 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %59

20:                                               ; preds = %14
  %21 = load %struct.tty*, %struct.tty** %2, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CCTS_OFLOW, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %35 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SER_CTS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %59

41:                                               ; preds = %33, %28, %20
  %42 = load %struct.tty*, %struct.tty** %2, align 8
  %43 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %44 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %47 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ttydisc_getc(%struct.tty* %42, i32 %45, i32 %48)
  %50 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %51 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %53 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %58 = call i32 @UART_TRANSMIT(%struct.uart_softc* %57)
  br label %59

59:                                               ; preds = %13, %19, %40, %56, %41
  ret void
}

declare dso_local %struct.uart_softc* @tty_softc(%struct.tty*) #1

declare dso_local i64 @ttydisc_getc(%struct.tty*, i32, i32) #1

declare dso_local i32 @UART_TRANSMIT(%struct.uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
