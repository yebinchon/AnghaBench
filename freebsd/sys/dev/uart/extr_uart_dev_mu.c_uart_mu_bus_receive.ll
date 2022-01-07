; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mu.c_uart_mu_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mu.c_uart_mu_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.uart_mu_softc = type { i32 }

@AUX_MU_LSR_REG = common dso_local global i32 0, align 4
@LSR_RXREADY = common dso_local global i32 0, align 4
@AUX_MU_IO_REG = common dso_local global i32 0, align 4
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_mu_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_mu_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_mu_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 3
  store %struct.uart_bas* %9, %struct.uart_bas** %4, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @uart_lock(i32 %12)
  %14 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %15 = bitcast %struct.uart_softc* %14 to %struct.uart_mu_softc*
  store %struct.uart_mu_softc* %15, %struct.uart_mu_softc** %3, align 8
  %16 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %17 = load i32, i32* @AUX_MU_LSR_REG, align 4
  %18 = call i32 @__uart_getreg(%struct.uart_bas* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %42, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LSR_RXREADY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %26 = load i32, i32* @AUX_MU_IO_REG, align 4
  %27 = call i32 @__uart_getreg(%struct.uart_bas* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 255
  store i32 %29, i32* %7, align 4
  %30 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %31 = call i64 @uart_rx_full(%struct.uart_softc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %35 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %36 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %34, i32* %41, align 4
  br label %49

42:                                               ; preds = %24
  %43 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @uart_rx_put(%struct.uart_softc* %43, i32 %44)
  %46 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %47 = load i32, i32* @AUX_MU_LSR_REG, align 4
  %48 = call i32 @__uart_getreg(%struct.uart_bas* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %19

49:                                               ; preds = %33, %19
  %50 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %51 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @uart_unlock(i32 %52)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @__uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
