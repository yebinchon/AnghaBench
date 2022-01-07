; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ns8250_softc = type { i32, i64 }

@REG_IIR = common dso_local global i32 0, align 4
@IIR_BUSY = common dso_local global i32 0, align 4
@DW_REG_USR = common dso_local global i32 0, align 4
@IIR_NOPEND = common dso_local global i32 0, align 4
@IIR_RXRDY = common dso_local global i32 0, align 4
@REG_LSR = common dso_local global i32 0, align 4
@LSR_OE = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@LSR_BI = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@LSR_RXRDY = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@IIR_TXRDY = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@REG_IER = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns8250_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca %struct.ns8250_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = bitcast %struct.uart_softc* %9 to %struct.ns8250_softc*
  store %struct.ns8250_softc* %10, %struct.ns8250_softc** %5, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 1
  store %struct.uart_bas* %12, %struct.uart_bas** %4, align 8
  %13 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %14 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @uart_lock(i32 %15)
  %17 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %18 = load i32, i32* @REG_IIR, align 4
  %19 = call i32 @uart_getreg(%struct.uart_bas* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IIR_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @IIR_BUSY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %32 = load i32, i32* @DW_REG_USR, align 4
  %33 = call i32 @uart_getreg(%struct.uart_bas* %31, i32 %32)
  %34 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %35 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @uart_unlock(i32 %36)
  store i32 0, i32* %2, align 4
  br label %118

38:                                               ; preds = %24, %1
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @IIR_NOPEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %45 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @uart_unlock(i32 %46)
  store i32 0, i32* %2, align 4
  br label %118

48:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @IIR_RXRDY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %48
  %54 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %55 = load i32, i32* @REG_LSR, align 4
  %56 = call i32 @uart_getreg(%struct.uart_bas* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @LSR_OE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @SER_INT_OVERRUN, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @LSR_BI, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @SER_INT_BREAK, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @LSR_RXRDY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @SER_INT_RXREADY, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %106

84:                                               ; preds = %48
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @IIR_TXRDY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load i32, i32* @SER_INT_TXIDLE, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %94 = load i32, i32* @REG_IER, align 4
  %95 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %96 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @uart_setreg(%struct.uart_bas* %93, i32 %94, i32 %97)
  %99 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %100 = call i32 @uart_barrier(%struct.uart_bas* %99)
  br label %105

101:                                              ; preds = %84
  %102 = load i32, i32* @SER_INT_SIGCHG, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %101, %89
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %111 = call i32 @ns8250_clrint(%struct.uart_bas* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %114 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @uart_unlock(i32 %115)
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %112, %43, %30
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @ns8250_clrint(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
