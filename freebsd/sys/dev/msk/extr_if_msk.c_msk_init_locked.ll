; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i64, i32, i64, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, %struct.msk_softc*, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.msk_softc = type { i32, i64, i32, i32, i64 }
%struct.ifnet = type { i32, i64, i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i64 0, align 8
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@MSK_FLAG_JUMBO_NOCSUM = common dso_local global i32 0, align 4
@MSK_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_RST_SET = common dso_local global i32 0, align 4
@GMC_RST_CLR = common dso_local global i32 0, align 4
@GMC_F_LOOPB_OFF = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_SUPR = common dso_local global i32 0, align 4
@GMC_BYP_MACSECRX_ON = common dso_local global i32 0, align 4
@GMC_BYP_MACSECTX_ON = common dso_local global i32 0, align 4
@GMC_BYP_RETR_ON = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GMAC_IRQ_SRC = common dso_local global i32 0, align 4
@GM_RX_CTRL = common dso_local global i32 0, align 4
@GM_RXCR_CRC_DIS = common dso_local global i32 0, align 4
@GM_TX_CTRL = common dso_local global i32 0, align 4
@TX_COL_DEF = common dso_local global i32 0, align 4
@GM_TX_FLOW_CTRL = common dso_local global i32 0, align 4
@GM_TX_PARAM = common dso_local global i32 0, align 4
@TX_JAM_LEN_DEF = common dso_local global i32 0, align 4
@TX_JAM_IPG_DEF = common dso_local global i32 0, align 4
@TX_IPG_JAM_DEF = common dso_local global i32 0, align 4
@TX_BOF_LIM_DEF = common dso_local global i32 0, align 4
@DATA_BLIND_DEF = common dso_local global i32 0, align 4
@GM_SMOD_VLAN_ENA = common dso_local global i32 0, align 4
@IPG_DATA_DEF = common dso_local global i32 0, align 4
@GM_SMOD_JUMBO_ENA = common dso_local global i32 0, align 4
@GM_SERIAL_MODE = common dso_local global i32 0, align 4
@GM_SRC_ADDR_1L = common dso_local global i32 0, align 4
@GM_SRC_ADDR_1M = common dso_local global i32 0, align 4
@GM_SRC_ADDR_1H = common dso_local global i32 0, align 4
@GM_SRC_ADDR_2L = common dso_local global i32 0, align 4
@GM_SRC_ADDR_2M = common dso_local global i32 0, align 4
@GM_SRC_ADDR_2H = common dso_local global i32 0, align 4
@GM_TX_IRQ_MSK = common dso_local global i32 0, align 4
@GM_RX_IRQ_MSK = common dso_local global i32 0, align 4
@GM_TR_IRQ_MSK = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_RST_SET = common dso_local global i32 0, align 4
@GMF_RST_CLR = common dso_local global i32 0, align 4
@GMF_OPER_ON = common dso_local global i32 0, align 4
@GMF_RX_F_FL_ON = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_FE_P = common dso_local global i32 0, align 4
@GMF_RX_OVER_ON = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_XL = common dso_local global i32 0, align 4
@RX_GMF_FL_MSK = common dso_local global i32 0, align 4
@GMR_FS_ANY_ERR = common dso_local global i32 0, align 4
@RX_GMF_FL_THR_DEF = common dso_local global i32 0, align 4
@CHIP_REV_YU_FE_P_A0 = common dso_local global i64 0, align 8
@RX_GMF_FL_THR = common dso_local global i32 0, align 4
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@MSK_FLAG_RAMBUF = common dso_local global i32 0, align 4
@RX_GMF_LP_THR = common dso_local global i32 0, align 4
@MSK_ECU_LLPP = common dso_local global i32 0, align 4
@RX_GMF_UP_THR = common dso_local global i32 0, align 4
@MSK_ECU_ULPP = common dso_local global i32 0, align 4
@TX_GMF_EA = common dso_local global i32 0, align 4
@TXA_CTRL = common dso_local global i32 0, align 4
@TXA_DIS_FSYNC = common dso_local global i32 0, align 4
@TXA_DIS_ALLOC = common dso_local global i32 0, align 4
@TXA_STOP_RC = common dso_local global i32 0, align 4
@TXA_ENA_ARB = common dso_local global i32 0, align 4
@RB_CTRL = common dso_local global i32 0, align 4
@RB_RST_SET = common dso_local global i32 0, align 4
@Q_CSR = common dso_local global i32 0, align 4
@BMU_CLR_RESET = common dso_local global i32 0, align 4
@BMU_OPER_INIT = common dso_local global i32 0, align 4
@BMU_FIFO_OP_ON = common dso_local global i32 0, align 4
@Q_WM = common dso_local global i32 0, align 4
@MSK_BMU_TX_WM = common dso_local global i32 0, align 4
@CHIP_REV_YU_EC_U_A0 = common dso_local global i64 0, align 8
@Q_AL = common dso_local global i32 0, align 4
@MSK_ECU_TXFF_LEV = common dso_local global i32 0, align 4
@CHIP_REV_YU_EX_B0 = common dso_local global i64 0, align 8
@Q_F = common dso_local global i32 0, align 4
@F_TX_CHK_AUTO_OFF = common dso_local global i32 0, align 4
@MSK_BMU_RX_WM = common dso_local global i32 0, align 4
@CHIP_REV_YU_EC_U_A1 = common dso_local global i64 0, align 8
@F_M_RX_RAM_DIS = common dso_local global i32 0, align 4
@MSK_TX_RING_CNT = common dso_local global i64 0, align 8
@BMU_DIS_RX_RSS_HASH = common dso_local global i32 0, align 4
@MSK_FLAG_DESCV2 = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@BMU_ENA_RX_CHKSUM = common dso_local global i32 0, align 4
@BMU_DIS_RX_CHKSUM = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i64 0, align 8
@MSK_RX_BUF_ALIGN = common dso_local global i64 0, align 8
@MSK_JUMBO_RX_RING_CNT = common dso_local global i64 0, align 8
@MSK_RX_RING_CNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"initialization failed: no memory for Rx buffers\0A\00", align 1
@GMF_RX_MACSEC_FLUSH_OFF = common dso_local global i32 0, align 4
@MSK_PORT_A = common dso_local global i64 0, align 8
@Y2_IS_PORT_A = common dso_local global i32 0, align 4
@Y2_HWE_L1_MASK = common dso_local global i32 0, align 4
@Y2_IS_PORT_B = common dso_local global i32 0, align 4
@Y2_HWE_L2_MASK = common dso_local global i32 0, align 4
@B2_IRQM_MSK = common dso_local global i32 0, align 4
@B2_IRQM_INI = common dso_local global i32 0, align 4
@B2_IRQM_VAL = common dso_local global i32 0, align 4
@B2_IRQM_CTRL = common dso_local global i32 0, align 4
@TIM_START = common dso_local global i32 0, align 4
@B0_HWE_IMSK = common dso_local global i32 0, align 4
@B0_IMSK = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@MSK_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@msk_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_init_locked(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mii_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %10 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %11 = call i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc* %10)
  %12 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %13 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %12, i32 0, i32 11
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  %15 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %16 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %15, i32 0, i32 10
  %17 = load %struct.msk_softc*, %struct.msk_softc** %16, align 8
  store %struct.msk_softc* %17, %struct.msk_softc** %3, align 8
  %18 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %19 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.mii_data* @device_get_softc(i32 %20)
  store %struct.mii_data* %21, %struct.mii_data** %5, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %850

29:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %30 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %31 = call i32 @msk_stop(%struct.msk_if_softc* %30)
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ETHERMTU, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i64, i64* @ETHERMTU, align 8
  %39 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %40 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %47

41:                                               ; preds = %29
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %46 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %37
  %48 = load i64, i64* @ETHER_HDR_LEN, align 8
  %49 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %50 = add nsw i64 %48, %49
  %51 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %52 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ETHERMTU, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %47
  %61 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %62 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MSK_FLAG_JUMBO_NOCSUM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  %68 = load i32, i32* @MSK_CSUM_FEATURES, align 4
  %69 = load i32, i32* @CSUM_TSO, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @IFCAP_TSO4, align 4
  %77 = load i32, i32* @IFCAP_TXCSUM, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %67, %60, %47
  %85 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %86 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %87 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @GMAC_CTRL, align 4
  %90 = call i32 @MR_ADDR(i64 %88, i32 %89)
  %91 = load i32, i32* @GMC_RST_SET, align 4
  %92 = call i32 @CSR_WRITE_4(%struct.msk_softc* %85, i32 %90, i32 %91)
  %93 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %94 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %95 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @GMAC_CTRL, align 4
  %98 = call i32 @MR_ADDR(i64 %96, i32 %97)
  %99 = load i32, i32* @GMC_RST_CLR, align 4
  %100 = call i32 @CSR_WRITE_4(%struct.msk_softc* %93, i32 %98, i32 %99)
  %101 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %102 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %103 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @GMAC_CTRL, align 4
  %106 = call i32 @MR_ADDR(i64 %104, i32 %105)
  %107 = load i32, i32* @GMC_F_LOOPB_OFF, align 4
  %108 = call i32 @CSR_WRITE_4(%struct.msk_softc* %101, i32 %106, i32 %107)
  %109 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %110 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 128
  br i1 %112, label %119, label %113

113:                                              ; preds = %84
  %114 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %115 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @CHIP_ID_YUKON_SUPR, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %113, %84
  %120 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %121 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %122 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @GMAC_CTRL, align 4
  %125 = call i32 @MR_ADDR(i64 %123, i32 %124)
  %126 = load i32, i32* @GMC_BYP_MACSECRX_ON, align 4
  %127 = load i32, i32* @GMC_BYP_MACSECTX_ON, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @GMC_BYP_RETR_ON, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @CSR_WRITE_4(%struct.msk_softc* %120, i32 %125, i32 %130)
  br label %132

132:                                              ; preds = %119, %113
  %133 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %134 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %135 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @GM_GP_CTRL, align 4
  %138 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %133, i64 %136, i32 %137, i32 0)
  %139 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %140 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %141 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @GMAC_IRQ_SRC, align 4
  %144 = call i32 @MR_ADDR(i64 %142, i32 %143)
  %145 = call i32 @CSR_READ_1(%struct.msk_softc* %139, i32 %144)
  %146 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %147 = call i32 @msk_stats_clear(%struct.msk_if_softc* %146)
  %148 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %149 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %150 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @GM_RX_CTRL, align 4
  %153 = load i32, i32* @GM_RXCR_CRC_DIS, align 4
  %154 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %148, i64 %151, i32 %152, i32 %153)
  %155 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %156 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %157 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* @GM_TX_CTRL, align 4
  %160 = load i32, i32* @TX_COL_DEF, align 4
  %161 = call i32 @TX_COL_THR(i32 %160)
  %162 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %155, i64 %158, i32 %159, i32 %161)
  %163 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %164 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %165 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @GM_TX_FLOW_CTRL, align 4
  %168 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %163, i64 %166, i32 %167, i32 65535)
  %169 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %170 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %171 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @GM_TX_PARAM, align 4
  %174 = load i32, i32* @TX_JAM_LEN_DEF, align 4
  %175 = call i32 @TX_JAM_LEN_VAL(i32 %174)
  %176 = load i32, i32* @TX_JAM_IPG_DEF, align 4
  %177 = call i32 @TX_JAM_IPG_VAL(i32 %176)
  %178 = or i32 %175, %177
  %179 = load i32, i32* @TX_IPG_JAM_DEF, align 4
  %180 = call i32 @TX_IPG_JAM_DATA(i32 %179)
  %181 = or i32 %178, %180
  %182 = load i32, i32* @TX_BOF_LIM_DEF, align 4
  %183 = call i32 @TX_BACK_OFF_LIM(i32 %182)
  %184 = or i32 %181, %183
  %185 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %169, i64 %172, i32 %173, i32 %184)
  %186 = load i32, i32* @DATA_BLIND_DEF, align 4
  %187 = call i32 @DATA_BLIND_VAL(i32 %186)
  %188 = load i32, i32* @GM_SMOD_VLAN_ENA, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @IPG_DATA_DEF, align 4
  %191 = call i32 @IPG_DATA_VAL(i32 %190)
  %192 = or i32 %189, %191
  store i32 %192, i32* %7, align 4
  %193 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %194 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @ETHERMTU, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %132
  %199 = load i32, i32* @GM_SMOD_JUMBO_ENA, align 4
  %200 = load i32, i32* %7, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %198, %132
  %203 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %204 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %205 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @GM_SERIAL_MODE, align 4
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %203, i64 %206, i32 %207, i32 %208)
  %210 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %211 = call i32* @IF_LLADDR(%struct.ifnet* %210)
  store i32* %211, i32** %6, align 8
  %212 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %213 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %214 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @GM_SRC_ADDR_1L, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %6, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = shl i32 %222, 8
  %224 = or i32 %219, %223
  %225 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %212, i64 %215, i32 %216, i32 %224)
  %226 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %227 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %228 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* @GM_SRC_ADDR_1M, align 4
  %231 = load i32*, i32** %6, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %6, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 3
  %236 = load i32, i32* %235, align 4
  %237 = shl i32 %236, 8
  %238 = or i32 %233, %237
  %239 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %226, i64 %229, i32 %230, i32 %238)
  %240 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %241 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %242 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* @GM_SRC_ADDR_1H, align 4
  %245 = load i32*, i32** %6, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 4
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %6, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 5
  %250 = load i32, i32* %249, align 4
  %251 = shl i32 %250, 8
  %252 = or i32 %247, %251
  %253 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %240, i64 %243, i32 %244, i32 %252)
  %254 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %255 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %256 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* @GM_SRC_ADDR_2L, align 4
  %259 = load i32*, i32** %6, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %6, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = shl i32 %264, 8
  %266 = or i32 %261, %265
  %267 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %254, i64 %257, i32 %258, i32 %266)
  %268 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %269 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %270 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* @GM_SRC_ADDR_2M, align 4
  %273 = load i32*, i32** %6, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 2
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** %6, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 3
  %278 = load i32, i32* %277, align 4
  %279 = shl i32 %278, 8
  %280 = or i32 %275, %279
  %281 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %268, i64 %271, i32 %272, i32 %280)
  %282 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %283 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %284 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = load i32, i32* @GM_SRC_ADDR_2H, align 4
  %287 = load i32*, i32** %6, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 4
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** %6, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 5
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 %292, 8
  %294 = or i32 %289, %293
  %295 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %282, i64 %285, i32 %286, i32 %294)
  %296 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %297 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %298 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load i32, i32* @GM_TX_IRQ_MSK, align 4
  %301 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %296, i64 %299, i32 %300, i32 0)
  %302 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %303 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %304 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = load i32, i32* @GM_RX_IRQ_MSK, align 4
  %307 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %302, i64 %305, i32 %306, i32 0)
  %308 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %309 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %310 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* @GM_TR_IRQ_MSK, align 4
  %313 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %308, i64 %311, i32 %312, i32 0)
  %314 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %315 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %316 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %319 = call i32 @MR_ADDR(i64 %317, i32 %318)
  %320 = load i32, i32* @GMF_RST_SET, align 4
  %321 = call i32 @CSR_WRITE_4(%struct.msk_softc* %314, i32 %319, i32 %320)
  %322 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %323 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %324 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %327 = call i32 @MR_ADDR(i64 %325, i32 %326)
  %328 = load i32, i32* @GMF_RST_CLR, align 4
  %329 = call i32 @CSR_WRITE_4(%struct.msk_softc* %322, i32 %327, i32 %328)
  %330 = load i32, i32* @GMF_OPER_ON, align 4
  %331 = load i32, i32* @GMF_RX_F_FL_ON, align 4
  %332 = or i32 %330, %331
  store i32 %332, i32* %8, align 4
  %333 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %334 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @CHIP_ID_YUKON_FE_P, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %343, label %338

