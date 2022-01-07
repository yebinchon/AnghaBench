; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { %struct.TYPE_2__, i64, i32, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, %struct.ale_txdesc* }
%struct.ale_txdesc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ALE_FLAG_LINK = common dso_local global i32 0, align 4
@ALE_INTR_MASK = common dso_local global i32 0, align 4
@ALE_INTR_STATUS = common dso_local global i32 0, align 4
@ALE_TXQ_CFG = common dso_local global i32 0, align 4
@TXQ_CFG_ENB = common dso_local global i32 0, align 4
@ALE_RXQ_CFG = common dso_local global i32 0, align 4
@RXQ_CFG_ENB = common dso_local global i32 0, align 4
@ALE_DMA_CFG = common dso_local global i32 0, align 4
@DMA_CFG_TXCMB_ENB = common dso_local global i32 0, align 4
@DMA_CFG_RXCMB_ENB = common dso_local global i32 0, align 4
@ALE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_stop(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ale_txdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %7 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %8 = call i32 @ALE_LOCK_ASSERT(%struct.ale_softc* %7)
  %9 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %9, i32 0, i32 4
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @ALE_FLAG_LINK, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %26, i32 0, i32 2
  %28 = call i32 @callout_stop(i32* %27)
  %29 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %32 = call i32 @ale_stats_update(%struct.ale_softc* %31)
  %33 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %34 = load i32, i32* @ALE_INTR_MASK, align 4
  %35 = call i32 @CSR_WRITE_4(%struct.ale_softc* %33, i32 %34, i32 0)
  %36 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %37 = load i32, i32* @ALE_INTR_STATUS, align 4
  %38 = call i32 @CSR_WRITE_4(%struct.ale_softc* %36, i32 %37, i32 -1)
  %39 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %40 = load i32, i32* @ALE_TXQ_CFG, align 4
  %41 = call i32 @CSR_READ_4(%struct.ale_softc* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @TXQ_CFG_ENB, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %47 = load i32, i32* @ALE_TXQ_CFG, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @CSR_WRITE_4(%struct.ale_softc* %46, i32 %47, i32 %48)
  %50 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %51 = load i32, i32* @ALE_RXQ_CFG, align 4
  %52 = call i32 @CSR_READ_4(%struct.ale_softc* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @RXQ_CFG_ENB, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %58 = load i32, i32* @ALE_RXQ_CFG, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @CSR_WRITE_4(%struct.ale_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %62 = load i32, i32* @ALE_DMA_CFG, align 4
  %63 = call i32 @CSR_READ_4(%struct.ale_softc* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @DMA_CFG_TXCMB_ENB, align 4
  %65 = load i32, i32* @DMA_CFG_RXCMB_ENB, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %71 = load i32, i32* @ALE_DMA_CFG, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @CSR_WRITE_4(%struct.ale_softc* %70, i32 %71, i32 %72)
  %74 = call i32 @DELAY(i32 1000)
  %75 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %76 = call i32 @ale_stop_mac(%struct.ale_softc* %75)
  %77 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %78 = load i32, i32* @ALE_INTR_STATUS, align 4
  %79 = call i32 @CSR_WRITE_4(%struct.ale_softc* %77, i32 %78, i32 -1)
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %121, %1
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @ALE_TX_RING_CNT, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %80
  %85 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %86 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load %struct.ale_txdesc*, %struct.ale_txdesc** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %88, i64 %90
  store %struct.ale_txdesc* %91, %struct.ale_txdesc** %4, align 8
  %92 = load %struct.ale_txdesc*, %struct.ale_txdesc** %4, align 8
  %93 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %120

96:                                               ; preds = %84
  %97 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ale_txdesc*, %struct.ale_txdesc** %4, align 8
  %102 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %105 = call i32 @bus_dmamap_sync(i32 %100, i32 %103, i32 %104)
  %106 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %107 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ale_txdesc*, %struct.ale_txdesc** %4, align 8
  %111 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @bus_dmamap_unload(i32 %109, i32 %112)
  %114 = load %struct.ale_txdesc*, %struct.ale_txdesc** %4, align 8
  %115 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @m_freem(i32* %116)
  %118 = load %struct.ale_txdesc*, %struct.ale_txdesc** %4, align 8
  %119 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %96, %84
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %80

124:                                              ; preds = %80
  ret void
}

declare dso_local i32 @ALE_LOCK_ASSERT(%struct.ale_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ale_stats_update(%struct.ale_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ale_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ale_stop_mac(%struct.ale_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
