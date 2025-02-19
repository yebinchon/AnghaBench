; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_xmit_setup_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_xmit_setup_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@ath_legacy_dma_txsetup = common dso_local global i32 0, align 4
@ath_legacy_dma_txteardown = common dso_local global i32 0, align 4
@ath_legacy_attach_comp_func = common dso_local global i32 0, align 4
@ath_legacy_tx_dma_restart = common dso_local global i32 0, align 4
@ath_legacy_xmit_handoff = common dso_local global i32 0, align 4
@ath_legacy_tx_drain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_xmit_setup_legacy(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %3 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %3, i32 0, i32 0
  store i32 4, i32* %4, align 4
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 1
  store i32 4, i32* %6, align 4
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 2
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @ath_legacy_dma_txsetup, align 4
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @ath_legacy_dma_txteardown, align 4
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @ath_legacy_attach_comp_func, align 4
  %18 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @ath_legacy_tx_dma_restart, align 4
  %22 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @ath_legacy_xmit_handoff, align 4
  %26 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @ath_legacy_tx_drain, align 4
  %30 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