338:                                              ; preds = %202
  %339 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %340 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp eq i32 %341, 128
  br i1 %342, label %343, label %347

343:                                              ; preds = %338, %202
  %344 = load i32, i32* @GMF_RX_OVER_ON, align 4
  %345 = load i32, i32* %8, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %8, align 4
  br label %347

347:                                              ; preds = %343, %338
  %348 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %349 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %350 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %353 = call i32 @MR_ADDR(i64 %351, i32 %352)
  %354 = load i32, i32* %8, align 4
  %355 = call i32 @CSR_WRITE_4(%struct.msk_softc* %348, i32 %353, i32 %354)
  %356 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %357 = call i32 @msk_rxfilter(%struct.msk_if_softc* %356)
  %358 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %359 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @CHIP_ID_YUKON_XL, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %371

363:                                              ; preds = %347
  %364 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %365 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %366 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = load i32, i32* @RX_GMF_FL_MSK, align 4
  %369 = call i32 @MR_ADDR(i64 %367, i32 %368)
  %370 = call i32 @CSR_WRITE_4(%struct.msk_softc* %364, i32 %369, i32 0)
  br label %380

371:                                              ; preds = %347
  %372 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %373 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %374 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load i32, i32* @RX_GMF_FL_MSK, align 4
  %377 = call i32 @MR_ADDR(i64 %375, i32 %376)
  %378 = load i32, i32* @GMR_FS_ANY_ERR, align 4
  %379 = call i32 @CSR_WRITE_4(%struct.msk_softc* %372, i32 %377, i32 %378)
  br label %380

