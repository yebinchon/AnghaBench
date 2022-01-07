; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, %struct.uart_devinfo*, %struct.uart_bas }
%struct.uart_devinfo = type { i32, i32, i32, i32 }
%struct.uart_bas = type { i64 }
%struct.uart_mtk_softc = type { i32 }

@UART_FCR_REG = common dso_local global i32 0, align 4
@UART_FCR_FIFOEN = common dso_local global i32 0, align 4
@UART_FCR_TXTGR_1 = common dso_local global i32 0, align 4
@UART_FCR_RXTGR_1 = common dso_local global i32 0, align 4
@UART_IER_REG = common dso_local global i32 0, align 4
@UART_IER_EDSSI = common dso_local global i32 0, align 4
@UART_IER_ELSI = common dso_local global i32 0, align 4
@UART_IER_ERBFI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @mtk_uart_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.uart_devinfo*, align 8
  %5 = alloca %struct.uart_mtk_softc*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = bitcast %struct.uart_softc* %6 to %struct.uart_mtk_softc*
  store %struct.uart_mtk_softc* %7, %struct.uart_mtk_softc** %5, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 3
  store %struct.uart_bas* %9, %struct.uart_bas** %3, align 8
  %10 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %11 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i64 (...) @mtk_soc_get_uartclk()
  %16 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %17 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %20 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %19, i32 0, i32 2
  %21 = load %struct.uart_devinfo*, %struct.uart_devinfo** %20, align 8
  %22 = icmp ne %struct.uart_devinfo* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %25 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %24, i32 0, i32 2
  %26 = load %struct.uart_devinfo*, %struct.uart_devinfo** %25, align 8
  store %struct.uart_devinfo* %26, %struct.uart_devinfo** %4, align 8
  %27 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %28 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %29 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %32 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %35 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %38 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mtk_uart_init(%struct.uart_bas* %27, i32 %30, i32 %33, i32 %36, i32 %39)
  br label %44

41:                                               ; preds = %18
  %42 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %43 = call i32 @mtk_uart_init(%struct.uart_bas* %42, i32 57600, i32 8, i32 1, i32 0)
  br label %44

44:                                               ; preds = %41, %23
  %45 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %46 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %45, i32 0, i32 0
  store i32 16, i32* %46, align 8
  %47 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %48 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %47, i32 0, i32 1
  store i32 16, i32* %48, align 4
  %49 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %50 = call i32 @mtk_uart_bus_getsig(%struct.uart_softc* %49)
  %51 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %52 = load i32, i32* @UART_FCR_REG, align 4
  %53 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %54 = load i32, i32* @UART_FCR_REG, align 4
  %55 = call i32 @uart_getreg(%struct.uart_bas* %53, i32 %54)
  %56 = load i32, i32* @UART_FCR_FIFOEN, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @UART_FCR_TXTGR_1, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @UART_FCR_RXTGR_1, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @uart_setreg(%struct.uart_bas* %51, i32 %52, i32 %61)
  %63 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %64 = call i32 @uart_barrier(%struct.uart_bas* %63)
  %65 = load %struct.uart_mtk_softc*, %struct.uart_mtk_softc** %5, align 8
  %66 = getelementptr inbounds %struct.uart_mtk_softc, %struct.uart_mtk_softc* %65, i32 0, i32 0
  store i32 240, i32* %66, align 4
  %67 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %68 = load i32, i32* @UART_IER_REG, align 4
  %69 = load i32, i32* @UART_IER_EDSSI, align 4
  %70 = load i32, i32* @UART_IER_ELSI, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @UART_IER_ERBFI, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @uart_setreg(%struct.uart_bas* %67, i32 %68, i32 %73)
  %75 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %76 = call i32 @uart_barrier(%struct.uart_bas* %75)
  ret i32 0
}

declare dso_local i64 @mtk_soc_get_uartclk(...) #1

declare dso_local i32 @mtk_uart_init(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @mtk_uart_bus_getsig(%struct.uart_softc*) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
