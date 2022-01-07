; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ti8250.c_ti8250_bus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ti8250.c_ti8250_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32 }

@INVALID_CLK_IDENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed to get clock based on hwmods\0A\00", align 1
@UART1_CLK = common dso_local global i64 0, align 8
@MDR1_REG = common dso_local global i32 0, align 4
@MDR1_MODE_DISABLE = common dso_local global i32 0, align 4
@SYSCC_REG = common dso_local global i32 0, align 4
@SYSCC_SOFTRESET = common dso_local global i32 0, align 4
@SYSS_REG = common dso_local global i32 0, align 4
@SYSS_STATUS_RESETDONE = common dso_local global i32 0, align 4
@MDR1_MODE_UART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"TI UART (16550 compatible)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @ti8250_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti8250_bus_probe(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ti_hwmods_get_clock(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @INVALID_CLK_IDENT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %15 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @UART1_CLK, align 8
  %19 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %20 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @device_get_unit(i32 %21)
  %23 = add nsw i64 %18, %22
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %13, %1
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @ti_prcm_clk_enable(i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %67

30:                                               ; preds = %24
  %31 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %32 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %31, i32 0, i32 1
  %33 = load i32, i32* @MDR1_REG, align 4
  %34 = load i32, i32* @MDR1_MODE_DISABLE, align 4
  %35 = call i32 @uart_setreg(i32* %32, i32 %33, i32 %34)
  %36 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %37 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %36, i32 0, i32 1
  %38 = load i32, i32* @SYSCC_REG, align 4
  %39 = load i32, i32* @SYSCC_SOFTRESET, align 4
  %40 = call i32 @uart_setreg(i32* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %49, %30
  %42 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 1
  %44 = load i32, i32* @SYSS_REG, align 4
  %45 = call i32 @uart_getreg(i32* %43, i32 %44)
  %46 = load i32, i32* @SYSS_STATUS_RESETDONE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %41

50:                                               ; preds = %41
  %51 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 1
  %53 = load i32, i32* @MDR1_REG, align 4
  %54 = load i32, i32* @MDR1_MODE_UART, align 4
  %55 = call i32 @uart_setreg(i32* %52, i32 %53, i32 %54)
  %56 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %57 = call i32 @ns8250_bus_probe(%struct.uart_softc* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %62 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_set_desc(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %50
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %28
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @ti_hwmods_get_clock(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @ti_prcm_clk_enable(i64) #1

declare dso_local i32 @uart_setreg(i32*, i32, i32) #1

declare dso_local i32 @uart_getreg(i32*, i32) #1

declare dso_local i32 @ns8250_bus_probe(%struct.uart_softc*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
