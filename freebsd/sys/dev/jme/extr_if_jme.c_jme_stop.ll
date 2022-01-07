; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { %struct.TYPE_2__, i64, i32, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, %struct.jme_txdesc*, i32, %struct.jme_rxdesc*, i32* }
%struct.jme_txdesc = type { i64, i32*, i32 }
%struct.jme_rxdesc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@JME_FLAG_LINK = common dso_local global i32 0, align 4
@JME_INTR_MASK_CLR = common dso_local global i32 0, align 4
@JME_INTRS = common dso_local global i32 0, align 4
@JME_INTR_STATUS = common dso_local global i32 0, align 4
@JME_SHBASE_ADDR_LO = common dso_local global i32 0, align 4
@SHBASE_POST_ENB = common dso_local global i32 0, align 4
@JME_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@JME_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_stop(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.jme_txdesc*, align 8
  %5 = alloca %struct.jme_rxdesc*, align 8
  %6 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %7 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %8 = call i32 @JME_LOCK_ASSERT(%struct.jme_softc* %7)
  %9 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %10 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %9, i32 0, i32 4
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
  %20 = load i32, i32* @JME_FLAG_LINK, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %23 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %27 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %26, i32 0, i32 2
  %28 = call i32 @callout_stop(i32* %27)
  %29 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %30 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %32 = load i32, i32* @JME_INTR_MASK_CLR, align 4
  %33 = load i32, i32* @JME_INTRS, align 4
  %34 = call i32 @CSR_WRITE_4(%struct.jme_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %36 = load i32, i32* @JME_INTR_STATUS, align 4
  %37 = call i32 @CSR_WRITE_4(%struct.jme_softc* %35, i32 %36, i32 -1)
  %38 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %39 = load i32, i32* @JME_SHBASE_ADDR_LO, align 4
  %40 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %41 = load i32, i32* @JME_SHBASE_ADDR_LO, align 4
  %42 = call i32 @CSR_READ_4(%struct.jme_softc* %40, i32 %41)
  %43 = load i32, i32* @SHBASE_POST_ENB, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i32 @CSR_WRITE_4(%struct.jme_softc* %38, i32 %39, i32 %45)
  %47 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %48 = call i32 @jme_stop_rx(%struct.jme_softc* %47)
  %49 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %50 = call i32 @jme_stop_tx(%struct.jme_softc* %49)
  %51 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %52 = load i32, i32* @JME_RX_RING_CNT, align 4
  %53 = call i32 @jme_rxintr(%struct.jme_softc* %51, i32 %52)
  %54 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %55 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %1
  %60 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %61 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @m_freem(i32* %63)
  br label %65

65:                                               ; preds = %59, %1
  %66 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %67 = call i32 @JME_RXCHAIN_RESET(%struct.jme_softc* %66)
  %68 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %69 = call i32 @jme_txeof(%struct.jme_softc* %68)
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %111, %65
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @JME_RX_RING_CNT, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %114

74:                                               ; preds = %70
  %75 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %76 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %78, i64 %80
  store %struct.jme_rxdesc* %81, %struct.jme_rxdesc** %5, align 8
  %82 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %83 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %110

86:                                               ; preds = %74
  %87 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %88 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %92 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %95 = call i32 @bus_dmamap_sync(i32 %90, i32 %93, i32 %94)
  %96 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %97 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %101 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @bus_dmamap_unload(i32 %99, i32 %102)
  %104 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %105 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @m_freem(i32* %106)
  %108 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %109 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %86, %74
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %70

114:                                              ; preds = %70
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %158, %114
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @JME_TX_RING_CNT, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %161

119:                                              ; preds = %115
  %120 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %121 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load %struct.jme_txdesc*, %struct.jme_txdesc** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %123, i64 %125
  store %struct.jme_txdesc* %126, %struct.jme_txdesc** %4, align 8
  %127 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %128 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %157

131:                                              ; preds = %119
  %132 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %133 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %137 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %140 = call i32 @bus_dmamap_sync(i32 %135, i32 %138, i32 %139)
  %141 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %142 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %146 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @bus_dmamap_unload(i32 %144, i32 %147)
  %149 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %150 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @m_freem(i32* %151)
  %153 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %154 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %153, i32 0, i32 1
  store i32* null, i32** %154, align 8
  %155 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %156 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %155, i32 0, i32 0
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %131, %119
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %115

161:                                              ; preds = %115
  %162 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %163 = call i32 @jme_stats_update(%struct.jme_softc* %162)
  %164 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %165 = call i32 @jme_stats_save(%struct.jme_softc* %164)
  ret void
}

declare dso_local i32 @JME_LOCK_ASSERT(%struct.jme_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @jme_stop_rx(%struct.jme_softc*) #1

declare dso_local i32 @jme_stop_tx(%struct.jme_softc*) #1

declare dso_local i32 @jme_rxintr(%struct.jme_softc*, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @JME_RXCHAIN_RESET(%struct.jme_softc*) #1

declare dso_local i32 @jme_txeof(%struct.jme_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @jme_stats_update(%struct.jme_softc*) #1

declare dso_local i32 @jme_stats_save(%struct.jme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
