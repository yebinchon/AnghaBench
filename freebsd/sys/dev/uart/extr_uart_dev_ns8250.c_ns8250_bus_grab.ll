; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_grab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ns8250_softc = type { i32 }

@REG_IER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ns8250_bus_grab(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.ns8250_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 1
  store %struct.uart_bas* %7, %struct.uart_bas** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = bitcast %struct.uart_softc* %8 to %struct.ns8250_softc*
  store %struct.ns8250_softc* %9, %struct.ns8250_softc** %4, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @uart_lock(i32 %12)
  %14 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %15 = load i32, i32* @REG_IER, align 4
  %16 = call i32 @uart_getreg(%struct.uart_bas* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %18 = load i32, i32* @REG_IER, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ns8250_softc*, %struct.ns8250_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = call i32 @uart_setreg(%struct.uart_bas* %17, i32 %18, i32 %23)
  %25 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %26 = call i32 @uart_barrier(%struct.uart_bas* %25)
  %27 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @uart_unlock(i32 %29)
  ret void
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
