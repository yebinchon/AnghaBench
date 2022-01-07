; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_rxfifo_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_rxfifo_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_rx_edma* }
%struct.ath_rx_edma = type { i32, i64, i64, i64, i32*, %struct.ath_buf** }
%struct.ath_buf = type { i32 }

@ATH_DEBUG_RECV_DESC = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i64)* @ath_edma_rxfifo_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_edma_rxfifo_flush(%struct.ath_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath_rx_edma*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 1
  %9 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %9, i64 %10
  store %struct.ath_rx_edma* %11, %struct.ath_rx_edma** %5, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = call i32 @ATH_RX_LOCK_ASSERT(%struct.ath_softc* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %50, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %17 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %14
  %21 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %22 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %21, i32 0, i32 5
  %23 = load %struct.ath_buf**, %struct.ath_buf*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ath_buf*, %struct.ath_buf** %23, i64 %25
  %27 = load %struct.ath_buf*, %struct.ath_buf** %26, align 8
  %28 = icmp ne %struct.ath_buf* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %20
  %30 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %31 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %32 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %31, i32 0, i32 5
  %33 = load %struct.ath_buf**, %struct.ath_buf*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ath_buf*, %struct.ath_buf** %33, i64 %35
  %37 = load %struct.ath_buf*, %struct.ath_buf** %36, align 8
  %38 = call i32 @ath_edma_rxbuf_free(%struct.ath_softc* %30, %struct.ath_buf* %37)
  %39 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %40 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %39, i32 0, i32 5
  %41 = load %struct.ath_buf**, %struct.ath_buf*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ath_buf*, %struct.ath_buf** %41, i64 %43
  store %struct.ath_buf* null, %struct.ath_buf** %44, align 8
  %45 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %46 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %29, %20
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %14

53:                                               ; preds = %14
  %54 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %55 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %60 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @m_freem(i32* %61)
  %63 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %64 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %67 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %69 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.ath_rx_edma*, %struct.ath_rx_edma** %5, align 8
  %71 = getelementptr inbounds %struct.ath_rx_edma, %struct.ath_rx_edma* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  ret i32 0
}

declare dso_local i32 @ATH_RX_LOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @ath_edma_rxbuf_free(%struct.ath_softc*, %struct.ath_buf*) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
