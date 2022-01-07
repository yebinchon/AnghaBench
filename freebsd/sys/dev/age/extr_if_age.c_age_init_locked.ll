; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i64, i32 }
%struct.mii_data = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no memory for Rx buffers.\0A\00", align 1
@AGE_PAR0 = common dso_local global i32 0, align 4
@AGE_PAR1 = common dso_local global i32 0, align 4
@AGE_DESC_ADDR_HI = common dso_local global i32 0, align 4
@AGE_DESC_RD_ADDR_LO = common dso_local global i32 0, align 4
@AGE_DESC_RRD_ADDR_LO = common dso_local global i32 0, align 4
@AGE_DESC_TPD_ADDR_LO = common dso_local global i32 0, align 4
@AGE_DESC_CMB_ADDR_LO = common dso_local global i32 0, align 4
@AGE_DESC_SMB_ADDR_LO = common dso_local global i32 0, align 4
@AGE_DESC_RRD_RD_CNT = common dso_local global i32 0, align 4
@AGE_RR_RING_CNT = common dso_local global i32 0, align 4
@DESC_RRD_CNT_SHIFT = common dso_local global i32 0, align 4
@DESC_RRD_CNT_MASK = common dso_local global i32 0, align 4
@AGE_RX_RING_CNT = common dso_local global i32 0, align 4
@DESC_RD_CNT_SHIFT = common dso_local global i32 0, align 4
@DESC_RD_CNT_MASK = common dso_local global i32 0, align 4
@AGE_DESC_TPD_CNT = common dso_local global i32 0, align 4
@AGE_TX_RING_CNT = common dso_local global i32 0, align 4
@DESC_TPD_CNT_SHIFT = common dso_local global i32 0, align 4
@DESC_TPD_CNT_MASK = common dso_local global i32 0, align 4
@AGE_DMA_BLOCK = common dso_local global i32 0, align 4
@DMA_BLOCK_LOAD = common dso_local global i32 0, align 4
@AGE_IPG_IFG_CFG = common dso_local global i32 0, align 4
@IPG_IFG_IPG2_DEFAULT = common dso_local global i32 0, align 4
@IPG_IFG_IPG2_SHIFT = common dso_local global i32 0, align 4
@IPG_IFG_IPG2_MASK = common dso_local global i32 0, align 4
@IPG_IFG_IPG1_DEFAULT = common dso_local global i32 0, align 4
@IPG_IFG_IPG1_SHIFT = common dso_local global i32 0, align 4
@IPG_IFG_IPG1_MASK = common dso_local global i32 0, align 4
@IPG_IFG_MIFG_DEFAULT = common dso_local global i32 0, align 4
@IPG_IFG_MIFG_SHIFT = common dso_local global i32 0, align 4
@IPG_IFG_MIFG_MASK = common dso_local global i32 0, align 4
@IPG_IFG_IPGT_DEFAULT = common dso_local global i32 0, align 4
@IPG_IFG_IPGT_SHIFT = common dso_local global i32 0, align 4
@IPG_IFG_IPGT_MASK = common dso_local global i32 0, align 4
@AGE_HDPX_CFG = common dso_local global i32 0, align 4
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
@AGE_IM_TIMER = common dso_local global i32 0, align 4
@AGE_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_MTIMER_ENB = common dso_local global i32 0, align 4
@MASTER_ITIMER_ENB = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"interrupt moderation is %d us.\0A\00", align 1
@AGE_INTR_CLR_TIMER = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i64 0, align 8
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@AGE_FRAME_SIZE = common dso_local global i32 0, align 4
@AGE_RXQ_JUMBO_CFG = common dso_local global i32 0, align 4
@RXQ_JUMBO_CFG_SZ_THRESH_SHIFT = common dso_local global i32 0, align 4
@RXQ_JUMBO_CFG_SZ_THRESH_MASK = common dso_local global i32 0, align 4
@RXQ_JUMBO_CFG_LKAH_DEFAULT = common dso_local global i32 0, align 4
@RXQ_JUMBO_CFG_LKAH_SHIFT = common dso_local global i32 0, align 4
@RXQ_JUMBO_CFG_LKAH_MASK = common dso_local global i32 0, align 4
@RXQ_JUMBO_CFG_RRD_TIMER_SHIFT = common dso_local global i32 0, align 4
@RXQ_JUMBO_CFG_RRD_TIMER_MASK = common dso_local global i32 0, align 4
@AGE_FLAG_PCIE = common dso_local global i32 0, align 4
@AGE_SRAM_RX_FIFO_LEN = common dso_local global i32 0, align 4
@AGE_SRAM_RRD_LEN = common dso_local global i32 0, align 4
@AGE_RXQ_FIFO_PAUSE_THRESH = common dso_local global i32 0, align 4
@RXQ_FIFO_PAUSE_THRESH_LO_SHIFT = common dso_local global i32 0, align 4
@RXQ_FIFO_PAUSE_THRESH_LO_MASK = common dso_local global i32 0, align 4
@RXQ_FIFO_PAUSE_THRESH_HI_SHIFT = common dso_local global i32 0, align 4
@RXQ_FIFO_PAUSE_THRESH_HI_MASK = common dso_local global i32 0, align 4
@AGE_RXQ_RRD_PAUSE_THRESH = common dso_local global i32 0, align 4
@RXQ_RRD_PAUSE_THRESH_LO_SHIFT = common dso_local global i32 0, align 4
@RXQ_RRD_PAUSE_THRESH_LO_MASK = common dso_local global i32 0, align 4
@RXQ_RRD_PAUSE_THRESH_HI_SHIFT = common dso_local global i32 0, align 4
@RXQ_RRD_PAUSE_THRESH_HI_MASK = common dso_local global i32 0, align 4
@AGE_RXQ_CFG = common dso_local global i32 0, align 4
@RXQ_CFG_RD_BURST_DEFAULT = common dso_local global i32 0, align 4
@RXQ_CFG_RD_BURST_SHIFT = common dso_local global i32 0, align 4
@RXQ_CFG_RD_BURST_MASK = common dso_local global i32 0, align 4
@RXQ_CFG_RRD_BURST_THRESH_DEFAULT = common dso_local global i32 0, align 4
@RXQ_CFG_RRD_BURST_THRESH_SHIFT = common dso_local global i32 0, align 4
@RXQ_CFG_RRD_BURST_THRESH_MASK = common dso_local global i32 0, align 4
@RXQ_CFG_RD_PREF_MIN_IPG_DEFAULT = common dso_local global i32 0, align 4
@RXQ_CFG_RD_PREF_MIN_IPG_SHIFT = common dso_local global i32 0, align 4
@RXQ_CFG_RD_PREF_MIN_IPG_MASK = common dso_local global i32 0, align 4
@RXQ_CFG_CUT_THROUGH_ENB = common dso_local global i32 0, align 4
@RXQ_CFG_ENB = common dso_local global i32 0, align 4
@AGE_TXQ_CFG = common dso_local global i32 0, align 4
@TXQ_CFG_TPD_BURST_DEFAULT = common dso_local global i32 0, align 4
@TXQ_CFG_TPD_BURST_SHIFT = common dso_local global i32 0, align 4
@TXQ_CFG_TPD_BURST_MASK = common dso_local global i32 0, align 4
@TXQ_CFG_TX_FIFO_BURST_DEFAULT = common dso_local global i32 0, align 4
@TXQ_CFG_TX_FIFO_BURST_SHIFT = common dso_local global i32 0, align 4
@TXQ_CFG_TX_FIFO_BURST_MASK = common dso_local global i32 0, align 4
@TXQ_CFG_TPD_FETCH_DEFAULT = common dso_local global i32 0, align 4
@TXQ_CFG_TPD_FETCH_THRESH_SHIFT = common dso_local global i32 0, align 4
@TXQ_CFG_TPD_FETCH_THRESH_MASK = common dso_local global i32 0, align 4
@TXQ_CFG_ENB = common dso_local global i32 0, align 4
@AGE_TX_JUMBO_TPD_TH_IPG = common dso_local global i32 0, align 4
@TX_JUMBO_TPD_TH_SHIFT = common dso_local global i32 0, align 4
@TX_JUMBO_TPD_TH_MASK = common dso_local global i32 0, align 4
@TX_JUMBO_TPD_IPG_DEFAULT = common dso_local global i32 0, align 4
@TX_JUMBO_TPD_IPG_SHIFT = common dso_local global i32 0, align 4
@TX_JUMBO_TPD_IPG_MASK = common dso_local global i32 0, align 4
@AGE_DMA_CFG = common dso_local global i32 0, align 4
@DMA_CFG_ENH_ORDER = common dso_local global i32 0, align 4
@DMA_CFG_RCB_64 = common dso_local global i32 0, align 4
@DMA_CFG_RD_ENB = common dso_local global i32 0, align 4
@DMA_CFG_WR_ENB = common dso_local global i32 0, align 4
@AGE_CMB_WR_THRESH = common dso_local global i32 0, align 4
@CMB_WR_THRESH_RRD_DEFAULT = common dso_local global i32 0, align 4
@CMB_WR_THRESH_RRD_SHIFT = common dso_local global i32 0, align 4
@CMB_WR_THRESH_RRD_MASK = common dso_local global i32 0, align 4
@CMB_WR_THRESH_TPD_DEFAULT = common dso_local global i32 0, align 4
@CMB_WR_THRESH_TPD_SHIFT = common dso_local global i32 0, align 4
@CMB_WR_THRESH_TPD_MASK = common dso_local global i32 0, align 4
@AGE_CMB_WR_TIMER = common dso_local global i32 0, align 4
@CMB_WR_TIMER_TX_SHIFT = common dso_local global i32 0, align 4
@CMB_WR_TIMER_TX_MASK = common dso_local global i32 0, align 4
@CMB_WR_TIMER_RX_SHIFT = common dso_local global i32 0, align 4
@CMB_WR_TIMER_RX_MASK = common dso_local global i32 0, align 4
@AGE_SMB_TIMER = common dso_local global i32 0, align 4
@AGE_CSMB_CTRL = common dso_local global i32 0, align 4
@CSMB_CTRL_SMB_ENB = common dso_local global i32 0, align 4
@CSMB_CTRL_CMB_ENB = common dso_local global i32 0, align 4
@AGE_WOL_CFG = common dso_local global i32 0, align 4
@AGE_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_TX_CRC_ENB = common dso_local global i32 0, align 4
@MAC_CFG_TX_AUTO_PAD = common dso_local global i32 0, align 4
@MAC_CFG_FULL_DUPLEX = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_1000 = common dso_local global i32 0, align 4
@MAC_CFG_PREAMBLE_DEFAULT = common dso_local global i32 0, align 4
@MAC_CFG_PREAMBLE_SHIFT = common dso_local global i32 0, align 4
@MAC_CFG_PREAMBLE_MASK = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@MAC_CFG_RXCSUM_ENB = common dso_local global i32 0, align 4
@AGE_INTR_STATUS = common dso_local global i32 0, align 4
@AGE_INTR_MASK = common dso_local global i32 0, align 4
@AGE_INTRS = common dso_local global i32 0, align 4
@MAC_CFG_TX_ENB = common dso_local global i32 0, align 4
@MAC_CFG_RX_ENB = common dso_local global i32 0, align 4
@AGE_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@age_tick = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_init_locked(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %16 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %21 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %20)
  %22 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %23 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %22, i32 0, i32 10
  %24 = load %struct.ifnet*, %struct.ifnet** %23, align 8
  store %struct.ifnet* %24, %struct.ifnet** %3, align 8
  %25 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %26 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.mii_data* @device_get_softc(i32 %27)
  store %struct.mii_data* %28, %struct.mii_data** %4, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 1, i32* %15, align 4
  br label %636

