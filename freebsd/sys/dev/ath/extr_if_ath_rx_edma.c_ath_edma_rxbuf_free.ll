; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_rxbuf_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_rxbuf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32 }
%struct.ath_buf = type { i32*, i32 }

@bf_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_buf*)* @ath_edma_rxbuf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_edma_rxbuf_free(%struct.ath_softc* %0, %struct.ath_buf* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_buf*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_buf* %1, %struct.ath_buf** %4, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %6 = call i32 @ATH_RX_LOCK_ASSERT(%struct.ath_softc* %5)
  %7 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %8 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %16 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @bus_dmamap_unload(i32 %14, i32 %17)
  %19 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %20 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @m_freem(i32* %21)
  %23 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %24 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %11, %2
  %26 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 0
  %28 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %29 = load i32, i32* @bf_list, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.ath_buf* %28, i32 %29)
  ret void
}

declare dso_local i32 @ATH_RX_LOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ath_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
