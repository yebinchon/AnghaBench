; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32*, i64, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@RR_BES = common dso_local global i32 0, align 4
@BES_RXA = common dso_local global i32 0, align 4
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@RR_SRC = common dso_local global i32 0, align 4
@SRC_FE = common dso_local global i32 0, align 4
@UART_STAT_FRAMERR = common dso_local global i32 0, align 4
@SRC_PE = common dso_local global i32 0, align 4
@UART_STAT_PARERR = common dso_local global i32 0, align 4
@SRC_OVR = common dso_local global i32 0, align 4
@REG_CTRL = common dso_local global i32 0, align 4
@CR_RSTERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @z8530_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 3
  store %struct.uart_bas* %8, %struct.uart_bas** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @uart_lock(i32 %11)
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load i32, i32* @RR_BES, align 4
  %15 = call i32 @uart_getmreg(%struct.uart_bas* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %88, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BES_RXA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %92

21:                                               ; preds = %16
  %22 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %23 = call i64 @uart_rx_full(%struct.uart_softc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %27 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %31 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %26, i32* %33, align 4
  br label %92

34:                                               ; preds = %21
  %35 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %36 = load i32, i32* @REG_DATA, align 4
  %37 = call i32 @uart_getreg(%struct.uart_bas* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %39 = call i32 @uart_barrier(%struct.uart_bas* %38)
  %40 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %41 = load i32, i32* @RR_SRC, align 4
  %42 = call i32 @uart_getmreg(%struct.uart_bas* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SRC_FE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load i32, i32* @UART_STAT_FRAMERR, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %34
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SRC_PE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @UART_STAT_PARERR, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @SRC_OVR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @uart_rx_put(%struct.uart_softc* %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @SRC_FE, align 4
  %75 = load i32, i32* @SRC_PE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SRC_OVR, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %73, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %83 = load i32, i32* @REG_CTRL, align 4
  %84 = load i32, i32* @CR_RSTERR, align 4
  %85 = call i32 @uart_setreg(%struct.uart_bas* %82, i32 %83, i32 %84)
  %86 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %87 = call i32 @uart_barrier(%struct.uart_bas* %86)
  br label %88

88:                                               ; preds = %81, %69
  %89 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %90 = load i32, i32* @RR_BES, align 4
  %91 = call i32 @uart_getmreg(%struct.uart_bas* %89, i32 %90)
  store i32 %91, i32* %5, align 4
  br label %16

92:                                               ; preds = %25, %16
  br label %93

93:                                               ; preds = %122, %92
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @BES_RXA, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %126

98:                                               ; preds = %93
  %99 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %100 = load i32, i32* @REG_DATA, align 4
  %101 = call i32 @uart_getreg(%struct.uart_bas* %99, i32 %100)
  %102 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %103 = call i32 @uart_barrier(%struct.uart_bas* %102)
  %104 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %105 = load i32, i32* @RR_SRC, align 4
  %106 = call i32 @uart_getmreg(%struct.uart_bas* %104, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @SRC_FE, align 4
  %109 = load i32, i32* @SRC_PE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @SRC_OVR, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %107, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %98
  %116 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %117 = load i32, i32* @REG_CTRL, align 4
  %118 = load i32, i32* @CR_RSTERR, align 4
  %119 = call i32 @uart_setreg(%struct.uart_bas* %116, i32 %117, i32 %118)
  %120 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %121 = call i32 @uart_barrier(%struct.uart_bas* %120)
  br label %122

122:                                              ; preds = %115, %98
  %123 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %124 = load i32, i32* @RR_BES, align 4
  %125 = call i32 @uart_getmreg(%struct.uart_bas* %123, i32 %124)
  store i32 %125, i32* %5, align 4
  br label %93

126:                                              ; preds = %93
  %127 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %128 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @uart_unlock(i32 %129)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getmreg(%struct.uart_bas*, i32) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
