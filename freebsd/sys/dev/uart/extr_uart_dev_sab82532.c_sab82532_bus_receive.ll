; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@SAB_STAR = common dso_local global i64 0, align 8
@SAB_STAR_RFNE = common dso_local global i32 0, align 4
@SAB_RBCL = common dso_local global i64 0, align 8
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@SAB_RFIFO = common dso_local global i64 0, align 8
@SAB_RSTAT_FE = common dso_local global i32 0, align 4
@UART_STAT_FRAMERR = common dso_local global i32 0, align 4
@SAB_RSTAT_PE = common dso_local global i32 0, align 4
@UART_STAT_PARERR = common dso_local global i32 0, align 4
@SAB_STAR_CEC = common dso_local global i32 0, align 4
@SAB_CMDR = common dso_local global i32 0, align 4
@SAB_CMDR_RMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sab82532_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 3
  store %struct.uart_bas* %9, %struct.uart_bas** %3, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @uart_lock(i32 %12)
  %14 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %15 = load i64, i64* @SAB_STAR, align 8
  %16 = call i32 @uart_getreg(%struct.uart_bas* %14, i64 %15)
  %17 = load i32, i32* @SAB_STAR_RFNE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %79

20:                                               ; preds = %1
  %21 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %22 = load i64, i64* @SAB_RBCL, align 8
  %23 = call i32 @uart_getreg(%struct.uart_bas* %21, i64 %22)
  %24 = and i32 %23, 31
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 32, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %20
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %75, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  %34 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %35 = call i64 @uart_rx_full(%struct.uart_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %39 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %40 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %38, i32* %45, align 4
  br label %78

46:                                               ; preds = %33
  %47 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %48 = load i64, i64* @SAB_RFIFO, align 8
  %49 = call i32 @uart_getreg(%struct.uart_bas* %47, i64 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %51 = load i64, i64* @SAB_RFIFO, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @uart_getreg(%struct.uart_bas* %50, i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SAB_RSTAT_FE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i32, i32* @UART_STAT_FRAMERR, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %46
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SAB_RSTAT_PE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @UART_STAT_PARERR, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @uart_rx_put(%struct.uart_softc* %72, i32 %73)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %4, align 4
  br label %29

78:                                               ; preds = %37, %29
  br label %79

79:                                               ; preds = %78, %1
  br label %80

80:                                               ; preds = %87, %79
  %81 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %82 = load i64, i64* @SAB_STAR, align 8
  %83 = call i32 @uart_getreg(%struct.uart_bas* %81, i64 %82)
  %84 = load i32, i32* @SAB_STAR_CEC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %80

88:                                               ; preds = %80
  %89 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %90 = load i32, i32* @SAB_CMDR, align 4
  %91 = load i32, i32* @SAB_CMDR_RMC, align 4
  %92 = call i32 @uart_setreg(%struct.uart_bas* %89, i32 %90, i32 %91)
  %93 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %94 = call i32 @uart_barrier(%struct.uart_bas* %93)
  %95 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %96 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @uart_unlock(i32 %97)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i64) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
