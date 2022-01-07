; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mu.c_uart_mu_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mu.c_uart_mu_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i64, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.uart_mu_softc = type { i32 }

@AUX_MU_IIR_REG = common dso_local global i32 0, align 4
@IIR_RXREADY = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@IIR_TXREADY = common dso_local global i32 0, align 4
@AUX_MU_LSR_REG = common dso_local global i32 0, align 4
@LSR_TXIDLE = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@AUX_MU_IER_REG = common dso_local global i32 0, align 4
@IER_TXENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_mu_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_mu_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_mu_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = bitcast %struct.uart_softc* %7 to %struct.uart_mu_softc*
  store %struct.uart_mu_softc* %8, %struct.uart_mu_softc** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 2
  store %struct.uart_bas* %10, %struct.uart_bas** %4, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @uart_lock(i32 %13)
  %15 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %16 = load i32, i32* @AUX_MU_IIR_REG, align 4
  %17 = call i32 @__uart_getreg(%struct.uart_bas* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IIR_RXREADY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @SER_INT_RXREADY, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %59

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IIR_TXREADY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %26
  %32 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %33 = load i32, i32* @AUX_MU_LSR_REG, align 4
  %34 = call i32 @__uart_getreg(%struct.uart_bas* %32, i32 %33)
  %35 = load i32, i32* @LSR_TXIDLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %31
  %39 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %40 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @SER_INT_TXIDLE, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %49 = load i32, i32* @AUX_MU_IER_REG, align 4
  %50 = load %struct.uart_mu_softc*, %struct.uart_mu_softc** %3, align 8
  %51 = getelementptr inbounds %struct.uart_mu_softc, %struct.uart_mu_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IER_TXENABLE, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @__uart_setreg(%struct.uart_bas* %48, i32 %49, i32 %55)
  br label %57

57:                                               ; preds = %47, %31
  br label %58

58:                                               ; preds = %57, %26
  br label %59

59:                                               ; preds = %58, %22
  %60 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %61 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @uart_unlock(i32 %62)
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @__uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @__uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
