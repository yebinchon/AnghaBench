; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.vr_softc = type { i64, i32, i64, i32, i32, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@VR_PAR0 = common dso_local global i64 0, align 8
@VR_BCR0 = common dso_local global i32 0, align 4
@VR_BCR0_DMA_LENGTH = common dso_local global i32 0, align 4
@VR_BCR0_DMA_STORENFWD = common dso_local global i32 0, align 4
@VR_BCR0_RX_THRESH = common dso_local global i32 0, align 4
@VR_BCR0_RXTHRESH128BYTES = common dso_local global i32 0, align 4
@VR_BCR1 = common dso_local global i32 0, align 4
@VR_BCR1_TX_THRESH = common dso_local global i32 0, align 4
@vr_tx_threshold_tables = common dso_local global %struct.TYPE_2__* null, align 8
@VR_RXCFG = common dso_local global i32 0, align 4
@VR_RXCFG_RX_THRESH = common dso_local global i32 0, align 4
@VR_RXTHRESH_128BYTES = common dso_local global i32 0, align 4
@VR_TXCFG = common dso_local global i32 0, align 4
@VR_TXCFG_TX_THRESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"initialization failed: no memory for rx buffers\0A\00", align 1
@VR_Q_CAM = common dso_local global i32 0, align 4
@VR_TXCFG_TXTAGEN = common dso_local global i32 0, align 4
@VR_TXCFG_RXTAGCTL = common dso_local global i32 0, align 4
@VR_BCR1_VLANFILT_ENB = common dso_local global i32 0, align 4
@VR_MCAST_CAM = common dso_local global i32 0, align 4
@VR_VLAN_CAM = common dso_local global i32 0, align 4
@VR_RXADDR = common dso_local global i32 0, align 4
@VR_TXADDR = common dso_local global i32 0, align 4
@VR_CR1 = common dso_local global i64 0, align 8
@VR_CR1_FULLDUPLEX = common dso_local global i32 0, align 4
@VR_CR1_TX_NOPOLL = common dso_local global i32 0, align 4
@REV_ID_VT6105_A0 = common dso_local global i64 0, align 8
@VR_FLOWCR0 = common dso_local global i64 0, align 8
@VR_RX_RING_CNT = common dso_local global i32 0, align 4
@VR_FLOWCR1 = common dso_local global i64 0, align 8
@VR_FLOWCR1_TXLO8 = common dso_local global i32 0, align 4
@VR_FLOWCR1_TXHI24 = common dso_local global i32 0, align 4
@VR_FLOWCR1_XONXOFF = common dso_local global i32 0, align 4
@VR_PAUSETIMER = common dso_local global i32 0, align 4
@VR_CR0 = common dso_local global i64 0, align 8
@VR_CR0_START = common dso_local global i32 0, align 4
@VR_CR0_TX_ON = common dso_local global i32 0, align 4
@VR_CR0_RX_ON = common dso_local global i32 0, align 4
@VR_CR0_RX_GO = common dso_local global i32 0, align 4
@VR_ISR = common dso_local global i32 0, align 4
@VR_IMR = common dso_local global i32 0, align 4
@VR_INTRS = common dso_local global i32 0, align 4
@REV_ID_VT6102_A = common dso_local global i64 0, align 8
@VR_MII_IMR = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@VR_F_LINK = common dso_local global i32 0, align 4
@VR_F_TXPAUSE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@vr_tick = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vr_softc*)* @vr_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_init_locked(%struct.vr_softc* %0) #0 {
  %2 = alloca %struct.vr_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.vr_softc* %0, %struct.vr_softc** %2, align 8
  %8 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %9 = call i32 @VR_LOCK_ASSERT(%struct.vr_softc* %8)
  %10 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %10, i32 0, i32 6
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %14 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.mii_data* @device_get_softc(i32 %15)
  store %struct.mii_data* %16, %struct.mii_data** %4, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %248

