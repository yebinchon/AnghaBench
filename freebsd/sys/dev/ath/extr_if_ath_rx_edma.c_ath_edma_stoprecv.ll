; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_stoprecv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_stoprecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_2__*, %struct.ath_hal* }
%struct.TYPE_2__ = type { i32* }
%struct.ath_hal = type { i32 }

@AH_TRUE = common dso_local global i64 0, align 8
@HAL_RX_QUEUE_HP = common dso_local global i64 0, align 8
@HAL_RX_QUEUE_LP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, i32)* @ath_edma_stoprecv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_edma_stoprecv(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 2
  %8 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  store %struct.ath_hal* %8, %struct.ath_hal** %5, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = call i32 @ATH_RX_LOCK(%struct.ath_softc* %9)
  %11 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %12 = call i32 @ath_hal_stoppcurecv(%struct.ath_hal* %11)
  %13 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %14 = call i32 @ath_hal_setrxfilter(%struct.ath_hal* %13, i32 0)
  %15 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %16 = call i64 @ath_hal_stopdmarecv(%struct.ath_hal* %15)
  %17 = load i64, i64* @AH_TRUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = call i32 @DELAY(i32 3000)
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* @HAL_RX_QUEUE_HP, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %22
  %33 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* @HAL_RX_QUEUE_HP, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @m_freem(i32* %39)
  %41 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* @HAL_RX_QUEUE_HP, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %32, %22
  %48 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* @HAL_RX_QUEUE_LP, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %47
  %57 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* @HAL_RX_QUEUE_LP, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @m_freem(i32* %63)
  %65 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* @HAL_RX_QUEUE_LP, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %56, %47
  %72 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %73 = call i32 @ATH_RX_UNLOCK(%struct.ath_softc* %72)
  ret void
}

declare dso_local i32 @ATH_RX_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_hal_stoppcurecv(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_setrxfilter(%struct.ath_hal*, i32) #1

declare dso_local i64 @ath_hal_stopdmarecv(%struct.ath_hal*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ATH_RX_UNLOCK(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
