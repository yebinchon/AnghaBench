; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.msm_uart_softc = type { i32 }

@UART_DM_MISR = common dso_local global i32 0, align 4
@UART_DM_RXLEV = common dso_local global i32 0, align 4
@UART_DM_IMR = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@UART_DM_RXSTALE = common dso_local global i32 0, align 4
@UART_DM_CR = common dso_local global i32 0, align 4
@UART_DM_STALE_EVENT_DISABLE = common dso_local global i32 0, align 4
@UART_DM_RESET_STALE_INT = common dso_local global i32 0, align 4
@UART_DM_TX_READY = common dso_local global i32 0, align 4
@UART_DM_CLEAR_TX_READY = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@UART_DM_TXLEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @msm_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.msm_uart_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = bitcast %struct.uart_softc* %7 to %struct.msm_uart_softc*
  store %struct.msm_uart_softc* %8, %struct.msm_uart_softc** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 2
  store %struct.uart_bas* %10, %struct.uart_bas** %4, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @uart_lock(i32 %13)
  %15 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %16 = load i32, i32* @UART_DM_MISR, align 4
  %17 = call i32 @GETREG(%struct.uart_bas* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @UART_DM_RXLEV, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %1
  %23 = load i32, i32* @UART_DM_RXLEV, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.msm_uart_softc*, %struct.msm_uart_softc** %3, align 8
  %26 = getelementptr inbounds %struct.msm_uart_softc, %struct.msm_uart_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %30 = load i32, i32* @UART_DM_IMR, align 4
  %31 = load %struct.msm_uart_softc*, %struct.msm_uart_softc** %3, align 8
  %32 = getelementptr inbounds %struct.msm_uart_softc, %struct.msm_uart_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SETREG(%struct.uart_bas* %29, i32 %30, i32 %33)
  %35 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %36 = call i32 @uart_barrier(%struct.uart_bas* %35)
  %37 = load i32, i32* @SER_INT_RXREADY, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %22, %1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @UART_DM_RXSTALE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %47 = load i32, i32* @UART_DM_CR, align 4
  %48 = load i32, i32* @UART_DM_STALE_EVENT_DISABLE, align 4
  %49 = call i32 @SETREG(%struct.uart_bas* %46, i32 %47, i32 %48)
  %50 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %51 = load i32, i32* @UART_DM_CR, align 4
  %52 = load i32, i32* @UART_DM_RESET_STALE_INT, align 4
  %53 = call i32 @SETREG(%struct.uart_bas* %50, i32 %51, i32 %52)
  %54 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %55 = call i32 @uart_barrier(%struct.uart_bas* %54)
  %56 = load i32, i32* @SER_INT_RXREADY, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %45, %40
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @UART_DM_TX_READY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %59
  %65 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %66 = load i32, i32* @UART_DM_CR, align 4
  %67 = load i32, i32* @UART_DM_CLEAR_TX_READY, align 4
  %68 = call i32 @SETREG(%struct.uart_bas* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @UART_DM_TX_READY, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.msm_uart_softc*, %struct.msm_uart_softc** %3, align 8
  %72 = getelementptr inbounds %struct.msm_uart_softc, %struct.msm_uart_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %76 = load i32, i32* @UART_DM_IMR, align 4
  %77 = load %struct.msm_uart_softc*, %struct.msm_uart_softc** %3, align 8
  %78 = getelementptr inbounds %struct.msm_uart_softc, %struct.msm_uart_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SETREG(%struct.uart_bas* %75, i32 %76, i32 %79)
  %81 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %82 = call i32 @uart_barrier(%struct.uart_bas* %81)
  %83 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %84 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %64
  %88 = load i32, i32* @SER_INT_TXIDLE, align 4
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %87, %64
  br label %92

92:                                               ; preds = %91, %59
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @UART_DM_TXLEV, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load i32, i32* @UART_DM_TXLEV, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.msm_uart_softc*, %struct.msm_uart_softc** %3, align 8
  %101 = getelementptr inbounds %struct.msm_uart_softc, %struct.msm_uart_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %105 = load i32, i32* @UART_DM_IMR, align 4
  %106 = load %struct.msm_uart_softc*, %struct.msm_uart_softc** %3, align 8
  %107 = getelementptr inbounds %struct.msm_uart_softc, %struct.msm_uart_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @SETREG(%struct.uart_bas* %104, i32 %105, i32 %108)
  %110 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %111 = call i32 @uart_barrier(%struct.uart_bas* %110)
  %112 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %113 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %97
  %117 = load i32, i32* @SER_INT_TXIDLE, align 4
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %116, %97
  br label %121

121:                                              ; preds = %120, %92
  %122 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %123 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @uart_unlock(i32 %124)
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @GETREG(%struct.uart_bas*, i32) #1

declare dso_local i32 @SETREG(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