24:                                               ; preds = %1
  %25 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %26 = call i32 @vr_stop(%struct.vr_softc* %25)
  %27 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %28 = call i32 @vr_reset(%struct.vr_softc* %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %48, %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %35 = load i64, i64* @VR_PAR0, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %40 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %39, i32 0, i32 6
  %41 = load %struct.ifnet*, %struct.ifnet** %40, align 8
  %42 = call i32* @IF_LLADDR(%struct.ifnet* %41)
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CSR_WRITE_1(%struct.vr_softc* %34, i64 %38, i32 %46)
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %53 = load i32, i32* @VR_BCR0, align 4
  %54 = load i32, i32* @VR_BCR0_DMA_LENGTH, align 4
  %55 = call i32 @VR_CLRBIT(%struct.vr_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %57 = load i32, i32* @VR_BCR0, align 4
  %58 = load i32, i32* @VR_BCR0_DMA_STORENFWD, align 4
  %59 = call i32 @VR_SETBIT(%struct.vr_softc* %56, i32 %57, i32 %58)
  %60 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %61 = load i32, i32* @VR_BCR0, align 4
  %62 = load i32, i32* @VR_BCR0_RX_THRESH, align 4
  %63 = call i32 @VR_CLRBIT(%struct.vr_softc* %60, i32 %61, i32 %62)
  %64 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %65 = load i32, i32* @VR_BCR0, align 4
  %66 = load i32, i32* @VR_BCR0_RXTHRESH128BYTES, align 4
  %67 = call i32 @VR_SETBIT(%struct.vr_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %69 = load i32, i32* @VR_BCR1, align 4
  %70 = load i32, i32* @VR_BCR1_TX_THRESH, align 4
  %71 = call i32 @VR_CLRBIT(%struct.vr_softc* %68, i32 %69, i32 %70)
  %72 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %73 = load i32, i32* @VR_BCR1, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vr_tx_threshold_tables, align 8
  %75 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %76 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @VR_SETBIT(%struct.vr_softc* %72, i32 %73, i32 %80)
  %82 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %83 = load i32, i32* @VR_RXCFG, align 4
  %84 = load i32, i32* @VR_RXCFG_RX_THRESH, align 4
  %85 = call i32 @VR_CLRBIT(%struct.vr_softc* %82, i32 %83, i32 %84)
  %86 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %87 = load i32, i32* @VR_RXCFG, align 4
  %88 = load i32, i32* @VR_RXTHRESH_128BYTES, align 4
  %89 = call i32 @VR_SETBIT(%struct.vr_softc* %86, i32 %87, i32 %88)
  %90 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %91 = load i32, i32* @VR_TXCFG, align 4
  %92 = load i32, i32* @VR_TXCFG_TX_THRESH, align 4
  %93 = call i32 @VR_CLRBIT(%struct.vr_softc* %90, i32 %91, i32 %92)
  %94 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %95 = load i32, i32* @VR_TXCFG, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vr_tx_threshold_tables, align 8
  %97 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %98 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @VR_SETBIT(%struct.vr_softc* %94, i32 %95, i32 %102)
  %104 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %105 = call i64 @vr_rx_ring_init(%struct.vr_softc* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %51
  %108 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %109 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %112 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %113 = call i32 @vr_stop(%struct.vr_softc* %112)
  br label %248

114:                                              ; preds = %51
  %115 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %116 = call i32 @vr_tx_ring_init(%struct.vr_softc* %115)
  %117 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %118 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @VR_Q_CAM, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %148

123:                                              ; preds = %114
  %124 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %124, i8 0, i64 8, i1 false)
  %125 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %126 = load i32, i32* @VR_TXCFG, align 4
  %127 = load i32, i32* @VR_TXCFG_TXTAGEN, align 4
  %128 = load i32, i32* @VR_TXCFG_RXTAGCTL, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @VR_CLRBIT(%struct.vr_softc* %125, i32 %126, i32 %129)
  %131 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %132 = load i32, i32* @VR_BCR1, align 4
  %133 = load i32, i32* @VR_BCR1_VLANFILT_ENB, align 4
  %134 = call i32 @VR_CLRBIT(%struct.vr_softc* %131, i32 %132, i32 %133)
  %135 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %136 = load i32, i32* @VR_MCAST_CAM, align 4
  %137 = call i32 @vr_cam_mask(%struct.vr_softc* %135, i32 %136, i32 0)
  %138 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %139 = load i32, i32* @VR_VLAN_CAM, align 4
  %140 = call i32 @vr_cam_mask(%struct.vr_softc* %138, i32 %139, i32 0)
  %141 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %142 = load i32, i32* @VR_VLAN_CAM, align 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %144 = call i32 @vr_cam_data(%struct.vr_softc* %141, i32 %142, i32 0, i32* %143)
  %145 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %146 = load i32, i32* @VR_VLAN_CAM, align 4
  %147 = call i32 @vr_cam_mask(%struct.vr_softc* %145, i32 %146, i32 1)
  br label %148

148:                                              ; preds = %123, %114
  %149 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %150 = call i32 @vr_set_filter(%struct.vr_softc* %149)
  %151 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %152 = call i32 @VR_RX_RING_ADDR(%struct.vr_softc* %151, i32 0)
  store i32 %152, i32* %5, align 4
  %153 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %154 = load i32, i32* @VR_RXADDR, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @VR_ADDR_LO(i32 %155)
  %157 = call i32 @CSR_WRITE_4(%struct.vr_softc* %153, i32 %154, i32 %156)
  %158 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %159 = call i32 @VR_TX_RING_ADDR(%struct.vr_softc* %158, i32 0)
  store i32 %159, i32* %5, align 4
  %160 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %161 = load i32, i32* @VR_TXADDR, align 4
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @VR_ADDR_LO(i32 %162)
  %164 = call i32 @CSR_WRITE_4(%struct.vr_softc* %160, i32 %161, i32 %163)
  %165 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %166 = load i64, i64* @VR_CR1, align 8
  %167 = load i32, i32* @VR_CR1_FULLDUPLEX, align 4
  %168 = load i32, i32* @VR_CR1_TX_NOPOLL, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @CSR_WRITE_1(%struct.vr_softc* %165, i64 %166, i32 %169)
  %171 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %172 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @REV_ID_VT6105_A0, align 8
  %175 = icmp sge i64 %173, %174
  br i1 %175, label %176, label %193

176:                                              ; preds = %148
  %177 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %178 = load i64, i64* @VR_FLOWCR0, align 8
  %179 = load i32, i32* @VR_RX_RING_CNT, align 4
  %180 = sub nsw i32 %179, 1
  %181 = call i32 @CSR_WRITE_1(%struct.vr_softc* %177, i64 %178, i32 %180)
  %182 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %183 = load i64, i64* @VR_FLOWCR1, align 8
  %184 = load i32, i32* @VR_FLOWCR1_TXLO8, align 4
  %185 = load i32, i32* @VR_FLOWCR1_TXHI24, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @VR_FLOWCR1_XONXOFF, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @CSR_WRITE_1(%struct.vr_softc* %182, i64 %183, i32 %188)
  %190 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %191 = load i32, i32* @VR_PAUSETIMER, align 4
  %192 = call i32 @CSR_WRITE_2(%struct.vr_softc* %190, i32 %191, i32 65535)
  br label %193

193:                                              ; preds = %176, %148
  %194 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %195 = load i64, i64* @VR_CR0, align 8
  %196 = load i32, i32* @VR_CR0_START, align 4
  %197 = load i32, i32* @VR_CR0_TX_ON, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @VR_CR0_RX_ON, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @VR_CR0_RX_GO, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @CSR_WRITE_1(%struct.vr_softc* %194, i64 %195, i32 %202)
  %204 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %205 = load i32, i32* @VR_ISR, align 4
  %206 = call i32 @CSR_WRITE_2(%struct.vr_softc* %204, i32 %205, i32 65535)
  %207 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %208 = load i32, i32* @VR_IMR, align 4
  %209 = load i32, i32* @VR_INTRS, align 4
  %210 = call i32 @CSR_WRITE_2(%struct.vr_softc* %207, i32 %208, i32 %209)
  %211 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %212 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @REV_ID_VT6102_A, align 8
  %215 = icmp sgt i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %193
  %217 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %218 = load i32, i32* @VR_MII_IMR, align 4
  %219 = call i32 @CSR_WRITE_2(%struct.vr_softc* %217, i32 %218, i32 0)
  br label %220

220:                                              ; preds = %216, %193
  %221 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %222 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %223 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %227 = xor i32 %226, -1
  %228 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %229 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* @VR_F_LINK, align 4
  %233 = load i32, i32* @VR_F_TXPAUSE, align 4
  %234 = or i32 %232, %233
  %235 = xor i32 %234, -1
  %236 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %237 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = and i32 %238, %235
  store i32 %239, i32* %237, align 8
  %240 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %241 = call i32 @mii_mediachg(%struct.mii_data* %240)
  %242 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %243 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %242, i32 0, i32 4
  %244 = load i32, i32* @hz, align 4
  %245 = load i32, i32* @vr_tick, align 4
  %246 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %247 = call i32 @callout_reset(i32* %243, i32 %244, i32 %245, %struct.vr_softc* %246)
  br label %248

248:                                              ; preds = %220, %107, %23
  ret void
}

declare dso_local i32 @VR_LOCK_ASSERT(%struct.vr_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @vr_stop(%struct.vr_softc*) #1

declare dso_local i32 @vr_reset(%struct.vr_softc*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vr_softc*, i64, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @VR_CLRBIT(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @VR_SETBIT(%struct.vr_softc*, i32, i32) #1

declare dso_local i64 @vr_rx_ring_init(%struct.vr_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vr_tx_ring_init(%struct.vr_softc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @vr_cam_mask(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @vr_cam_data(%struct.vr_softc*, i32, i32, i32*) #1

declare dso_local i32 @vr_set_filter(%struct.vr_softc*) #1

declare dso_local i32 @VR_RX_RING_ADDR(%struct.vr_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @VR_ADDR_LO(i32) #1

declare dso_local i32 @VR_TX_RING_ADDR(%struct.vr_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.vr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
