; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.z8530_softc = type { i32 }

@RR_BES = common dso_local global i32 0, align 4
@BES_TXE = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @z8530_bus_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.z8530_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = bitcast %struct.uart_softc* %5 to %struct.z8530_softc*
  store %struct.z8530_softc* %6, %struct.z8530_softc** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 3
  store %struct.uart_bas* %8, %struct.uart_bas** %4, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uart_lock(i32 %11)
  br label %13

13:                                               ; preds = %21, %1
  %14 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %15 = load i32, i32* @RR_BES, align 4
  %16 = call i32 @uart_getmreg(%struct.uart_bas* %14, i32 %15)
  %17 = load i32, i32* @BES_TXE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %24 = load i32, i32* @REG_DATA, align 4
  %25 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %26 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @uart_setreg(%struct.uart_bas* %23, i32 %24, i32 %29)
  %31 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %32 = call i32 @uart_barrier(%struct.uart_bas* %31)
  %33 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %34 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.z8530_softc*, %struct.z8530_softc** %3, align 8
  %36 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %38 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @uart_unlock(i32 %39)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getmreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
