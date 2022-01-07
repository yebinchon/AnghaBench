; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i64, %struct.ifnet*, %struct.TYPE_2__, i64, i32 }
%struct.ifnet = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.stge_txdesc*, i32, %struct.stge_rxdesc* }
%struct.stge_txdesc = type { i32*, i32 }
%struct.stge_rxdesc = type { i32*, i32 }

@STGE_IntEnable = common dso_local global i32 0, align 4
@STGE_MACCtrl = common dso_local global i32 0, align 4
@MC_MASK = common dso_local global i32 0, align 4
@MC_StatisticsDisable = common dso_local global i32 0, align 4
@STGE_TFDListPtrHi = common dso_local global i32 0, align 4
@STGE_TFDListPtrLo = common dso_local global i32 0, align 4
@STGE_RFDListPtrHi = common dso_local global i32 0, align 4
@STGE_RFDListPtrLo = common dso_local global i32 0, align 4
@STGE_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@STGE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_stop(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.stge_txdesc*, align 8
  %5 = alloca %struct.stge_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %8 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %9 = call i32 @STGE_LOCK_ASSERT(%struct.stge_softc* %8)
  %10 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %10, i32 0, i32 4
  %12 = call i32 @callout_stop(i32* %11)
  %13 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %14 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %16 = load i32, i32* @STGE_IntEnable, align 4
  %17 = call i32 @CSR_WRITE_2(%struct.stge_softc* %15, i32 %16, i32 0)
  %18 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %19 = call i32 @stge_stop_rx(%struct.stge_softc* %18)
  %20 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %21 = call i32 @stge_stop_tx(%struct.stge_softc* %20)
  %22 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %23 = load i32, i32* @STGE_MACCtrl, align 4
  %24 = call i32 @CSR_READ_4(%struct.stge_softc* %22, i32 %23)
  %25 = load i32, i32* @MC_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @MC_StatisticsDisable, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %31 = load i32, i32* @STGE_MACCtrl, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @CSR_WRITE_4(%struct.stge_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %35 = call i32 @stge_dma_wait(%struct.stge_softc* %34)
  %36 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %37 = load i32, i32* @STGE_TFDListPtrHi, align 4
  %38 = call i32 @CSR_WRITE_4(%struct.stge_softc* %36, i32 %37, i32 0)
  %39 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %40 = load i32, i32* @STGE_TFDListPtrLo, align 4
  %41 = call i32 @CSR_WRITE_4(%struct.stge_softc* %39, i32 %40, i32 0)
  %42 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %43 = load i32, i32* @STGE_RFDListPtrHi, align 4
  %44 = call i32 @CSR_WRITE_4(%struct.stge_softc* %42, i32 %43, i32 0)
  %45 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %46 = load i32, i32* @STGE_RFDListPtrLo, align 4
  %47 = call i32 @CSR_WRITE_4(%struct.stge_softc* %45, i32 %46, i32 0)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %89, %1
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @STGE_RX_RING_CNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %54 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %56, i64 %58
  store %struct.stge_rxdesc* %59, %struct.stge_rxdesc** %5, align 8
  %60 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %5, align 8
  %61 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %52
  %65 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %5, align 8
  %70 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %73 = call i32 @bus_dmamap_sync(i32 %68, i32 %71, i32 %72)
  %74 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %75 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %5, align 8
  %79 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bus_dmamap_unload(i32 %77, i32 %80)
  %82 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %5, align 8
  %83 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @m_freem(i32* %84)
  %86 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %5, align 8
  %87 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %64, %52
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %48

92:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %134, %92
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @STGE_TX_RING_CNT, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %137

97:                                               ; preds = %93
  %98 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %99 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load %struct.stge_txdesc*, %struct.stge_txdesc** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %101, i64 %103
  store %struct.stge_txdesc* %104, %struct.stge_txdesc** %4, align 8
  %105 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %106 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %133

109:                                              ; preds = %97
  %110 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %111 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %115 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %118 = call i32 @bus_dmamap_sync(i32 %113, i32 %116, i32 %117)
  %119 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %120 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %124 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @bus_dmamap_unload(i32 %122, i32 %125)
  %127 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %128 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @m_freem(i32* %129)
  %131 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %132 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %131, i32 0, i32 0
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %109, %97
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %93

137:                                              ; preds = %93
  %138 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %139 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %138, i32 0, i32 1
  %140 = load %struct.ifnet*, %struct.ifnet** %139, align 8
  store %struct.ifnet* %140, %struct.ifnet** %3, align 8
  %141 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %142 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %150 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  ret void
}

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @stge_stop_rx(%struct.stge_softc*) #1

declare dso_local i32 @stge_stop_tx(%struct.stge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @stge_dma_wait(%struct.stge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
