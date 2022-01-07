; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32*, i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ar933x_softc = type { i32 }

@AR933X_UART_CS_REG = common dso_local global i32 0, align 4
@AR933X_UART_CS_TX_BUSY = common dso_local global i32 0, align 4
@AR933X_UART_DATA_REG = common dso_local global i32 0, align 4
@AR933X_UART_DATA_TX_CSR = common dso_local global i32 0, align 4
@AR933X_UART_INT_TX_EMPTY = common dso_local global i32 0, align 4
@AR933X_UART_INT_EN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @ar933x_bus_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar933x_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.ar933x_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 4
  store %struct.uart_bas* %7, %struct.uart_bas** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = bitcast %struct.uart_softc* %8 to %struct.ar933x_softc*
  store %struct.ar933x_softc* %9, %struct.ar933x_softc** %4, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @uart_lock(i32 %12)
  br label %14

14:                                               ; preds = %21, %1
  %15 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %16 = load i32, i32* @AR933X_UART_CS_REG, align 4
  %17 = call i32 @ar933x_getreg(%struct.uart_bas* %15, i32 %16)
  %18 = load i32, i32* @AR933X_UART_CS_TX_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %14

22:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %26 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %31 = load i32, i32* @AR933X_UART_DATA_REG, align 4
  %32 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %33 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 255
  %40 = load i32, i32* @AR933X_UART_DATA_TX_CSR, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ar933x_setreg(%struct.uart_bas* %30, i32 %31, i32 %41)
  %43 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %44 = call i32 @uart_barrier(%struct.uart_bas* %43)
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %23

48:                                               ; preds = %23
  %49 = load i32, i32* @AR933X_UART_INT_TX_EMPTY, align 4
  %50 = load %struct.ar933x_softc*, %struct.ar933x_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ar933x_softc, %struct.ar933x_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %55 = load i32, i32* @AR933X_UART_INT_EN_REG, align 4
  %56 = load %struct.ar933x_softc*, %struct.ar933x_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ar933x_softc, %struct.ar933x_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ar933x_setreg(%struct.uart_bas* %54, i32 %55, i32 %58)
  %60 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %61 = call i32 @uart_barrier(%struct.uart_bas* %60)
  %62 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %63 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %65 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @uart_unlock(i32 %66)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @ar933x_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @ar933x_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
