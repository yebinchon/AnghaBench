; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @quicc_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quicc_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 1
  store %struct.uart_bas* %8, %struct.uart_bas** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @uart_lock(i32 %11)
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %15 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i32 @QUICC_PRAM_SCC_RBASE(i64 %17)
  %19 = call i32 @quicc_read2(%struct.uart_bas* %13, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @quicc_read2(%struct.uart_bas* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 4
  %26 = call i64 @quicc_read4(%struct.uart_bas* %23, i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %4, align 8
  %28 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load volatile i8, i8* %29, align 1
  %31 = call i32 @uart_rx_put(%struct.uart_softc* %28, i8 signext %30)
  %32 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, 36864
  %36 = call i32 @quicc_write2(%struct.uart_bas* %32, i32 %33, i32 %35)
  %37 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %38 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @uart_unlock(i32 %39)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @quicc_read2(%struct.uart_bas*, i32) #1

declare dso_local i32 @QUICC_PRAM_SCC_RBASE(i64) #1

declare dso_local i64 @quicc_read4(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i8 signext) #1

declare dso_local i32 @quicc_write2(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
