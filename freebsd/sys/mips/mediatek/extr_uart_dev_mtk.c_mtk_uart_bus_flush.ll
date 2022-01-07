; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_FCR_REG = common dso_local global i32 0, align 4
@UART_FLUSH_TRANSMITTER = common dso_local global i32 0, align 4
@UART_FCR_TXRST = common dso_local global i32 0, align 4
@UART_FLUSH_RECEIVER = common dso_local global i32 0, align 4
@UART_FCR_RXRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32)* @mtk_uart_bus_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_bus_flush(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_bas*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 0
  store %struct.uart_bas* %8, %struct.uart_bas** %5, align 8
  %9 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %10 = load i32, i32* @UART_FCR_REG, align 4
  %11 = call i32 @uart_getreg(%struct.uart_bas* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @UART_FLUSH_TRANSMITTER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %18 = load i32, i32* @UART_FCR_REG, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @UART_FCR_TXRST, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @uart_setreg(%struct.uart_bas* %17, i32 %18, i32 %21)
  %23 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %24 = call i32 @uart_barrier(%struct.uart_bas* %23)
  br label %25

25:                                               ; preds = %16, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @UART_FLUSH_RECEIVER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %32 = load i32, i32* @UART_FCR_REG, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @UART_FCR_RXRST, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @uart_setreg(%struct.uart_bas* %31, i32 %32, i32 %35)
  %37 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %38 = call i32 @uart_barrier(%struct.uart_bas* %37)
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %41 = load i32, i32* @UART_FCR_REG, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @uart_setreg(%struct.uart_bas* %40, i32 %41, i32 %42)
  %44 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %45 = call i32 @uart_barrier(%struct.uart_bas* %44)
  ret i32 0
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
