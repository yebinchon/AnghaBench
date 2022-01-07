; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_STAT = common dso_local global i32 0, align 4
@STAT_RX_FIFO_EMPT = common dso_local global i32 0, align 4
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@UART_RBR = common dso_local global i32 0, align 4
@RBR_BRK_DET = common dso_local global i32 0, align 4
@RBR_FRM_ERR_DET = common dso_local global i32 0, align 4
@RBR_PAR_ERR_DET = common dso_local global i32 0, align 4
@RBR_OVR_ERR_DET = common dso_local global i32 0, align 4
@UART_FLUSH_RECEIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_mvebu_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 3
  store %struct.uart_bas* %8, %struct.uart_bas** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @uart_lock(i32 %11)
  br label %13

13:                                               ; preds = %34, %1
  %14 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %15 = load i32, i32* @UART_STAT, align 4
  %16 = call i32 @uart_getreg(%struct.uart_bas* %14, i32 %15)
  %17 = load i32, i32* @STAT_RX_FIFO_EMPT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %68

21:                                               ; preds = %13
  %22 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %23 = call i64 @uart_rx_full(%struct.uart_softc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %27 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %31 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %26, i32* %33, align 4
  br label %68

34:                                               ; preds = %21
  %35 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %36 = load i32, i32* @UART_RBR, align 4
  %37 = call i32 @uart_getreg(%struct.uart_bas* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 61440
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @RBR_BRK_DET, align 4
  %44 = and i32 %42, %43
  %45 = ashr i32 %44, 7
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @RBR_FRM_ERR_DET, align 4
  %48 = and i32 %46, %47
  %49 = ashr i32 %48, 5
  %50 = or i32 %45, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RBR_PAR_ERR_DET, align 4
  %53 = and i32 %51, %52
  %54 = ashr i32 %53, 2
  %55 = or i32 %50, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @RBR_OVR_ERR_DET, align 4
  %58 = and i32 %56, %57
  %59 = ashr i32 %58, 2
  %60 = or i32 %55, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @uart_rx_put(%struct.uart_softc* %61, i32 %64)
  %66 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %67 = call i32 @uart_barrier(%struct.uart_bas* %66)
  br label %13

68:                                               ; preds = %25, %13
  %69 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %70 = load i32, i32* @UART_STAT, align 4
  %71 = call i32 @uart_getreg(%struct.uart_bas* %69, i32 %70)
  %72 = load i32, i32* @STAT_RX_FIFO_EMPT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %77 = load i32, i32* @UART_FLUSH_RECEIVER, align 4
  %78 = call i32 @uart_mvebu_bus_flush(%struct.uart_softc* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %81 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @uart_unlock(i32 %82)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_mvebu_bus_flush(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
