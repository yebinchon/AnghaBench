; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_SUPR = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_EX = common dso_local global i64 0, align 8
@B28_Y2_CPU_WDOG = common dso_local global i32 0, align 4
@B28_Y2_ASF_HCU_CCSR = common dso_local global i32 0, align 4
@Y2_ASF_HCU_CCSR_AHB_RST = common dso_local global i32 0, align 4
@Y2_ASF_HCU_CCSR_CPU_RST_MODE = common dso_local global i32 0, align 4
@Y2_ASF_HCU_CCSR_UC_STATE_MSK = common dso_local global i32 0, align 4
@Y2_ASF_HCU_CCSR_CPU_CLK_DIVIDE_MSK = common dso_local global i32 0, align 4
@B28_Y2_ASF_STAT_CMD = common dso_local global i32 0, align 4
@Y2_ASF_RESET = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@Y2_ASF_DISABLE = common dso_local global i32 0, align 4
@CS_RST_SET = common dso_local global i32 0, align 4
@CS_RST_CLR = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i64 0, align 8
@B2_TST_CTRL1 = common dso_local global i32 0, align 4
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@PCIM_STATUS_PERR = common dso_local global i32 0, align 4
@PCIM_STATUS_SERR = common dso_local global i32 0, align 4
@PCIM_STATUS_RMABORT = common dso_local global i32 0, align 4
@PCIM_STATUS_RTABORT = common dso_local global i32 0, align 4
@PCIM_STATUS_MDPERR = common dso_local global i32 0, align 4
@CS_MRST_CLR = common dso_local global i32 0, align 4
@PEX_UNC_ERR_STAT = common dso_local global i32 0, align 4
@PEX_RX_OV = common dso_local global i32 0, align 4
@Y2_IS_HW_ERR = common dso_local global i32 0, align 4
@Y2_IS_PCI_EXP = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i64 0, align 8
@PCI_OUR_REG_1 = common dso_local global i64 0, align 8
@PCI_CLS_OPT = common dso_local global i32 0, align 4
@MSK_PHY_POWERUP = common dso_local global i32 0, align 4
@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_RST_SET = common dso_local global i32 0, align 4
@GPC_RST_CLR = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_RST_SET = common dso_local global i32 0, align 4
@GMC_RST_CLR = common dso_local global i32 0, align 4
@GMC_F_LOOPB_OFF = common dso_local global i32 0, align 4
@GMC_BYP_MACSECRX_ON = common dso_local global i32 0, align 4
@GMC_BYP_MACSECTX_ON = common dso_local global i32 0, align 4
@GMC_BYP_RETR_ON = common dso_local global i32 0, align 4
@CHIP_REV_YU_SU_B0 = common dso_local global i64 0, align 8
@PCI_OUR_REG_3 = common dso_local global i32 0, align 4
@PCI_CLK_MACSEC_DIS = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_OPT = common dso_local global i64 0, align 8
@Y2_PEX_PHY_DATA = common dso_local global i32 0, align 4
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@Y2_LED_STAT_ON = common dso_local global i32 0, align 4
@B2_I2C_IRQ = common dso_local global i32 0, align 4
@I2C_CLR_IRQ = common dso_local global i32 0, align 4
@B2_TI_CTRL = common dso_local global i32 0, align 4
@TIM_STOP = common dso_local global i32 0, align 4
@TIM_CLR_IRQ = common dso_local global i32 0, align 4
@B28_DPT_CTRL = common dso_local global i32 0, align 4
@DPT_STOP = common dso_local global i32 0, align 4
@GMAC_TI_ST_CTRL = common dso_local global i32 0, align 4
@GMT_ST_STOP = common dso_local global i32 0, align 4
@GMT_ST_CLR_IRQ = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EC = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_FE = common dso_local global i64 0, align 8
@B3_RI_CTRL = common dso_local global i32 0, align 4
@RI_RST_SET = common dso_local global i32 0, align 4
@RI_RST_CLR = common dso_local global i32 0, align 4
@B3_RI_WTO_R1 = common dso_local global i32 0, align 4
@MSK_RI_TO_53 = common dso_local global i32 0, align 4
@B3_RI_WTO_XA1 = common dso_local global i32 0, align 4
@B3_RI_WTO_XS1 = common dso_local global i32 0, align 4
@B3_RI_RTO_R1 = common dso_local global i32 0, align 4
@B3_RI_RTO_XA1 = common dso_local global i32 0, align 4
@B3_RI_RTO_XS1 = common dso_local global i32 0, align 4
@B3_RI_WTO_R2 = common dso_local global i32 0, align 4
@B3_RI_WTO_XA2 = common dso_local global i32 0, align 4
@B3_RI_WTO_XS2 = common dso_local global i32 0, align 4
@B3_RI_RTO_R2 = common dso_local global i32 0, align 4
@B3_RI_RTO_XA2 = common dso_local global i32 0, align 4
@B3_RI_RTO_XS2 = common dso_local global i32 0, align 4
@B0_HWE_IMSK = common dso_local global i32 0, align 4
@B0_IMSK = common dso_local global i32 0, align 4
@PCIXR_COMMAND = common dso_local global i64 0, align 8
@PCIXM_COMMAND_MAX_SPLITS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@STAT_CTRL = common dso_local global i32 0, align 4
@SC_STAT_RST_SET = common dso_local global i32 0, align 4
@SC_STAT_RST_CLR = common dso_local global i32 0, align 4
@STAT_LIST_ADDR_LO = common dso_local global i32 0, align 4
@STAT_LIST_ADDR_HI = common dso_local global i32 0, align 4
@STAT_LAST_IDX = common dso_local global i32 0, align 4
@CHIP_REV_YU_EC_A1 = common dso_local global i64 0, align 8
@STAT_TX_IDX_TH = common dso_local global i32 0, align 4
@ST_TXTH_IDX_MASK = common dso_local global i32 0, align 4
@STAT_FIFO_WM = common dso_local global i32 0, align 4
@STAT_FIFO_ISR_WM = common dso_local global i32 0, align 4
@CHIP_REV_YU_XL_A0 = common dso_local global i64 0, align 8
@STAT_ISR_TIMER_INI = common dso_local global i32 0, align 4
@STAT_TX_TIMER_INI = common dso_local global i32 0, align 4
@SC_STAT_OP_ON = common dso_local global i32 0, align 4
@STAT_TX_TIMER_CTRL = common dso_local global i32 0, align 4
@TIM_START = common dso_local global i32 0, align 4
@STAT_LEV_TIMER_CTRL = common dso_local global i32 0, align 4
@STAT_ISR_TIMER_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_softc*)* @mskc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mskc_reset(%struct.msk_softc* %0) #0 {
  %2 = alloca %struct.msk_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msk_softc* %0, %struct.msk_softc** %2, align 8
  %9 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %10 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %1
  %15 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %16 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %14
  %21 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %22 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %28 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %26, %20
  %33 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %34 = load i32, i32* @B28_Y2_CPU_WDOG, align 4
  %35 = call i32 @CSR_WRITE_4(%struct.msk_softc* %33, i32 %34, i32 0)
  %36 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %37 = load i32, i32* @B28_Y2_ASF_HCU_CCSR, align 4
  %38 = call i32 @CSR_READ_2(%struct.msk_softc* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @Y2_ASF_HCU_CCSR_AHB_RST, align 4
  %40 = load i32, i32* @Y2_ASF_HCU_CCSR_CPU_RST_MODE, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @Y2_ASF_HCU_CCSR_UC_STATE_MSK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @Y2_ASF_HCU_CCSR_CPU_CLK_DIVIDE_MSK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %54 = load i32, i32* @B28_Y2_ASF_HCU_CCSR, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @CSR_WRITE_2(%struct.msk_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %58 = load i32, i32* @B28_Y2_CPU_WDOG, align 4
  %59 = call i32 @CSR_WRITE_4(%struct.msk_softc* %57, i32 %58, i32 0)
  br label %65

60:                                               ; preds = %26
  %61 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %62 = load i32, i32* @B28_Y2_ASF_STAT_CMD, align 4
  %63 = load i32, i32* @Y2_ASF_RESET, align 4
  %64 = call i32 @CSR_WRITE_1(%struct.msk_softc* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %32
  %66 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %67 = load i32, i32* @B0_CTST, align 4
  %68 = load i32, i32* @Y2_ASF_DISABLE, align 4
  %69 = call i32 @CSR_WRITE_2(%struct.msk_softc* %66, i32 %67, i32 %68)
  %70 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %71 = load i32, i32* @B0_CTST, align 4
  %72 = load i32, i32* @CS_RST_SET, align 4
  %73 = call i32 @CSR_WRITE_2(%struct.msk_softc* %70, i32 %71, i32 %72)
  %74 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %75 = load i32, i32* @B0_CTST, align 4
  %76 = load i32, i32* @CS_RST_CLR, align 4
  %77 = call i32 @CSR_WRITE_2(%struct.msk_softc* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %65, %14, %1
  %79 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %80 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @PCIR_STATUS, align 8
  %83 = call i32 @pci_read_config(i32 %81, i64 %82, i32 2)
  store i32 %83, i32* %4, align 4
  %84 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %85 = load i32, i32* @B2_TST_CTRL1, align 4
  %86 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %87 = call i32 @CSR_WRITE_1(%struct.msk_softc* %84, i32 %85, i32 %86)
  %88 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %89 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* @PCIR_STATUS, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @PCIM_STATUS_PERR, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @PCIM_STATUS_SERR, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @PCIM_STATUS_RMABORT, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @PCIM_STATUS_RTABORT, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @PCIM_STATUS_MDPERR, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @pci_write_config(i32 %90, i64 %91, i32 %102, i32 2)
  %104 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %105 = load i32, i32* @B0_CTST, align 4
  %106 = load i32, i32* @CS_MRST_CLR, align 4
  %107 = call i32 @CSR_WRITE_2(%struct.msk_softc* %104, i32 %105, i32 %106)
  %108 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %109 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %171 [
    i32 128, label %111
    i32 129, label %136
    i32 130, label %136
  ]

111:                                              ; preds = %78
  %112 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %113 = load i32, i32* @PEX_UNC_ERR_STAT, align 4
  %114 = call i32 @CSR_PCI_WRITE_4(%struct.msk_softc* %112, i32 %113, i32 -1)
  %115 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %116 = load i32, i32* @PEX_UNC_ERR_STAT, align 4
  %117 = call i32 @CSR_PCI_READ_4(%struct.msk_softc* %115, i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @PEX_RX_OV, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %111
  %123 = load i32, i32* @Y2_IS_HW_ERR, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %126 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %125, i32 0, i32 14
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* @Y2_IS_PCI_EXP, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %132 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %131, i32 0, i32 13
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %122, %111
  br label %171

136:                                              ; preds = %78, %78
  %137 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %138 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %137, i32 0, i32 12
  %139 = load i32, i32* %138, align 4
  %140 = load i64, i64* @PCIR_CACHELNSZ, align 8
  %141 = call i32 @pci_read_config(i32 %139, i64 %140, i32 1)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %146 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %145, i32 0, i32 12
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* @PCIR_CACHELNSZ, align 8
  %149 = call i32 @pci_write_config(i32 %147, i64 %148, i32 2, i32 1)
  br label %150

150:                                              ; preds = %144, %136
  %151 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %152 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 130
  br i1 %154, label %155, label %170

155:                                              ; preds = %150
  %156 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %157 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* @PCI_OUR_REG_1, align 8
  %160 = call i32 @pci_read_config(i32 %158, i64 %159, i32 4)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* @PCI_CLS_OPT, align 4
  %162 = load i32, i32* %5, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %5, align 4
  %164 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %165 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* @PCI_OUR_REG_1, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @pci_write_config(i32 %166, i64 %167, i32 %168, i32 4)
  br label %170

170:                                              ; preds = %155, %150
  br label %171

171:                                              ; preds = %78, %170, %135
  %172 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %173 = load i32, i32* @MSK_PHY_POWERUP, align 4
  %174 = call i32 @msk_phy_power(%struct.msk_softc* %172, i32 %173)
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %235, %171
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %178 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %238

181:                                              ; preds = %175
  %182 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @GPHY_CTRL, align 4
  %185 = call i32 @MR_ADDR(i32 %183, i32 %184)
  %186 = load i32, i32* @GPC_RST_SET, align 4
  %187 = call i32 @CSR_WRITE_1(%struct.msk_softc* %182, i32 %185, i32 %186)
  %188 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @GPHY_CTRL, align 4
  %191 = call i32 @MR_ADDR(i32 %189, i32 %190)
  %192 = load i32, i32* @GPC_RST_CLR, align 4
  %193 = call i32 @CSR_WRITE_1(%struct.msk_softc* %188, i32 %191, i32 %192)
  %194 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @GMAC_CTRL, align 4
  %197 = call i32 @MR_ADDR(i32 %195, i32 %196)
  %198 = load i32, i32* @GMC_RST_SET, align 4
  %199 = call i32 @CSR_WRITE_4(%struct.msk_softc* %194, i32 %197, i32 %198)
  %200 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @GMAC_CTRL, align 4
  %203 = call i32 @MR_ADDR(i32 %201, i32 %202)
  %204 = load i32, i32* @GMC_RST_CLR, align 4
  %205 = call i32 @CSR_WRITE_4(%struct.msk_softc* %200, i32 %203, i32 %204)
  %206 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @GMAC_CTRL, align 4
  %209 = call i32 @MR_ADDR(i32 %207, i32 %208)
  %210 = load i32, i32* @GMC_F_LOOPB_OFF, align 4
  %211 = call i32 @CSR_WRITE_4(%struct.msk_softc* %206, i32 %209, i32 %210)
  %212 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %213 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %223, label %217

217:                                              ; preds = %181
  %218 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %219 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %217, %181
  %224 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @GMAC_CTRL, align 4
  %227 = call i32 @MR_ADDR(i32 %225, i32 %226)
  %228 = load i32, i32* @GMC_BYP_MACSECRX_ON, align 4
  %229 = load i32, i32* @GMC_BYP_MACSECTX_ON, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @GMC_BYP_RETR_ON, align 4
  %232 = or i32 %230, %231
  %233 = call i32 @CSR_WRITE_4(%struct.msk_softc* %224, i32 %227, i32 %232)
  br label %234

234:                                              ; preds = %223, %217
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %175

238:                                              ; preds = %175
  %239 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %240 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %255

244:                                              ; preds = %238
  %245 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %246 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @CHIP_REV_YU_SU_B0, align 8
  %249 = icmp sgt i64 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %252 = load i32, i32* @PCI_OUR_REG_3, align 4
  %253 = load i32, i32* @PCI_CLK_MACSEC_DIS, align 4
  %254 = call i32 @CSR_PCI_WRITE_4(%struct.msk_softc* %251, i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %250, %244, %238
  %256 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %257 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @CHIP_ID_YUKON_OPT, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %270

261:                                              ; preds = %255
  %262 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %263 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  %267 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %268 = load i32, i32* @Y2_PEX_PHY_DATA, align 4
  %269 = call i32 @CSR_WRITE_4(%struct.msk_softc* %267, i32 %268, i32 8388736)
  br label %270

270:                                              ; preds = %266, %261, %255
  %271 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %272 = load i32, i32* @B2_TST_CTRL1, align 4
  %273 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %274 = call i32 @CSR_WRITE_1(%struct.msk_softc* %271, i32 %272, i32 %273)
  %275 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %276 = load i32, i32* @B0_CTST, align 4
  %277 = load i32, i32* @Y2_LED_STAT_ON, align 4
  %278 = call i32 @CSR_WRITE_2(%struct.msk_softc* %275, i32 %276, i32 %277)
  %279 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %280 = load i32, i32* @B2_I2C_IRQ, align 4
  %281 = load i32, i32* @I2C_CLR_IRQ, align 4
  %282 = call i32 @CSR_WRITE_4(%struct.msk_softc* %279, i32 %280, i32 %281)
  %283 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %284 = load i32, i32* @B2_TI_CTRL, align 4
  %285 = load i32, i32* @TIM_STOP, align 4
  %286 = call i32 @CSR_WRITE_1(%struct.msk_softc* %283, i32 %284, i32 %285)
  %287 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %288 = load i32, i32* @B2_TI_CTRL, align 4
  %289 = load i32, i32* @TIM_CLR_IRQ, align 4
  %290 = call i32 @CSR_WRITE_1(%struct.msk_softc* %287, i32 %288, i32 %289)
  %291 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %292 = load i32, i32* @B28_DPT_CTRL, align 4
  %293 = load i32, i32* @DPT_STOP, align 4
  %294 = call i32 @CSR_WRITE_1(%struct.msk_softc* %291, i32 %292, i32 %293)
  %295 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %296 = load i32, i32* @GMAC_TI_ST_CTRL, align 4
  %297 = load i32, i32* @GMT_ST_STOP, align 4
  %298 = call i32 @CSR_WRITE_1(%struct.msk_softc* %295, i32 %296, i32 %297)
  %299 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %300 = load i32, i32* @GMAC_TI_ST_CTRL, align 4
  %301 = load i32, i32* @GMT_ST_CLR_IRQ, align 4
  %302 = call i32 @CSR_WRITE_1(%struct.msk_softc* %299, i32 %300, i32 %301)
  store i32 0, i32* %7, align 4
  %303 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %304 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %320, label %308

308:                                              ; preds = %270
  %309 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %310 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @CHIP_ID_YUKON_EC, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %320, label %314

314:                                              ; preds = %308
  %315 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %316 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @CHIP_ID_YUKON_FE, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %314, %308, %270
  %321 = load i32, i32* %7, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %7, align 4
  br label %323

323:                                              ; preds = %320, %314
  store i32 0, i32* %6, align 4
  br label %324

324:                                              ; preds = %420, %323
  %325 = load i32, i32* %7, align 4
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %324
  %328 = load i32, i32* %6, align 4
  %329 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %330 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = icmp slt i32 %328, %331
  br label %333

333:                                              ; preds = %327, %324
  %334 = phi i1 [ false, %324 ], [ %332, %327 ]
  br i1 %334, label %335, label %423

335:                                              ; preds = %333
  %336 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* @B3_RI_CTRL, align 4
  %339 = call i32 @SELECT_RAM_BUFFER(i32 %337, i32 %338)
  %340 = load i32, i32* @RI_RST_SET, align 4
  %341 = call i32 @CSR_WRITE_2(%struct.msk_softc* %336, i32 %339, i32 %340)
  %342 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %343 = load i32, i32* %6, align 4
  %344 = load i32, i32* @B3_RI_CTRL, align 4
  %345 = call i32 @SELECT_RAM_BUFFER(i32 %343, i32 %344)
  %346 = load i32, i32* @RI_RST_CLR, align 4
  %347 = call i32 @CSR_WRITE_2(%struct.msk_softc* %342, i32 %345, i32 %346)
  %348 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* @B3_RI_WTO_R1, align 4
  %351 = call i32 @SELECT_RAM_BUFFER(i32 %349, i32 %350)
  %352 = load i32, i32* @MSK_RI_TO_53, align 4
  %353 = call i32 @CSR_WRITE_1(%struct.msk_softc* %348, i32 %351, i32 %352)
  %354 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %355 = load i32, i32* %6, align 4
  %356 = load i32, i32* @B3_RI_WTO_XA1, align 4
  %357 = call i32 @SELECT_RAM_BUFFER(i32 %355, i32 %356)
  %358 = load i32, i32* @MSK_RI_TO_53, align 4
  %359 = call i32 @CSR_WRITE_1(%struct.msk_softc* %354, i32 %357, i32 %358)
  %360 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %361 = load i32, i32* %6, align 4
  %362 = load i32, i32* @B3_RI_WTO_XS1, align 4
  %363 = call i32 @SELECT_RAM_BUFFER(i32 %361, i32 %362)
  %364 = load i32, i32* @MSK_RI_TO_53, align 4
  %365 = call i32 @CSR_WRITE_1(%struct.msk_softc* %360, i32 %363, i32 %364)
  %366 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %367 = load i32, i32* %6, align 4
  %368 = load i32, i32* @B3_RI_RTO_R1, align 4
  %369 = call i32 @SELECT_RAM_BUFFER(i32 %367, i32 %368)
  %370 = load i32, i32* @MSK_RI_TO_53, align 4
  %371 = call i32 @CSR_WRITE_1(%struct.msk_softc* %366, i32 %369, i32 %370)
  %372 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %373 = load i32, i32* %6, align 4
  %374 = load i32, i32* @B3_RI_RTO_XA1, align 4
  %375 = call i32 @SELECT_RAM_BUFFER(i32 %373, i32 %374)
  %376 = load i32, i32* @MSK_RI_TO_53, align 4
  %377 = call i32 @CSR_WRITE_1(%struct.msk_softc* %372, i32 %375, i32 %376)
  %378 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %379 = load i32, i32* %6, align 4
  %380 = load i32, i32* @B3_RI_RTO_XS1, align 4
  %381 = call i32 @SELECT_RAM_BUFFER(i32 %379, i32 %380)
  %382 = load i32, i32* @MSK_RI_TO_53, align 4
  %383 = call i32 @CSR_WRITE_1(%struct.msk_softc* %378, i32 %381, i32 %382)
  %384 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %385 = load i32, i32* %6, align 4
  %386 = load i32, i32* @B3_RI_WTO_R2, align 4
  %387 = call i32 @SELECT_RAM_BUFFER(i32 %385, i32 %386)
  %388 = load i32, i32* @MSK_RI_TO_53, align 4
  %389 = call i32 @CSR_WRITE_1(%struct.msk_softc* %384, i32 %387, i32 %388)
  %390 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %391 = load i32, i32* %6, align 4
  %392 = load i32, i32* @B3_RI_WTO_XA2, align 4
  %393 = call i32 @SELECT_RAM_BUFFER(i32 %391, i32 %392)
  %394 = load i32, i32* @MSK_RI_TO_53, align 4
  %395 = call i32 @CSR_WRITE_1(%struct.msk_softc* %390, i32 %393, i32 %394)
  %396 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %397 = load i32, i32* %6, align 4
  %398 = load i32, i32* @B3_RI_WTO_XS2, align 4
  %399 = call i32 @SELECT_RAM_BUFFER(i32 %397, i32 %398)
  %400 = load i32, i32* @MSK_RI_TO_53, align 4
  %401 = call i32 @CSR_WRITE_1(%struct.msk_softc* %396, i32 %399, i32 %400)
  %402 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %403 = load i32, i32* %6, align 4
  %404 = load i32, i32* @B3_RI_RTO_R2, align 4
  %405 = call i32 @SELECT_RAM_BUFFER(i32 %403, i32 %404)
  %406 = load i32, i32* @MSK_RI_TO_53, align 4
  %407 = call i32 @CSR_WRITE_1(%struct.msk_softc* %402, i32 %405, i32 %406)
  %408 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %409 = load i32, i32* %6, align 4
  %410 = load i32, i32* @B3_RI_RTO_XA2, align 4
  %411 = call i32 @SELECT_RAM_BUFFER(i32 %409, i32 %410)
  %412 = load i32, i32* @MSK_RI_TO_53, align 4
  %413 = call i32 @CSR_WRITE_1(%struct.msk_softc* %408, i32 %411, i32 %412)
  %414 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %415 = load i32, i32* %6, align 4
  %416 = load i32, i32* @B3_RI_RTO_XS2, align 4
  %417 = call i32 @SELECT_RAM_BUFFER(i32 %415, i32 %416)
  %418 = load i32, i32* @MSK_RI_TO_53, align 4
  %419 = call i32 @CSR_WRITE_1(%struct.msk_softc* %414, i32 %417, i32 %418)
  br label %420

420:                                              ; preds = %335
  %421 = load i32, i32* %6, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %6, align 4
  br label %324

423:                                              ; preds = %333
  %424 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %425 = load i32, i32* @B0_HWE_IMSK, align 4
  %426 = call i32 @CSR_WRITE_4(%struct.msk_softc* %424, i32 %425, i32 0)
  %427 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %428 = load i32, i32* @B0_HWE_IMSK, align 4
  %429 = call i32 @CSR_READ_4(%struct.msk_softc* %427, i32 %428)
  %430 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %431 = load i32, i32* @B0_IMSK, align 4
  %432 = call i32 @CSR_WRITE_4(%struct.msk_softc* %430, i32 %431, i32 0)
  %433 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %434 = load i32, i32* @B0_IMSK, align 4
  %435 = call i32 @CSR_READ_4(%struct.msk_softc* %433, i32 %434)
  %436 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %437 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %436, i32 0, i32 4
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %477

440:                                              ; preds = %423
  %441 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %442 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 4
  %444 = icmp sgt i32 %443, 1
  br i1 %444, label %445, label %477

445:                                              ; preds = %440
  %446 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %447 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %446, i32 0, i32 12
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %450 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %449, i32 0, i32 4
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @PCIXR_COMMAND, align 8
  %453 = add nsw i64 %451, %452
  %454 = call i32 @pci_read_config(i32 %448, i64 %453, i32 2)
  store i32 %454, i32* %8, align 4
  %455 = load i32, i32* @PCIXM_COMMAND_MAX_SPLITS, align 4
  %456 = xor i32 %455, -1
  %457 = load i32, i32* %8, align 4
  %458 = and i32 %457, %456
  store i32 %458, i32* %8, align 4
  %459 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %460 = load i32, i32* @B2_TST_CTRL1, align 4
  %461 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %462 = call i32 @CSR_WRITE_1(%struct.msk_softc* %459, i32 %460, i32 %461)
  %463 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %464 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %463, i32 0, i32 12
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %467 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %466, i32 0, i32 4
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @PCIXR_COMMAND, align 8
  %470 = add nsw i64 %468, %469
  %471 = load i32, i32* %8, align 4
  %472 = call i32 @pci_write_config(i32 %465, i64 %470, i32 %471, i32 2)
  %473 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %474 = load i32, i32* @B2_TST_CTRL1, align 4
  %475 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %476 = call i32 @CSR_WRITE_1(%struct.msk_softc* %473, i32 %474, i32 %475)
  br label %477

477:                                              ; preds = %445, %440, %423
  %478 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %479 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %478, i32 0, i32 5
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %494

482:                                              ; preds = %477
  %483 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %484 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %483, i32 0, i32 12
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @pci_get_max_read_req(i32 %485)
  %487 = icmp eq i32 %486, 512
  br i1 %487, label %488, label %493

488:                                              ; preds = %482
  %489 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %490 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %489, i32 0, i32 12
  %491 = load i32, i32* %490, align 4
  %492 = call i32 @pci_set_max_read_req(i32 %491, i32 2048)
  br label %493

493:                                              ; preds = %488, %482
  br label %494

494:                                              ; preds = %493, %477
  %495 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %496 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %495, i32 0, i32 11
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %499 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %498, i32 0, i32 6
  %500 = load i32, i32* %499, align 8
  %501 = sext i32 %500 to i64
  %502 = mul i64 4, %501
  %503 = trunc i64 %502 to i32
  %504 = call i32 @bzero(i32 %497, i32 %503)
  %505 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %506 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %505, i32 0, i32 10
  store i64 0, i64* %506, align 8
  %507 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %508 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %507, i32 0, i32 9
  %509 = load i32, i32* %508, align 4
  %510 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %511 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %510, i32 0, i32 8
  %512 = load i32, i32* %511, align 8
  %513 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %514 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %515 = or i32 %513, %514
  %516 = call i32 @bus_dmamap_sync(i32 %509, i32 %512, i32 %515)
  %517 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %518 = load i32, i32* @STAT_CTRL, align 4
  %519 = load i32, i32* @SC_STAT_RST_SET, align 4
  %520 = call i32 @CSR_WRITE_4(%struct.msk_softc* %517, i32 %518, i32 %519)
  %521 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %522 = load i32, i32* @STAT_CTRL, align 4
  %523 = load i32, i32* @SC_STAT_RST_CLR, align 4
  %524 = call i32 @CSR_WRITE_4(%struct.msk_softc* %521, i32 %522, i32 %523)
  %525 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %526 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %525, i32 0, i32 7
  %527 = load i32, i32* %526, align 4
  store i32 %527, i32* %3, align 4
  %528 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %529 = load i32, i32* @STAT_LIST_ADDR_LO, align 4
  %530 = load i32, i32* %3, align 4
  %531 = call i32 @MSK_ADDR_LO(i32 %530)
  %532 = call i32 @CSR_WRITE_4(%struct.msk_softc* %528, i32 %529, i32 %531)
  %533 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %534 = load i32, i32* @STAT_LIST_ADDR_HI, align 4
  %535 = load i32, i32* %3, align 4
  %536 = call i32 @MSK_ADDR_HI(i32 %535)
  %537 = call i32 @CSR_WRITE_4(%struct.msk_softc* %533, i32 %534, i32 %536)
  %538 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %539 = load i32, i32* @STAT_LAST_IDX, align 4
  %540 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %541 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %540, i32 0, i32 6
  %542 = load i32, i32* %541, align 8
  %543 = sub nsw i32 %542, 1
  %544 = call i32 @CSR_WRITE_2(%struct.msk_softc* %538, i32 %539, i32 %543)
  %545 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %546 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %545, i32 0, i32 0
  %547 = load i64, i64* %546, align 8
  %548 = load i64, i64* @CHIP_ID_YUKON_EC, align 8
  %549 = icmp eq i64 %547, %548
  br i1 %549, label %550, label %567

550:                                              ; preds = %494
  %551 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %552 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %551, i32 0, i32 3
  %553 = load i64, i64* %552, align 8
  %554 = load i64, i64* @CHIP_REV_YU_EC_A1, align 8
  %555 = icmp eq i64 %553, %554
  br i1 %555, label %556, label %567

556:                                              ; preds = %550
  %557 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %558 = load i32, i32* @STAT_TX_IDX_TH, align 4
  %559 = load i32, i32* @ST_TXTH_IDX_MASK, align 4
  %560 = call i32 @CSR_WRITE_2(%struct.msk_softc* %557, i32 %558, i32 %559)
  %561 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %562 = load i32, i32* @STAT_FIFO_WM, align 4
  %563 = call i32 @CSR_WRITE_1(%struct.msk_softc* %561, i32 %562, i32 33)
  %564 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %565 = load i32, i32* @STAT_FIFO_ISR_WM, align 4
  %566 = call i32 @CSR_WRITE_1(%struct.msk_softc* %564, i32 %565, i32 7)
  br label %597

567:                                              ; preds = %550, %494
  %568 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %569 = load i32, i32* @STAT_TX_IDX_TH, align 4
  %570 = call i32 @CSR_WRITE_2(%struct.msk_softc* %568, i32 %569, i32 10)
  %571 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %572 = load i32, i32* @STAT_FIFO_WM, align 4
  %573 = call i32 @CSR_WRITE_1(%struct.msk_softc* %571, i32 %572, i32 16)
  %574 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %575 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %578 = icmp eq i64 %576, %577
  br i1 %578, label %579, label %589

579:                                              ; preds = %567
  %580 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %581 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %580, i32 0, i32 3
  %582 = load i64, i64* %581, align 8
  %583 = load i64, i64* @CHIP_REV_YU_XL_A0, align 8
  %584 = icmp eq i64 %582, %583
  br i1 %584, label %585, label %589

585:                                              ; preds = %579
  %586 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %587 = load i32, i32* @STAT_FIFO_ISR_WM, align 4
  %588 = call i32 @CSR_WRITE_1(%struct.msk_softc* %586, i32 %587, i32 4)
  br label %593

589:                                              ; preds = %579, %567
  %590 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %591 = load i32, i32* @STAT_FIFO_ISR_WM, align 4
  %592 = call i32 @CSR_WRITE_1(%struct.msk_softc* %590, i32 %591, i32 16)
  br label %593

593:                                              ; preds = %589, %585
  %594 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %595 = load i32, i32* @STAT_ISR_TIMER_INI, align 4
  %596 = call i32 @CSR_WRITE_4(%struct.msk_softc* %594, i32 %595, i32 400)
  br label %597

597:                                              ; preds = %593, %556
  %598 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %599 = load i32, i32* @STAT_TX_TIMER_INI, align 4
  %600 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %601 = call i32 @MSK_USECS(%struct.msk_softc* %600, i32 1000)
  %602 = call i32 @CSR_WRITE_4(%struct.msk_softc* %598, i32 %599, i32 %601)
  %603 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %604 = load i32, i32* @STAT_CTRL, align 4
  %605 = load i32, i32* @SC_STAT_OP_ON, align 4
  %606 = call i32 @CSR_WRITE_4(%struct.msk_softc* %603, i32 %604, i32 %605)
  %607 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %608 = load i32, i32* @STAT_TX_TIMER_CTRL, align 4
  %609 = load i32, i32* @TIM_START, align 4
  %610 = call i32 @CSR_WRITE_1(%struct.msk_softc* %607, i32 %608, i32 %609)
  %611 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %612 = load i32, i32* @STAT_LEV_TIMER_CTRL, align 4
  %613 = load i32, i32* @TIM_START, align 4
  %614 = call i32 @CSR_WRITE_1(%struct.msk_softc* %611, i32 %612, i32 %613)
  %615 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %616 = load i32, i32* @STAT_ISR_TIMER_CTRL, align 4
  %617 = load i32, i32* @TIM_START, align 4
  %618 = call i32 @CSR_WRITE_1(%struct.msk_softc* %615, i32 %616, i32 %617)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.msk_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @CSR_PCI_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_PCI_READ_4(%struct.msk_softc*, i32) #1

declare dso_local i32 @msk_phy_power(%struct.msk_softc*, i32) #1

declare dso_local i32 @MR_ADDR(i32, i32) #1

declare dso_local i32 @SELECT_RAM_BUFFER(i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.msk_softc*, i32) #1

declare dso_local i32 @pci_get_max_read_req(i32) #1

declare dso_local i32 @pci_set_max_read_req(i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @MSK_ADDR_LO(i32) #1

declare dso_local i32 @MSK_ADDR_HI(i32) #1

declare dso_local i32 @MSK_USECS(%struct.msk_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
