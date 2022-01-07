; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i64, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ar933x_softc = type { i32 }

@AR933X_UART_INT_REG = common dso_local global i32 0, align 4
@AR933X_UART_INT_RX_VALID = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@AR933X_UART_INT_TX_EMPTY = common dso_local global i32 0, align 4
@AR933X_UART_INT_EN_REG = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @ar933x_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar933x_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.ar933x_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = bitcast %struct.uart_softc* %7 to %struct.ar933x_softc*
  store %struct.ar933x_softc* %8, %struct.ar933x_softc** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 2
  store %struct.uart_bas* %10, %struct.uart_bas** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @uart_lock(i32 %13)
  %15 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %16 = load i32, i32* @AR933X_UART_INT_REG, align 4
  %17 = call i32 @ar933x_getreg(%struct.uart_bas* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %19 = load i32, i32* @AR933X_UART_INT_REG, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ar933x_setreg(%struct.uart_bas* %18, i32 %19, i32 %20)
  %22 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %23 = call i32 @uart_barrier(%struct.uart_bas* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @AR933X_UART_INT_RX_VALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @SER_INT_RXREADY, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %1
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @AR933X_UART_INT_TX_EMPTY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i32, i32* @AR933X_UART_INT_TX_EMPTY, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.ar933x_softc*, %struct.ar933x_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ar933x_softc, %struct.ar933x_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %45 = load i32, i32* @AR933X_UART_INT_EN_REG, align 4
  %46 = load %struct.ar933x_softc*, %struct.ar933x_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ar933x_softc, %struct.ar933x_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ar933x_setreg(%struct.uart_bas* %44, i32 %45, i32 %48)
  %50 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %51 = call i32 @uart_barrier(%struct.uart_bas* %50)
  br label %52

52:                                               ; preds = %37, %32
  %53 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %54 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @AR933X_UART_INT_TX_EMPTY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @SER_INT_TXIDLE, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @SER_INT_SIGCHG, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %52
  %72 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %73 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @uart_unlock(i32 %74)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
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