380:                                              ; preds = %371, %363
  %381 = load i32, i32* @RX_GMF_FL_THR_DEF, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %8, align 4
  %383 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %384 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @CHIP_ID_YUKON_FE_P, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %395

388:                                              ; preds = %380
  %389 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %390 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @CHIP_REV_YU_FE_P_A0, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %394, label %395

394:                                              ; preds = %388
  store i32 376, i32* %8, align 4
  br label %395

395:                                              ; preds = %394, %388, %380
  %396 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %397 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %398 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %397, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = load i32, i32* @RX_GMF_FL_THR, align 4
  %401 = call i32 @MR_ADDR(i64 %399, i32 %400)
  %402 = load i32, i32* %8, align 4
  %403 = call i32 @CSR_WRITE_2(%struct.msk_softc* %396, i32 %401, i32 %402)
  %404 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %405 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %406 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %409 = call i32 @MR_ADDR(i64 %407, i32 %408)
  %410 = load i32, i32* @GMF_RST_SET, align 4
  %411 = call i32 @CSR_WRITE_4(%struct.msk_softc* %404, i32 %409, i32 %410)
  %412 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %413 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %414 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %413, i32 0, i32 2
  %415 = load i64, i64* %414, align 8
  %416 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %417 = call i32 @MR_ADDR(i64 %415, i32 %416)
  %418 = load i32, i32* @GMF_RST_CLR, align 4
  %419 = call i32 @CSR_WRITE_4(%struct.msk_softc* %412, i32 %417, i32 %418)
  %420 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %421 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %422 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %425 = call i32 @MR_ADDR(i64 %423, i32 %424)
  %426 = load i32, i32* @GMF_OPER_ON, align 4
  %427 = call i32 @CSR_WRITE_4(%struct.msk_softc* %420, i32 %425, i32 %426)
  %428 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %429 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %430 = call i32 @msk_setvlan(%struct.msk_if_softc* %428, %struct.ifnet* %429)
  %431 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %432 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @MSK_FLAG_RAMBUF, align 4
  %435 = and i32 %433, %434
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %456

