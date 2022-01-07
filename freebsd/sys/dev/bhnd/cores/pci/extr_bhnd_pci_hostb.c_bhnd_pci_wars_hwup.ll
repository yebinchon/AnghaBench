; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci_hostb.c_bhnd_pci_wars_hwup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci_hostb.c_bhnd_pci_wars_hwup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pcihb_softc = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@BHND_PCI_QUIRK_SBTOPCI2_PREF_BURST = common dso_local global i32 0, align 4
@BHND_PCI_QUIRK_SBTOPCI2_READMULTI = common dso_local global i32 0, align 4
@BHND_PCI_SBTOPCI2 = common dso_local global i32 0, align 4
@BHND_PCI_SBTOPCI_PREF = common dso_local global i32 0, align 4
@BHND_PCI_SBTOPCI_BURST = common dso_local global i32 0, align 4
@BHND_PCI_SBTOPCI_RC_READMULTI = common dso_local global i32 0, align 4
@BHND_PCI_QUIRK_CLKRUN_DSBL = common dso_local global i32 0, align 4
@BHND_PCI_CLKRUN_CTL = common dso_local global i32 0, align 4
@BHND_PCI_CLKRUN_DSBL = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_UR_STATUS_FIX = common dso_local global i32 0, align 4
@BHND_PCIE_TLP_WORKAROUNDSREG = common dso_local global i32 0, align 4
@BHND_PCIE_TLP_WORKAROUND_URBIT = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_SDR9_L0s_HANG = common dso_local global i32 0, align 4
@PCIE_SDR9_RX_TIMER1_LKTRK = common dso_local global i32 0, align 4
@PCIE_SDR9_RX_TIMER1_LKACQ = common dso_local global i32 0, align 4
@BHND_PCIE_PHY_SDR9_TXRX = common dso_local global i32 0, align 4
@BHND_PCIE_SDR9_RX_TIMER1 = common dso_local global i32 0, align 4
@BHND_PCIE_SDR9_RX_CDR_FREQ_OVR_EN = common dso_local global i32 0, align 4
@PCIE_SDR9_RX_CDR_FREQ_OVR = common dso_local global i32 0, align 4
@BHND_PCIE_SDR9_RX_CDR = common dso_local global i32 0, align 4
@PCIE_SDR9_RX_CDRBW_INTGTRK = common dso_local global i32 0, align 4
@PCIE_SDR9_RX_CDRBW_INTGACQ = common dso_local global i32 0, align 4
@PCIE_SDR9_RX_CDRBW_PROPTRK = common dso_local global i32 0, align 4
@PCIE_SDR9_RX_CDRBW_PROPACQ = common dso_local global i32 0, align 4
@BHND_PCIE_SDR9_RX_CDRBW = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_SDR9_POLARITY = common dso_local global i32 0, align 4
@BHND_PCIE_SDR9_RX_CTRL = common dso_local global i32 0, align 4
@BHND_PCIE_SDR9_RX_CTRL_FORCE = common dso_local global i32 0, align 4
@BHND_PCIE_SDR9_RX_CTRL_POLARITY_INV = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_SDR9_NO_FREQRETRY = common dso_local global i32 0, align 4
@BHND_PCIE_PHY_SDR9_PLL = common dso_local global i32 0, align 4
@BHND_PCIE_SDR9_PLL_CTRL = common dso_local global i32 0, align 4
@BHND_PCIE_SDR9_PLL_CTRL_FREQDET_EN = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_PCIPM_REQEN = common dso_local global i32 0, align 4
@BHND_PCIE_DLLP_LCREG = common dso_local global i32 0, align 4
@BHND_PCIE_DLLP_LCREG_PCIPM_EN = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_L1_IDLE_THRESH = common dso_local global i32 0, align 4
@BHND_PCIE_DLLP_PMTHRESHREG = common dso_local global i32 0, align 4
@PCIE_L1THRESHOLDTIME = common dso_local global i32 0, align 4
@BHND_PCIE_L1THRESHOLD_WARVAL = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_L1_TIMER_PERF = common dso_local global i32 0, align 4
@BHND_PCIE_ASPMTIMER_EXTEND = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_ASPM_OVR = common dso_local global i32 0, align 4
@BHND_PCIE_SPROM_SHADOW = common dso_local global i64 0, align 8
@BHND_PCIE_SRSH_ASPM_OFFSET = common dso_local global i64 0, align 8
@BHND_PCIE_SRSH_ASPM_ENB = common dso_local global i32 0, align 4
@PCIER_LINK_CTL = common dso_local global i32 0, align 4
@PCIEM_LINK_CTL_ASPMC = common dso_local global i32 0, align 4
@PCIEM_LINK_CTL_ECPM = common dso_local global i32 0, align 4
@BHND_PCIE_SRSH_CLKREQ_OFFSET_R5 = common dso_local global i64 0, align 8
@BHND_PCIE_SRSH_CLKREQ_ENB = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_SPROM_L23_PCI_RESET = common dso_local global i32 0, align 4
@BHND_PCIE_SRSH_PCIE_MISC_CONFIG = common dso_local global i64 0, align 8
@BHND_PCIE_SRSH_L23READY_EXIT_NOPRST = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_SERDES_NOPLLDOWN = common dso_local global i32 0, align 4
@BHND_DEVCLASS_CC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"missing chipcommon device\00", align 1
@CHIPCTRL_4321_PLL_DOWN = common dso_local global i32 0, align 4
@BHND_PCIE_SRSH_BD_OFFSET = common dso_local global i64 0, align 8
@BHND_PCIE_QUIRK_SERDES_TXDRV_ADJUST = common dso_local global i32 0, align 4
@BHND_PCIE_PHYADDR_SD = common dso_local global i32 0, align 4
@BHND_PCIE_SD_REGS_TX0 = common dso_local global i32 0, align 4
@BHND_PCIE_SD_TX_DRIVER = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_SERDES_TXDRV_700MV = common dso_local global i32 0, align 4
@PCIE_SD_TX_DRIVER_P2_COEFF = common dso_local global i32 0, align 4
@BHND_PCIE_APPLE_TX_P2_COEFF_700MV = common dso_local global i32 0, align 4
@PCIE_SD_TX_DRIVER_IDRIVER = common dso_local global i32 0, align 4
@BHND_PCIE_APPLE_TX_IDRIVER_700MV = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_SERDES_TXDRV_MAX = common dso_local global i32 0, align 4
@BHND_PCIE_APPLE_TX_P2_COEFF_MAX = common dso_local global i32 0, align 4
@BHND_PCIE_APPLE_TX_IDRIVER_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pcihb_softc*, i32)* @bhnd_pci_wars_hwup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pci_wars_hwup(%struct.bhnd_pcihb_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bhnd_pcihb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.bhnd_pcihb_softc* %0, %struct.bhnd_pcihb_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BHND_PCI_QUIRK_SBTOPCI2_PREF_BURST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %30 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BHND_PCI_QUIRK_SBTOPCI2_READMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %28, %2
  %36 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %37 = load i32, i32* @BHND_PCI_SBTOPCI2, align 4
  %38 = call i32 @BHND_PCI_READ_4(%struct.bhnd_pcihb_softc* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BHND_PCI_QUIRK_SBTOPCI2_PREF_BURST, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load i32, i32* @BHND_PCI_SBTOPCI_PREF, align 4
  %47 = load i32, i32* @BHND_PCI_SBTOPCI_BURST, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %35
  %52 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %53 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BHND_PCI_QUIRK_SBTOPCI2_READMULTI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @BHND_PCI_SBTOPCI_RC_READMULTI, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %64 = load i32, i32* @BHND_PCI_SBTOPCI2, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @BHND_PCI_WRITE_4(%struct.bhnd_pcihb_softc* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %28
  %68 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %69 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BHND_PCI_QUIRK_CLKRUN_DSBL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %76 = load i32, i32* @BHND_PCI_CLKRUN_CTL, align 4
  %77 = call i32 @BHND_PCI_READ_4(%struct.bhnd_pcihb_softc* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @BHND_PCI_CLKRUN_DSBL, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %82 = load i32, i32* @BHND_PCI_CLKRUN_CTL, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @BHND_PCI_WRITE_4(%struct.bhnd_pcihb_softc* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %74, %67
  %86 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %87 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BHND_PCIE_QUIRK_UR_STATUS_FIX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %94 = load i32, i32* @BHND_PCIE_TLP_WORKAROUNDSREG, align 4
  %95 = call i32 @BHND_PCI_PROTO_READ_4(%struct.bhnd_pcihb_softc* %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* @BHND_PCIE_TLP_WORKAROUND_URBIT, align 4
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %100 = load i32, i32* @BHND_PCIE_TLP_WORKAROUNDSREG, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @BHND_PCI_PROTO_WRITE_4(%struct.bhnd_pcihb_softc* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %92, %85
  %104 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %105 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @BHND_PCIE_QUIRK_SDR9_L0s_HANG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %147

110:                                              ; preds = %103
  %111 = load i32, i32* @PCIE_SDR9_RX_TIMER1_LKTRK, align 4
  %112 = call i32 @BPCI_REG_SET(i32 0, i32 %111, i32 129)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @PCIE_SDR9_RX_TIMER1_LKACQ, align 4
  %115 = call i32 @BPCI_REG_SET(i32 %113, i32 %114, i32 40)
  store i32 %115, i32* %8, align 4
  %116 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %117 = load i32, i32* @BHND_PCIE_PHY_SDR9_TXRX, align 4
  %118 = load i32, i32* @BHND_PCIE_SDR9_RX_TIMER1, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @BHND_PCI_MDIO_WRITE(%struct.bhnd_pcihb_softc* %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* @BHND_PCIE_SDR9_RX_CDR_FREQ_OVR_EN, align 4
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @PCIE_SDR9_RX_CDR_FREQ_OVR, align 4
  %124 = call i32 @BPCI_REG_SET(i32 %122, i32 %123, i32 0)
  store i32 %124, i32* %8, align 4
  %125 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %126 = load i32, i32* @BHND_PCIE_PHY_SDR9_TXRX, align 4
  %127 = load i32, i32* @BHND_PCIE_SDR9_RX_CDR, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @BHND_PCI_MDIO_WRITE(%struct.bhnd_pcihb_softc* %125, i32 %126, i32 %127, i32 %128)
  store i32 0, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @PCIE_SDR9_RX_CDRBW_INTGTRK, align 4
  %132 = call i32 @BPCI_REG_SET(i32 %130, i32 %131, i32 2)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @PCIE_SDR9_RX_CDRBW_INTGACQ, align 4
  %135 = call i32 @BPCI_REG_SET(i32 %133, i32 %134, i32 4)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @PCIE_SDR9_RX_CDRBW_PROPTRK, align 4
  %138 = call i32 @BPCI_REG_SET(i32 %136, i32 %137, i32 6)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @PCIE_SDR9_RX_CDRBW_PROPACQ, align 4
  %141 = call i32 @BPCI_REG_SET(i32 %139, i32 %140, i32 6)
  store i32 %141, i32* %8, align 4
  %142 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %143 = load i32, i32* @BHND_PCIE_PHY_SDR9_TXRX, align 4
  %144 = load i32, i32* @BHND_PCIE_SDR9_RX_CDRBW, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @BHND_PCI_MDIO_WRITE(%struct.bhnd_pcihb_softc* %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %110, %103
  %148 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %149 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @BHND_PCIE_QUIRK_SDR9_POLARITY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %182

154:                                              ; preds = %147
  %155 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %156 = load i32, i32* @BHND_PCIE_PHY_SDR9_TXRX, align 4
  %157 = load i32, i32* @BHND_PCIE_SDR9_RX_CTRL, align 4
  %158 = call i32 @BHND_PCI_MDIO_READ(%struct.bhnd_pcihb_softc* %155, i32 %156, i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* @BHND_PCIE_SDR9_RX_CTRL_FORCE, align 4
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %163 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %154
  %168 = load i32, i32* @BHND_PCIE_SDR9_RX_CTRL_POLARITY_INV, align 4
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %9, align 4
  br label %176

171:                                              ; preds = %154
  %172 = load i32, i32* @BHND_PCIE_SDR9_RX_CTRL_POLARITY_INV, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %9, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %171, %167
  %177 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %178 = load i32, i32* @BHND_PCIE_PHY_SDR9_TXRX, align 4
  %179 = load i32, i32* @BHND_PCIE_SDR9_RX_CTRL, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @BHND_PCI_MDIO_WRITE(%struct.bhnd_pcihb_softc* %177, i32 %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %176, %147
  %183 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %184 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @BHND_PCIE_QUIRK_SDR9_NO_FREQRETRY, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %182
  %190 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %191 = load i32, i32* @BHND_PCIE_PHY_SDR9_PLL, align 4
  %192 = load i32, i32* @BHND_PCIE_SDR9_PLL_CTRL, align 4
  %193 = call i32 @BHND_PCI_MDIO_READ(%struct.bhnd_pcihb_softc* %190, i32 %191, i32 %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* @BHND_PCIE_SDR9_PLL_CTRL_FREQDET_EN, align 4
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %10, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %10, align 4
  %198 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %199 = load i32, i32* @BHND_PCIE_PHY_SDR9_PLL, align 4
  %200 = load i32, i32* @BHND_PCIE_SDR9_PLL_CTRL, align 4
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @BHND_PCI_MDIO_WRITE(%struct.bhnd_pcihb_softc* %198, i32 %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %189, %182
  %204 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %205 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @BHND_PCIE_QUIRK_PCIPM_REQEN, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %203
  %211 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %212 = load i32, i32* @BHND_PCIE_DLLP_LCREG, align 4
  %213 = call i32 @BHND_PCI_PROTO_READ_4(%struct.bhnd_pcihb_softc* %211, i32 %212)
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* @BHND_PCIE_DLLP_LCREG_PCIPM_EN, align 4
  %215 = load i32, i32* %11, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %11, align 4
  %217 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %218 = load i32, i32* @BHND_PCIE_DLLP_LCREG, align 4
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @BHND_PCI_PROTO_WRITE_4(%struct.bhnd_pcihb_softc* %217, i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %210, %203
  %222 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %223 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @BHND_PCIE_QUIRK_L1_IDLE_THRESH, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %221
  %229 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %230 = load i32, i32* @BHND_PCIE_DLLP_PMTHRESHREG, align 4
  %231 = call i32 @BHND_PCI_PROTO_READ_4(%struct.bhnd_pcihb_softc* %229, i32 %230)
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* @PCIE_L1THRESHOLDTIME, align 4
  %234 = load i32, i32* @BHND_PCIE_L1THRESHOLD_WARVAL, align 4
  %235 = call i32 @BPCI_REG_SET(i32 %232, i32 %233, i32 %234)
  store i32 %235, i32* %12, align 4
  %236 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %237 = load i32, i32* @BHND_PCIE_DLLP_PMTHRESHREG, align 4
  %238 = load i32, i32* %12, align 4
  %239 = call i32 @BHND_PCI_PROTO_WRITE_4(%struct.bhnd_pcihb_softc* %236, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %228, %221
  %241 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %242 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @BHND_PCIE_QUIRK_L1_TIMER_PERF, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %240
  %248 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %249 = load i32, i32* @BHND_PCIE_DLLP_PMTHRESHREG, align 4
  %250 = call i32 @BHND_PCI_PROTO_READ_4(%struct.bhnd_pcihb_softc* %248, i32 %249)
  store i32 %250, i32* %13, align 4
  %251 = load i32, i32* @BHND_PCIE_ASPMTIMER_EXTEND, align 4
  %252 = load i32, i32* %13, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %13, align 4
  %254 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %255 = load i32, i32* @BHND_PCIE_DLLP_PMTHRESHREG, align 4
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @BHND_PCI_PROTO_WRITE_4(%struct.bhnd_pcihb_softc* %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %247, %240
  %259 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %260 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @BHND_PCIE_QUIRK_ASPM_OVR, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %346

265:                                              ; preds = %258
  %266 = load i64, i64* @BHND_PCIE_SPROM_SHADOW, align 8
  %267 = load i64, i64* @BHND_PCIE_SRSH_ASPM_OFFSET, align 8
  %268 = add nsw i64 %266, %267
  store i64 %268, i64* %14, align 8
  %269 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %270 = load i64, i64* %14, align 8
  %271 = call i32 @BHND_PCI_READ_2(%struct.bhnd_pcihb_softc* %269, i64 %270)
  store i32 %271, i32* %15, align 4
  %272 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %273 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %265
  %278 = load i32, i32* @BHND_PCIE_SRSH_ASPM_ENB, align 4
  %279 = load i32, i32* %15, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %15, align 4
  br label %286

281:                                              ; preds = %265
  %282 = load i32, i32* @BHND_PCIE_SRSH_ASPM_ENB, align 4
  %283 = xor i32 %282, -1
  %284 = load i32, i32* %15, align 4
  %285 = and i32 %284, %283
  store i32 %285, i32* %15, align 4
  br label %286

286:                                              ; preds = %281, %277
  %287 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %288 = load i64, i64* %14, align 8
  %289 = load i32, i32* %15, align 4
  %290 = call i32 @BHND_PCI_WRITE_2(%struct.bhnd_pcihb_softc* %287, i64 %288, i32 %289)
  %291 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %292 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @PCIER_LINK_CTL, align 4
  %295 = call i32 @pcie_read_config(i32 %293, i32 %294, i32 2)
  store i32 %295, i32* %15, align 4
  %296 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %297 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %286
  %302 = load i32, i32* @PCIEM_LINK_CTL_ASPMC, align 4
  %303 = load i32, i32* %15, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %15, align 4
  br label %310

305:                                              ; preds = %286
  %306 = load i32, i32* @PCIEM_LINK_CTL_ASPMC, align 4
  %307 = xor i32 %306, -1
  %308 = load i32, i32* %15, align 4
  %309 = and i32 %308, %307
  store i32 %309, i32* %15, align 4
  br label %310

310:                                              ; preds = %305, %301
  %311 = load i32, i32* @PCIEM_LINK_CTL_ECPM, align 4
  %312 = xor i32 %311, -1
  %313 = load i32, i32* %15, align 4
  %314 = and i32 %313, %312
  store i32 %314, i32* %15, align 4
  %315 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %316 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @PCIER_LINK_CTL, align 4
  %319 = load i32, i32* %15, align 4
  %320 = call i32 @pcie_write_config(i32 %317, i32 %318, i32 %319, i32 2)
  %321 = load i64, i64* @BHND_PCIE_SPROM_SHADOW, align 8
  %322 = load i64, i64* @BHND_PCIE_SRSH_CLKREQ_OFFSET_R5, align 8
  %323 = add nsw i64 %321, %322
  store i64 %323, i64* %14, align 8
  %324 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %325 = load i64, i64* %14, align 8
  %326 = call i32 @BHND_PCI_READ_2(%struct.bhnd_pcihb_softc* %324, i64 %325)
  store i32 %326, i32* %15, align 4
  %327 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %328 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %310
  %333 = load i32, i32* @BHND_PCIE_SRSH_CLKREQ_ENB, align 4
  %334 = load i32, i32* %15, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %15, align 4
  br label %341

336:                                              ; preds = %310
  %337 = load i32, i32* @BHND_PCIE_SRSH_CLKREQ_ENB, align 4
  %338 = xor i32 %337, -1
  %339 = load i32, i32* %15, align 4
  %340 = and i32 %339, %338
  store i32 %340, i32* %15, align 4
  br label %341

341:                                              ; preds = %336, %332
  %342 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %343 = load i64, i64* %14, align 8
  %344 = load i32, i32* %15, align 4
  %345 = call i32 @BHND_PCI_WRITE_2(%struct.bhnd_pcihb_softc* %342, i64 %343, i32 %344)
  br label %346

346:                                              ; preds = %341, %258
  %347 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %348 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @BHND_PCIE_QUIRK_SPROM_L23_PCI_RESET, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %373

353:                                              ; preds = %346
  %354 = load i64, i64* @BHND_PCIE_SPROM_SHADOW, align 8
  %355 = load i64, i64* @BHND_PCIE_SRSH_PCIE_MISC_CONFIG, align 8
  %356 = add nsw i64 %354, %355
  store i64 %356, i64* %16, align 8
  %357 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %358 = load i64, i64* %16, align 8
  %359 = call i32 @BHND_PCI_READ_2(%struct.bhnd_pcihb_softc* %357, i64 %358)
  store i32 %359, i32* %17, align 4
  %360 = load i32, i32* %17, align 4
  %361 = load i32, i32* @BHND_PCIE_SRSH_L23READY_EXIT_NOPRST, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %372, label %364

364:                                              ; preds = %353
  %365 = load i32, i32* @BHND_PCIE_SRSH_L23READY_EXIT_NOPRST, align 4
  %366 = load i32, i32* %17, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %17, align 4
  %368 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %369 = load i64, i64* %16, align 8
  %370 = load i32, i32* %17, align 4
  %371 = call i32 @BHND_PCI_WRITE_2(%struct.bhnd_pcihb_softc* %368, i64 %369, i32 %370)
  br label %372

372:                                              ; preds = %364, %353
  br label %373

373:                                              ; preds = %372, %346
  %374 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %375 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @BHND_PCIE_QUIRK_SERDES_NOPLLDOWN, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %402

380:                                              ; preds = %373
  %381 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %382 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = call i32* @device_get_parent(i32 %383)
  store i32* %384, i32** %18, align 8
  %385 = load i32*, i32** %18, align 8
  %386 = load i32, i32* @BHND_DEVCLASS_CC, align 4
  %387 = call i32* @bhnd_bus_find_child(i32* %385, i32 %386, i32 0)
  store i32* %387, i32** %19, align 8
  %388 = load i32*, i32** %19, align 8
  %389 = icmp ne i32* %388, null
  %390 = zext i1 %389 to i32
  %391 = call i32 @KASSERT(i32 %390, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %392 = load i32*, i32** %19, align 8
  %393 = load i32, i32* @CHIPCTRL_4321_PLL_DOWN, align 4
  %394 = load i32, i32* @CHIPCTRL_4321_PLL_DOWN, align 4
  %395 = call i32 @BHND_CHIPC_WRITE_CHIPCTRL(i32* %392, i32 %393, i32 %394)
  %396 = load i64, i64* @BHND_PCIE_SPROM_SHADOW, align 8
  %397 = load i64, i64* @BHND_PCIE_SRSH_BD_OFFSET, align 8
  %398 = add nsw i64 %396, %397
  store i64 %398, i64* %20, align 8
  %399 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %400 = load i64, i64* %20, align 8
  %401 = call i32 @BHND_PCI_WRITE_2(%struct.bhnd_pcihb_softc* %399, i64 %400, i32 0)
  br label %402

402:                                              ; preds = %380, %373
  %403 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %404 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @BHND_PCIE_QUIRK_SERDES_TXDRV_ADJUST, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %453

409:                                              ; preds = %402
  %410 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %411 = load i32, i32* @BHND_PCIE_PHYADDR_SD, align 4
  %412 = load i32, i32* @BHND_PCIE_SD_REGS_TX0, align 4
  %413 = load i32, i32* @BHND_PCIE_SD_TX_DRIVER, align 4
  %414 = call i32 @BHND_PCI_MDIO_READ_EXT(%struct.bhnd_pcihb_softc* %410, i32 %411, i32 %412, i32 %413)
  store i32 %414, i32* %21, align 4
  %415 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %416 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* @BHND_PCIE_QUIRK_SERDES_TXDRV_700MV, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %409
  %422 = load i32, i32* %21, align 4
  %423 = load i32, i32* @PCIE_SD_TX_DRIVER_P2_COEFF, align 4
  %424 = load i32, i32* @BHND_PCIE_APPLE_TX_P2_COEFF_700MV, align 4
  %425 = call i32 @BPCI_REG_SET(i32 %422, i32 %423, i32 %424)
  store i32 %425, i32* %21, align 4
  %426 = load i32, i32* %21, align 4
  %427 = load i32, i32* @PCIE_SD_TX_DRIVER_IDRIVER, align 4
  %428 = load i32, i32* @BHND_PCIE_APPLE_TX_IDRIVER_700MV, align 4
  %429 = call i32 @BPCI_REG_SET(i32 %426, i32 %427, i32 %428)
  store i32 %429, i32* %21, align 4
  br label %430

430:                                              ; preds = %421, %409
  %431 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %432 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @BHND_PCIE_QUIRK_SERDES_TXDRV_MAX, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %446

437:                                              ; preds = %430
  %438 = load i32, i32* %21, align 4
  %439 = load i32, i32* @PCIE_SD_TX_DRIVER_P2_COEFF, align 4
  %440 = load i32, i32* @BHND_PCIE_APPLE_TX_P2_COEFF_MAX, align 4
  %441 = call i32 @BPCI_REG_SET(i32 %438, i32 %439, i32 %440)
  store i32 %441, i32* %21, align 4
  %442 = load i32, i32* %21, align 4
  %443 = load i32, i32* @PCIE_SD_TX_DRIVER_IDRIVER, align 4
  %444 = load i32, i32* @BHND_PCIE_APPLE_TX_IDRIVER_MAX, align 4
  %445 = call i32 @BPCI_REG_SET(i32 %442, i32 %443, i32 %444)
  store i32 %445, i32* %21, align 4
  br label %446

446:                                              ; preds = %437, %430
  %447 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %448 = load i32, i32* @BHND_PCIE_PHYADDR_SD, align 4
  %449 = load i32, i32* @BHND_PCIE_SD_REGS_TX0, align 4
  %450 = load i32, i32* @BHND_PCIE_SD_TX_DRIVER, align 4
  %451 = load i32, i32* %21, align 4
  %452 = call i32 @BHND_PCI_MDIO_WRITE_EXT(%struct.bhnd_pcihb_softc* %447, i32 %448, i32 %449, i32 %450, i32 %451)
  br label %453

453:                                              ; preds = %446, %402
  ret i32 0
}

declare dso_local i32 @BHND_PCI_READ_4(%struct.bhnd_pcihb_softc*, i32) #1

declare dso_local i32 @BHND_PCI_WRITE_4(%struct.bhnd_pcihb_softc*, i32, i32) #1

declare dso_local i32 @BHND_PCI_PROTO_READ_4(%struct.bhnd_pcihb_softc*, i32) #1

declare dso_local i32 @BHND_PCI_PROTO_WRITE_4(%struct.bhnd_pcihb_softc*, i32, i32) #1

declare dso_local i32 @BPCI_REG_SET(i32, i32, i32) #1

declare dso_local i32 @BHND_PCI_MDIO_WRITE(%struct.bhnd_pcihb_softc*, i32, i32, i32) #1

declare dso_local i32 @BHND_PCI_MDIO_READ(%struct.bhnd_pcihb_softc*, i32, i32) #1

declare dso_local i32 @BHND_PCI_READ_2(%struct.bhnd_pcihb_softc*, i64) #1

declare dso_local i32 @BHND_PCI_WRITE_2(%struct.bhnd_pcihb_softc*, i64, i32) #1

declare dso_local i32 @pcie_read_config(i32, i32, i32) #1

declare dso_local i32 @pcie_write_config(i32, i32, i32, i32) #1

declare dso_local i32* @device_get_parent(i32) #1

declare dso_local i32* @bhnd_bus_find_child(i32*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BHND_CHIPC_WRITE_CHIPCTRL(i32*, i32, i32) #1

declare dso_local i32 @BHND_PCI_MDIO_READ_EXT(%struct.bhnd_pcihb_softc*, i32, i32, i32) #1

declare dso_local i32 @BHND_PCI_MDIO_WRITE_EXT(%struct.bhnd_pcihb_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
