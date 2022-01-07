; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_setsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_setsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ns8250_softc = type { i32 }

@SER_DDTR = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@SER_DRTS = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@REG_MCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns8250_bus_setsig(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ns8250_softc*, align 8
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = bitcast %struct.uart_softc* %9 to %struct.ns8250_softc*
  store %struct.ns8250_softc* %10, %struct.ns8250_softc** %5, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 2
  store %struct.uart_bas* %12, %struct.uart_bas** %6, align 8
  br label %13

13:                                               ; preds = %50, %2
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
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SER_DTR, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SER_DTR, align 4
  %29 = load i32, i32* @SER_DDTR, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = or i32 %26, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %22, %13
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SER_DRTS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SER_RTS, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SER_RTS, align 4
  %45 = load i32, i32* @SER_DRTS, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = or i32 %42, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %38, %33
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @atomic_cmpset_32(i32* %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %13, label %58

58:                                               ; preds = %50
  %59 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %60 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @uart_lock(i32 %61)
  %63 = load i32, i32* @MCR_DTR, align 4
  %64 = load i32, i32* @MCR_RTS, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %68 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SER_DTR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %58
  %76 = load i32, i32* @MCR_DTR, align 4
  %77 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %78 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %58
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @SER_RTS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* @MCR_RTS, align 4
  %88 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %89 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %81
  %93 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %94 = load i32, i32* @REG_MCR, align 4
  %95 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %96 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @uart_setreg(%struct.uart_bas* %93, i32 %94, i32 %97)
  %99 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %100 = call i32 @uart_barrier(%struct.uart_bas* %99)
  %101 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %102 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @uart_unlock(i32 %103)
  ret i32 0
}

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
