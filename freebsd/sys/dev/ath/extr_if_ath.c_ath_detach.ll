; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_detach(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %3 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %4 = call i32 @ATH_LOCK(%struct.ath_softc* %3)
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = load i32, i32* @HAL_PM_AWAKE, align 4
  %7 = call i32 @ath_power_set_power_state(%struct.ath_softc* %5, i32 %6)
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = load i32, i32* @HAL_PM_AWAKE, align 4
  %10 = call i32 @ath_power_setpower(%struct.ath_softc* %8, i32 %9, i32 1)
  %11 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %12 = call i32 @ath_stop(%struct.ath_softc* %11)
  %13 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %14 = call i32 @ATH_UNLOCK(%struct.ath_softc* %13)
  %15 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 5
  %17 = call i32 @ieee80211_ifdetach(i32* %16)
  %18 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @taskqueue_free(i32 %20)
  %22 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ath_rate_detach(i32 %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %27 = call i32 @ath_lna_div_detach(%struct.ath_softc* %26)
  %28 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %29 = call i32 @ath_btcoex_detach(%struct.ath_softc* %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %31 = call i32 @ath_spectral_detach(%struct.ath_softc* %30)
  %32 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %33 = call i32 @ath_dfs_detach(%struct.ath_softc* %32)
  %34 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %35 = call i32 @ath_desc_free(%struct.ath_softc* %34)
  %36 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %37 = call i32 @ath_txdma_teardown(%struct.ath_softc* %36)
  %38 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %39 = call i32 @ath_rxdma_teardown(%struct.ath_softc* %38)
  %40 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %41 = call i32 @ath_tx_cleanup(%struct.ath_softc* %40)
  %42 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ath_hal_detach(i32 %44)
  ret i32 0
}

declare dso_local i32 @ATH_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_power_setpower(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ath_stop(%struct.ath_softc*) #1

declare dso_local i32 @ATH_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ieee80211_ifdetach(i32*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @ath_rate_detach(i32) #1

declare dso_local i32 @ath_lna_div_detach(%struct.ath_softc*) #1

declare dso_local i32 @ath_btcoex_detach(%struct.ath_softc*) #1

declare dso_local i32 @ath_spectral_detach(%struct.ath_softc*) #1

declare dso_local i32 @ath_dfs_detach(%struct.ath_softc*) #1

declare dso_local i32 @ath_desc_free(%struct.ath_softc*) #1

declare dso_local i32 @ath_txdma_teardown(%struct.ath_softc*) #1

declare dso_local i32 @ath_rxdma_teardown(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_cleanup(%struct.ath_softc*) #1

declare dso_local i32 @ath_hal_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
