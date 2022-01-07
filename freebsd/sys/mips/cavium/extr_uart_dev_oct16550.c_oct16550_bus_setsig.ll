; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_bus_setsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_bus_setsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.oct16550_softc = type { i32 }

@SER_DDTR = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@SER_DRTS = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@REG_MCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32)* @oct16550_bus_setsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oct16550_bus_setsig(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.oct16550_softc*, align 8
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = bitcast %struct.uart_softc* %9 to %struct.oct16550_softc*
  store %struct.oct16550_softc* %10, %struct.oct16550_softc** %5, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 2
  store %struct.uart_bas* %12, %struct.uart_bas** %6, align 8
  br label %13

13:                                               ; preds = %44, %2
  %14 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %15 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SER_DDTR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SER_DTR, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SER_DTR, align 4
  %28 = load i32, i32* @SER_DDTR, align 4
  %29 = call i32 @SIGCHG(i32 %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %13
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SER_DRTS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SER_RTS, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SER_RTS, align 4
  %41 = load i32, i32* @SER_DRTS, align 4
  %42 = call i32 @SIGCHG(i32 %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %30
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %46 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @atomic_cmpset_32(i32* %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %13, label %52

52:                                               ; preds = %44
  %53 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %54 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @uart_lock(i32 %55)
  %57 = load i32, i32* @MCR_DTR, align 4
  %58 = load i32, i32* @MCR_RTS, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.oct16550_softc*, %struct.oct16550_softc** %5, align 8
  %62 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @SER_DTR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %52
  %70 = load i32, i32* @MCR_DTR, align 4
  %71 = load %struct.oct16550_softc*, %struct.oct16550_softc** %5, align 8
  %72 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %52
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @SER_RTS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* @MCR_RTS, align 4
  %82 = load %struct.oct16550_softc*, %struct.oct16550_softc** %5, align 8
  %83 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %75
  %87 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %88 = load i32, i32* @REG_MCR, align 4
  %89 = load %struct.oct16550_softc*, %struct.oct16550_softc** %5, align 8
  %90 = getelementptr inbounds %struct.oct16550_softc, %struct.oct16550_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @uart_setreg(%struct.uart_bas* %87, i32 %88, i32 %91)
  %93 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %94 = call i32 @uart_barrier(%struct.uart_bas* %93)
  %95 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %96 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @uart_unlock(i32 %97)
  ret i32 0
}

declare dso_local i32 @SIGCHG(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_cmpset_32(i32*, i32, i32) #1

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
