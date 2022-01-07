; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mu.c_uart_mu_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mu.c_uart_mu_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.uart_mu_softc = type { i32 }

@AUX_MU_IIR_REG = common dso_local global i32 0, align 4
@IIR_CLEAR = common dso_local global i32 0, align 4
@IER_RXENABLE = common dso_local global i32 0, align 4
@IER_TXENABLE = common dso_local global i32 0, align 4
@IER_REQUIRED = common dso_local global i32 0, align 4
@AUX_MU_IER_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_mu_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_mu_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_mu_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = bitcast %struct.uart_softc* %5 to %struct.uart_mu_softc*
  store %struct.uart_mu_softc* %6, %struct.uart_mu_softc** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 1
  store %struct.uart_bas* %8, %struct.uart_bas** %4, align 8
  %9 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %10 = load i32, i32* @AUX_MU_IIR_REG, align 4
  %11 = load i32, i32* @IIR_CLEAR, align 4
  %12 = call i32 @__uart_setreg(%struct.uart_bas* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @IER_RXENABLE, align 4
  %14 = load i32, i32* @IER_TXENABLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IER_REQUIRED, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.uart_mu_softc*, %struct.uart_mu_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uart_mu_softc, %struct.uart_mu_softc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %21 = load i32, i32* @AUX_MU_IER_REG, align 4
  %22 = load %struct.uart_mu_softc*, %struct.uart_mu_softc** %3, align 8
  %23 = getelementptr inbounds %struct.uart_mu_softc, %struct.uart_mu_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__uart_setreg(%struct.uart_bas* %20, i32 %21, i32 %24)
  %26 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  ret i32 0
}

declare dso_local i32 @__uart_setreg(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
