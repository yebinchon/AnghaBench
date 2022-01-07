; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_IIR_REG = common dso_local global i32 0, align 4
@UART_LSR_REG = common dso_local global i32 0, align 4
@UART_MSR_REG = common dso_local global i32 0, align 4
@UART_IIR_INTP = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@UART_FLUSH_RECEIVER = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @mtk_uart_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 1
  store %struct.uart_bas* %10, %struct.uart_bas** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @uart_lock(i32 %13)
  %15 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 1
  %17 = load i32, i32* @UART_IIR_REG, align 4
  %18 = call i32 @uart_getreg(%struct.uart_bas* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %20 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %19, i32 0, i32 1
  %21 = load i32, i32* @UART_LSR_REG, align 4
  %22 = call i32 @uart_getreg(%struct.uart_bas* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 1
  %25 = load i32, i32* @UART_LSR_REG, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @uart_setreg(%struct.uart_bas* %24, i32 %25, i32 %26)
  %28 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %29 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %28, i32 0, i32 1
  %30 = load i32, i32* @UART_MSR_REG, align 4
  %31 = call i32 @uart_getreg(%struct.uart_bas* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %33 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %32, i32 0, i32 1
  %34 = load i32, i32* @UART_MSR_REG, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @uart_setreg(%struct.uart_bas* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @UART_IIR_INTP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %1
  %42 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uart_unlock(i32 %44)
  store i32 0, i32* %2, align 4
  br label %91

46:                                               ; preds = %1
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 1
  %49 = and i32 %48, 7
  switch i32 %49, label %84 [
    i32 128, label %50
    i32 131, label %54
    i32 132, label %58
    i32 129, label %62
    i32 130, label %62
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* @SER_INT_TXIDLE, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %85

54:                                               ; preds = %46
  %55 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %56 = load i32, i32* @UART_FLUSH_RECEIVER, align 4
  %57 = call i32 @mtk_uart_bus_flush(%struct.uart_softc* %55, i32 %56)
  br label %58

58:                                               ; preds = %46, %54
  %59 = load i32, i32* @SER_INT_RXREADY, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %85

62:                                               ; preds = %46, %46
  %63 = load i32, i32* @SER_INT_SIGCHG, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @UART_LSR_BI, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @SER_INT_BREAK, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %62
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @UART_LSR_OE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @SER_INT_OVERRUN, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %85

84:                                               ; preds = %46
  br label %85

85:                                               ; preds = %84, %83, %58, %50
  %86 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %87 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @uart_unlock(i32 %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %85, %41
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

declare dso_local i32 @mtk_uart_bus_flush(%struct.uart_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
