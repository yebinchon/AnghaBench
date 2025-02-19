; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_bus_ungrab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_bus_ungrab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@AR933X_UART_CS_REG = common dso_local global i32 0, align 4
@AR933X_UART_CS_HOST_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_softc*)* @ar933x_bus_ungrab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar933x_bus_ungrab(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %5, i32 0, i32 1
  store %struct.uart_bas* %6, %struct.uart_bas** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @uart_lock(i32 %9)
  %11 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %12 = load i32, i32* @AR933X_UART_CS_REG, align 4
  %13 = call i32 @ar933x_getreg(%struct.uart_bas* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @AR933X_UART_CS_HOST_INT_EN, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %18 = load i32, i32* @AR933X_UART_CS_REG, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ar933x_setreg(%struct.uart_bas* %17, i32 %18, i32 %19)
  %21 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %22 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @uart_unlock(i32 %23)
  ret void
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @ar933x_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @ar933x_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