437:                                              ; preds = %395
  %438 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %439 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %440 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %439, i32 0, i32 2
  %441 = load i64, i64* %440, align 8
  %442 = load i32, i32* @RX_GMF_LP_THR, align 4
  %443 = call i32 @MR_ADDR(i64 %441, i32 %442)
  %444 = load i32, i32* @MSK_ECU_LLPP, align 4
  %445 = call i32 @CSR_WRITE_2(%struct.msk_softc* %438, i32 %443, i32 %444)
  %446 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %447 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %448 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = load i32, i32* @RX_GMF_UP_THR, align 4
  %451 = call i32 @MR_ADDR(i64 %449, i32 %450)
  %452 = load i32, i32* @MSK_ECU_ULPP, align 4
  %453 = call i32 @CSR_WRITE_2(%struct.msk_softc* %446, i32 %451, i32 %452)
  %454 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %455 = call i32 @msk_set_tx_stfwd(%struct.msk_if_softc* %454)
  br label %456

456:                                              ; preds = %437, %395
  %457 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %458 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* @CHIP_ID_YUKON_FE_P, align 4
  %461 = icmp eq i32 %459, %460
  br i1 %461, label %462, label %486

462:                                              ; preds = %456
  %463 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %464 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %463, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* @CHIP_REV_YU_FE_P_A0, align 8
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %468, label %486

