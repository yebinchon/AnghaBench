; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@SAB_ISR0 = common dso_local global i32 0, align 4
@SAB_ISR1 = common dso_local global i32 0, align 4
@SAB_ISR0_TIME = common dso_local global i32 0, align 4
@SAB_STAR = common dso_local global i32 0, align 4
@SAB_STAR_CEC = common dso_local global i32 0, align 4
@SAB_CMDR = common dso_local global i32 0, align 4
@SAB_CMDR_RFRD = common dso_local global i32 0, align 4
@SAB_ISR1_BRKT = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@SAB_ISR0_RFO = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@SAB_ISR0_TCD = common dso_local global i32 0, align 4
@SAB_ISR0_RPF = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@SAB_ISR0_CDSC = common dso_local global i32 0, align 4
@SAB_ISR1_CSC = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@SAB_ISR1_ALLS = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sab82532_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 1
  store %struct.uart_bas* %8, %struct.uart_bas** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uart_lock(i32 %11)
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load i32, i32* @SAB_ISR0, align 4
  %15 = call i32 @uart_getreg(%struct.uart_bas* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %17 = load i32, i32* @SAB_ISR1, align 4
  %18 = call i32 @uart_getreg(%struct.uart_bas* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %20 = call i32 @uart_barrier(%struct.uart_bas* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SAB_ISR0_TIME, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %33, %25
  %27 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %28 = load i32, i32* @SAB_STAR, align 4
  %29 = call i32 @uart_getreg(%struct.uart_bas* %27, i32 %28)
  %30 = load i32, i32* @SAB_STAR_CEC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %26

34:                                               ; preds = %26
  %35 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %36 = load i32, i32* @SAB_CMDR, align 4
  %37 = load i32, i32* @SAB_CMDR_RFRD, align 4
  %38 = call i32 @uart_setreg(%struct.uart_bas* %35, i32 %36, i32 %37)
  %39 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %40 = call i32 @uart_barrier(%struct.uart_bas* %39)
  br label %41

41:                                               ; preds = %34, %1
  %42 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uart_unlock(i32 %44)
  store i32 0, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SAB_ISR1_BRKT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @SER_INT_BREAK, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SAB_ISR0_RFO, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @SER_INT_OVERRUN, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @SAB_ISR0_TCD, align 4
  %66 = load i32, i32* @SAB_ISR0_RPF, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @SER_INT_RXREADY, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @SAB_ISR0_CDSC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @SAB_ISR1_CSC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79, %74
  %85 = load i32, i32* @SER_INT_SIGCHG, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @SAB_ISR1_ALLS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @SER_INT_TXIDLE, align 4
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
