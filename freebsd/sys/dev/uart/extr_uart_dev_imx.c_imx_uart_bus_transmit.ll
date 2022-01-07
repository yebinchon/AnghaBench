; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32*, i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UTXD = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@TRDYEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @imx_uart_bus_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %5, i32 0, i32 4
  store %struct.uart_bas* %6, %struct.uart_bas** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 4
  store %struct.uart_bas* %8, %struct.uart_bas** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uart_lock(i32 %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %21 = load i32, i32* @UTXD, align 4
  %22 = call i32 @REG(i32 %21)
  %23 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @SETREG(%struct.uart_bas* %20, i32 %22, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %37 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %39 = load i32, i32* @UCR1, align 4
  %40 = load i32, i32* @TRDYEN, align 4
  %41 = call i32 @ENA(%struct.uart_bas* %38, i32 %39, i32 %40)
  %42 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uart_unlock(i32 %44)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @SETREG(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @REG(i32) #1

declare dso_local i32 @ENA(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
