; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_pl011.c_uart_pl011_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_pl011.c_uart_pl011_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.uart_pl011_softc = type { i32 }

@UART_DR = common dso_local global i32 0, align 4
@UART_IMSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_pl011_bus_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_pl011_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_pl011_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = bitcast %struct.uart_softc* %6 to %struct.uart_pl011_softc*
  store %struct.uart_pl011_softc* %7, %struct.uart_pl011_softc** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 4
  store %struct.uart_bas* %9, %struct.uart_bas** %4, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @uart_lock(i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %33, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %22 = load i32, i32* @UART_DR, align 4
  %23 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__uart_setreg(%struct.uart_bas* %21, i32 %22, i32 %29)
  %31 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %32 = call i32 @uart_barrier(%struct.uart_bas* %31)
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %38 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %40 = load i32, i32* @UART_IMSC, align 4
  %41 = load %struct.uart_pl011_softc*, %struct.uart_pl011_softc** %3, align 8
  %42 = getelementptr inbounds %struct.uart_pl011_softc, %struct.uart_pl011_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__uart_setreg(%struct.uart_bas* %39, i32 %40, i32 %43)
  %45 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %46 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @uart_unlock(i32 %47)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @__uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
