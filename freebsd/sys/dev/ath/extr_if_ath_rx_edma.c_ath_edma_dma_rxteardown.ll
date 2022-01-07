; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_dma_rxteardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_dma_rxteardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HAL_RX_QUEUE_HP = common dso_local global i32 0, align 4
@HAL_RX_QUEUE_LP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_edma_dma_rxteardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_edma_dma_rxteardown(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %3 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %4 = call i32 @ATH_RX_LOCK(%struct.ath_softc* %3)
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = call i32 @ath_edma_flush_deferred_queue(%struct.ath_softc* %5)
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = load i32, i32* @HAL_RX_QUEUE_HP, align 4
  %9 = call i32 @ath_edma_rxfifo_flush(%struct.ath_softc* %7, i32 %8)
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = load i32, i32* @HAL_RX_QUEUE_HP, align 4
  %12 = call i32 @ath_edma_rxfifo_free(%struct.ath_softc* %10, i32 %11)
  %13 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %14 = load i32, i32* @HAL_RX_QUEUE_LP, align 4
  %15 = call i32 @ath_edma_rxfifo_flush(%struct.ath_softc* %13, i32 %14)
  %16 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %17 = load i32, i32* @HAL_RX_QUEUE_LP, align 4
  %18 = call i32 @ath_edma_rxfifo_free(%struct.ath_softc* %16, i32 %17)
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = call i32 @ATH_RX_UNLOCK(%struct.ath_softc* %19)
  %21 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %28 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 1
  %30 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 0
  %32 = call i32 @ath_descdma_cleanup(%struct.ath_softc* %27, %struct.TYPE_2__* %29, i32* %31)
  br label %33

33:                                               ; preds = %26, %1
  ret i32 0
}

declare dso_local i32 @ATH_RX_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_edma_flush_deferred_queue(%struct.ath_softc*) #1

declare dso_local i32 @ath_edma_rxfifo_flush(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_edma_rxfifo_free(%struct.ath_softc*, i32) #1

declare dso_local i32 @ATH_RX_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_descdma_cleanup(%struct.ath_softc*, %struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
