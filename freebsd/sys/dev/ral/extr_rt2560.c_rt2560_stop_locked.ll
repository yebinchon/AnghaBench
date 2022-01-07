; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@RT2560_F_INPUT_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ralrunning\00", align 1
@hz = common dso_local global i32 0, align 4
@RT2560_F_RUNNING = common dso_local global i32 0, align 4
@RT2560_TXCSR0 = common dso_local global i32 0, align 4
@RT2560_ABORT_TX = common dso_local global i32 0, align 4
@RT2560_RXCSR0 = common dso_local global i32 0, align 4
@RT2560_DISABLE_RX = common dso_local global i32 0, align 4
@RT2560_CSR1 = common dso_local global i32 0, align 4
@RT2560_RESET_ASIC = common dso_local global i32 0, align 4
@RT2560_CSR8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*)* @rt2560_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_stop_locked(%struct.rt2560_softc* %0) #0 {
  %2 = alloca %struct.rt2560_softc*, align 8
  %3 = alloca i32*, align 8
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %2, align 8
  %4 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %4, i32 0, i32 0
  store i32* %5, i32** %3, align 8
  %6 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %7 = call i32 @RAL_LOCK_ASSERT(%struct.rt2560_softc* %6)
  br label %8

8:                                                ; preds = %14, %1
  %9 = load i32*, i32** %3, align 8
  %10 = load volatile i32, i32* %9, align 4
  %11 = load volatile i32, i32* @RT2560_F_INPUT_RUNNING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %16 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %16, i32 0, i32 8
  %18 = load i32, i32* @hz, align 4
  %19 = sdiv i32 %18, 10
  %20 = call i32 @msleep(%struct.rt2560_softc* %15, i32* %17, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %22, i32 0, i32 7
  %24 = call i32 @callout_stop(i32* %23)
  %25 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %26 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RT2560_F_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %21
  %34 = load i32, i32* @RT2560_F_RUNNING, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %37 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %41 = load i32, i32* @RT2560_TXCSR0, align 4
  %42 = load i32, i32* @RT2560_ABORT_TX, align 4
  %43 = call i32 @RAL_WRITE(%struct.rt2560_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %45 = load i32, i32* @RT2560_RXCSR0, align 4
  %46 = load i32, i32* @RT2560_DISABLE_RX, align 4
  %47 = call i32 @RAL_WRITE(%struct.rt2560_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %49 = load i32, i32* @RT2560_CSR1, align 4
  %50 = load i32, i32* @RT2560_RESET_ASIC, align 4
  %51 = call i32 @RAL_WRITE(%struct.rt2560_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %53 = load i32, i32* @RT2560_CSR1, align 4
  %54 = call i32 @RAL_WRITE(%struct.rt2560_softc* %52, i32 %53, i32 0)
  %55 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %56 = load i32, i32* @RT2560_CSR8, align 4
  %57 = call i32 @RAL_WRITE(%struct.rt2560_softc* %55, i32 %56, i32 -1)
  %58 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %59 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %60 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %59, i32 0, i32 5
  %61 = call i32 @rt2560_reset_tx_ring(%struct.rt2560_softc* %58, i32* %60)
  %62 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %63 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %64 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %63, i32 0, i32 4
  %65 = call i32 @rt2560_reset_tx_ring(%struct.rt2560_softc* %62, i32* %64)
  %66 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %67 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %68 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %67, i32 0, i32 3
  %69 = call i32 @rt2560_reset_tx_ring(%struct.rt2560_softc* %66, i32* %68)
  %70 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %71 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %72 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %71, i32 0, i32 2
  %73 = call i32 @rt2560_reset_tx_ring(%struct.rt2560_softc* %70, i32* %72)
  %74 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %75 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %76 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %75, i32 0, i32 1
  %77 = call i32 @rt2560_reset_rx_ring(%struct.rt2560_softc* %74, i32* %76)
  br label %78

78:                                               ; preds = %33, %21
  ret void
}

declare dso_local i32 @RAL_LOCK_ASSERT(%struct.rt2560_softc*) #1

declare dso_local i32 @msleep(%struct.rt2560_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2560_softc*, i32, i32) #1

declare dso_local i32 @rt2560_reset_tx_ring(%struct.rt2560_softc*, i32*) #1

declare dso_local i32 @rt2560_reset_rx_ring(%struct.rt2560_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