468:                                              ; preds = %462
  %469 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %470 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %471 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %470, i32 0, i32 2
  %472 = load i64, i64* %471, align 8
  %473 = load i32, i32* @TX_GMF_EA, align 4
  %474 = call i32 @MR_ADDR(i64 %472, i32 %473)
  %475 = call i32 @CSR_READ_4(%struct.msk_softc* %469, i32 %474)
  store i32 %475, i32* %8, align 4
  %476 = load i32, i32* %8, align 4
  %477 = and i32 %476, -4
  store i32 %477, i32* %8, align 4
  %478 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %479 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %480 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %479, i32 0, i32 2
  %481 = load i64, i64* %480, align 8
  %482 = load i32, i32* @TX_GMF_EA, align 4
  %483 = call i32 @MR_ADDR(i64 %481, i32 %482)
  %484 = load i32, i32* %8, align 4
  %485 = call i32 @CSR_WRITE_4(%struct.msk_softc* %478, i32 %483, i32 %484)
  br label %486

486:                                              ; preds = %468, %462, %456
  %487 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %488 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %489 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %488, i32 0, i32 2
  %490 = load i64, i64* %489, align 8
  %491 = load i32, i32* @TXA_CTRL, align 4
  %492 = call i32 @MR_ADDR(i64 %490, i32 %491)
  %493 = load i32, i32* @TXA_DIS_FSYNC, align 4
  %494 = load i32, i32* @TXA_DIS_ALLOC, align 4
  %495 = or i32 %493, %494
  %496 = load i32, i32* @TXA_STOP_RC, align 4
  %497 = or i32 %495, %496
  %498 = call i32 @CSR_WRITE_1(%struct.msk_softc* %487, i32 %492, i32 %497)
  %499 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %500 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %501 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %500, i32 0, i32 2
  %502 = load i64, i64* %501, align 8
  %503 = load i32, i32* @TXA_CTRL, align 4
  %504 = call i32 @MR_ADDR(i64 %502, i32 %503)
  %505 = load i32, i32* @TXA_ENA_ARB, align 4
  %506 = call i32 @CSR_WRITE_1(%struct.msk_softc* %499, i32 %504, i32 %505)
  %507 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %508 = call i32 @msk_set_rambuffer(%struct.msk_if_softc* %507)
  %509 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %510 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %511 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %510, i32 0, i32 8
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* @RB_CTRL, align 4
  %514 = call i32 @RB_ADDR(i32 %512, i32 %513)
  %515 = load i32, i32* @RB_RST_SET, align 4
  %516 = call i32 @CSR_WRITE_1(%struct.msk_softc* %509, i32 %514, i32 %515)
  %517 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %518 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %519 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %518, i32 0, i32 7
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @Q_CSR, align 4
  %522 = call i32 @Q_ADDR(i32 %520, i32 %521)
  %523 = load i32, i32* @BMU_CLR_RESET, align 4
  %524 = call i32 @CSR_WRITE_4(%struct.msk_softc* %517, i32 %522, i32 %523)
  %525 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %526 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %527 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %526, i32 0, i32 7
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* @Q_CSR, align 4
  %530 = call i32 @Q_ADDR(i32 %528, i32 %529)
  %531 = load i32, i32* @BMU_OPER_INIT, align 4
  %532 = call i32 @CSR_WRITE_4(%struct.msk_softc* %525, i32 %530, i32 %531)
  %533 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %534 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %535 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %534, i32 0, i32 7
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @Q_CSR, align 4
  %538 = call i32 @Q_ADDR(i32 %536, i32 %537)
  %539 = load i32, i32* @BMU_FIFO_OP_ON, align 4
  %540 = call i32 @CSR_WRITE_4(%struct.msk_softc* %533, i32 %538, i32 %539)
  %541 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %542 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %543 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %542, i32 0, i32 7
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* @Q_WM, align 4
  %546 = call i32 @Q_ADDR(i32 %544, i32 %545)
  %547 = load i32, i32* @MSK_BMU_TX_WM, align 4
  %548 = call i32 @CSR_WRITE_2(%struct.msk_softc* %541, i32 %546, i32 %547)
  %549 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %550 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  switch i32 %551, label %584 [
    i32 129, label %552
    i32 128, label %568
  ]

552:                                              ; preds = %486
  %553 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %554 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %553, i32 0, i32 1
  %555 = load i64, i64* %554, align 8
  %556 = load i64, i64* @CHIP_REV_YU_EC_U_A0, align 8
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %558, label %567

558:                                              ; preds = %552
  %559 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %560 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %561 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %560, i32 0, i32 7
  %562 = load i32, i32* %561, align 8
  %563 = load i32, i32* @Q_AL, align 4
  %564 = call i32 @Q_ADDR(i32 %562, i32 %563)
  %565 = load i32, i32* @MSK_ECU_TXFF_LEV, align 4
  %566 = call i32 @CSR_WRITE_2(%struct.msk_softc* %559, i32 %564, i32 %565)
  br label %567

