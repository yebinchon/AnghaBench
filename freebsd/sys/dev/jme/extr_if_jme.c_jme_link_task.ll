; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_link_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_link_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32, i64, %struct.ifnet*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, %struct.jme_txdesc*, i32* }
%struct.jme_txdesc = type { i64, i32*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@JME_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@JME_FLAG_FASTETH = common dso_local global i32 0, align 4
@JME_INTR_MASK_CLR = common dso_local global i32 0, align 4
@JME_INTRS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@JME_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@JME_RXCSR = common dso_local global i32 0, align 4
@JME_TXCSR = common dso_local global i32 0, align 4
@JME_TXDBA_HI = common dso_local global i32 0, align 4
@JME_TXDBA_LO = common dso_local global i32 0, align 4
@JME_RXDBA_HI = common dso_local global i32 0, align 4
@JME_RXDBA_LO = common dso_local global i32 0, align 4
@RXCSR_RX_ENB = common dso_local global i32 0, align 4
@RXCSR_RXQ_START = common dso_local global i32 0, align 4
@TXCSR_TX_ENB = common dso_local global i32 0, align 4
@JME_FLAG_TXCLK = common dso_local global i32 0, align 4
@JME_GHC = common dso_local global i32 0, align 4
@GHC_TX_MAC_CLK_DIS = common dso_local global i32 0, align 4
@JME_FLAG_RXCLK = common dso_local global i32 0, align 4
@JME_GPREG1 = common dso_local global i32 0, align 4
@GPREG1_RX_MAC_CLK_DIS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@jme_tick = common dso_local global i32 0, align 4
@JME_INTR_MASK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @jme_link_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_link_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.jme_txdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.jme_softc*
  store %struct.jme_softc* %12, %struct.jme_softc** %5, align 8
  %13 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %14 = call i32 @JME_LOCK(%struct.jme_softc* %13)
  %15 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %16 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.mii_data* @device_get_softc(i32 %17)
  store %struct.mii_data* %18, %struct.mii_data** %6, align 8
  %19 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %20 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %19, i32 0, i32 9
  %21 = load %struct.ifnet*, %struct.ifnet** %20, align 8
  store %struct.ifnet* %21, %struct.ifnet** %7, align 8
  %22 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %23 = icmp eq %struct.mii_data* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %26 = icmp eq %struct.ifnet* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %24, %2
  %35 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %36 = call i32 @JME_UNLOCK(%struct.jme_softc* %35)
  br label %322

37:                                               ; preds = %27
  %38 = load i32, i32* @JME_FLAG_LINK, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %41 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %45 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFM_AVALID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %37
  %51 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %52 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @IFM_SUBTYPE(i32 %53)
  switch i32 %54, label %75 [
    i32 128, label %55
    i32 129, label %55
    i32 130, label %61
  ]

55:                                               ; preds = %50, %50
  %56 = load i32, i32* @JME_FLAG_LINK, align 4
  %57 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %58 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %76

61:                                               ; preds = %50
  %62 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %63 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @JME_FLAG_FASTETH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %76

69:                                               ; preds = %61
  %70 = load i32, i32* @JME_FLAG_LINK, align 4
  %71 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %72 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %76

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75, %69, %68, %55
  br label %77

77:                                               ; preds = %76, %37
  %78 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %79 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @taskqueue_block(i32 %80)
  %82 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %83 = load i32, i32* @JME_INTR_MASK_CLR, align 4
  %84 = load i32, i32* @JME_INTRS, align 4
  %85 = call i32 @CSR_WRITE_4(%struct.jme_softc* %82, i32 %83, i32 %84)
  %86 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %87 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %95 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %94, i32 0, i32 4
  %96 = call i32 @callout_stop(i32* %95)
  %97 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %98 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %97, i32 0, i32 8
  store i64 0, i64* %98, align 8
  %99 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %100 = call i32 @jme_stop_rx(%struct.jme_softc* %99)
  %101 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %102 = call i32 @jme_stop_tx(%struct.jme_softc* %101)
  %103 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %104 = call i32 @JME_UNLOCK(%struct.jme_softc* %103)
  %105 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %106 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %109 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %108, i32 0, i32 7
  %110 = call i32 @taskqueue_drain(i32 %107, i32* %109)
  %111 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %112 = call i32 @JME_LOCK(%struct.jme_softc* %111)
  %113 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %114 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %77
  %119 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %120 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @m_freem(i32* %122)
  br label %124

124:                                              ; preds = %118, %77
  %125 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %126 = call i32 @JME_RXCHAIN_RESET(%struct.jme_softc* %125)
  %127 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %128 = call i32 @jme_txeof(%struct.jme_softc* %127)
  %129 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %130 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %185

134:                                              ; preds = %124
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %181, %134
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @JME_TX_RING_CNT, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %184

139:                                              ; preds = %135
  %140 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %141 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load %struct.jme_txdesc*, %struct.jme_txdesc** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %143, i64 %145
  store %struct.jme_txdesc* %146, %struct.jme_txdesc** %8, align 8
  %147 = load %struct.jme_txdesc*, %struct.jme_txdesc** %8, align 8
  %148 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %180

151:                                              ; preds = %139
  %152 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %153 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.jme_txdesc*, %struct.jme_txdesc** %8, align 8
  %157 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %160 = call i32 @bus_dmamap_sync(i32 %155, i32 %158, i32 %159)
  %161 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %162 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.jme_txdesc*, %struct.jme_txdesc** %8, align 8
  %166 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @bus_dmamap_unload(i32 %164, i32 %167)
  %169 = load %struct.jme_txdesc*, %struct.jme_txdesc** %8, align 8
  %170 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @m_freem(i32* %171)
  %173 = load %struct.jme_txdesc*, %struct.jme_txdesc** %8, align 8
  %174 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %173, i32 0, i32 1
  store i32* null, i32** %174, align 8
  %175 = load %struct.jme_txdesc*, %struct.jme_txdesc** %8, align 8
  %176 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  %177 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %178 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %179 = call i32 @if_inc_counter(%struct.ifnet* %177, i32 %178, i32 1)
  br label %180

180:                                              ; preds = %151, %139
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %135

184:                                              ; preds = %135
  br label %185

185:                                              ; preds = %184, %124
  %186 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %187 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %190 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %189, i32 0, i32 5
  store i64 0, i64* %190, align 8
  %191 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %192 = call i32 @jme_init_tx_ring(%struct.jme_softc* %191)
  %193 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %194 = call i32 @jme_init_ssb(%struct.jme_softc* %193)
  %195 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %196 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @JME_FLAG_LINK, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %294

201:                                              ; preds = %185
  %202 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %203 = call i32 @jme_mac_config(%struct.jme_softc* %202)
  %204 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %205 = call i32 @jme_stats_clear(%struct.jme_softc* %204)
  %206 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %207 = load i32, i32* @JME_RXCSR, align 4
  %208 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %209 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @CSR_WRITE_4(%struct.jme_softc* %206, i32 %207, i32 %210)
  %212 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %213 = load i32, i32* @JME_TXCSR, align 4
  %214 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %215 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @CSR_WRITE_4(%struct.jme_softc* %212, i32 %213, i32 %216)
  %218 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %219 = call i32 @JME_TX_RING_ADDR(%struct.jme_softc* %218, i32 0)
  store i32 %219, i32* %9, align 4
  %220 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %221 = load i32, i32* @JME_TXDBA_HI, align 4
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @JME_ADDR_HI(i32 %222)
  %224 = call i32 @CSR_WRITE_4(%struct.jme_softc* %220, i32 %221, i32 %223)
  %225 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %226 = load i32, i32* @JME_TXDBA_LO, align 4
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @JME_ADDR_LO(i32 %227)
  %229 = call i32 @CSR_WRITE_4(%struct.jme_softc* %225, i32 %226, i32 %228)
  %230 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %231 = call i32 @JME_RX_RING_ADDR(%struct.jme_softc* %230, i32 0)
  store i32 %231, i32* %9, align 4
  %232 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %233 = load i32, i32* @JME_RXDBA_HI, align 4
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @JME_ADDR_HI(i32 %234)
  %236 = call i32 @CSR_WRITE_4(%struct.jme_softc* %232, i32 %233, i32 %235)
  %237 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %238 = load i32, i32* @JME_RXDBA_LO, align 4
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @JME_ADDR_LO(i32 %239)
  %241 = call i32 @CSR_WRITE_4(%struct.jme_softc* %237, i32 %238, i32 %240)
  %242 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %243 = load i32, i32* @JME_RXCSR, align 4
  %244 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %245 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @RXCSR_RX_ENB, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @RXCSR_RXQ_START, align 4
  %250 = or i32 %248, %249
  %251 = call i32 @CSR_WRITE_4(%struct.jme_softc* %242, i32 %243, i32 %250)
  %252 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %253 = load i32, i32* @JME_TXCSR, align 4
  %254 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %255 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @TXCSR_TX_ENB, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @CSR_WRITE_4(%struct.jme_softc* %252, i32 %253, i32 %258)
  %260 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %261 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @JME_FLAG_TXCLK, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %201
  %267 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %268 = load i32, i32* @JME_GHC, align 4
  %269 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %270 = load i32, i32* @JME_GHC, align 4
  %271 = call i32 @CSR_READ_4(%struct.jme_softc* %269, i32 %270)
  %272 = load i32, i32* @GHC_TX_MAC_CLK_DIS, align 4
  %273 = xor i32 %272, -1
  %274 = and i32 %271, %273
  %275 = call i32 @CSR_WRITE_4(%struct.jme_softc* %267, i32 %268, i32 %274)
  br label %276

276:                                              ; preds = %266, %201
  %277 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %278 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @JME_FLAG_RXCLK, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %293

283:                                              ; preds = %276
  %284 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %285 = load i32, i32* @JME_GPREG1, align 4
  %286 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %287 = load i32, i32* @JME_GPREG1, align 4
  %288 = call i32 @CSR_READ_4(%struct.jme_softc* %286, i32 %287)
  %289 = load i32, i32* @GPREG1_RX_MAC_CLK_DIS, align 4
  %290 = xor i32 %289, -1
  %291 = and i32 %288, %290
  %292 = call i32 @CSR_WRITE_4(%struct.jme_softc* %284, i32 %285, i32 %291)
  br label %293

293:                                              ; preds = %283, %276
  br label %294

294:                                              ; preds = %293, %185
  %295 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %296 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %297 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  %300 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %301 = xor i32 %300, -1
  %302 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %303 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, %301
  store i32 %305, i32* %303, align 4
  %306 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %307 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %306, i32 0, i32 4
  %308 = load i32, i32* @hz, align 4
  %309 = load i32, i32* @jme_tick, align 4
  %310 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %311 = call i32 @callout_reset(i32* %307, i32 %308, i32 %309, %struct.jme_softc* %310)
  %312 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %313 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @taskqueue_unblock(i32 %314)
  %316 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %317 = load i32, i32* @JME_INTR_MASK_SET, align 4
  %318 = load i32, i32* @JME_INTRS, align 4
  %319 = call i32 @CSR_WRITE_4(%struct.jme_softc* %316, i32 %317, i32 %318)
  %320 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %321 = call i32 @JME_UNLOCK(%struct.jme_softc* %320)
  br label %322

322:                                              ; preds = %294, %34
  ret void
}

declare dso_local i32 @JME_LOCK(%struct.jme_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @JME_UNLOCK(%struct.jme_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @taskqueue_block(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @jme_stop_rx(%struct.jme_softc*) #1

declare dso_local i32 @jme_stop_tx(%struct.jme_softc*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @JME_RXCHAIN_RESET(%struct.jme_softc*) #1

declare dso_local i32 @jme_txeof(%struct.jme_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @jme_init_tx_ring(%struct.jme_softc*) #1

declare dso_local i32 @jme_init_ssb(%struct.jme_softc*) #1

declare dso_local i32 @jme_mac_config(%struct.jme_softc*) #1

declare dso_local i32 @jme_stats_clear(%struct.jme_softc*) #1

declare dso_local i32 @JME_TX_RING_ADDR(%struct.jme_softc*, i32) #1

declare dso_local i32 @JME_ADDR_HI(i32) #1

declare dso_local i32 @JME_ADDR_LO(i32) #1

declare dso_local i32 @JME_RX_RING_ADDR(%struct.jme_softc*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.jme_softc*) #1

declare dso_local i32 @taskqueue_unblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
