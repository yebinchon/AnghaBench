; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@uart_output = common dso_local global i32 0, align 4
@UART_LSR_REG = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_TX_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @mtk_uart_bus_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 4
  store %struct.uart_bas* %7, %struct.uart_bas** %4, align 8
  %8 = load i32, i32* @uart_output, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 4
  store %struct.uart_bas* %13, %struct.uart_bas** %4, align 8
  %14 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %15 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @uart_lock(i32 %16)
  br label %18

18:                                               ; preds = %25, %11
  %19 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %20 = load i32, i32* @UART_LSR_REG, align 4
  %21 = call i32 @uart_getreg(%struct.uart_bas* %19, i32 %20)
  %22 = load i32, i32* @UART_LSR_THRE, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %18

26:                                               ; preds = %18
  %27 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %28 = call i32 @mtk_uart_enable_txintr(%struct.uart_softc* %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %48, %26
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %32 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %37 = load i32, i32* @UART_TX_REG, align 4
  %38 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uart_setreg(%struct.uart_bas* %36, i32 %37, i32 %44)
  %46 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %47 = call i32 @uart_barrier(%struct.uart_bas* %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %53 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %55 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @uart_unlock(i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %51, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @mtk_uart_enable_txintr(%struct.uart_softc*) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
