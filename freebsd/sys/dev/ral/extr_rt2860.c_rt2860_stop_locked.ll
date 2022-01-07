; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i32, i32*, i64, i64, i32 }

@RT2860_RUNNING = common dso_local global i32 0, align 4
@RT2860_INT_MASK = common dso_local global i32 0, align 4
@RT2860_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_MAC_RX_EN = common dso_local global i32 0, align 4
@RT2860_MAC_TX_EN = common dso_local global i32 0, align 4
@RT2860_BBP_HRST = common dso_local global i32 0, align 4
@RT2860_MAC_SRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt2860_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_stop_locked(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %5 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RT2860_RUNNING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %13 = call i32 @rt2860_set_leds(%struct.rt2860_softc* %12, i32 0)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %16 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %15, i32 0, i32 5
  %17 = call i32 @callout_stop(i32* %16)
  %18 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %19 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @RT2860_RUNNING, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %27 = load i32, i32* @RT2860_INT_MASK, align 4
  %28 = call i32 @RAL_WRITE(%struct.rt2860_softc* %26, i32 %27, i32 0)
  %29 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %30 = call i32 @rt2860_set_gp_timer(%struct.rt2860_softc* %29, i32 0)
  %31 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %32 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %33 = call i32 @RAL_READ(%struct.rt2860_softc* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @RT2860_MAC_RX_EN, align 4
  %35 = load i32, i32* @RT2860_MAC_TX_EN, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %41 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @RAL_WRITE(%struct.rt2860_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %45 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %46 = load i32, i32* @RT2860_BBP_HRST, align 4
  %47 = load i32, i32* @RT2860_MAC_SRST, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @RAL_WRITE(%struct.rt2860_softc* %44, i32 %45, i32 %48)
  %50 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %51 = call i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc* %50)
  %52 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %53 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %54 = call i32 @RAL_WRITE(%struct.rt2860_softc* %52, i32 %53, i32 0)
  %55 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %69, %14
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %62 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %63 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @rt2860_reset_tx_ring(%struct.rt2860_softc* %61, i32* %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %57

72:                                               ; preds = %57
  %73 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %74 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %75 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %74, i32 0, i32 1
  %76 = call i32 @rt2860_reset_rx_ring(%struct.rt2860_softc* %73, i32* %75)
  ret void
}

declare dso_local i32 @rt2860_set_leds(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt2860_set_gp_timer(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_reset_tx_ring(%struct.rt2860_softc*, i32*) #1

declare dso_local i32 @rt2860_reset_rx_ring(%struct.rt2860_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
