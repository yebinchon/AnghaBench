; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.uart_softc = type { i64, i32*, i64, i64, i64 }

@UART_IOCTL_IFLOW = common dso_local global i32 0, align 4
@UART_IOCTL_OFLOW = common dso_local global i32 0, align 4
@SER_DDTR = common dso_local global i32 0, align 4
@SER_DRTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @uart_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_tty_close(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.uart_softc*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = call %struct.uart_softc* @tty_softc(%struct.tty* %4)
  store %struct.uart_softc* %5, %struct.uart_softc** %3, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %7 = icmp eq %struct.uart_softc* %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %15 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %8, %1
  br label %53

19:                                               ; preds = %13
  %20 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %21 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %26 = load i32, i32* @UART_IOCTL_IFLOW, align 4
  %27 = call i32 @UART_IOCTL(%struct.uart_softc* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %35 = load i32, i32* @UART_IOCTL_OFLOW, align 4
  %36 = call i32 @UART_IOCTL(%struct.uart_softc* %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %44 = load i32, i32* @SER_DDTR, align 4
  %45 = load i32, i32* @SER_DRTS, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @UART_SETSIG(%struct.uart_softc* %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %50 = call i32 @wakeup(%struct.uart_softc* %49)
  %51 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %18
  ret void
}

declare dso_local %struct.uart_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @UART_IOCTL(%struct.uart_softc*, i32, i32) #1

declare dso_local i32 @UART_SETSIG(%struct.uart_softc*, i32) #1

declare dso_local i32 @wakeup(%struct.uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
