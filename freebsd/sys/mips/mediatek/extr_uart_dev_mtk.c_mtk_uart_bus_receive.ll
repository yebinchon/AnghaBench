; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32*, i64, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_LSR_REG = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@UART_RX_REG = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_STAT_FRAMERR = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_STAT_PARERR = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @mtk_uart_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 3
  store %struct.uart_bas* %7, %struct.uart_bas** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @uart_lock(i32 %10)
  %12 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %13 = load i32, i32* @UART_LSR_REG, align 4
  %14 = call i32 @uart_getreg(%struct.uart_bas* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %63, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @UART_LSR_DR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %15
  %21 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %22 = call i64 @uart_rx_full(%struct.uart_softc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %26 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %30 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %25, i32* %32, align 4
  br label %72

33:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  %34 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %35 = load i32, i32* @UART_RX_REG, align 4
  %36 = call i32 @uart_getreg(%struct.uart_bas* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @UART_LSR_FE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @UART_STAT_FRAMERR, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @UART_LSR_PE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @UART_STAT_PARERR, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @UART_LSR_OE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %65 = call i32 @uart_barrier(%struct.uart_bas* %64)
  %66 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @uart_rx_put(%struct.uart_softc* %66, i32 %67)
  %69 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %70 = load i32, i32* @UART_LSR_REG, align 4
  %71 = call i32 @uart_getreg(%struct.uart_bas* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %15

72:                                               ; preds = %24, %15
  %73 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %74 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @uart_unlock(i32 %75)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