567:                                              ; preds = %558, %552
  br label %584

568:                                              ; preds = %486
  %569 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %570 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %569, i32 0, i32 1
  %571 = load i64, i64* %570, align 8
  %572 = load i64, i64* @CHIP_REV_YU_EX_B0, align 8
  %573 = icmp eq i64 %571, %572
  br i1 %573, label %574, label %583

574:                                              ; preds = %568
  %575 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %576 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %577 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %576, i32 0, i32 7
  %578 = load i32, i32* %577, align 8
  %579 = load i32, i32* @Q_F, align 4
  %580 = call i32 @Q_ADDR(i32 %578, i32 %579)
  %581 = load i32, i32* @F_TX_CHK_AUTO_OFF, align 4
  %582 = call i32 @CSR_WRITE_4(%struct.msk_softc* %575, i32 %580, i32 %581)
  br label %583

583:                                              ; preds = %574, %568
  br label %584

584:                                              ; preds = %486, %583, %567
  %585 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %586 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %587 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %586, i32 0, i32 6
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* @Q_CSR, align 4
  %590 = call i32 @Q_ADDR(i32 %588, i32 %589)
  %591 = load i32, i32* @BMU_CLR_RESET, align 4
  %592 = call i32 @CSR_WRITE_4(%struct.msk_softc* %585, i32 %590, i32 %591)
  %593 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %594 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %595 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %594, i32 0, i32 6
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* @Q_CSR, align 4
  %598 = call i32 @Q_ADDR(i32 %596, i32 %597)
  %599 = load i32, i32* @BMU_OPER_INIT, align 4
  %600 = call i32 @CSR_WRITE_4(%struct.msk_softc* %593, i32 %598, i32 %599)
  %601 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %602 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %603 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %602, i32 0, i32 6
  %604 = load i32, i32* %603, align 4
  %605 = load i32, i32* @Q_CSR, align 4
  %606 = call i32 @Q_ADDR(i32 %604, i32 %605)
  %607 = load i32, i32* @BMU_FIFO_OP_ON, align 4
  %608 = call i32 @CSR_WRITE_4(%struct.msk_softc* %601, i32 %606, i32 %607)
  %609 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %610 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %611 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %610, i32 0, i32 6
  %612 = load i32, i32* %611, align 4
  %613 = load i32, i32* @Q_WM, align 4
  %614 = call i32 @Q_ADDR(i32 %612, i32 %613)
  %615 = load i32, i32* @MSK_BMU_RX_WM, align 4
  %616 = call i32 @CSR_WRITE_2(%struct.msk_softc* %609, i32 %614, i32 %615)
  %617 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %618 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 8
  %620 = icmp eq i32 %619, 129
  br i1 %620, label %621, label %636

621:                                              ; preds = %584
  %622 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %623 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %622, i32 0, i32 1
  %624 = load i64, i64* %623, align 8
  %625 = load i64, i64* @CHIP_REV_YU_EC_U_A1, align 8
  %626 = icmp sge i64 %624, %625
  br i1 %626, label %627, label %636

627:                                              ; preds = %621
  %628 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %629 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %630 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %629, i32 0, i32 6
  %631 = load i32, i32* %630, align 4
  %632 = load i32, i32* @Q_F, align 4
  %633 = call i32 @Q_ADDR(i32 %631, i32 %632)
  %634 = load i32, i32* @F_M_RX_RAM_DIS, align 4
  %635 = call i32 @CSR_WRITE_4(%struct.msk_softc* %628, i32 %633, i32 %634)
  br label %636

636:                                              ; preds = %627, %621, %584
  %637 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %638 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %639 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %638, i32 0, i32 7
  %640 = load i32, i32* %639, align 8
  %641 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %642 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %641, i32 0, i32 5
  %643 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %642, i32 0, i32 2
  %644 = load i32, i32* %643, align 8
  %645 = load i64, i64* @MSK_TX_RING_CNT, align 8
  %646 = sub nsw i64 %645, 1
  %647 = call i32 @msk_set_prefetch(%struct.msk_softc* %637, i32 %640, i32 %644, i64 %646)
  %648 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %649 = call i32 @msk_init_tx_ring(%struct.msk_if_softc* %648)
  %650 = load i32, i32* @BMU_DIS_RX_RSS_HASH, align 4
  store i32 %650, i32* %8, align 4
  %651 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %652 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 8
  %654 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %655 = and i32 %653, %654
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %668

657:                                              ; preds = %636
  %658 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %659 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %658, i32 0, i32 3
  %660 = load i32, i32* %659, align 4
  %661 = load i32, i32* @IFCAP_RXCSUM, align 4
  %662 = and i32 %660, %661
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %668

664:                                              ; preds = %657
  %665 = load i32, i32* @BMU_ENA_RX_CHKSUM, align 4
  %666 = load i32, i32* %8, align 4
  %667 = or i32 %666, %665
  store i32 %667, i32* %8, align 4
  br label %672

668:                                              ; preds = %657, %636
  %669 = load i32, i32* @BMU_DIS_RX_CHKSUM, align 4
  %670 = load i32, i32* %8, align 4
  %671 = or i32 %670, %669
  store i32 %671, i32* %8, align 4
  br label %672

