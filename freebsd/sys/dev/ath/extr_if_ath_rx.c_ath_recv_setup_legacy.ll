; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx.c_ath_recv_setup_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx.c_ath_recv_setup_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ath_legacy_startrecv = common dso_local global i32 0, align 4
@ath_legacy_stoprecv = common dso_local global i32 0, align 4
@ath_legacy_flushrecv = common dso_local global i32 0, align 4
@ath_legacy_rx_tasklet = common dso_local global i32 0, align 4
@ath_legacy_rxbuf_init = common dso_local global i32 0, align 4
@ath_legacy_dma_rxsetup = common dso_local global i32 0, align 4
@ath_legacy_dma_rxteardown = common dso_local global i32 0, align 4
@ath_legacy_recv_sched = common dso_local global i32 0, align 4
@ath_legacy_recv_sched_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_recv_setup_legacy(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %3 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %3, i32 0, i32 0
  store i32 4, i32* %4, align 4
  %5 = load i32, i32* @ath_legacy_startrecv, align 4
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 8
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @ath_legacy_stoprecv, align 4
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 7
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @ath_legacy_flushrecv, align 4
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @ath_legacy_rx_tasklet, align 4
  %18 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @ath_legacy_rxbuf_init, align 4
  %22 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @ath_legacy_dma_rxsetup, align 4
  %26 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @ath_legacy_dma_rxteardown, align 4
  %30 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @ath_legacy_recv_sched, align 4
  %34 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @ath_legacy_recv_sched_queue, align 4
  %38 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
