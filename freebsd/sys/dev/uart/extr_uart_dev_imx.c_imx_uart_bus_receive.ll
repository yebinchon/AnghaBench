; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32*, i64, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@USR2 = common dso_local global i32 0, align 4
@RDR = common dso_local global i32 0, align 4
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@URXD = common dso_local global i32 0, align 4
@FRMERR = common dso_local global i32 0, align 4
@UART_STAT_FRAMERR = common dso_local global i32 0, align 4
@PRERR = common dso_local global i32 0, align 4
@UART_STAT_PARERR = common dso_local global i32 0, align 4
@OVRRUN = common dso_local global i32 0, align 4
@BRK = common dso_local global i32 0, align 4
@UART_STAT_BREAK = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@RRDYEN = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@ATEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @imx_uart_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 3
  store %struct.uart_bas* %7, %struct.uart_bas** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @uart_lock(i32 %10)
  br label %12

12:                                               ; preds = %81, %1
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load i32, i32* @USR2, align 4
  %15 = load i32, i32* @RDR, align 4
  %16 = call i64 @IS(%struct.uart_bas* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %85

18:                                               ; preds = %12
  %19 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %20 = call i64 @uart_rx_full(%struct.uart_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %24 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %25 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %23, i32* %30, align 4
  br label %85

31:                                               ; preds = %18
  %32 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %33 = load i32, i32* @URXD, align 4
  %34 = call i32 @REG(i32 %33)
  %35 = call i32 @GETREG(%struct.uart_bas* %32, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 255
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @URXD, align 4
  %40 = load i32, i32* @FRMERR, align 4
  %41 = call i32 @FLD(i32 %39, i32 %40)
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load i32, i32* @UART_STAT_FRAMERR, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %31
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @URXD, align 4
  %51 = load i32, i32* @PRERR, align 4
  %52 = call i32 @FLD(i32 %50, i32 %51)
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @UART_STAT_PARERR, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @URXD, align 4
  %62 = load i32, i32* @OVRRUN, align 4
  %63 = call i32 @FLD(i32 %61, i32 %62)
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @URXD, align 4
  %73 = load i32, i32* @BRK, align 4
  %74 = call i32 @FLD(i32 %72, i32 %73)
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @UART_STAT_BREAK, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %70
  %82 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @uart_rx_put(%struct.uart_softc* %82, i32 %83)
  br label %12

85:                                               ; preds = %22, %12
  %86 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %87 = load i32, i32* @UCR1, align 4
  %88 = load i32, i32* @RRDYEN, align 4
  %89 = call i32 @ENA(%struct.uart_bas* %86, i32 %87, i32 %88)
  %90 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %91 = load i32, i32* @UCR2, align 4
  %92 = load i32, i32* @ATEN, align 4
  %93 = call i32 @ENA(%struct.uart_bas* %90, i32 %91, i32 %92)
  %94 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %95 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @uart_unlock(i32 %96)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i64 @IS(%struct.uart_bas*, i32, i32) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @GETREG(%struct.uart_bas*, i32) #1

declare dso_local i32 @REG(i32) #1

declare dso_local i32 @FLD(i32, i32) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @ENA(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