672:                                              ; preds = %668, %664
  %673 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %674 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %675 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %674, i32 0, i32 6
  %676 = load i32, i32* %675, align 4
  %677 = load i32, i32* @Q_CSR, align 4
  %678 = call i32 @Q_ADDR(i32 %676, i32 %677)
  %679 = load i32, i32* %8, align 4
  %680 = call i32 @CSR_WRITE_4(%struct.msk_softc* %673, i32 %678, i32 %679)
  %681 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %682 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %681, i32 0, i32 0
  %683 = load i64, i64* %682, align 8
  %684 = load i64, i64* @MCLBYTES, align 8
  %685 = load i64, i64* @MSK_RX_BUF_ALIGN, align 8
  %686 = sub nsw i64 %684, %685
  %687 = icmp sgt i64 %683, %686
  br i1 %687, label %688, label %702

688:                                              ; preds = %672
  %689 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %690 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %691 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %690, i32 0, i32 6
  %692 = load i32, i32* %691, align 4
  %693 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %694 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %693, i32 0, i32 5
  %695 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 4
  %697 = load i64, i64* @MSK_JUMBO_RX_RING_CNT, align 8
  %698 = sub nsw i64 %697, 1
  %699 = call i32 @msk_set_prefetch(%struct.msk_softc* %689, i32 %692, i32 %696, i64 %698)
  %700 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %701 = call i32 @msk_init_jumbo_rx_ring(%struct.msk_if_softc* %700)
  store i32 %701, i32* %9, align 4
  br label %716

702:                                              ; preds = %672
  %703 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %704 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %705 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %704, i32 0, i32 6
  %706 = load i32, i32* %705, align 4
  %707 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %708 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %707, i32 0, i32 5
  %709 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 8
  %711 = load i64, i64* @MSK_RX_RING_CNT, align 8
  %712 = sub nsw i64 %711, 1
  %713 = call i32 @msk_set_prefetch(%struct.msk_softc* %703, i32 %706, i32 %710, i64 %712)
  %714 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %715 = call i32 @msk_init_rx_ring(%struct.msk_if_softc* %714)
  store i32 %715, i32* %9, align 4
  br label %716

716:                                              ; preds = %702, %688
  %717 = load i32, i32* %9, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %726

