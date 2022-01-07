; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_setsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_setsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.z8530_softc = type { i32 }

@SER_DDTR = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@SER_DRTS = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@TPC_DTR = common dso_local global i32 0, align 4
@TPC_RTS = common dso_local global i32 0, align 4
@WR_TPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32)* @z8530_bus_setsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_bus_setsig(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.z8530_softc*, align 8
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = bitcast %struct.uart_softc* %9 to %struct.z8530_softc*
  store %struct.z8530_softc* %10, %struct.z8530_softc** %5, align 8
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
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SER_DTR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* @TPC_DTR, align 4
  %63 = load %struct.z8530_softc*, %struct.z8530_softc** %5, align 8
  %64 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %74

67:                                               ; preds = %52
  %68 = load i32, i32* @TPC_DTR, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.z8530_softc*, %struct.z8530_softc** %5, align 8
  %71 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %67, %61
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @SER_RTS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @TPC_RTS, align 4
  %81 = load %struct.z8530_softc*, %struct.z8530_softc** %5, align 8
  %82 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %92

85:                                               ; preds = %74
  %86 = load i32, i32* @TPC_RTS, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.z8530_softc*, %struct.z8530_softc** %5, align 8
  %89 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %79
  %93 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %94 = load i32, i32* @WR_TPC, align 4
  %95 = load %struct.z8530_softc*, %struct.z8530_softc** %5, align 8
  %96 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @uart_setmreg(%struct.uart_bas* %93, i32 %94, i32 %97)
  %99 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %100 = call i32 @uart_barrier(%struct.uart_bas* %99)
  %101 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %102 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @uart_unlock(i32 %103)
  ret i32 0
}

declare dso_local i32 @SIGCHG(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_cmpset_32(i32*, i32, i32) #1

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_setmreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
