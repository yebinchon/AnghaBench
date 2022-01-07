; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@REG_IIR = common dso_local global i32 0, align 4
@IIR_IMASK = common dso_local global i32 0, align 4
@IIR_NOPEND = common dso_local global i32 0, align 4
@IIR_RLS = common dso_local global i32 0, align 4
@REG_LSR = common dso_local global i32 0, align 4
@LSR_OE = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@LSR_BI = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@LSR_RXRDY = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@IIR_RXRDY = common dso_local global i32 0, align 4
@IIR_RXTOUT = common dso_local global i32 0, align 4
@IIR_TXRDY = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@IIR_MLSC = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@IIR_BUSY = common dso_local global i32 0, align 4
@REG_USR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @oct16550_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oct16550_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 1
  store %struct.uart_bas* %8, %struct.uart_bas** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uart_lock(i32 %11)
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load i32, i32* @REG_IIR, align 4
  %15 = call i32 @uart_getreg(%struct.uart_bas* %13, i32 %14)
  %16 = load i32, i32* @IIR_IMASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IIR_NOPEND, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %102

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IIR_RLS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %27 = load i32, i32* @REG_LSR, align 4
  %28 = call i32 @uart_getreg(%struct.uart_bas* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LSR_OE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @SER_INT_OVERRUN, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @LSR_BI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @SER_INT_BREAK, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @LSR_RXRDY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @SER_INT_RXREADY, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %46
  br label %101

56:                                               ; preds = %21
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @IIR_RXRDY, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @SER_INT_RXREADY, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %100

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @IIR_RXTOUT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @SER_INT_RXREADY, align 4
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %99

72:                                               ; preds = %64
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @IIR_TXRDY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @SER_INT_TXIDLE, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %98

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @IIR_MLSC, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @SER_INT_SIGCHG, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %97

88:                                               ; preds = %80
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @IIR_BUSY, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %94 = load i32, i32* @REG_USR, align 4
  %95 = call i32 @uart_getreg(%struct.uart_bas* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %84
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %98, %68
  br label %100

100:                                              ; preds = %99, %60
  br label %101

101:                                              ; preds = %100, %55
  br label %102

102:                                              ; preds = %101, %1
  %103 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %104 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @uart_unlock(i32 %105)
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
