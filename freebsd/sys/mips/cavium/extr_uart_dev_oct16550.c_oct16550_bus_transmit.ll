; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32*, i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.oct16550_softc = type { i32 }

@REG_IER = common dso_local global i32 0, align 4
@IER_ETXRDY = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @oct16550_bus_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oct16550_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.oct16550_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = bitcast %struct.uart_softc* %6 to %struct.oct16550_softc*
  store %struct.oct16550_softc* %7, %struct.oct16550_softc** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 4
  store %struct.uart_bas* %9, %struct.uart_bas** %4, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @uart_lock(i32 %12)
  %14 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %15 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %16 = call i32 @oct16550_delay(%struct.uart_bas* %15)
  %17 = call i32 @oct16550_wait_txhr_empty(%struct.uart_bas* %14, i32 100, i32 %16)
  %18 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %19 = load i32, i32* @REG_IER, align 4
  %20 = load %struct.oct16550_softc*, %struct.oct16550_softc** %3, align 8
  %21 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IER_ETXRDY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @uart_setreg(%struct.uart_bas* %18, i32 %19, i32 %24)
  %26 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %27 = call i32 @uart_barrier(%struct.uart_bas* %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %47, %1
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %31 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %36 = load i32, i32* @REG_DATA, align 4
  %37 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %38 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @uart_setreg(%struct.uart_bas* %35, i32 %36, i32 %43)
  %45 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %46 = call i32 @uart_barrier(%struct.uart_bas* %45)
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %28

50:                                               ; preds = %28
  %51 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  %53 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %54 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @uart_unlock(i32 %55)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @oct16550_wait_txhr_empty(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @oct16550_delay(%struct.uart_bas*) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
