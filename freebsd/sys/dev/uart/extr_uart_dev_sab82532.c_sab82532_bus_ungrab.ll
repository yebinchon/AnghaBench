; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_ungrab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_ungrab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@SAB_IMR0_TCD = common dso_local global i32 0, align 4
@SAB_IMR0_TIME = common dso_local global i32 0, align 4
@SAB_IMR0_CDSC = common dso_local global i32 0, align 4
@SAB_IMR0_RFO = common dso_local global i32 0, align 4
@SAB_IMR0_RPF = common dso_local global i32 0, align 4
@SAB_IMR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_softc*)* @sab82532_bus_ungrab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sab82532_bus_ungrab(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %5, i32 0, i32 1
  store %struct.uart_bas* %6, %struct.uart_bas** %3, align 8
  %7 = load i32, i32* @SAB_IMR0_TCD, align 4
  %8 = load i32, i32* @SAB_IMR0_TIME, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SAB_IMR0_CDSC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SAB_IMR0_RFO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SAB_IMR0_RPF, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @uart_lock(i32 %18)
  %20 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %21 = load i32, i32* @SAB_IMR0, align 4
  %22 = load i32, i32* %4, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 255, %23
  %25 = call i32 @uart_setreg(%struct.uart_bas* %20, i32 %21, i32 %24)
  %26 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %27 = call i32 @uart_barrier(%struct.uart_bas* %26)
  %28 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %29 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @uart_unlock(i32 %30)
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
