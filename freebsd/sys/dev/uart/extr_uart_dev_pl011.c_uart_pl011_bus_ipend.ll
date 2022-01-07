; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_pl011.c_uart_pl011_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_pl011.c_uart_pl011_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i64, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.uart_pl011_softc = type { i32 }

@UART_MIS = common dso_local global i32 0, align 4
@UART_RXREADY = common dso_local global i32 0, align 4
@RIS_RTIM = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@RIS_BE = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@RIS_OE = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@UART_TXEMPTY = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@UART_IMSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_pl011_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_pl011_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_pl011_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = bitcast %struct.uart_softc* %7 to %struct.uart_pl011_softc*
  store %struct.uart_pl011_softc* %8, %struct.uart_pl011_softc** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 2
  store %struct.uart_bas* %10, %struct.uart_bas** %4, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @uart_lock(i32 %13)
  %15 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %16 = load i32, i32* @UART_MIS, align 4
  %17 = call i32 @__uart_getreg(%struct.uart_bas* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @UART_RXREADY, align 4
  %20 = load i32, i32* @RIS_RTIM, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @SER_INT_RXREADY, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RIS_BE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @SER_INT_BREAK, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @RIS_OE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @SER_INT_OVERRUN, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @UART_TXEMPTY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %53 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @SER_INT_TXIDLE, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %62 = load i32, i32* @UART_IMSC, align 4
  %63 = load %struct.uart_pl011_softc*, %struct.uart_pl011_softc** %3, align 8
  %64 = getelementptr inbounds %struct.uart_pl011_softc, %struct.uart_pl011_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @UART_TXEMPTY, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @__uart_setreg(%struct.uart_bas* %61, i32 %62, i32 %68)
  br label %70

70:                                               ; preds = %60, %46
  %71 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %72 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @uart_unlock(i32 %73)
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @__uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @__uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
