; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ifnet = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ALE_PAR0 = common dso_local global i32 0, align 4
@ALE_PAR1 = common dso_local global i32 0, align 4
@ALE_WOL_CFG = common dso_local global i32 0, align 4
@ALE_TPD_ADDR_HI = common dso_local global i32 0, align 4
@ALE_TPD_ADDR_LO = common dso_local global i32 0, align 4
@ALE_TPD_CNT = common dso_local global i32 0, align 4
@ALE_TX_RING_CNT = common dso_local global i32 0, align 4
@TPD_CNT_SHIFT = common dso_local global i32 0, align 4
@TPD_CNT_MASK = common dso_local global i32 0, align 4
@ALE_RXF0_PAGE0_ADDR_LO = common dso_local global i32 0, align 4
@ALE_RXF0_PAGE1_ADDR_LO = common dso_local global i32 0, align 4
@ALE_TX_CMB_ADDR_LO = common dso_local global i32 0, align 4
@ALE_RXF0_CMB0_ADDR_LO = common dso_local global i32 0, align 4
@ALE_RXF0_CMB1_ADDR_LO = common dso_local global i32 0, align 4
@ALE_RXF0_PAGE0 = common dso_local global i32 0, align 4
@RXF_VALID = common dso_local global i32 0, align 4
@ALE_RXF0_PAGE1 = common dso_local global i32 0, align 4
@ALE_RXF_PAGE_SIZE = common dso_local global i32 0, align 4
@ALE_RX_PAGE_SZ = common dso_local global i32 0, align 4
@ALE_DMA_BLOCK = common dso_local global i32 0, align 4
@DMA_BLOCK_LOAD = common dso_local global i32 0, align 4
@ALE_INT_TRIG_THRESH = common dso_local global i32 0, align 4
@INT_TRIG_RX_THRESH_SHIFT = common dso_local global i32 0, align 4
@INT_TRIG_TX_THRESH_SHIFT = common dso_local global i32 0, align 4
@ALE_INT_TRIG_TIMER = common dso_local global i32 0, align 4
@INT_TRIG_RX_TIMER_SHIFT = common dso_local global i32 0, align 4
@INT_TRIG_TX_TIMER_SHIFT = common dso_local global i32 0, align 4
@IM_TIMER_RX_SHIFT = common dso_local global i32 0, align 4
@IM_TIMER_TX_SHIFT = common dso_local global i32 0, align 4
@ALE_IM_TIMER = common dso_local global i32 0, align 4
@ALE_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_CHIP_REV_MASK = common dso_local global i32 0, align 4
@MASTER_CHIP_ID_MASK = common dso_local global i32 0, align 4
@MASTER_IM_RX_TIMER_ENB = common dso_local global i32 0, align 4
@MASTER_IM_TX_TIMER_ENB = common dso_local global i32 0, align 4
@ALE_INTR_CLR_TIMER = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@ALE_FRAME_SIZE = common dso_local global i32 0, align 4
@ALE_IPG_IFG_CFG = common dso_local global i32 0, align 4
@IPG_IFG_IPGT_DEFAULT = common dso_local global i32 0, align 4
@IPG_IFG_IPGT_SHIFT = common dso_local global i32 0, align 4
@IPG_IFG_IPGT_MASK = common dso_local global i32 0, align 4
@IPG_IFG_MIFG_DEFAULT = common dso_local global i32 0, align 4
@IPG_IFG_MIFG_SHIFT = common dso_local global i32 0, align 4
@IPG_IFG_MIFG_MASK = common dso_local global i32 0, align 4
@IPG_IFG_IPG1_DEFAULT = common dso_local global i32 0, align 4
@IPG_IFG_IPG1_SHIFT = common dso_local global i32 0, align 4
@IPG_IFG_IPG1_MASK = common dso_local global i32 0, align 4
@IPG_IFG_IPG2_DEFAULT = common dso_local global i32 0, align 4
@IPG_IFG_IPG2_SHIFT = common dso_local global i32 0, align 4
@IPG_IFG_IPG2_MASK = common dso_local global i32 0, align 4
@ALE_HDPX_CFG = common dso_local global i32 0, align 4
@HDPX_CFG_LCOL_DEFAULT = common dso_local global i32 0, align 4
@HDPX_CFG_LCOL_SHIFT = common dso_local global i32 0, align 4
@HDPX_CFG_LCOL_MASK = common dso_local global i32 0, align 4
@HDPX_CFG_RETRY_DEFAULT = common dso_local global i32 0, align 4
@HDPX_CFG_RETRY_SHIFT = common dso_local global i32 0, align 4
@HDPX_CFG_RETRY_MASK = common dso_local global i32 0, align 4
@HDPX_CFG_EXC_DEF_EN = common dso_local global i32 0, align 4
@HDPX_CFG_ABEBT_DEFAULT = common dso_local global i32 0, align 4
@HDPX_CFG_ABEBT_SHIFT = common dso_local global i32 0, align 4
@HDPX_CFG_ABEBT_MASK = common dso_local global i32 0, align 4
@HDPX_CFG_JAMIPG_DEFAULT = common dso_local global i32 0, align 4
@HDPX_CFG_JAMIPG_SHIFT = common dso_local global i32 0, align 4
@HDPX_CFG_JAMIPG_MASK = common dso_local global i32 0, align 4
@ALE_FLAG_JUMBO = common dso_local global i32 0, align 4
@ALE_TX_JUMBO_THRESH = common dso_local global i32 0, align 4
@TX_JUMBO_THRESH_UNIT = common dso_local global i32 0, align 4
@TX_JUMBO_THRESH_UNIT_SHIFT = common dso_local global i32 0, align 4
@DMA_CFG_RD_BURST_SHIFT = common dso_local global i32 0, align 4
@TXQ_CFG_TX_FIFO_BURST_SHIFT = common dso_local global i32 0, align 4
@TXQ_CFG_TPD_BURST_DEFAULT = common dso_local global i32 0, align 4
@TXQ_CFG_TPD_BURST_SHIFT = common dso_local global i32 0, align 4
@TXQ_CFG_TPD_BURST_MASK = common dso_local global i32 0, align 4
@ALE_TXQ_CFG = common dso_local global i32 0, align 4
@TXQ_CFG_ENHANCED_MODE = common dso_local global i32 0, align 4
@TXQ_CFG_ENB = common dso_local global i32 0, align 4
@RX_JUMBO_THRESH_UNIT = common dso_local global i32 0, align 4
@ALE_RX_JUMBO_THRESH = common dso_local global i32 0, align 4
@RX_JUMBO_THRESH_UNIT_SHIFT = common dso_local global i32 0, align 4
@RX_JUMBO_THRESH_MASK_SHIFT = common dso_local global i32 0, align 4
@RX_JUMBO_THRESH_MASK = common dso_local global i32 0, align 4
@RX_JUMBO_LKAH_DEFAULT = common dso_local global i32 0, align 4
@RX_JUMBO_LKAH_SHIFT = common dso_local global i32 0, align 4
@RX_JUMBO_LKAH_MASK = common dso_local global i32 0, align 4
@ALE_SRAM_RX_FIFO_LEN = common dso_local global i32 0, align 4
@ALE_RX_FIFO_PAUSE_THRESH = common dso_local global i32 0, align 4
@RX_FIFO_PAUSE_THRESH_LO_SHIFT = common dso_local global i32 0, align 4
@RX_FIFO_PAUSE_THRESH_LO_MASK = common dso_local global i32 0, align 4
@RX_FIFO_PAUSE_THRESH_HI_SHIFT = common dso_local global i32 0, align 4
@RX_FIFO_PAUSE_THRESH_HI_MASK = common dso_local global i32 0, align 4
@ALE_RSS_IDT_TABLE0 = common dso_local global i32 0, align 4
@ALE_RSS_CPU = common dso_local global i32 0, align 4
@ALE_RXQ_CFG = common dso_local global i32 0, align 4
@RXQ_CFG_ALIGN_32 = common dso_local global i32 0, align 4
@RXQ_CFG_CUT_THROUGH_ENB = common dso_local global i32 0, align 4
@RXQ_CFG_ENB = common dso_local global i32 0, align 4
@ALE_FLAG_TXCMB_BUG = common dso_local global i32 0, align 4
@DMA_CFG_TXCMB_ENB = common dso_local global i32 0, align 4
@ALE_DMA_CFG = common dso_local global i32 0, align 4
@DMA_CFG_OUT_ORDER = common dso_local global i32 0, align 4
@DMA_CFG_RD_REQ_PRI = common dso_local global i32 0, align 4
@DMA_CFG_RCB_64 = common dso_local global i32 0, align 4
@DMA_CFG_RXCMB_ENB = common dso_local global i32 0, align 4
@DMA_CFG_RD_DELAY_CNT_DEFAULT = common dso_local global i32 0, align 4
@DMA_CFG_RD_DELAY_CNT_SHIFT = common dso_local global i32 0, align 4
@DMA_CFG_RD_DELAY_CNT_MASK = common dso_local global i32 0, align 4
@DMA_CFG_WR_DELAY_CNT_DEFAULT = common dso_local global i32 0, align 4
@DMA_CFG_WR_DELAY_CNT_SHIFT = common dso_local global i32 0, align 4
@DMA_CFG_WR_DELAY_CNT_MASK = common dso_local global i32 0, align 4
@ALE_SMB_STAT_TIMER = common dso_local global i32 0, align 4
@MAC_CFG_TX_CRC_ENB = common dso_local global i32 0, align 4
@MAC_CFG_TX_AUTO_PAD = common dso_local global i32 0, align 4
@MAC_CFG_FULL_DUPLEX = common dso_local global i32 0, align 4
@MAC_CFG_PREAMBLE_DEFAULT = common dso_local global i32 0, align 4
@MAC_CFG_PREAMBLE_SHIFT = common dso_local global i32 0, align 4
@MAC_CFG_PREAMBLE_MASK = common dso_local global i32 0, align 4
@ALE_FLAG_FASTETHER = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_10_100 = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_1000 = common dso_local global i32 0, align 4
@ALE_MAC_CFG = common dso_local global i32 0, align 4
@ALE_INTR_MASK = common dso_local global i32 0, align 4
@ALE_INTRS = common dso_local global i32 0, align 4
@ALE_INTR_STATUS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ALE_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ale_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_init_locked(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %12 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %17 = call i32 @ALE_LOCK_ASSERT(%struct.ale_softc* %16)
  %18 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %18, i32 0, i32 9
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %3, align 8
  %21 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.mii_data* @device_get_softc(i32 %23)
  store %struct.mii_data* %24, %struct.mii_data** %4, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %588

32:                                               ; preds = %1
  %33 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %34 = call i32 @ale_stop(%struct.ale_softc* %33)
  %35 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %36 = call i32 @ale_reset(%struct.ale_softc* %35)
  %37 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %38 = call i32 @ale_init_rx_pages(%struct.ale_softc* %37)
  %39 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %40 = call i32 @ale_init_tx_ring(%struct.ale_softc* %39)
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = call i32 @IF_LLADDR(%struct.ifnet* %41)
  %43 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %44 = call i32 @bcopy(i32 %42, i32* %15, i32 %43)
  %45 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %46 = load i32, i32* @ALE_PAR0, align 4
  %47 = getelementptr inbounds i32, i32* %15, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 24
  %50 = getelementptr inbounds i32, i32* %15, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %49, %52
  %54 = getelementptr inbounds i32, i32* %15, i64 4
  %55 = load i32, i32* %54, align 16
  %56 = shl i32 %55, 8
  %57 = or i32 %53, %56
  %58 = getelementptr inbounds i32, i32* %15, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %57, %59
  %61 = call i32 @CSR_WRITE_4(%struct.ale_softc* %45, i32 %46, i32 %60)
  %62 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %63 = load i32, i32* @ALE_PAR1, align 4
  %64 = getelementptr inbounds i32, i32* %15, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = shl i32 %65, 8
  %67 = getelementptr inbounds i32, i32* %15, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %66, %68
  %70 = call i32 @CSR_WRITE_4(%struct.ale_softc* %62, i32 %63, i32 %69)
  %71 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %72 = load i32, i32* @ALE_WOL_CFG, align 4
  %73 = call i32 @CSR_READ_4(%struct.ale_softc* %71, i32 %72)
  %74 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %75 = load i32, i32* @ALE_WOL_CFG, align 4
  %76 = call i32 @CSR_WRITE_4(%struct.ale_softc* %74, i32 %75, i32 0)
  %77 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %78 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %82 = load i32, i32* @ALE_TPD_ADDR_HI, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @ALE_ADDR_HI(i32 %83)
  %85 = call i32 @CSR_WRITE_4(%struct.ale_softc* %81, i32 %82, i32 %84)
  %86 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %87 = load i32, i32* @ALE_TPD_ADDR_LO, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @ALE_ADDR_LO(i32 %88)
  %90 = call i32 @CSR_WRITE_4(%struct.ale_softc* %86, i32 %87, i32 %89)
  %91 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %92 = load i32, i32* @ALE_TPD_CNT, align 4
  %93 = load i32, i32* @ALE_TX_RING_CNT, align 4
  %94 = load i32, i32* @TPD_CNT_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* @TPD_CNT_MASK, align 4
  %97 = and i32 %95, %96
  %98 = call i32 @CSR_WRITE_4(%struct.ale_softc* %91, i32 %92, i32 %97)
  %99 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %100 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %7, align 4
  %106 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %107 = load i32, i32* @ALE_RXF0_PAGE0_ADDR_LO, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @ALE_ADDR_LO(i32 %108)
  %110 = call i32 @CSR_WRITE_4(%struct.ale_softc* %106, i32 %107, i32 %109)
  %111 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %112 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %7, align 4
  %118 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %119 = load i32, i32* @ALE_RXF0_PAGE1_ADDR_LO, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @ALE_ADDR_LO(i32 %120)
  %122 = call i32 @CSR_WRITE_4(%struct.ale_softc* %118, i32 %119, i32 %121)
  %123 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %124 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %7, align 4
  %127 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %128 = load i32, i32* @ALE_TX_CMB_ADDR_LO, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @ALE_ADDR_LO(i32 %129)
  %131 = call i32 @CSR_WRITE_4(%struct.ale_softc* %127, i32 %128, i32 %130)
  %132 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %133 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %7, align 4
  %139 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %140 = load i32, i32* @ALE_RXF0_CMB0_ADDR_LO, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @ALE_ADDR_LO(i32 %141)
  %143 = call i32 @CSR_WRITE_4(%struct.ale_softc* %139, i32 %140, i32 %142)
  %144 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %145 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %7, align 4
  %151 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %152 = load i32, i32* @ALE_RXF0_CMB1_ADDR_LO, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @ALE_ADDR_LO(i32 %153)
  %155 = call i32 @CSR_WRITE_4(%struct.ale_softc* %151, i32 %152, i32 %154)
  %156 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %157 = load i32, i32* @ALE_RXF0_PAGE0, align 4
  %158 = load i32, i32* @RXF_VALID, align 4
  %159 = call i32 @CSR_WRITE_1(%struct.ale_softc* %156, i32 %157, i32 %158)
  %160 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %161 = load i32, i32* @ALE_RXF0_PAGE1, align 4
  %162 = load i32, i32* @RXF_VALID, align 4
  %163 = call i32 @CSR_WRITE_1(%struct.ale_softc* %160, i32 %161, i32 %162)
  %164 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %165 = load i32, i32* @ALE_RXF_PAGE_SIZE, align 4
  %166 = load i32, i32* @ALE_RX_PAGE_SZ, align 4
  %167 = call i32 @CSR_WRITE_4(%struct.ale_softc* %164, i32 %165, i32 %166)
  %168 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %169 = load i32, i32* @ALE_DMA_BLOCK, align 4
  %170 = load i32, i32* @DMA_BLOCK_LOAD, align 4
  %171 = call i32 @CSR_WRITE_4(%struct.ale_softc* %168, i32 %169, i32 %170)
  %172 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %173 = load i32, i32* @ALE_INT_TRIG_THRESH, align 4
  %174 = load i32, i32* @INT_TRIG_RX_THRESH_SHIFT, align 4
  %175 = shl i32 1, %174
  %176 = load i32, i32* @INT_TRIG_TX_THRESH_SHIFT, align 4
  %177 = shl i32 4, %176
  %178 = or i32 %175, %177
  %179 = call i32 @CSR_WRITE_4(%struct.ale_softc* %172, i32 %173, i32 %178)
  %180 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %181 = load i32, i32* @ALE_INT_TRIG_TIMER, align 4
  %182 = call i32 @ALE_USECS(i32 10)
  %183 = load i32, i32* @INT_TRIG_RX_TIMER_SHIFT, align 4
  %184 = shl i32 %182, %183
  %185 = call i32 @ALE_USECS(i32 1000)
  %186 = load i32, i32* @INT_TRIG_TX_TIMER_SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = or i32 %184, %187
  %189 = call i32 @CSR_WRITE_4(%struct.ale_softc* %180, i32 %181, i32 %188)
  %190 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %191 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @ALE_USECS(i32 %192)
  %194 = load i32, i32* @IM_TIMER_RX_SHIFT, align 4
  %195 = shl i32 %193, %194
  store i32 %195, i32* %8, align 4
  %196 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %197 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ALE_USECS(i32 %198)
  %200 = load i32, i32* @IM_TIMER_TX_SHIFT, align 4
  %201 = shl i32 %199, %200
  %202 = load i32, i32* %8, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %8, align 4
  %204 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %205 = load i32, i32* @ALE_IM_TIMER, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @CSR_WRITE_4(%struct.ale_softc* %204, i32 %205, i32 %206)
  %208 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %209 = load i32, i32* @ALE_MASTER_CFG, align 4
  %210 = call i32 @CSR_READ_4(%struct.ale_softc* %208, i32 %209)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* @MASTER_CHIP_REV_MASK, align 4
  %212 = load i32, i32* @MASTER_CHIP_ID_MASK, align 4
  %213 = or i32 %211, %212
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %8, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* @MASTER_IM_RX_TIMER_ENB, align 4
  %218 = load i32, i32* @MASTER_IM_TX_TIMER_ENB, align 4
  %219 = or i32 %217, %218
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %8, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %8, align 4
  %223 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %224 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @ALE_USECS(i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %32
  %229 = load i32, i32* @MASTER_IM_RX_TIMER_ENB, align 4
  %230 = load i32, i32* %8, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %228, %32
  %233 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %234 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @ALE_USECS(i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load i32, i32* @MASTER_IM_TX_TIMER_ENB, align 4
  %240 = load i32, i32* %8, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %238, %232
  %243 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %244 = load i32, i32* @ALE_MASTER_CFG, align 4
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @CSR_WRITE_4(%struct.ale_softc* %243, i32 %244, i32 %245)
  %247 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %248 = load i32, i32* @ALE_INTR_CLR_TIMER, align 4
  %249 = call i32 @ALE_USECS(i32 1000)
  %250 = call i32 @CSR_WRITE_2(%struct.ale_softc* %247, i32 %248, i32 %249)
  %251 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %252 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @ETHERMTU, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %242
  %257 = load i32, i32* @ETHERMTU, align 4
  %258 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %259 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  br label %266

260:                                              ; preds = %242
  %261 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %262 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %265 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %260, %256
  %267 = load i64, i64* @ETHER_HDR_LEN, align 8
  %268 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %269 = add nsw i64 %267, %268
  %270 = load i64, i64* @ETHER_CRC_LEN, align 8
  %271 = add nsw i64 %269, %270
  %272 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %273 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %275, %271
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %273, align 8
  %278 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %279 = load i32, i32* @ALE_FRAME_SIZE, align 4
  %280 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %281 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @CSR_WRITE_4(%struct.ale_softc* %278, i32 %279, i32 %282)
  %284 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %285 = load i32, i32* @ALE_IPG_IFG_CFG, align 4
  %286 = load i32, i32* @IPG_IFG_IPGT_DEFAULT, align 4
  %287 = load i32, i32* @IPG_IFG_IPGT_SHIFT, align 4
  %288 = shl i32 %286, %287
  %289 = load i32, i32* @IPG_IFG_IPGT_MASK, align 4
  %290 = and i32 %288, %289
  %291 = load i32, i32* @IPG_IFG_MIFG_DEFAULT, align 4
  %292 = load i32, i32* @IPG_IFG_MIFG_SHIFT, align 4
  %293 = shl i32 %291, %292
  %294 = load i32, i32* @IPG_IFG_MIFG_MASK, align 4
  %295 = and i32 %293, %294
  %296 = or i32 %290, %295
  %297 = load i32, i32* @IPG_IFG_IPG1_DEFAULT, align 4
  %298 = load i32, i32* @IPG_IFG_IPG1_SHIFT, align 4
  %299 = shl i32 %297, %298
  %300 = load i32, i32* @IPG_IFG_IPG1_MASK, align 4
  %301 = and i32 %299, %300
  %302 = or i32 %296, %301
  %303 = load i32, i32* @IPG_IFG_IPG2_DEFAULT, align 4
  %304 = load i32, i32* @IPG_IFG_IPG2_SHIFT, align 4
  %305 = shl i32 %303, %304
  %306 = load i32, i32* @IPG_IFG_IPG2_MASK, align 4
  %307 = and i32 %305, %306
  %308 = or i32 %302, %307
  %309 = call i32 @CSR_WRITE_4(%struct.ale_softc* %284, i32 %285, i32 %308)
  %310 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %311 = load i32, i32* @ALE_HDPX_CFG, align 4
  %312 = load i32, i32* @HDPX_CFG_LCOL_DEFAULT, align 4
  %313 = load i32, i32* @HDPX_CFG_LCOL_SHIFT, align 4
  %314 = shl i32 %312, %313
  %315 = load i32, i32* @HDPX_CFG_LCOL_MASK, align 4
  %316 = and i32 %314, %315
  %317 = load i32, i32* @HDPX_CFG_RETRY_DEFAULT, align 4
  %318 = load i32, i32* @HDPX_CFG_RETRY_SHIFT, align 4
  %319 = shl i32 %317, %318
  %320 = load i32, i32* @HDPX_CFG_RETRY_MASK, align 4
  %321 = and i32 %319, %320
  %322 = or i32 %316, %321
  %323 = load i32, i32* @HDPX_CFG_EXC_DEF_EN, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* @HDPX_CFG_ABEBT_DEFAULT, align 4
  %326 = load i32, i32* @HDPX_CFG_ABEBT_SHIFT, align 4
  %327 = shl i32 %325, %326
  %328 = load i32, i32* @HDPX_CFG_ABEBT_MASK, align 4
  %329 = and i32 %327, %328
  %330 = or i32 %324, %329
  %331 = load i32, i32* @HDPX_CFG_JAMIPG_DEFAULT, align 4
  %332 = load i32, i32* @HDPX_CFG_JAMIPG_SHIFT, align 4
  %333 = shl i32 %331, %332
  %334 = load i32, i32* @HDPX_CFG_JAMIPG_MASK, align 4
  %335 = and i32 %333, %334
  %336 = or i32 %330, %335
  %337 = call i32 @CSR_WRITE_4(%struct.ale_softc* %310, i32 %311, i32 %336)
  %338 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %339 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @ALE_FLAG_JUMBO, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %380

344:                                              ; preds = %266
  %345 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %346 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @ETHERMTU, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %354

350:                                              ; preds = %344
  %351 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %352 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  store i32 %353, i32* %8, align 4
  br label %371

354:                                              ; preds = %344
  %355 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %356 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = icmp slt i32 %357, 6144
  br i1 %358, label %359, label %365

359:                                              ; preds = %354
  %360 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %361 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = mul nsw i32 %362, 2
  %364 = sdiv i32 %363, 3
  store i32 %364, i32* %8, align 4
  br label %370

365:                                              ; preds = %354
  %366 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %367 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = sdiv i32 %368, 2
  store i32 %369, i32* %8, align 4
  br label %370

370:                                              ; preds = %365, %359
  br label %371

371:                                              ; preds = %370, %350
  %372 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %373 = load i32, i32* @ALE_TX_JUMBO_THRESH, align 4
  %374 = load i32, i32* %8, align 4
  %375 = load i32, i32* @TX_JUMBO_THRESH_UNIT, align 4
  %376 = call i32 @roundup(i32 %374, i32 %375)
  %377 = load i32, i32* @TX_JUMBO_THRESH_UNIT_SHIFT, align 4
  %378 = ashr i32 %376, %377
  %379 = call i32 @CSR_WRITE_4(%struct.ale_softc* %372, i32 %373, i32 %378)
  br label %380

380:                                              ; preds = %371, %266
  %381 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %382 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @DMA_CFG_RD_BURST_SHIFT, align 4
  %385 = ashr i32 %383, %384
  %386 = shl i32 128, %385
  %387 = load i32, i32* @TXQ_CFG_TX_FIFO_BURST_SHIFT, align 4
  %388 = shl i32 %386, %387
  store i32 %388, i32* %8, align 4
  %389 = load i32, i32* @TXQ_CFG_TPD_BURST_DEFAULT, align 4
  %390 = load i32, i32* @TXQ_CFG_TPD_BURST_SHIFT, align 4
  %391 = shl i32 %389, %390
  %392 = load i32, i32* @TXQ_CFG_TPD_BURST_MASK, align 4
  %393 = and i32 %391, %392
  %394 = load i32, i32* %8, align 4
  %395 = or i32 %394, %393
  store i32 %395, i32* %8, align 4
  %396 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %397 = load i32, i32* @ALE_TXQ_CFG, align 4
  %398 = load i32, i32* %8, align 4
  %399 = load i32, i32* @TXQ_CFG_ENHANCED_MODE, align 4
  %400 = or i32 %398, %399
  %401 = load i32, i32* @TXQ_CFG_ENB, align 4
  %402 = or i32 %400, %401
  %403 = call i32 @CSR_WRITE_4(%struct.ale_softc* %396, i32 %397, i32 %402)
  %404 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %405 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @ALE_FLAG_JUMBO, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %455

410:                                              ; preds = %380
  %411 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %412 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @RX_JUMBO_THRESH_UNIT, align 4
  %415 = call i32 @roundup(i32 %413, i32 %414)
  store i32 %415, i32* %8, align 4
  %416 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %417 = load i32, i32* @ALE_RX_JUMBO_THRESH, align 4
  %418 = load i32, i32* %8, align 4
  %419 = load i32, i32* @RX_JUMBO_THRESH_UNIT_SHIFT, align 4
  %420 = ashr i32 %418, %419
  %421 = load i32, i32* @RX_JUMBO_THRESH_MASK_SHIFT, align 4
  %422 = shl i32 %420, %421
  %423 = load i32, i32* @RX_JUMBO_THRESH_MASK, align 4
  %424 = and i32 %422, %423
  %425 = load i32, i32* @RX_JUMBO_LKAH_DEFAULT, align 4
  %426 = load i32, i32* @RX_JUMBO_LKAH_SHIFT, align 4
  %427 = shl i32 %425, %426
  %428 = load i32, i32* @RX_JUMBO_LKAH_MASK, align 4
  %429 = and i32 %427, %428
  %430 = or i32 %424, %429
  %431 = call i32 @CSR_WRITE_4(%struct.ale_softc* %416, i32 %417, i32 %430)
  %432 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %433 = load i32, i32* @ALE_SRAM_RX_FIFO_LEN, align 4
  %434 = call i32 @CSR_READ_4(%struct.ale_softc* %432, i32 %433)
  store i32 %434, i32* %8, align 4
  %435 = load i32, i32* %8, align 4
  %436 = mul nsw i32 %435, 7
  %437 = sdiv i32 %436, 10
  store i32 %437, i32* %9, align 4
  %438 = load i32, i32* %8, align 4
  %439 = mul nsw i32 %438, 3
  %440 = sdiv i32 %439, 10
  store i32 %440, i32* %10, align 4
  %441 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %442 = load i32, i32* @ALE_RX_FIFO_PAUSE_THRESH, align 4
  %443 = load i32, i32* %10, align 4
  %444 = load i32, i32* @RX_FIFO_PAUSE_THRESH_LO_SHIFT, align 4
  %445 = shl i32 %443, %444
  %446 = load i32, i32* @RX_FIFO_PAUSE_THRESH_LO_MASK, align 4
  %447 = and i32 %445, %446
  %448 = load i32, i32* %9, align 4
  %449 = load i32, i32* @RX_FIFO_PAUSE_THRESH_HI_SHIFT, align 4
  %450 = shl i32 %448, %449
  %451 = load i32, i32* @RX_FIFO_PAUSE_THRESH_HI_MASK, align 4
  %452 = and i32 %450, %451
  %453 = or i32 %447, %452
  %454 = call i32 @CSR_WRITE_4(%struct.ale_softc* %441, i32 %442, i32 %453)
  br label %455

455:                                              ; preds = %410, %380
  %456 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %457 = load i32, i32* @ALE_RSS_IDT_TABLE0, align 4
  %458 = call i32 @CSR_WRITE_4(%struct.ale_softc* %456, i32 %457, i32 0)
  %459 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %460 = load i32, i32* @ALE_RSS_CPU, align 4
  %461 = call i32 @CSR_WRITE_4(%struct.ale_softc* %459, i32 %460, i32 0)
  %462 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %463 = load i32, i32* @ALE_RXQ_CFG, align 4
  %464 = load i32, i32* @RXQ_CFG_ALIGN_32, align 4
  %465 = load i32, i32* @RXQ_CFG_CUT_THROUGH_ENB, align 4
  %466 = or i32 %464, %465
  %467 = load i32, i32* @RXQ_CFG_ENB, align 4
  %468 = or i32 %466, %467
  %469 = call i32 @CSR_WRITE_4(%struct.ale_softc* %462, i32 %463, i32 %468)
  store i32 0, i32* %8, align 4
  %470 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %471 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %470, i32 0, i32 3
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* @ALE_FLAG_TXCMB_BUG, align 4
  %474 = and i32 %472, %473
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %480

476:                                              ; preds = %455
  %477 = load i32, i32* @DMA_CFG_TXCMB_ENB, align 4
  %478 = load i32, i32* %8, align 4
  %479 = or i32 %478, %477
  store i32 %479, i32* %8, align 4
  br label %480

480:                                              ; preds = %476, %455
  %481 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %482 = load i32, i32* @ALE_DMA_CFG, align 4
  %483 = load i32, i32* @DMA_CFG_OUT_ORDER, align 4
  %484 = load i32, i32* @DMA_CFG_RD_REQ_PRI, align 4
  %485 = or i32 %483, %484
  %486 = load i32, i32* @DMA_CFG_RCB_64, align 4
  %487 = or i32 %485, %486
  %488 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %489 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %488, i32 0, i32 4
  %490 = load i32, i32* %489, align 8
  %491 = or i32 %487, %490
  %492 = load i32, i32* %8, align 4
  %493 = or i32 %491, %492
  %494 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %495 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %494, i32 0, i32 5
  %496 = load i32, i32* %495, align 4
  %497 = or i32 %493, %496
  %498 = load i32, i32* @DMA_CFG_RXCMB_ENB, align 4
  %499 = or i32 %497, %498
  %500 = load i32, i32* @DMA_CFG_RD_DELAY_CNT_DEFAULT, align 4
  %501 = load i32, i32* @DMA_CFG_RD_DELAY_CNT_SHIFT, align 4
  %502 = shl i32 %500, %501
  %503 = load i32, i32* @DMA_CFG_RD_DELAY_CNT_MASK, align 4
  %504 = and i32 %502, %503
  %505 = or i32 %499, %504
  %506 = load i32, i32* @DMA_CFG_WR_DELAY_CNT_DEFAULT, align 4
  %507 = load i32, i32* @DMA_CFG_WR_DELAY_CNT_SHIFT, align 4
  %508 = shl i32 %506, %507
  %509 = load i32, i32* @DMA_CFG_WR_DELAY_CNT_MASK, align 4
  %510 = and i32 %508, %509
  %511 = or i32 %505, %510
  %512 = call i32 @CSR_WRITE_4(%struct.ale_softc* %481, i32 %482, i32 %511)
  %513 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %514 = load i32, i32* @ALE_SMB_STAT_TIMER, align 4
  %515 = call i32 @ALE_USECS(i32 0)
  %516 = call i32 @CSR_WRITE_4(%struct.ale_softc* %513, i32 %514, i32 %515)
  %517 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %518 = call i32 @ale_stats_clear(%struct.ale_softc* %517)
  %519 = load i32, i32* @MAC_CFG_TX_CRC_ENB, align 4
  %520 = load i32, i32* @MAC_CFG_TX_AUTO_PAD, align 4
  %521 = or i32 %519, %520
  %522 = load i32, i32* @MAC_CFG_FULL_DUPLEX, align 4
  %523 = or i32 %521, %522
  %524 = load i32, i32* @MAC_CFG_PREAMBLE_DEFAULT, align 4
  %525 = load i32, i32* @MAC_CFG_PREAMBLE_SHIFT, align 4
  %526 = shl i32 %524, %525
  %527 = load i32, i32* @MAC_CFG_PREAMBLE_MASK, align 4
  %528 = and i32 %526, %527
  %529 = or i32 %523, %528
  store i32 %529, i32* %8, align 4
  %530 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %531 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %530, i32 0, i32 3
  %532 = load i32, i32* %531, align 4
  %533 = load i32, i32* @ALE_FLAG_FASTETHER, align 4
  %534 = and i32 %532, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %540

536:                                              ; preds = %480
  %537 = load i32, i32* @MAC_CFG_SPEED_10_100, align 4
  %538 = load i32, i32* %8, align 4
  %539 = or i32 %538, %537
  store i32 %539, i32* %8, align 4
  br label %544

540:                                              ; preds = %480
  %541 = load i32, i32* @MAC_CFG_SPEED_1000, align 4
  %542 = load i32, i32* %8, align 4
  %543 = or i32 %542, %541
  store i32 %543, i32* %8, align 4
  br label %544

544:                                              ; preds = %540, %536
  %545 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %546 = load i32, i32* @ALE_MAC_CFG, align 4
  %547 = load i32, i32* %8, align 4
  %548 = call i32 @CSR_WRITE_4(%struct.ale_softc* %545, i32 %546, i32 %547)
  %549 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %550 = call i32 @ale_rxfilter(%struct.ale_softc* %549)
  %551 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %552 = call i32 @ale_rxvlan(%struct.ale_softc* %551)
  %553 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %554 = load i32, i32* @ALE_INTR_MASK, align 4
  %555 = load i32, i32* @ALE_INTRS, align 4
  %556 = call i32 @CSR_WRITE_4(%struct.ale_softc* %553, i32 %554, i32 %555)
  %557 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %558 = load i32, i32* @ALE_INTR_STATUS, align 4
  %559 = call i32 @CSR_WRITE_4(%struct.ale_softc* %557, i32 %558, i32 -1)
  %560 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %561 = load i32, i32* @ALE_INTR_STATUS, align 4
  %562 = call i32 @CSR_WRITE_4(%struct.ale_softc* %560, i32 %561, i32 0)
  %563 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %564 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %565 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = or i32 %566, %563
  store i32 %567, i32* %565, align 4
  %568 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %569 = xor i32 %568, -1
  %570 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %571 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = and i32 %572, %569
  store i32 %573, i32* %571, align 4
  %574 = load i32, i32* @ALE_FLAG_LINK, align 4
  %575 = xor i32 %574, -1
  %576 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %577 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %576, i32 0, i32 3
  %578 = load i32, i32* %577, align 4
  %579 = and i32 %578, %575
  store i32 %579, i32* %577, align 4
  %580 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %581 = call i32 @mii_mediachg(%struct.mii_data* %580)
  %582 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %583 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %582, i32 0, i32 6
  %584 = load i32, i32* @hz, align 4
  %585 = load i32, i32* @ale_tick, align 4
  %586 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %587 = call i32 @callout_reset(i32* %583, i32 %584, i32 %585, %struct.ale_softc* %586)
  store i32 0, i32* %11, align 4
  br label %588

588:                                              ; preds = %544, %31
  %589 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %589)
  %590 = load i32, i32* %11, align 4
  switch i32 %590, label %592 [
    i32 0, label %591
    i32 1, label %591
  ]

591:                                              ; preds = %588, %588
  ret void

592:                                              ; preds = %588
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ALE_LOCK_ASSERT(%struct.ale_softc*) #2

declare dso_local %struct.mii_data* @device_get_softc(i32) #2

declare dso_local i32 @ale_stop(%struct.ale_softc*) #2

declare dso_local i32 @ale_reset(%struct.ale_softc*) #2

declare dso_local i32 @ale_init_rx_pages(%struct.ale_softc*) #2

declare dso_local i32 @ale_init_tx_ring(%struct.ale_softc*) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #2

declare dso_local i32 @CSR_WRITE_4(%struct.ale_softc*, i32, i32) #2

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i32) #2

declare dso_local i32 @ALE_ADDR_HI(i32) #2

declare dso_local i32 @ALE_ADDR_LO(i32) #2

declare dso_local i32 @CSR_WRITE_1(%struct.ale_softc*, i32, i32) #2

declare dso_local i32 @ALE_USECS(i32) #2

declare dso_local i32 @CSR_WRITE_2(%struct.ale_softc*, i32, i32) #2

declare dso_local i32 @roundup(i32, i32) #2

declare dso_local i32 @ale_stats_clear(%struct.ale_softc*) #2

declare dso_local i32 @ale_rxfilter(%struct.ale_softc*) #2

declare dso_local i32 @ale_rxvlan(%struct.ale_softc*) #2

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #2

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ale_softc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
