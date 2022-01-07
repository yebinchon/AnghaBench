; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { %struct.TYPE_2__, i64, i32, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32**, i32, %struct.vte_txdesc*, i32, %struct.vte_rxdesc* }
%struct.vte_txdesc = type { i32, i32*, i32 }
%struct.vte_rxdesc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@VTE_FLAG_LINK = common dso_local global i32 0, align 4
@VTE_MIER = common dso_local global i32 0, align 4
@VTE_MECIER = common dso_local global i32 0, align 4
@VTE_MISR = common dso_local global i32 0, align 4
@VTE_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@VTE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@VTE_TXMBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_stop(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.vte_txdesc*, align 8
  %5 = alloca %struct.vte_rxdesc*, align 8
  %6 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %7 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %8 = call i32 @VTE_LOCK_ASSERT(%struct.vte_softc* %7)
  %9 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %9, i32 0, i32 4
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
  %20 = load i32, i32* @VTE_FLAG_LINK, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %23 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %26, i32 0, i32 2
  %28 = call i32 @callout_stop(i32* %27)
  %29 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %30 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %32 = call i32 @vte_stats_update(%struct.vte_softc* %31)
  %33 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %34 = load i32, i32* @VTE_MIER, align 4
  %35 = call i32 @CSR_WRITE_2(%struct.vte_softc* %33, i32 %34, i32 0)
  %36 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %37 = load i32, i32* @VTE_MECIER, align 4
  %38 = call i32 @CSR_WRITE_2(%struct.vte_softc* %36, i32 %37, i32 0)
  %39 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %40 = call i32 @vte_stop_mac(%struct.vte_softc* %39)
  %41 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %42 = load i32, i32* @VTE_MISR, align 4
  %43 = call i32 @CSR_READ_2(%struct.vte_softc* %41, i32 %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %85, %1
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @VTE_RX_RING_CNT, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %44
  %49 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %50 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %52, i64 %54
  store %struct.vte_rxdesc* %55, %struct.vte_rxdesc** %5, align 8
  %56 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %5, align 8
  %57 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %84

60:                                               ; preds = %48
  %61 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %62 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %5, align 8
  %66 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %69 = call i32 @bus_dmamap_sync(i32 %64, i32 %67, i32 %68)
  %70 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %71 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %5, align 8
  %75 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bus_dmamap_unload(i32 %73, i32 %76)
  %78 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %5, align 8
  %79 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @m_freem(i32* %80)
  %82 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %5, align 8
  %83 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %60, %48
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %44

88:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %144, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @VTE_TX_RING_CNT, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %147

93:                                               ; preds = %89
  %94 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %95 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load %struct.vte_txdesc*, %struct.vte_txdesc** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %97, i64 %99
  store %struct.vte_txdesc* %100, %struct.vte_txdesc** %4, align 8
  %101 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %102 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %143

105:                                              ; preds = %93
  %106 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %107 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %111 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %114 = call i32 @bus_dmamap_sync(i32 %109, i32 %112, i32 %113)
  %115 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %116 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %120 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @bus_dmamap_unload(i32 %118, i32 %121)
  %123 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %124 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @VTE_TXMBUF, align 4
  %127 = and i32 %125, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %105
  %130 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %131 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @m_freem(i32* %132)
  br label %134

134:                                              ; preds = %129, %105
  %135 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %136 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %135, i32 0, i32 1
  store i32* null, i32** %136, align 8
  %137 = load i32, i32* @VTE_TXMBUF, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %140 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %134, %93
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %89

147:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %180, %147
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @VTE_TX_RING_CNT, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %183

152:                                              ; preds = %148
  %153 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %154 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %179

162:                                              ; preds = %152
  %163 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %164 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @m_freem(i32* %170)
  %172 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %173 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32**, i32*** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  store i32* null, i32** %178, align 8
  br label %179

179:                                              ; preds = %162, %152
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %148

183:                                              ; preds = %148
  ret void
}

declare dso_local i32 @VTE_LOCK_ASSERT(%struct.vte_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @vte_stats_update(%struct.vte_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vte_softc*, i32, i32) #1

declare dso_local i32 @vte_stop_mac(%struct.vte_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.vte_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