36:                                               ; preds = %1
  %37 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %38 = call i32 @age_stop(%struct.age_softc* %37)
  %39 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %40 = call i32 @age_reset(%struct.age_softc* %39)
  %41 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %42 = call i32 @age_init_rx_ring(%struct.age_softc* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %47 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %51 = call i32 @age_stop(%struct.age_softc* %50)
  store i32 1, i32* %15, align 4
  br label %636

52:                                               ; preds = %36
  %53 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %54 = call i32 @age_init_rr_ring(%struct.age_softc* %53)
  %55 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %56 = call i32 @age_init_tx_ring(%struct.age_softc* %55)
  %57 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %58 = call i32 @age_init_cmb_block(%struct.age_softc* %57)
  %59 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %60 = call i32 @age_init_smb_block(%struct.age_softc* %59)
  %61 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %62 = call i32 @IF_LLADDR(%struct.ifnet* %61)
  %63 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %64 = call i32 @bcopy(i32 %62, i32* %19, i32 %63)
  %65 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %66 = load i32, i32* @AGE_PAR0, align 4
  %67 = getelementptr inbounds i32, i32* %19, i64 2
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %68, 24
  %70 = getelementptr inbounds i32, i32* %19, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 16
  %73 = or i32 %69, %72
  %74 = getelementptr inbounds i32, i32* %19, i64 4
  %75 = load i32, i32* %74, align 16
  %76 = shl i32 %75, 8
  %77 = or i32 %73, %76
  %78 = getelementptr inbounds i32, i32* %19, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %77, %79
  %81 = call i32 @CSR_WRITE_4(%struct.age_softc* %65, i32 %66, i32 %80)
  %82 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %83 = load i32, i32* @AGE_PAR1, align 4
  %84 = getelementptr inbounds i32, i32* %19, i64 0
  %85 = load i32, i32* %84, align 16
  %86 = shl i32 %85, 8
  %87 = getelementptr inbounds i32, i32* %19, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %86, %88
  %90 = call i32 @CSR_WRITE_4(%struct.age_softc* %82, i32 %83, i32 %89)
  %91 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %92 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %7, align 4
  %95 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %96 = load i32, i32* @AGE_DESC_ADDR_HI, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @AGE_ADDR_HI(i32 %97)
  %99 = call i32 @CSR_WRITE_4(%struct.age_softc* %95, i32 %96, i32 %98)
  %100 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %101 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %7, align 4
  %104 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %105 = load i32, i32* @AGE_DESC_RD_ADDR_LO, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @AGE_ADDR_LO(i32 %106)
  %108 = call i32 @CSR_WRITE_4(%struct.age_softc* %104, i32 %105, i32 %107)
  %109 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %110 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %7, align 4
  %113 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %114 = load i32, i32* @AGE_DESC_RRD_ADDR_LO, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @AGE_ADDR_LO(i32 %115)
  %117 = call i32 @CSR_WRITE_4(%struct.age_softc* %113, i32 %114, i32 %116)
  %118 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %119 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %7, align 4
  %122 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %123 = load i32, i32* @AGE_DESC_TPD_ADDR_LO, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @AGE_ADDR_LO(i32 %124)
  %126 = call i32 @CSR_WRITE_4(%struct.age_softc* %122, i32 %123, i32 %125)
  %127 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %128 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %7, align 4
  %131 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %132 = load i32, i32* @AGE_DESC_CMB_ADDR_LO, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @AGE_ADDR_LO(i32 %133)
  %135 = call i32 @CSR_WRITE_4(%struct.age_softc* %131, i32 %132, i32 %134)
  %136 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %137 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %136, i32 0, i32 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %7, align 4
  %140 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %141 = load i32, i32* @AGE_DESC_SMB_ADDR_LO, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @AGE_ADDR_LO(i32 %142)
  %144 = call i32 @CSR_WRITE_4(%struct.age_softc* %140, i32 %141, i32 %143)
  %145 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %146 = load i32, i32* @AGE_DESC_RRD_RD_CNT, align 4
  %147 = load i32, i32* @AGE_RR_RING_CNT, align 4
  %148 = load i32, i32* @DESC_RRD_CNT_SHIFT, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* @DESC_RRD_CNT_MASK, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @AGE_RX_RING_CNT, align 4
  %153 = load i32, i32* @DESC_RD_CNT_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* @DESC_RD_CNT_MASK, align 4
  %156 = and i32 %154, %155
  %157 = or i32 %151, %156
  %158 = call i32 @CSR_WRITE_4(%struct.age_softc* %145, i32 %146, i32 %157)
  %159 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %160 = load i32, i32* @AGE_DESC_TPD_CNT, align 4
  %161 = load i32, i32* @AGE_TX_RING_CNT, align 4
  %162 = load i32, i32* @DESC_TPD_CNT_SHIFT, align 4
  %163 = shl i32 %161, %162
  %164 = load i32, i32* @DESC_TPD_CNT_MASK, align 4
  %165 = and i32 %163, %164
  %166 = call i32 @CSR_WRITE_4(%struct.age_softc* %159, i32 %160, i32 %165)
  %167 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %168 = load i32, i32* @AGE_DMA_BLOCK, align 4
  %169 = load i32, i32* @DMA_BLOCK_LOAD, align 4
  %170 = call i32 @CSR_WRITE_4(%struct.age_softc* %167, i32 %168, i32 %169)
  %171 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %172 = call i32 @AGE_COMMIT_MBOX(%struct.age_softc* %171)
  %173 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %174 = load i32, i32* @AGE_IPG_IFG_CFG, align 4
  %175 = load i32, i32* @IPG_IFG_IPG2_DEFAULT, align 4
  %176 = load i32, i32* @IPG_IFG_IPG2_SHIFT, align 4
  %177 = shl i32 %175, %176
  %178 = load i32, i32* @IPG_IFG_IPG2_MASK, align 4
  %179 = and i32 %177, %178
  %180 = load i32, i32* @IPG_IFG_IPG1_DEFAULT, align 4
  %181 = load i32, i32* @IPG_IFG_IPG1_SHIFT, align 4
  %182 = shl i32 %180, %181
  %183 = load i32, i32* @IPG_IFG_IPG1_MASK, align 4
  %184 = and i32 %182, %183
  %185 = or i32 %179, %184
  %186 = load i32, i32* @IPG_IFG_MIFG_DEFAULT, align 4
  %187 = load i32, i32* @IPG_IFG_MIFG_SHIFT, align 4
  %188 = shl i32 %186, %187
  %189 = load i32, i32* @IPG_IFG_MIFG_MASK, align 4
  %190 = and i32 %188, %189
  %191 = or i32 %185, %190
  %192 = load i32, i32* @IPG_IFG_IPGT_DEFAULT, align 4
  %193 = load i32, i32* @IPG_IFG_IPGT_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* @IPG_IFG_IPGT_MASK, align 4
  %196 = and i32 %194, %195
  %197 = or i32 %191, %196
  %198 = call i32 @CSR_WRITE_4(%struct.age_softc* %173, i32 %174, i32 %197)
  %199 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %200 = load i32, i32* @AGE_HDPX_CFG, align 4
  %201 = load i32, i32* @HDPX_CFG_LCOL_DEFAULT, align 4
  %202 = load i32, i32* @HDPX_CFG_LCOL_SHIFT, align 4
  %203 = shl i32 %201, %202
  %204 = load i32, i32* @HDPX_CFG_LCOL_MASK, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* @HDPX_CFG_RETRY_DEFAULT, align 4
  %207 = load i32, i32* @HDPX_CFG_RETRY_SHIFT, align 4
  %208 = shl i32 %206, %207
  %209 = load i32, i32* @HDPX_CFG_RETRY_MASK, align 4
  %210 = and i32 %208, %209
  %211 = or i32 %205, %210
  %212 = load i32, i32* @HDPX_CFG_EXC_DEF_EN, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @HDPX_CFG_ABEBT_DEFAULT, align 4
  %215 = load i32, i32* @HDPX_CFG_ABEBT_SHIFT, align 4
  %216 = shl i32 %214, %215
  %217 = load i32, i32* @HDPX_CFG_ABEBT_MASK, align 4
  %218 = and i32 %216, %217
  %219 = or i32 %213, %218
  %220 = load i32, i32* @HDPX_CFG_JAMIPG_DEFAULT, align 4
  %221 = load i32, i32* @HDPX_CFG_JAMIPG_SHIFT, align 4
  %222 = shl i32 %220, %221
  %223 = load i32, i32* @HDPX_CFG_JAMIPG_MASK, align 4
  %224 = and i32 %222, %223
  %225 = or i32 %219, %224
  %226 = call i32 @CSR_WRITE_4(%struct.age_softc* %199, i32 %200, i32 %225)
  %227 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %228 = load i32, i32* @AGE_IM_TIMER, align 4
  %229 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %230 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @AGE_USECS(i32 %231)
  %233 = call i32 @CSR_WRITE_2(%struct.age_softc* %227, i32 %228, i32 %232)
  %234 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %235 = load i32, i32* @AGE_MASTER_CFG, align 4
  %236 = call i32 @CSR_READ_4(%struct.age_softc* %234, i32 %235)
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* @MASTER_MTIMER_ENB, align 4
  %238 = xor i32 %237, -1
  %239 = load i32, i32* %8, align 4
  %240 = and i32 %239, %238
  store i32 %240, i32* %8, align 4
  %241 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %242 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @AGE_USECS(i32 %243)
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %52
  %247 = load i32, i32* @MASTER_ITIMER_ENB, align 4
  %248 = xor i32 %247, -1
  %249 = load i32, i32* %8, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %8, align 4
  br label %255

251:                                              ; preds = %52
  %252 = load i32, i32* @MASTER_ITIMER_ENB, align 4
  %253 = load i32, i32* %8, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %8, align 4
  br label %255

255:                                              ; preds = %251, %246
  %256 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %257 = load i32, i32* @AGE_MASTER_CFG, align 4
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @CSR_WRITE_4(%struct.age_softc* %256, i32 %257, i32 %258)
  %260 = load i64, i64* @bootverbose, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %255
  %263 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %264 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %267 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 (i32, i8*, ...) @device_printf(i32 %265, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %262, %255
  %271 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %272 = load i32, i32* @AGE_INTR_CLR_TIMER, align 4
  %273 = call i32 @AGE_USECS(i32 1000)
  %274 = call i32 @CSR_WRITE_2(%struct.age_softc* %271, i32 %272, i32 %273)
  %275 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %276 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @ETHERMTU, align 8
  %279 = icmp slt i64 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %270
  %281 = load i64, i64* @ETHERMTU, align 8
  %282 = trunc i64 %281 to i32
  %283 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %284 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  br label %292

285:                                              ; preds = %270
  %286 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %287 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %291 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  br label %292

292:                                              ; preds = %285, %280
  %293 = load i64, i64* @ETHER_HDR_LEN, align 8
  %294 = add i64 %293, 4
  %295 = load i64, i64* @ETHER_CRC_LEN, align 8
  %296 = add i64 %294, %295
  %297 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %298 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = add i64 %300, %296
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %298, align 4
  %303 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %304 = load i32, i32* @AGE_FRAME_SIZE, align 4
  %305 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %306 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @CSR_WRITE_4(%struct.age_softc* %303, i32 %304, i32 %307)
  %309 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %310 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @roundup(i32 %311, i32 4)
  store i32 %312, i32* %9, align 4
  %313 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %314 = load i32, i32* @AGE_RXQ_JUMBO_CFG, align 4
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = udiv i64 %316, 4
  %318 = load i32, i32* @RXQ_JUMBO_CFG_SZ_THRESH_SHIFT, align 4
  %319 = zext i32 %318 to i64
  %320 = shl i64 %317, %319
  %321 = load i32, i32* @RXQ_JUMBO_CFG_SZ_THRESH_MASK, align 4
  %322 = sext i32 %321 to i64
  %323 = and i64 %320, %322
  %324 = load i32, i32* @RXQ_JUMBO_CFG_LKAH_DEFAULT, align 4
  %325 = load i32, i32* @RXQ_JUMBO_CFG_LKAH_SHIFT, align 4
  %326 = shl i32 %324, %325
  %327 = load i32, i32* @RXQ_JUMBO_CFG_LKAH_MASK, align 4
  %328 = and i32 %326, %327
  %329 = sext i32 %328 to i64
  %330 = or i64 %323, %329
  %331 = call i32 @AGE_USECS(i32 8)
  %332 = load i32, i32* @RXQ_JUMBO_CFG_RRD_TIMER_SHIFT, align 4
  %333 = shl i32 %331, %332
  %334 = load i32, i32* @RXQ_JUMBO_CFG_RRD_TIMER_MASK, align 4
  %335 = and i32 %333, %334
  %336 = sext i32 %335 to i64
  %337 = or i64 %330, %336
  %338 = trunc i64 %337 to i32
  %339 = call i32 @CSR_WRITE_4(%struct.age_softc* %313, i32 %314, i32 %338)
  %340 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %341 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @AGE_FLAG_PCIE, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %292
  %347 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %348 = call i32 @CSR_WRITE_4(%struct.age_softc* %347, i32 4860, i32 25856)
  %349 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %350 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %351 = call i32 @CSR_READ_4(%struct.age_softc* %350, i32 4104)
  %352 = or i32 %351, 32768
  %353 = call i32 @CSR_WRITE_4(%struct.age_softc* %349, i32 4104, i32 %352)
  br label %354

354:                                              ; preds = %346, %292
  %355 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %356 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  switch i32 %357, label %369 [
    i32 32769, label %358
    i32 36865, label %358
    i32 36866, label %358
    i32 36867, label %358
  ]

358:                                              ; preds = %354, %354, %354, %354
  %359 = load i32, i32* @AGE_RX_RING_CNT, align 4
  %360 = sdiv i32 %359, 16
  store i32 %360, i32* %10, align 4
  %361 = load i32, i32* @AGE_RX_RING_CNT, align 4
  %362 = mul nsw i32 %361, 7
  %363 = sdiv i32 %362, 8
  store i32 %363, i32* %11, align 4
  %364 = load i32, i32* @AGE_RR_RING_CNT, align 4
  %365 = mul nsw i32 %364, 7
  %366 = sdiv i32 %365, 8
  store i32 %366, i32* %12, align 4
  %367 = load i32, i32* @AGE_RR_RING_CNT, align 4
  %368 = sdiv i32 %367, 16
  store i32 %368, i32* %13, align 4
  br label %408

369:                                              ; preds = %354
  %370 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %371 = load i32, i32* @AGE_SRAM_RX_FIFO_LEN, align 4
  %372 = call i32 @CSR_READ_4(%struct.age_softc* %370, i32 %371)
  store i32 %372, i32* %8, align 4
  %373 = load i32, i32* %8, align 4
  %374 = sdiv i32 %373, 16
  store i32 %374, i32* %11, align 4
  %375 = load i32, i32* %11, align 4
  %376 = icmp slt i32 %375, 192
  br i1 %376, label %377, label %378

377:                                              ; preds = %369
  store i32 192, i32* %11, align 4
  br label %378

378:                                              ; preds = %377, %369
  %379 = load i32, i32* %8, align 4
  %380 = mul nsw i32 %379, 7
  %381 = sdiv i32 %380, 8
  store i32 %381, i32* %10, align 4
  %382 = load i32, i32* %10, align 4
  %383 = load i32, i32* %11, align 4
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %385, label %388

385:                                              ; preds = %378
  %386 = load i32, i32* %11, align 4
  %387 = add nsw i32 %386, 16
  store i32 %387, i32* %10, align 4
  br label %388

388:                                              ; preds = %385, %378
  %389 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %390 = load i32, i32* @AGE_SRAM_RRD_LEN, align 4
  %391 = call i32 @CSR_READ_4(%struct.age_softc* %389, i32 %390)
  store i32 %391, i32* %8, align 4
  %392 = load i32, i32* %8, align 4
  %393 = sdiv i32 %392, 8
  store i32 %393, i32* %13, align 4
  %394 = load i32, i32* %8, align 4
  %395 = mul nsw i32 %394, 7
  %396 = sdiv i32 %395, 8
  store i32 %396, i32* %12, align 4
  %397 = load i32, i32* %13, align 4
  %398 = icmp slt i32 %397, 2
  br i1 %398, label %399, label %400

399:                                              ; preds = %388
  store i32 2, i32* %13, align 4
  br label %400

400:                                              ; preds = %399, %388
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* %13, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %400
  %405 = load i32, i32* %13, align 4
  %406 = add nsw i32 %405, 3
  store i32 %406, i32* %12, align 4
  br label %407

407:                                              ; preds = %404, %400
  br label %408

408:                                              ; preds = %407, %358
  %409 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %410 = load i32, i32* @AGE_RXQ_FIFO_PAUSE_THRESH, align 4
  %411 = load i32, i32* %11, align 4
  %412 = load i32, i32* @RXQ_FIFO_PAUSE_THRESH_LO_SHIFT, align 4
  %413 = shl i32 %411, %412
  %414 = load i32, i32* @RXQ_FIFO_PAUSE_THRESH_LO_MASK, align 4
  %415 = and i32 %413, %414
  %416 = load i32, i32* %10, align 4
  %417 = load i32, i32* @RXQ_FIFO_PAUSE_THRESH_HI_SHIFT, align 4
  %418 = shl i32 %416, %417
  %419 = load i32, i32* @RXQ_FIFO_PAUSE_THRESH_HI_MASK, align 4
  %420 = and i32 %418, %419
  %421 = or i32 %415, %420
  %422 = call i32 @CSR_WRITE_4(%struct.age_softc* %409, i32 %410, i32 %421)
  %423 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %424 = load i32, i32* @AGE_RXQ_RRD_PAUSE_THRESH, align 4
  %425 = load i32, i32* %13, align 4
  %426 = load i32, i32* @RXQ_RRD_PAUSE_THRESH_LO_SHIFT, align 4
  %427 = shl i32 %425, %426
  %428 = load i32, i32* @RXQ_RRD_PAUSE_THRESH_LO_MASK, align 4
  %429 = and i32 %427, %428
  %430 = load i32, i32* %12, align 4
  %431 = load i32, i32* @RXQ_RRD_PAUSE_THRESH_HI_SHIFT, align 4
  %432 = shl i32 %430, %431
  %433 = load i32, i32* @RXQ_RRD_PAUSE_THRESH_HI_MASK, align 4
  %434 = and i32 %432, %433
  %435 = or i32 %429, %434
  %436 = call i32 @CSR_WRITE_4(%struct.age_softc* %423, i32 %424, i32 %435)
  %437 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %438 = load i32, i32* @AGE_RXQ_CFG, align 4
  %439 = load i32, i32* @RXQ_CFG_RD_BURST_DEFAULT, align 4
  %440 = load i32, i32* @RXQ_CFG_RD_BURST_SHIFT, align 4
  %441 = shl i32 %439, %440
  %442 = load i32, i32* @RXQ_CFG_RD_BURST_MASK, align 4
  %443 = and i32 %441, %442
  %444 = load i32, i32* @RXQ_CFG_RRD_BURST_THRESH_DEFAULT, align 4
  %445 = load i32, i32* @RXQ_CFG_RRD_BURST_THRESH_SHIFT, align 4
  %446 = shl i32 %444, %445
  %447 = load i32, i32* @RXQ_CFG_RRD_BURST_THRESH_MASK, align 4
  %448 = and i32 %446, %447
  %449 = or i32 %443, %448
  %450 = load i32, i32* @RXQ_CFG_RD_PREF_MIN_IPG_DEFAULT, align 4
  %451 = load i32, i32* @RXQ_CFG_RD_PREF_MIN_IPG_SHIFT, align 4
  %452 = shl i32 %450, %451
  %453 = load i32, i32* @RXQ_CFG_RD_PREF_MIN_IPG_MASK, align 4
  %454 = and i32 %452, %453
  %455 = or i32 %449, %454
  %456 = load i32, i32* @RXQ_CFG_CUT_THROUGH_ENB, align 4
  %457 = or i32 %455, %456
  %458 = load i32, i32* @RXQ_CFG_ENB, align 4
  %459 = or i32 %457, %458
  %460 = call i32 @CSR_WRITE_4(%struct.age_softc* %437, i32 %438, i32 %459)
  %461 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %462 = load i32, i32* @AGE_TXQ_CFG, align 4
  %463 = load i32, i32* @TXQ_CFG_TPD_BURST_DEFAULT, align 4
  %464 = load i32, i32* @TXQ_CFG_TPD_BURST_SHIFT, align 4
  %465 = shl i32 %463, %464
  %466 = load i32, i32* @TXQ_CFG_TPD_BURST_MASK, align 4
  %467 = and i32 %465, %466
  %468 = load i32, i32* @TXQ_CFG_TX_FIFO_BURST_DEFAULT, align 4
  %469 = load i32, i32* @TXQ_CFG_TX_FIFO_BURST_SHIFT, align 4
  %470 = shl i32 %468, %469
  %471 = load i32, i32* @TXQ_CFG_TX_FIFO_BURST_MASK, align 4
  %472 = and i32 %470, %471
  %473 = or i32 %467, %472
  %474 = load i32, i32* @TXQ_CFG_TPD_FETCH_DEFAULT, align 4
  %475 = load i32, i32* @TXQ_CFG_TPD_FETCH_THRESH_SHIFT, align 4
  %476 = shl i32 %474, %475
  %477 = load i32, i32* @TXQ_CFG_TPD_FETCH_THRESH_MASK, align 4
  %478 = and i32 %476, %477
  %479 = or i32 %473, %478
  %480 = load i32, i32* @TXQ_CFG_ENB, align 4
  %481 = or i32 %479, %480
  %482 = call i32 @CSR_WRITE_4(%struct.age_softc* %461, i32 %462, i32 %481)
  %483 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %484 = load i32, i32* @AGE_TX_JUMBO_TPD_TH_IPG, align 4
  %485 = load i32, i32* %9, align 4
  %486 = sext i32 %485 to i64
  %487 = udiv i64 %486, 4
  %488 = load i32, i32* @TX_JUMBO_TPD_TH_SHIFT, align 4
  %489 = zext i32 %488 to i64
  %490 = shl i64 %487, %489
  %491 = load i32, i32* @TX_JUMBO_TPD_TH_MASK, align 4
  %492 = sext i32 %491 to i64
  %493 = and i64 %490, %492
  %494 = load i32, i32* @TX_JUMBO_TPD_IPG_DEFAULT, align 4
  %495 = load i32, i32* @TX_JUMBO_TPD_IPG_SHIFT, align 4
  %496 = shl i32 %494, %495
  %497 = load i32, i32* @TX_JUMBO_TPD_IPG_MASK, align 4
  %498 = and i32 %496, %497
  %499 = sext i32 %498 to i64
  %500 = or i64 %493, %499
  %501 = trunc i64 %500 to i32
  %502 = call i32 @CSR_WRITE_4(%struct.age_softc* %483, i32 %484, i32 %501)
  %503 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %504 = load i32, i32* @AGE_DMA_CFG, align 4
  %505 = load i32, i32* @DMA_CFG_ENH_ORDER, align 4
  %506 = load i32, i32* @DMA_CFG_RCB_64, align 4
  %507 = or i32 %505, %506
  %508 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %509 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 8
  %511 = or i32 %507, %510
  %512 = load i32, i32* @DMA_CFG_RD_ENB, align 4
  %513 = or i32 %511, %512
  %514 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %515 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %514, i32 0, i32 5
  %516 = load i32, i32* %515, align 4
  %517 = or i32 %513, %516
  %518 = load i32, i32* @DMA_CFG_WR_ENB, align 4
  %519 = or i32 %517, %518
  %520 = call i32 @CSR_WRITE_4(%struct.age_softc* %503, i32 %504, i32 %519)
  %521 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %522 = load i32, i32* @AGE_CMB_WR_THRESH, align 4
  %523 = load i32, i32* @CMB_WR_THRESH_RRD_DEFAULT, align 4
  %524 = load i32, i32* @CMB_WR_THRESH_RRD_SHIFT, align 4
  %525 = shl i32 %523, %524
  %526 = load i32, i32* @CMB_WR_THRESH_RRD_MASK, align 4
  %527 = and i32 %525, %526
  %528 = load i32, i32* @CMB_WR_THRESH_TPD_DEFAULT, align 4
  %529 = load i32, i32* @CMB_WR_THRESH_TPD_SHIFT, align 4
  %530 = shl i32 %528, %529
  %531 = load i32, i32* @CMB_WR_THRESH_TPD_MASK, align 4
  %532 = and i32 %530, %531
  %533 = or i32 %527, %532
  %534 = call i32 @CSR_WRITE_4(%struct.age_softc* %521, i32 %522, i32 %533)
  %535 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %536 = load i32, i32* @AGE_CMB_WR_TIMER, align 4
  %537 = call i32 @AGE_USECS(i32 2)
  %538 = load i32, i32* @CMB_WR_TIMER_TX_SHIFT, align 4
  %539 = shl i32 %537, %538
  %540 = load i32, i32* @CMB_WR_TIMER_TX_MASK, align 4
  %541 = and i32 %539, %540
  %542 = call i32 @AGE_USECS(i32 2)
  %543 = load i32, i32* @CMB_WR_TIMER_RX_SHIFT, align 4
  %544 = shl i32 %542, %543
  %545 = load i32, i32* @CMB_WR_TIMER_RX_MASK, align 4
  %546 = and i32 %544, %545
  %547 = or i32 %541, %546
  %548 = call i32 @CSR_WRITE_4(%struct.age_softc* %535, i32 %536, i32 %547)
  %549 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %550 = load i32, i32* @AGE_SMB_TIMER, align 4
  %551 = call i32 @AGE_USECS(i32 1000000)
  %552 = call i32 @CSR_WRITE_4(%struct.age_softc* %549, i32 %550, i32 %551)
  %553 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %554 = load i32, i32* @AGE_CSMB_CTRL, align 4
  %555 = load i32, i32* @CSMB_CTRL_SMB_ENB, align 4
  %556 = load i32, i32* @CSMB_CTRL_CMB_ENB, align 4
  %557 = or i32 %555, %556
  %558 = call i32 @CSR_WRITE_4(%struct.age_softc* %553, i32 %554, i32 %557)
  %559 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %560 = load i32, i32* @AGE_WOL_CFG, align 4
  %561 = call i32 @CSR_WRITE_4(%struct.age_softc* %559, i32 %560, i32 0)
  %562 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %563 = load i32, i32* @AGE_MAC_CFG, align 4
  %564 = load i32, i32* @MAC_CFG_TX_CRC_ENB, align 4
  %565 = load i32, i32* @MAC_CFG_TX_AUTO_PAD, align 4
  %566 = or i32 %564, %565
  %567 = load i32, i32* @MAC_CFG_FULL_DUPLEX, align 4
  %568 = or i32 %566, %567
  %569 = load i32, i32* @MAC_CFG_SPEED_1000, align 4
  %570 = or i32 %568, %569
  %571 = load i32, i32* @MAC_CFG_PREAMBLE_DEFAULT, align 4
  %572 = load i32, i32* @MAC_CFG_PREAMBLE_SHIFT, align 4
  %573 = shl i32 %571, %572
  %574 = load i32, i32* @MAC_CFG_PREAMBLE_MASK, align 4
  %575 = and i32 %573, %574
  %576 = or i32 %570, %575
  %577 = call i32 @CSR_WRITE_4(%struct.age_softc* %562, i32 %563, i32 %576)
  %578 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %579 = call i32 @age_rxfilter(%struct.age_softc* %578)
  %580 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %581 = call i32 @age_rxvlan(%struct.age_softc* %580)
  %582 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %583 = load i32, i32* @AGE_MAC_CFG, align 4
  %584 = call i32 @CSR_READ_4(%struct.age_softc* %582, i32 %583)
  store i32 %584, i32* %8, align 4
  %585 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %586 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %585, i32 0, i32 2
  %587 = load i32, i32* %586, align 8
  %588 = load i32, i32* @IFCAP_RXCSUM, align 4
  %589 = and i32 %587, %588
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %595

591:                                              ; preds = %408
  %592 = load i32, i32* @MAC_CFG_RXCSUM_ENB, align 4
  %593 = load i32, i32* %8, align 4
  %594 = or i32 %593, %592
  store i32 %594, i32* %8, align 4
  br label %595

595:                                              ; preds = %591, %408
  %596 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %597 = load i32, i32* @AGE_INTR_STATUS, align 4
  %598 = call i32 @CSR_WRITE_4(%struct.age_softc* %596, i32 %597, i32 0)
  %599 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %600 = load i32, i32* @AGE_INTR_MASK, align 4
  %601 = load i32, i32* @AGE_INTRS, align 4
  %602 = call i32 @CSR_WRITE_4(%struct.age_softc* %599, i32 %600, i32 %601)
  %603 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %604 = load i32, i32* @AGE_MAC_CFG, align 4
  %605 = load i32, i32* %8, align 4
  %606 = load i32, i32* @MAC_CFG_TX_ENB, align 4
  %607 = or i32 %605, %606
  %608 = load i32, i32* @MAC_CFG_RX_ENB, align 4
  %609 = or i32 %607, %608
  %610 = call i32 @CSR_WRITE_4(%struct.age_softc* %603, i32 %604, i32 %609)
  %611 = load i32, i32* @AGE_FLAG_LINK, align 4
  %612 = xor i32 %611, -1
  %613 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %614 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 8
  %616 = and i32 %615, %612
  store i32 %616, i32* %614, align 8
  %617 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %618 = call i32 @mii_mediachg(%struct.mii_data* %617)
  %619 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %620 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %619, i32 0, i32 6
  %621 = load i32, i32* @hz, align 4
  %622 = load i32, i32* @age_tick, align 4
  %623 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %624 = call i32 @callout_reset(i32* %620, i32 %621, i32 %622, %struct.age_softc* %623)
  %625 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %626 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %627 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 8
  %629 = or i32 %628, %625
  store i32 %629, i32* %627, align 8
  %630 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %631 = xor i32 %630, -1
  %632 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %633 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = and i32 %634, %631
  store i32 %635, i32* %633, align 8
  store i32 0, i32* %15, align 4
  br label %636

636:                                              ; preds = %595, %45, %35
  %637 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %637)
  %638 = load i32, i32* %15, align 4
  switch i32 %638, label %640 [
    i32 0, label %639
    i32 1, label %639
  ]

639:                                              ; preds = %636, %636
  ret void

640:                                              ; preds = %636
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #2

declare dso_local %struct.mii_data* @device_get_softc(i32) #2

declare dso_local i32 @age_stop(%struct.age_softc*) #2

declare dso_local i32 @age_reset(%struct.age_softc*) #2

declare dso_local i32 @age_init_rx_ring(%struct.age_softc*) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @age_init_rr_ring(%struct.age_softc*) #2

declare dso_local i32 @age_init_tx_ring(%struct.age_softc*) #2

declare dso_local i32 @age_init_cmb_block(%struct.age_softc*) #2

declare dso_local i32 @age_init_smb_block(%struct.age_softc*) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #2

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #2

declare dso_local i32 @AGE_ADDR_HI(i32) #2

declare dso_local i32 @AGE_ADDR_LO(i32) #2

declare dso_local i32 @AGE_COMMIT_MBOX(%struct.age_softc*) #2

declare dso_local i32 @CSR_WRITE_2(%struct.age_softc*, i32, i32) #2

declare dso_local i32 @AGE_USECS(i32) #2

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #2

declare dso_local i32 @roundup(i32, i32) #2

declare dso_local i32 @age_rxfilter(%struct.age_softc*) #2

declare dso_local i32 @age_rxvlan(%struct.age_softc*) #2

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #2

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.age_softc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
