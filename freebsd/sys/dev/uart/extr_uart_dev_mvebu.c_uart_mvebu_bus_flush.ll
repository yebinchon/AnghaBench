; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_bus_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_bus_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_CTRL = common dso_local global i32 0, align 4
@CTRL_RX_FIFO_RST = common dso_local global i32 0, align 4
@CTRL_TX_FIFO_RST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32)* @uart_mvebu_bus_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_mvebu_bus_flush(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_bas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 1
  store %struct.uart_bas* %9, %struct.uart_bas** %5, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @uart_lock(i32 %12)
  %14 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %15 = load i32, i32* @UART_CTRL, align 4
  %16 = call i32 @uart_getreg(%struct.uart_bas* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %36 [
    i32 129, label %18
    i32 128, label %27
  ]

18:                                               ; preds = %2
  %19 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %20 = load i32, i32* @UART_CTRL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @CTRL_RX_FIFO_RST, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @uart_setreg(%struct.uart_bas* %19, i32 %20, i32 %23)
  %25 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %26 = call i32 @uart_barrier(%struct.uart_bas* %25)
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %29 = load i32, i32* @UART_CTRL, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CTRL_TX_FIFO_RST, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @uart_setreg(%struct.uart_bas* %28, i32 %29, i32 %32)
  %34 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %35 = call i32 @uart_barrier(%struct.uart_bas* %34)
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %27, %18
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %43 = load i32, i32* @UART_CTRL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @uart_setreg(%struct.uart_bas* %42, i32 %43, i32 %44)
  %46 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %47 = call i32 @uart_barrier(%struct.uart_bas* %46)
  br label %48

48:                                               ; preds = %41, %38
  %49 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %50 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @uart_unlock(i32 %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
