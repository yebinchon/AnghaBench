; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { %struct.TYPE_2__, i64, i32, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, %struct.alc_txdesc*, i32, %struct.alc_rxdesc*, i32* }
%struct.alc_txdesc = type { i32*, i32 }
%struct.alc_rxdesc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ALC_FLAG_LINK = common dso_local global i32 0, align 4
@ALC_INTR_MASK = common dso_local global i32 0, align 4
@ALC_INTR_STATUS = common dso_local global i32 0, align 4
@ALC_DMA_CFG = common dso_local global i32 0, align 4
@DMA_CFG_CMB_ENB = common dso_local global i32 0, align 4
@DMA_CFG_SMB_ENB = common dso_local global i32 0, align 4
@DMA_CFG_SMB_DIS = common dso_local global i32 0, align 4
@IFM_UNKNOWN = common dso_local global i32 0, align 4
@ALC_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@ALC_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_stop(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.alc_txdesc*, align 8
  %5 = alloca %struct.alc_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %8 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %9 = call i32 @ALC_LOCK_ASSERT(%struct.alc_softc* %8)
  %10 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %10, i32 0, i32 4
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @ALC_FLAG_LINK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %28 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %27, i32 0, i32 2
  %29 = call i32 @callout_stop(i32* %28)
  %30 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %31 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %33 = call i32 @alc_stats_update(%struct.alc_softc* %32)
  %34 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %35 = load i32, i32* @ALC_INTR_MASK, align 4
  %36 = call i32 @CSR_WRITE_4(%struct.alc_softc* %34, i32 %35, i32 0)
  %37 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %38 = load i32, i32* @ALC_INTR_STATUS, align 4
  %39 = call i32 @CSR_WRITE_4(%struct.alc_softc* %37, i32 %38, i32 -1)
  %40 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %41 = load i32, i32* @ALC_DMA_CFG, align 4
  %42 = call i32 @CSR_READ_4(%struct.alc_softc* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @DMA_CFG_CMB_ENB, align 4
  %44 = load i32, i32* @DMA_CFG_SMB_ENB, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @DMA_CFG_SMB_DIS, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %53 = load i32, i32* @ALC_DMA_CFG, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @CSR_WRITE_4(%struct.alc_softc* %52, i32 %53, i32 %54)
  %56 = call i32 @DELAY(i32 1000)
  %57 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %58 = call i32 @alc_stop_mac(%struct.alc_softc* %57)
  %59 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %60 = load i32, i32* @ALC_INTR_STATUS, align 4
  %61 = call i32 @CSR_WRITE_4(%struct.alc_softc* %59, i32 %60, i32 -1)
  %62 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %63 = load i32, i32* @IFM_UNKNOWN, align 4
  %64 = call i32 @alc_aspm(%struct.alc_softc* %62, i32 0, i32 %63)
  %65 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %66 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %1
  %71 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %72 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @m_freem(i32* %74)
  br label %76

76:                                               ; preds = %70, %1
  %77 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %78 = call i32 @ALC_RXCHAIN_RESET(%struct.alc_softc* %77)
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %120, %76
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @ALC_RX_RING_CNT, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %123

83:                                               ; preds = %79
  %84 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %85 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %87, i64 %89
  store %struct.alc_rxdesc* %90, %struct.alc_rxdesc** %5, align 8
  %91 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %5, align 8
  %92 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %119

95:                                               ; preds = %83
  %96 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %97 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %5, align 8
  %101 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %104 = call i32 @bus_dmamap_sync(i32 %99, i32 %102, i32 %103)
  %105 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %106 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %5, align 8
  %110 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bus_dmamap_unload(i32 %108, i32 %111)
  %113 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %5, align 8
  %114 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @m_freem(i32* %115)
  %117 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %5, align 8
  %118 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %95, %83
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %79

123:                                              ; preds = %79
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %165, %123
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @ALC_TX_RING_CNT, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %168

128:                                              ; preds = %124
  %129 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %130 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load %struct.alc_txdesc*, %struct.alc_txdesc** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %132, i64 %134
  store %struct.alc_txdesc* %135, %struct.alc_txdesc** %4, align 8
  %136 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %137 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %164

140:                                              ; preds = %128
  %141 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %142 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %146 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %149 = call i32 @bus_dmamap_sync(i32 %144, i32 %147, i32 %148)
  %150 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %151 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %155 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @bus_dmamap_unload(i32 %153, i32 %156)
  %158 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %159 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @m_freem(i32* %160)
  %162 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %163 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %162, i32 0, i32 0
  store i32* null, i32** %163, align 8
  br label %164

164:                                              ; preds = %140, %128
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %124

168:                                              ; preds = %124
  ret void
}

declare dso_local i32 @ALC_LOCK_ASSERT(%struct.alc_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @alc_stats_update(%struct.alc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @alc_stop_mac(%struct.alc_softc*) #1

declare dso_local i32 @alc_aspm(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ALC_RXCHAIN_RESET(%struct.alc_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