719:                                              ; preds = %716
  %720 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %721 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %720, i32 0, i32 4
  %722 = load i32, i32* %721, align 4
  %723 = call i32 @device_printf(i32 %722, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %724 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %725 = call i32 @msk_stop(%struct.msk_if_softc* %724)
  br label %850

726:                                              ; preds = %716
  %727 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %728 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 8
  %730 = icmp eq i32 %729, 128
  br i1 %730, label %737, label %731

731:                                              ; preds = %726
  %732 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %733 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %732, i32 0, i32 0
  %734 = load i32, i32* %733, align 8
  %735 = load i32, i32* @CHIP_ID_YUKON_SUPR, align 4
  %736 = icmp eq i32 %734, %735
  br i1 %736, label %737, label %746

737:                                              ; preds = %731, %726
  %738 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %739 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %740 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %739, i32 0, i32 2
  %741 = load i64, i64* %740, align 8
  %742 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %743 = call i32 @MR_ADDR(i64 %741, i32 %742)
  %744 = load i32, i32* @GMF_RX_MACSEC_FLUSH_OFF, align 4
  %745 = call i32 @CSR_WRITE_4(%struct.msk_softc* %738, i32 %743, i32 %744)
  br label %746

746:                                              ; preds = %737, %731
  %747 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %748 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %747, i32 0, i32 2
  %749 = load i64, i64* %748, align 8
  %750 = load i64, i64* @MSK_PORT_A, align 8
  %751 = icmp eq i64 %749, %750
  br i1 %751, label %752, label %763

752:                                              ; preds = %746
  %753 = load i32, i32* @Y2_IS_PORT_A, align 4
  %754 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %755 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %754, i32 0, i32 2
  %756 = load i32, i32* %755, align 8
  %757 = or i32 %756, %753
  store i32 %757, i32* %755, align 8
  %758 = load i32, i32* @Y2_HWE_L1_MASK, align 4
  %759 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %760 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %759, i32 0, i32 3
  %761 = load i32, i32* %760, align 4
  %762 = or i32 %761, %758
  store i32 %762, i32* %760, align 4
  br label %774

763:                                              ; preds = %746
  %764 = load i32, i32* @Y2_IS_PORT_B, align 4
  %765 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %766 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %765, i32 0, i32 2
  %767 = load i32, i32* %766, align 8
  %768 = or i32 %767, %764
  store i32 %768, i32* %766, align 8
  %769 = load i32, i32* @Y2_HWE_L2_MASK, align 4
  %770 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %771 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %770, i32 0, i32 3
  %772 = load i32, i32* %771, align 4
  %773 = or i32 %772, %769
  store i32 %773, i32* %771, align 4
  br label %774

774:                                              ; preds = %763, %752
  %775 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %776 = load i32, i32* @B2_IRQM_MSK, align 4
  %777 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %778 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %777, i32 0, i32 2
  %779 = load i32, i32* %778, align 8
  %780 = call i32 @CSR_WRITE_4(%struct.msk_softc* %775, i32 %776, i32 %779)
  %781 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %782 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %781, i32 0, i32 4
  %783 = load i64, i64* %782, align 8
  %784 = icmp sgt i64 %783, 0
  br i1 %784, label %785, label %806

785:                                              ; preds = %774
  %786 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %787 = load i32, i32* @B2_IRQM_INI, align 4
  %788 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %789 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %790 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %789, i32 0, i32 4
  %791 = load i64, i64* %790, align 8
  %792 = call i32 @MSK_USECS(%struct.msk_softc* %788, i64 %791)
  %793 = call i32 @CSR_WRITE_4(%struct.msk_softc* %786, i32 %787, i32 %792)
  %794 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %795 = load i32, i32* @B2_IRQM_VAL, align 4
  %796 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %797 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %798 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %797, i32 0, i32 4
  %799 = load i64, i64* %798, align 8
  %800 = call i32 @MSK_USECS(%struct.msk_softc* %796, i64 %799)
  %801 = call i32 @CSR_WRITE_4(%struct.msk_softc* %794, i32 %795, i32 %800)
  %802 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %803 = load i32, i32* @B2_IRQM_CTRL, align 4
  %804 = load i32, i32* @TIM_START, align 4
  %805 = call i32 @CSR_WRITE_1(%struct.msk_softc* %802, i32 %803, i32 %804)
  br label %806

806:                                              ; preds = %785, %774
  %807 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %808 = load i32, i32* @B0_HWE_IMSK, align 4
  %809 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %810 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %809, i32 0, i32 3
  %811 = load i32, i32* %810, align 4
  %812 = call i32 @CSR_WRITE_4(%struct.msk_softc* %807, i32 %808, i32 %811)
  %813 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %814 = load i32, i32* @B0_HWE_IMSK, align 4
  %815 = call i32 @CSR_READ_4(%struct.msk_softc* %813, i32 %814)
  %816 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %817 = load i32, i32* @B0_IMSK, align 4
  %818 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %819 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %818, i32 0, i32 2
  %820 = load i32, i32* %819, align 8
  %821 = call i32 @CSR_WRITE_4(%struct.msk_softc* %816, i32 %817, i32 %820)
  %822 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %823 = load i32, i32* @B0_IMSK, align 4
  %824 = call i32 @CSR_READ_4(%struct.msk_softc* %822, i32 %823)
  %825 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %826 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %827 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %826, i32 0, i32 0
  %828 = load i32, i32* %827, align 8
  %829 = or i32 %828, %825
  store i32 %829, i32* %827, align 8
  %830 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %831 = xor i32 %830, -1
  %832 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %833 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %832, i32 0, i32 0
  %834 = load i32, i32* %833, align 8
  %835 = and i32 %834, %831
  store i32 %835, i32* %833, align 8
  %836 = load i32, i32* @MSK_FLAG_LINK, align 4
  %837 = xor i32 %836, -1
  %838 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %839 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %838, i32 0, i32 1
  %840 = load i32, i32* %839, align 8
  %841 = and i32 %840, %837
  store i32 %841, i32* %839, align 8
  %842 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %843 = call i32 @mii_mediachg(%struct.mii_data* %842)
  %844 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %845 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %844, i32 0, i32 3
  %846 = load i32, i32* @hz, align 4
  %847 = load i32, i32* @msk_tick, align 4
  %848 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %849 = call i32 @callout_reset(i32* %845, i32 %846, i32 %847, %struct.msk_if_softc* %848)
  br label %850

850:                                              ; preds = %806, %719, %28
  ret void
}

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @msk_stop(%struct.msk_if_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @MR_ADDR(i64, i32) #1

declare dso_local i32 @GMAC_WRITE_2(%struct.msk_softc*, i64, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.msk_softc*, i32) #1

declare dso_local i32 @msk_stats_clear(%struct.msk_if_softc*) #1

declare dso_local i32 @TX_COL_THR(i32) #1

declare dso_local i32 @TX_JAM_LEN_VAL(i32) #1

declare dso_local i32 @TX_JAM_IPG_VAL(i32) #1

declare dso_local i32 @TX_IPG_JAM_DATA(i32) #1

declare dso_local i32 @TX_BACK_OFF_LIM(i32) #1

declare dso_local i32 @DATA_BLIND_VAL(i32) #1

declare dso_local i32 @IPG_DATA_VAL(i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @msk_rxfilter(%struct.msk_if_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @msk_setvlan(%struct.msk_if_softc*, %struct.ifnet*) #1

declare dso_local i32 @msk_set_tx_stfwd(%struct.msk_if_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.msk_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @msk_set_rambuffer(%struct.msk_if_softc*) #1

declare dso_local i32 @RB_ADDR(i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @msk_set_prefetch(%struct.msk_softc*, i32, i32, i64) #1

declare dso_local i32 @msk_init_tx_ring(%struct.msk_if_softc*) #1

declare dso_local i32 @msk_init_jumbo_rx_ring(%struct.msk_if_softc*) #1

declare dso_local i32 @msk_init_rx_ring(%struct.msk_if_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MSK_USECS(%struct.msk_softc*, i64) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.msk_if_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
