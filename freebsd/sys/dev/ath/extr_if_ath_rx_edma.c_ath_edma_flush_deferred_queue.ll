; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_flush_deferred_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_flush_deferred_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32* }
%struct.ath_buf = type { i32 }

@HAL_RX_QUEUE_LP = common dso_local global i64 0, align 8
@bf_list = common dso_local global i32 0, align 4
@HAL_RX_QUEUE_HP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath_edma_flush_deferred_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_edma_flush_deferred_queue(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_buf*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %4 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %5 = call i32 @ATH_RX_LOCK_ASSERT(%struct.ath_softc* %4)
  br label %6

6:                                                ; preds = %15, %1
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @HAL_RX_QUEUE_LP, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = call i32 @TAILQ_EMPTY(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %33

15:                                               ; preds = %6
  %16 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @HAL_RX_QUEUE_LP, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call %struct.ath_buf* @TAILQ_FIRST(i32* %20)
  store %struct.ath_buf* %21, %struct.ath_buf** %3, align 8
  %22 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @HAL_RX_QUEUE_LP, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %28 = load i32, i32* @bf_list, align 4
  %29 = call i32 @TAILQ_REMOVE(i32* %26, %struct.ath_buf* %27, i32 %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %31 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %32 = call i32 @ath_edma_rxbuf_free(%struct.ath_softc* %30, %struct.ath_buf* %31)
  br label %6

33:                                               ; preds = %6
  br label %34

34:                                               ; preds = %43, %33
  %35 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @HAL_RX_QUEUE_HP, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @TAILQ_EMPTY(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %61

43:                                               ; preds = %34
  %44 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @HAL_RX_QUEUE_HP, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = call %struct.ath_buf* @TAILQ_FIRST(i32* %48)
  store %struct.ath_buf* %49, %struct.ath_buf** %3, align 8
  %50 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @HAL_RX_QUEUE_HP, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %56 = load i32, i32* @bf_list, align 4
  %57 = call i32 @TAILQ_REMOVE(i32* %54, %struct.ath_buf* %55, i32 %56)
  %58 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %59 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %60 = call i32 @ath_edma_rxbuf_free(%struct.ath_softc* %58, %struct.ath_buf* %59)
  br label %34

61:                                               ; preds = %34
  ret void
}

declare dso_local i32 @ATH_RX_LOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.ath_buf* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ath_buf*, i32) #1

declare dso_local i32 @ath_edma_rxbuf_free(%struct.ath_softc*, %struct.ath_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
