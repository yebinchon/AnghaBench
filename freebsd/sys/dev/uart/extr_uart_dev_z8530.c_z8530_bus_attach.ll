; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_devinfo*, %struct.uart_bas }
%struct.uart_devinfo = type { i32, i32, i32, i32 }
%struct.uart_bas = type { i32 }
%struct.z8530_softc = type { i32, i32 }

@TPC_DTR = common dso_local global i32 0, align 4
@TPC_RTS = common dso_local global i32 0, align 4
@UART_PARITY_NONE = common dso_local global i32 0, align 4
@WR_IC = common dso_local global i32 0, align 4
@IC_BRK = common dso_local global i32 0, align 4
@IC_CTS = common dso_local global i32 0, align 4
@IC_DCD = common dso_local global i32 0, align 4
@WR_IDT = common dso_local global i32 0, align 4
@IDT_XIE = common dso_local global i32 0, align 4
@IDT_TIE = common dso_local global i32 0, align 4
@IDT_RIA = common dso_local global i32 0, align 4
@WR_IV = common dso_local global i32 0, align 4
@WR_TPC = common dso_local global i32 0, align 4
@WR_MIC = common dso_local global i32 0, align 4
@MIC_NV = common dso_local global i32 0, align 4
@MIC_MIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @z8530_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.z8530_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca %struct.uart_devinfo*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = bitcast %struct.uart_softc* %6 to %struct.z8530_softc*
  store %struct.z8530_softc* %7, %struct.z8530_softc** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 1
  store %struct.uart_bas* %9, %struct.uart_bas** %4, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 0
  %12 = load %struct.uart_devinfo*, %struct.uart_devinfo** %11, align 8
  %13 = icmp ne %struct.uart_devinfo* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %1
  %15 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 0
  %17 = load %struct.uart_devinfo*, %struct.uart_devinfo** %16, align 8
  store %struct.uart_devinfo* %17, %struct.uart_devinfo** %5, align 8
  %18 = load i32, i32* @TPC_DTR, align 4
  %19 = load i32, i32* @TPC_RTS, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.z8530_softc*, %struct.z8530_softc** %3, align 8
  %22 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %24 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %25 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %28 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %31 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %34 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.z8530_softc*, %struct.z8530_softc** %3, align 8
  %37 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %36, i32 0, i32 0
  %38 = call i32 @z8530_param(%struct.uart_bas* %23, i32 %26, i32 %29, i32 %32, i32 %35, i32* %37)
  br label %53

39:                                               ; preds = %1
  %40 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %41 = load i32, i32* @UART_PARITY_NONE, align 4
  %42 = call i32 @z8530_setup(%struct.uart_bas* %40, i32 9600, i32 8, i32 1, i32 %41)
  %43 = load %struct.z8530_softc*, %struct.z8530_softc** %3, align 8
  %44 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @TPC_DTR, align 4
  %46 = load i32, i32* @TPC_RTS, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.z8530_softc*, %struct.z8530_softc** %3, align 8
  %50 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %39, %14
  %54 = load %struct.z8530_softc*, %struct.z8530_softc** %3, align 8
  %55 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %57 = call i32 @z8530_bus_getsig(%struct.uart_softc* %56)
  %58 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %59 = load i32, i32* @WR_IC, align 4
  %60 = load i32, i32* @IC_BRK, align 4
  %61 = load i32, i32* @IC_CTS, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IC_DCD, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @uart_setmreg(%struct.uart_bas* %58, i32 %59, i32 %64)
  %66 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %67 = call i32 @uart_barrier(%struct.uart_bas* %66)
  %68 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %69 = load i32, i32* @WR_IDT, align 4
  %70 = load i32, i32* @IDT_XIE, align 4
  %71 = load i32, i32* @IDT_TIE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @IDT_RIA, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @uart_setmreg(%struct.uart_bas* %68, i32 %69, i32 %74)
  %76 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %77 = call i32 @uart_barrier(%struct.uart_bas* %76)
  %78 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %79 = load i32, i32* @WR_IV, align 4
  %80 = call i32 @uart_setmreg(%struct.uart_bas* %78, i32 %79, i32 0)
  %81 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %82 = call i32 @uart_barrier(%struct.uart_bas* %81)
  %83 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %84 = load i32, i32* @WR_TPC, align 4
  %85 = load %struct.z8530_softc*, %struct.z8530_softc** %3, align 8
  %86 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @uart_setmreg(%struct.uart_bas* %83, i32 %84, i32 %87)
  %89 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %90 = call i32 @uart_barrier(%struct.uart_bas* %89)
  %91 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %92 = load i32, i32* @WR_MIC, align 4
  %93 = load i32, i32* @MIC_NV, align 4
  %94 = load i32, i32* @MIC_MIE, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @uart_setmreg(%struct.uart_bas* %91, i32 %92, i32 %95)
  %97 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %98 = call i32 @uart_barrier(%struct.uart_bas* %97)
  ret i32 0
}

declare dso_local i32 @z8530_param(%struct.uart_bas*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @z8530_setup(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @z8530_bus_getsig(%struct.uart_softc*) #1

declare dso_local i32 @uart_setmreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
