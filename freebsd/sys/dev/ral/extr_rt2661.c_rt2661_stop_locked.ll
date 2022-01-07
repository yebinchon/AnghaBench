; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32, i32, i32, i32*, i64, i32, i32 }

@RAL_INPUT_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ralrunning\00", align 1
@hz = common dso_local global i32 0, align 4
@RAL_RUNNING = common dso_local global i32 0, align 4
@RT2661_TX_CNTL_CSR = common dso_local global i32 0, align 4
@RT2661_TXRX_CSR0 = common dso_local global i32 0, align 4
@RT2661_DISABLE_RX = common dso_local global i32 0, align 4
@RT2661_MAC_CSR1 = common dso_local global i32 0, align 4
@RT2661_INT_MASK_CSR = common dso_local global i32 0, align 4
@RT2661_MCU_INT_MASK_CSR = common dso_local global i32 0, align 4
@RT2661_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@RT2661_MCU_INT_SOURCE_CSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2661_stop_locked(%struct.rt2661_softc* %0) #0 {
  %2 = alloca %struct.rt2661_softc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %2, align 8
  %5 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %5, i32 0, i32 0
  store i32* %6, i32** %3, align 8
  br label %7

7:                                                ; preds = %13, %1
  %8 = load i32*, i32** %3, align 8
  %9 = load volatile i32, i32* %8, align 4
  %10 = load volatile i32, i32* @RAL_INPUT_RUNNING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %15 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %16 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %15, i32 0, i32 6
  %17 = load i32, i32* @hz, align 4
  %18 = sdiv i32 %17, 10
  %19 = call i32 @msleep(%struct.rt2661_softc* %14, i32* %16, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %7

20:                                               ; preds = %7
  %21 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %21, i32 0, i32 5
  %23 = call i32 @callout_stop(i32* %22)
  %24 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %25 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %27 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RAL_RUNNING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %101

32:                                               ; preds = %20
  %33 = load i32, i32* @RAL_RUNNING, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %36 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %40 = load i32, i32* @RT2661_TX_CNTL_CSR, align 4
  %41 = call i32 @RAL_WRITE(%struct.rt2661_softc* %39, i32 %40, i32 2031616)
  %42 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %43 = load i32, i32* @RT2661_TXRX_CSR0, align 4
  %44 = call i32 @RAL_READ(%struct.rt2661_softc* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %46 = load i32, i32* @RT2661_TXRX_CSR0, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @RT2661_DISABLE_RX, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @RAL_WRITE(%struct.rt2661_softc* %45, i32 %46, i32 %49)
  %51 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %52 = load i32, i32* @RT2661_MAC_CSR1, align 4
  %53 = call i32 @RAL_WRITE(%struct.rt2661_softc* %51, i32 %52, i32 3)
  %54 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %55 = load i32, i32* @RT2661_MAC_CSR1, align 4
  %56 = call i32 @RAL_WRITE(%struct.rt2661_softc* %54, i32 %55, i32 0)
  %57 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %58 = load i32, i32* @RT2661_INT_MASK_CSR, align 4
  %59 = call i32 @RAL_WRITE(%struct.rt2661_softc* %57, i32 %58, i32 -1)
  %60 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %61 = load i32, i32* @RT2661_MCU_INT_MASK_CSR, align 4
  %62 = call i32 @RAL_WRITE(%struct.rt2661_softc* %60, i32 %61, i32 -1)
  %63 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %64 = load i32, i32* @RT2661_INT_SOURCE_CSR, align 4
  %65 = call i32 @RAL_WRITE(%struct.rt2661_softc* %63, i32 %64, i32 -1)
  %66 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %67 = load i32, i32* @RT2661_MCU_INT_SOURCE_CSR, align 4
  %68 = call i32 @RAL_WRITE(%struct.rt2661_softc* %66, i32 %67, i32 -1)
  %69 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %70 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %71 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = call i32 @rt2661_reset_tx_ring(%struct.rt2661_softc* %69, i32* %73)
  %75 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %76 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %77 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = call i32 @rt2661_reset_tx_ring(%struct.rt2661_softc* %75, i32* %79)
  %81 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %82 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %83 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = call i32 @rt2661_reset_tx_ring(%struct.rt2661_softc* %81, i32* %85)
  %87 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %88 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %89 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = call i32 @rt2661_reset_tx_ring(%struct.rt2661_softc* %87, i32* %91)
  %93 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %94 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %95 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %94, i32 0, i32 2
  %96 = call i32 @rt2661_reset_tx_ring(%struct.rt2661_softc* %93, i32* %95)
  %97 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %98 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %99 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %98, i32 0, i32 1
  %100 = call i32 @rt2661_reset_rx_ring(%struct.rt2661_softc* %97, i32* %99)
  br label %101

101:                                              ; preds = %32, %20
  ret void
}

declare dso_local i32 @msleep(%struct.rt2661_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2661_softc*, i32, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @rt2661_reset_tx_ring(%struct.rt2661_softc*, i32*) #1

declare dso_local i32 @rt2661_reset_rx_ring(%struct.rt2661_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
