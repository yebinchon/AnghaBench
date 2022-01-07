; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_uart.c_jz4780_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_uart.c_jz4780_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ns8250_softc = type { i32, i32, i32 }

@IER_RXTMOUT = common dso_local global i32 0, align 4
@IER_EMSC = common dso_local global i32 0, align 4
@IER_ERLS = common dso_local global i32 0, align 4
@IER_ERXRDY = common dso_local global i32 0, align 4
@REG_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @jz4780_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.ns8250_softc*, align 8
  %5 = alloca %struct.uart_bas*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %8 = bitcast %struct.uart_softc* %7 to %struct.ns8250_softc*
  store %struct.ns8250_softc* %8, %struct.ns8250_softc** %4, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 0
  store %struct.uart_bas* %10, %struct.uart_bas** %5, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %12 = call i32 @ns8250_bus_attach(%struct.uart_softc* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

16:                                               ; preds = %1
  %17 = load i32, i32* @IER_RXTMOUT, align 4
  %18 = load i32, i32* @IER_EMSC, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IER_ERLS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IER_ERXRDY, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ns8250_softc*, %struct.ns8250_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ns8250_softc*, %struct.ns8250_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ns8250_softc*, %struct.ns8250_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %33 = load i32, i32* @REG_IER, align 4
  %34 = call i32 @uart_getreg(%struct.uart_bas* %32, i32 %33)
  %35 = load %struct.ns8250_softc*, %struct.ns8250_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = load %struct.ns8250_softc*, %struct.ns8250_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ns8250_softc*, %struct.ns8250_softc** %4, align 8
  %42 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ns8250_softc*, %struct.ns8250_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %49 = load i32, i32* @REG_IER, align 4
  %50 = load %struct.ns8250_softc*, %struct.ns8250_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @uart_setreg(%struct.uart_bas* %48, i32 %49, i32 %52)
  %54 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %55 = call i32 @uart_barrier(%struct.uart_bas* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %16, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ns8250_bus_attach(%struct.uart_softc*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
