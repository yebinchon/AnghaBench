; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_PARITY_NONE = common dso_local global i32 0, align 4
@SAB_IMR0_TCD = common dso_local global i32 0, align 4
@SAB_IMR0_TIME = common dso_local global i32 0, align 4
@SAB_IMR0_CDSC = common dso_local global i32 0, align 4
@SAB_IMR0_RFO = common dso_local global i32 0, align 4
@SAB_IMR0_RPF = common dso_local global i32 0, align 4
@SAB_IMR0 = common dso_local global i32 0, align 4
@SAB_IMR1_BRKT = common dso_local global i32 0, align 4
@SAB_IMR1_ALLS = common dso_local global i32 0, align 4
@SAB_IMR1_CSC = common dso_local global i32 0, align 4
@SAB_IMR1 = common dso_local global i32 0, align 4
@SER_DDTR = common dso_local global i32 0, align 4
@SER_DRTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sab82532_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 1
  store %struct.uart_bas* %7, %struct.uart_bas** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load i32, i32* @UART_PARITY_NONE, align 4
  %15 = call i32 @sab82532_init(%struct.uart_bas* %13, i32 9600, i32 8, i32 1, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @SAB_IMR0_TCD, align 4
  %18 = load i32, i32* @SAB_IMR0_TIME, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SAB_IMR0_CDSC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SAB_IMR0_RFO, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SAB_IMR0_RPF, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %27 = load i32, i32* @SAB_IMR0, align 4
  %28 = load i32, i32* %4, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 255, %29
  %31 = call i32 @uart_setreg(%struct.uart_bas* %26, i32 %27, i32 %30)
  %32 = load i32, i32* @SAB_IMR1_BRKT, align 4
  %33 = load i32, i32* @SAB_IMR1_ALLS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SAB_IMR1_CSC, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %38 = load i32, i32* @SAB_IMR1, align 4
  %39 = load i32, i32* %5, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 255, %40
  %42 = call i32 @uart_setreg(%struct.uart_bas* %37, i32 %38, i32 %41)
  %43 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %44 = call i32 @uart_barrier(%struct.uart_bas* %43)
  %45 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %46 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %16
  %50 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %51 = load i32, i32* @SER_DDTR, align 4
  %52 = load i32, i32* @SER_DRTS, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @sab82532_bus_setsig(%struct.uart_softc* %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %16
  %56 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %57 = call i32 @sab82532_bus_getsig(%struct.uart_softc* %56)
  ret i32 0
}

declare dso_local i32 @sab82532_init(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @sab82532_bus_setsig(%struct.uart_softc*, i32) #1

declare dso_local i32 @sab82532_bus_getsig(%struct.uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
