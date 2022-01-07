; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_ungrab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_ungrab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ns8250_softc = type { i32 }

@REG_IER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ns8250_bus_ungrab(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.ns8250_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = bitcast %struct.uart_softc* %5 to %struct.ns8250_softc*
  store %struct.ns8250_softc* %6, %struct.ns8250_softc** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 1
  store %struct.uart_bas* %8, %struct.uart_bas** %4, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uart_lock(i32 %11)
  %13 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %14 = load i32, i32* @REG_IER, align 4
  %15 = load %struct.ns8250_softc*, %struct.ns8250_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @uart_setreg(%struct.uart_bas* %13, i32 %14, i32 %17)
  %19 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %20 = call i32 @uart_barrier(%struct.uart_bas* %19)
  %21 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %22 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @uart_unlock(i32 %23)
  ret void
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
