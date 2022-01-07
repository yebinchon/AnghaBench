; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32, i32, i32, %struct.TYPE_2__, i32, %struct.ifnet*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@STE_PAR0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"initialization failed: no memory for RX buffers\0A\00", align 1
@STE_RX_DMAPOLL_PERIOD = common dso_local global i32 0, align 4
@STE_WAKE_EVENT = common dso_local global i32 0, align 4
@STE_WAKEEVENT_WAKEPKT_ENB = common dso_local global i32 0, align 4
@STE_WAKEEVENT_MAGICPKT_ENB = common dso_local global i32 0, align 4
@STE_WAKEEVENT_LINKEVT_ENB = common dso_local global i32 0, align 4
@STE_WAKEEVENT_WAKEONLAN_ENB = common dso_local global i32 0, align 4
@STE_TX_DMABURST_THRESH = common dso_local global i32 0, align 4
@STE_PACKET_SIZE = common dso_local global i32 0, align 4
@STE_TX_STARTTHRESH = common dso_local global i64 0, align 8
@STE_TX_RECLAIM_THRESH = common dso_local global i32 0, align 4
@STE_MAX_FRAMELEN = common dso_local global i64 0, align 8
@ETHER_MAX_LEN = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@STE_DMACTL = common dso_local global i32 0, align 4
@STE_DMACTL_RXDMA_STALL = common dso_local global i32 0, align 4
@STE_RX_DMALIST_PTR = common dso_local global i32 0, align 4
@STE_DMACTL_RXDMA_UNSTALL = common dso_local global i32 0, align 4
@STE_TX_DMAPOLL_PERIOD = common dso_local global i32 0, align 4
@STE_DMACTL_TXDMA_STALL = common dso_local global i32 0, align 4
@STE_TX_DMALIST_PTR = common dso_local global i32 0, align 4
@STE_DMACTL_TXDMA_UNSTALL = common dso_local global i32 0, align 4
@STE_DMACTL_COUNTDOWN_SPEED = common dso_local global i32 0, align 4
@STE_DMACTL_COUNTDOWN_MODE = common dso_local global i32 0, align 4
@STE_MACCTL0 = common dso_local global i64 0, align 8
@STE_MACCTL1 = common dso_local global i64 0, align 8
@STE_MACCTL1_TX_ENABLE = common dso_local global i32 0, align 4
@STE_MACCTL1_RX_ENABLE = common dso_local global i32 0, align 4
@STE_MACCTL1_STATS_ENABLE = common dso_local global i32 0, align 4
@STE_COUNTDOWN = common dso_local global i64 0, align 8
@STE_ISR = common dso_local global i64 0, align 8
@STE_IMR = common dso_local global i64 0, align 8
@STE_INTRS = common dso_local global i32 0, align 4
@STE_FLAG_LINK = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ste_tick = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_init_locked(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %7 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %8 = call i32 @STE_LOCK_ASSERT(%struct.ste_softc* %7)
  %9 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %9, i32 0, i32 5
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.mii_data* @device_get_softc(i32 %14)
  store %struct.mii_data* %15, %struct.mii_data** %4, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %225

23:                                               ; preds = %1
  %24 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %25 = call i32 @ste_stop(%struct.ste_softc* %24)
  %26 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %27 = call i32 @ste_reset(%struct.ste_softc* %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %59, %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %34 = load i64, i64* @STE_PAR0, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %38, i32 0, i32 5
  %40 = load %struct.ifnet*, %struct.ifnet** %39, align 8
  %41 = call i32* @IF_LLADDR(%struct.ifnet* %40)
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  %47 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %47, i32 0, i32 5
  %49 = load %struct.ifnet*, %struct.ifnet** %48, align 8
  %50 = call i32* @IF_LLADDR(%struct.ifnet* %49)
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = or i32 %46, %56
  %58 = call i32 @CSR_WRITE_2(%struct.ste_softc* %33, i64 %37, i32 %57)
  br label %59

59:                                               ; preds = %32
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %6, align 4
  br label %28

62:                                               ; preds = %28
  %63 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %64 = call i64 @ste_init_rx_list(%struct.ste_softc* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %72 = call i32 @ste_stop(%struct.ste_softc* %71)
  br label %225

73:                                               ; preds = %62
  %74 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %75 = load i32, i32* @STE_RX_DMAPOLL_PERIOD, align 4
  %76 = call i32 @CSR_WRITE_1(%struct.ste_softc* %74, i32 %75, i32 64)
  %77 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %78 = call i32 @ste_init_tx_list(%struct.ste_softc* %77)
  %79 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %80 = load i32, i32* @STE_WAKE_EVENT, align 4
  %81 = call i32 @CSR_READ_1(%struct.ste_softc* %79, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @STE_WAKEEVENT_WAKEPKT_ENB, align 4
  %83 = load i32, i32* @STE_WAKEEVENT_MAGICPKT_ENB, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @STE_WAKEEVENT_LINKEVT_ENB, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @STE_WAKEEVENT_WAKEONLAN_ENB, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %93 = load i32, i32* @STE_WAKE_EVENT, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @CSR_WRITE_1(%struct.ste_softc* %92, i32 %93, i32 %94)
  %96 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %97 = load i32, i32* @STE_TX_DMABURST_THRESH, align 4
  %98 = load i32, i32* @STE_PACKET_SIZE, align 4
  %99 = ashr i32 %98, 8
  %100 = call i32 @CSR_WRITE_1(%struct.ste_softc* %96, i32 %97, i32 %99)
  %101 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %102 = load i64, i64* @STE_TX_STARTTHRESH, align 8
  %103 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %104 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @CSR_WRITE_2(%struct.ste_softc* %101, i64 %102, i32 %105)
  %107 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %108 = load i32, i32* @STE_TX_RECLAIM_THRESH, align 4
  %109 = load i32, i32* @STE_PACKET_SIZE, align 4
  %110 = ashr i32 %109, 4
  %111 = call i32 @CSR_WRITE_1(%struct.ste_softc* %107, i32 %108, i32 %110)
  %112 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %113 = load i64, i64* @STE_MAX_FRAMELEN, align 8
  %114 = load i32, i32* @ETHER_MAX_LEN, align 4
  %115 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 @CSR_WRITE_2(%struct.ste_softc* %112, i64 %113, i32 %116)
  %118 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %119 = call i32 @ste_rxfilter(%struct.ste_softc* %118)
  %120 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %121 = load i32, i32* @STE_DMACTL, align 4
  %122 = load i32, i32* @STE_DMACTL_RXDMA_STALL, align 4
  %123 = call i32 @STE_SETBIT4(%struct.ste_softc* %120, i32 %121, i32 %122)
  %124 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %125 = call i32 @ste_wait(%struct.ste_softc* %124)
  %126 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %127 = load i32, i32* @STE_RX_DMALIST_PTR, align 4
  %128 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %129 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @STE_ADDR_LO(i32 %131)
  %133 = call i32 @CSR_WRITE_4(%struct.ste_softc* %126, i32 %127, i32 %132)
  %134 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %135 = load i32, i32* @STE_DMACTL, align 4
  %136 = load i32, i32* @STE_DMACTL_RXDMA_UNSTALL, align 4
  %137 = call i32 @STE_SETBIT4(%struct.ste_softc* %134, i32 %135, i32 %136)
  %138 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %139 = load i32, i32* @STE_DMACTL, align 4
  %140 = load i32, i32* @STE_DMACTL_RXDMA_UNSTALL, align 4
  %141 = call i32 @STE_SETBIT4(%struct.ste_softc* %138, i32 %139, i32 %140)
  %142 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %143 = load i32, i32* @STE_TX_DMAPOLL_PERIOD, align 4
  %144 = call i32 @CSR_WRITE_1(%struct.ste_softc* %142, i32 %143, i32 0)
  %145 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %146 = load i32, i32* @STE_DMACTL, align 4
  %147 = load i32, i32* @STE_DMACTL_TXDMA_STALL, align 4
  %148 = call i32 @STE_SETBIT4(%struct.ste_softc* %145, i32 %146, i32 %147)
  %149 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %150 = call i32 @ste_wait(%struct.ste_softc* %149)
  %151 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %152 = load i32, i32* @STE_TX_DMALIST_PTR, align 4
  %153 = call i32 @CSR_WRITE_4(%struct.ste_softc* %151, i32 %152, i32 0)
  %154 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %155 = load i32, i32* @STE_DMACTL, align 4
  %156 = load i32, i32* @STE_DMACTL_TXDMA_UNSTALL, align 4
  %157 = call i32 @STE_SETBIT4(%struct.ste_softc* %154, i32 %155, i32 %156)
  %158 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %159 = load i32, i32* @STE_DMACTL, align 4
  %160 = load i32, i32* @STE_DMACTL_TXDMA_UNSTALL, align 4
  %161 = call i32 @STE_SETBIT4(%struct.ste_softc* %158, i32 %159, i32 %160)
  %162 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %163 = call i32 @ste_wait(%struct.ste_softc* %162)
  %164 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %165 = load i32, i32* @STE_DMACTL, align 4
  %166 = load i32, i32* @STE_DMACTL_COUNTDOWN_SPEED, align 4
  %167 = load i32, i32* @STE_DMACTL_COUNTDOWN_MODE, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @STE_CLRBIT4(%struct.ste_softc* %164, i32 %165, i32 %168)
  %170 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %171 = load i64, i64* @STE_MACCTL0, align 8
  %172 = call i32 @CSR_WRITE_2(%struct.ste_softc* %170, i64 %171, i32 0)
  %173 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %174 = load i64, i64* @STE_MACCTL1, align 8
  %175 = call i32 @CSR_WRITE_2(%struct.ste_softc* %173, i64 %174, i32 0)
  %176 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %177 = load i64, i64* @STE_MACCTL1, align 8
  %178 = load i32, i32* @STE_MACCTL1_TX_ENABLE, align 4
  %179 = call i32 @STE_SETBIT2(%struct.ste_softc* %176, i64 %177, i32 %178)
  %180 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %181 = load i64, i64* @STE_MACCTL1, align 8
  %182 = load i32, i32* @STE_MACCTL1_RX_ENABLE, align 4
  %183 = call i32 @STE_SETBIT2(%struct.ste_softc* %180, i64 %181, i32 %182)
  %184 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %185 = load i64, i64* @STE_MACCTL1, align 8
  %186 = load i32, i32* @STE_MACCTL1_STATS_ENABLE, align 4
  %187 = call i32 @STE_SETBIT2(%struct.ste_softc* %184, i64 %185, i32 %186)
  %188 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %189 = call i32 @ste_stats_clear(%struct.ste_softc* %188)
  %190 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %191 = load i64, i64* @STE_COUNTDOWN, align 8
  %192 = call i32 @CSR_WRITE_2(%struct.ste_softc* %190, i64 %191, i32 0)
  %193 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %194 = load i64, i64* @STE_ISR, align 8
  %195 = call i32 @CSR_WRITE_2(%struct.ste_softc* %193, i64 %194, i32 65535)
  %196 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %197 = load i64, i64* @STE_IMR, align 8
  %198 = load i32, i32* @STE_INTRS, align 4
  %199 = call i32 @CSR_WRITE_2(%struct.ste_softc* %196, i64 %197, i32 %198)
  %200 = load i32, i32* @STE_FLAG_LINK, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %203 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %207 = call i32 @mii_mediachg(%struct.mii_data* %206)
  %208 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %209 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %214 = xor i32 %213, -1
  %215 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %216 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %220 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %219, i32 0, i32 1
  %221 = load i32, i32* @hz, align 4
  %222 = load i32, i32* @ste_tick, align 4
  %223 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %224 = call i32 @callout_reset(i32* %220, i32 %221, i32 %222, %struct.ste_softc* %223)
  br label %225

225:                                              ; preds = %73, %66, %22
  ret void
}

declare dso_local i32 @STE_LOCK_ASSERT(%struct.ste_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ste_stop(%struct.ste_softc*) #1

declare dso_local i32 @ste_reset(%struct.ste_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.ste_softc*, i64, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i64 @ste_init_rx_list(%struct.ste_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @ste_init_tx_list(%struct.ste_softc*) #1

declare dso_local i32 @CSR_READ_1(%struct.ste_softc*, i32) #1

declare dso_local i32 @ste_rxfilter(%struct.ste_softc*) #1

declare dso_local i32 @STE_SETBIT4(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @ste_wait(%struct.ste_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @STE_ADDR_LO(i32) #1

declare dso_local i32 @STE_CLRBIT4(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @STE_SETBIT2(%struct.ste_softc*, i64, i32) #1

declare dso_local i32 @ste_stats_clear(%struct.ste_softc*) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ste_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
