; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i64, i32, i64, i32, i32, i32, i32, i32 }

@BGE_MACMODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@BGE_MACMODE_PORTMODE = common dso_local global i32 0, align 4
@BGE_MFW_ON_APE = common dso_local global i32 0, align 4
@BGE_MACMODE_APE_RX_EN = common dso_local global i32 0, align 4
@BGE_MACMODE_APE_TX_EN = common dso_local global i32 0, align 4
@BGE_MAC_MODE = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5906 = common dso_local global i64 0, align 8
@BGE_FLAG_PCIE = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5700 = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM5701 = common dso_local global i64 0, align 8
@BGE_NVRAM_SWARB = common dso_local global i32 0, align 4
@BGE_NVRAMSWARB_SET1 = common dso_local global i32 0, align 4
@BGE_NVRAMSWARB_GNT1 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"NVRAM lock timedout!\0A\00", align 1
@BGE_APE_LOCK_GRC = common dso_local global i32 0, align 4
@BGE_PCI_CACHESZ = common dso_local global i32 0, align 4
@BGE_PCI_CMD = common dso_local global i32 0, align 4
@BGE_PCI_MISC_CTL = common dso_local global i32 0, align 4
@BGE_PCIMISCCTL_INDIRECT_ACCESS = common dso_local global i32 0, align 4
@BGE_PCIMISCCTL_MASK_PCI_INTR = common dso_local global i32 0, align 4
@BGE_HIF_SWAP_OPTIONS = common dso_local global i32 0, align 4
@BGE_PCIMISCCTL_PCISTATE_RW = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5752 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Disabling fastboot\0A\00", align 1
@BGE_FASTBOOT_PC = common dso_local global i32 0, align 4
@BGE_SRAM_FW_MB = common dso_local global i32 0, align 4
@BGE_SRAM_FW_MB_MAGIC = common dso_local global i32 0, align 4
@BGE_MISCCFG_RESET_CORE_CLOCKS = common dso_local global i32 0, align 4
@BGE_32BITTIME_66MHZ = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5785 = common dso_local global i64 0, align 8
@BGE_FLAG_5717_PLUS = common dso_local global i32 0, align 4
@BGE_CHIPID_BCM5750_A0 = common dso_local global i64 0, align 8
@BGE_MISC_CFG = common dso_local global i32 0, align 4
@BGE_VCPU_STATUS = common dso_local global i32 0, align 4
@BGE_VCPU_STATUS_DRV_RESET = common dso_local global i32 0, align 4
@BGE_VCPU_EXT_CTRL = common dso_local global i32 0, align 4
@BGE_VCPU_EXT_CTRL_HALT_CPU = common dso_local global i32 0, align 4
@BGE_FLAG_CPMU_PRESENT = common dso_local global i32 0, align 4
@BGE_MISCCFG_GPHY_PD_OVERRIDE = common dso_local global i32 0, align 4
@PCIER_DEVICE_CTL = common dso_local global i32 0, align 4
@PCIEM_CTL_RELAXED_ORD_ENABLE = common dso_local global i32 0, align 4
@PCIEM_CTL_NOSNOOP_ENABLE = common dso_local global i32 0, align 4
@PCIER_DEVICE_STA = common dso_local global i32 0, align 4
@PCIEM_STA_CORRECTABLE_ERROR = common dso_local global i32 0, align 4
@PCIEM_STA_NON_FATAL_ERROR = common dso_local global i32 0, align 4
@PCIEM_STA_FATAL_ERROR = common dso_local global i32 0, align 4
@PCIEM_STA_UNSUPPORTED_REQ = common dso_local global i32 0, align 4
@BGE_PCISTATE_ROM_ENABLE = common dso_local global i32 0, align 4
@BGE_PCISTATE_ROM_RETRY_ENABLE = common dso_local global i32 0, align 4
@BGE_CHIPID_BCM5704_A0 = common dso_local global i64 0, align 8
@BGE_FLAG_PCIX = common dso_local global i32 0, align 4
@BGE_PCISTATE_RETRY_SAME_DMA = common dso_local global i32 0, align 4
@BGE_PCISTATE_ALLOW_APE_CTLSPC_WR = common dso_local global i32 0, align 4
@BGE_PCISTATE_ALLOW_APE_SHMEM_WR = common dso_local global i32 0, align 4
@BGE_PCISTATE_ALLOW_APE_PSPACE_WR = common dso_local global i32 0, align 4
@BGE_PCI_PCISTATE = common dso_local global i32 0, align 4
@PCIXR_COMMAND = common dso_local global i32 0, align 4
@PCIXM_COMMAND_ERO = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5703 = common dso_local global i64 0, align 8
@PCIXM_COMMAND_MAX_READ = common dso_local global i32 0, align 4
@PCIXM_COMMAND_MAX_READ_2048 = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5704 = common dso_local global i64 0, align 8
@PCIXM_COMMAND_MAX_SPLITS = common dso_local global i32 0, align 4
@BGE_FLAG_MSI = common dso_local global i32 0, align 4
@PCIR_MSI_CTRL = common dso_local global i32 0, align 4
@PCIM_MSICTRL_MSI_ENABLE = common dso_local global i32 0, align 4
@BGE_MSI_MODE = common dso_local global i32 0, align 4
@BGE_MSIMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_MARB_MODE = common dso_local global i32 0, align 4
@BGE_MARBMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_MODE_CTL = common dso_local global i32 0, align 4
@BGE_TIMEOUT = common dso_local global i32 0, align 4
@BGE_VCPU_STATUS_INIT_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"reset timed out\0A\00", align 1
@BGE_FLAG_EADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"firmware handshake timed out, found 0x%08x\0A\00", align 1
@BGE_CHIPID_BCM57765_A0 = common dso_local global i64 0, align 8
@BGE_FLAG_TBI = common dso_local global i32 0, align 4
@BGE_SERDES_CFG = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5720 = common dso_local global i64 0, align 8
@BGE_CPMU_CLCK_ORIDE = common dso_local global i32 0, align 4
@CPMU_CLCK_ORIDE_MAC_ORIDE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*)* @bge_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_reset(%struct.bge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.bge_softc*, i32, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  %14 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @BGE_MACMODE_HALF_DUPLEX, align 4
  %18 = load i32, i32* @BGE_MACMODE_PORTMODE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BGE_MFW_ON_APE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @BGE_MACMODE_APE_RX_EN, align 4
  %28 = load i32, i32* @BGE_MACMODE_APE_TX_EN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %34 = load i32, i32* @BGE_MAC_MODE, align 4
  %35 = call i32 @CSR_READ_4(%struct.bge_softc* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %39 = call i64 @BGE_IS_575X_PLUS(%struct.bge_softc* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %32
  %42 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %43 = call i64 @BGE_IS_5714_FAMILY(%struct.bge_softc* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %47 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BGE_ASICREV_BCM5906, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %53 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BGE_FLAG_PCIE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store void (%struct.bge_softc*, i32, i32)* @bge_writemem_direct, void (%struct.bge_softc*, i32, i32)** %11, align 8
  br label %60

59:                                               ; preds = %51
  store void (%struct.bge_softc*, i32, i32)* @bge_writemem_ind, void (%struct.bge_softc*, i32, i32)** %11, align 8
  br label %60

60:                                               ; preds = %59, %58
  br label %62

61:                                               ; preds = %45, %41, %32
  store void (%struct.bge_softc*, i32, i32)* @bge_writereg_ind, void (%struct.bge_softc*, i32, i32)** %11, align 8
  br label %62

62:                                               ; preds = %61, %60
  %63 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %64 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BGE_ASICREV_BCM5700, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %62
  %69 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %70 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BGE_ASICREV_BCM5701, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %68
  %75 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %76 = load i32, i32* @BGE_NVRAM_SWARB, align 4
  %77 = load i32, i32* @BGE_NVRAMSWARB_SET1, align 4
  %78 = call i32 @CSR_WRITE_4(%struct.bge_softc* %75, i32 %76, i32 %77)
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %92, %74
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 8000
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %84 = load i32, i32* @BGE_NVRAM_SWARB, align 4
  %85 = call i32 @CSR_READ_4(%struct.bge_softc* %83, i32 %84)
  %86 = load i32, i32* @BGE_NVRAMSWARB_GNT1, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %95

90:                                               ; preds = %82
  %91 = call i32 @DELAY(i32 20)
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %79

95:                                               ; preds = %89, %79
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 8000
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i64, i64* @bootverbose, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i32, i8*, ...) @device_printf(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %95
  br label %106

106:                                              ; preds = %105, %68, %62
  %107 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %108 = load i32, i32* @BGE_APE_LOCK_GRC, align 4
  %109 = call i32 @bge_ape_lock(%struct.bge_softc* %107, i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @BGE_PCI_CACHESZ, align 4
  %112 = call i32 @pci_read_config(i32 %110, i32 %111, i32 4)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @BGE_PCI_CMD, align 4
  %115 = call i32 @pci_read_config(i32 %113, i32 %114, i32 4)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @BGE_PCI_MISC_CTL, align 4
  %118 = load i32, i32* @BGE_PCIMISCCTL_INDIRECT_ACCESS, align 4
  %119 = load i32, i32* @BGE_PCIMISCCTL_MASK_PCI_INTR, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @BGE_HIF_SWAP_OPTIONS, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @BGE_PCIMISCCTL_PCISTATE_RW, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @pci_write_config(i32 %116, i32 %117, i32 %124, i32 4)
  %126 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %127 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @BGE_ASICREV_BCM5752, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %106
  %132 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %133 = call i64 @BGE_IS_5755_PLUS(%struct.bge_softc* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %131, %106
  %136 = load i64, i64* @bootverbose, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %4, align 4
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %143 = load i32, i32* @BGE_FASTBOOT_PC, align 4
  %144 = call i32 @CSR_WRITE_4(%struct.bge_softc* %142, i32 %143, i32 0)
  br label %145

145:                                              ; preds = %141, %131
  %146 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %147 = load i32, i32* @BGE_SRAM_FW_MB, align 4
  %148 = load i32, i32* @BGE_SRAM_FW_MB_MAGIC, align 4
  call void @bge_writemem_ind(%struct.bge_softc* %146, i32 %147, i32 %148)
  %149 = load i32, i32* @BGE_MISCCFG_RESET_CORE_CLOCKS, align 4
  %150 = load i32, i32* @BGE_32BITTIME_66MHZ, align 4
  %151 = or i32 %149, %150
  store i32 %151, i32* %9, align 4
  %152 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %153 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @BGE_FLAG_PCIE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %192

158:                                              ; preds = %145
  %159 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %160 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @BGE_ASICREV_BCM5785, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %166 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @BGE_FLAG_5717_PLUS, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %164
  %172 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %173 = call i32 @CSR_READ_4(%struct.bge_softc* %172, i32 32300)
  %174 = icmp eq i32 %173, 96
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %177 = call i32 @CSR_WRITE_4(%struct.bge_softc* %176, i32 32300, i32 32)
  br label %178

178:                                              ; preds = %175, %171
  br label %179

179:                                              ; preds = %178, %164, %158
  %180 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %181 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @BGE_CHIPID_BCM5750_A0, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %187 = load i32, i32* @BGE_MISC_CFG, align 4
  %188 = call i32 @CSR_WRITE_4(%struct.bge_softc* %186, i32 %187, i32 536870912)
  %189 = load i32, i32* %9, align 4
  %190 = or i32 %189, 536870912
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %185, %179
  br label %192

192:                                              ; preds = %191, %145
  %193 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %194 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @BGE_ASICREV_BCM5906, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %192
  %199 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %200 = load i32, i32* @BGE_VCPU_STATUS, align 4
  %201 = call i32 @CSR_READ_4(%struct.bge_softc* %199, i32 %200)
  store i32 %201, i32* %10, align 4
  %202 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %203 = load i32, i32* @BGE_VCPU_STATUS, align 4
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* @BGE_VCPU_STATUS_DRV_RESET, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @CSR_WRITE_4(%struct.bge_softc* %202, i32 %203, i32 %206)
  %208 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %209 = load i32, i32* @BGE_VCPU_EXT_CTRL, align 4
  %210 = call i32 @CSR_READ_4(%struct.bge_softc* %208, i32 %209)
  store i32 %210, i32* %10, align 4
  %211 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %212 = load i32, i32* @BGE_VCPU_EXT_CTRL, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* @BGE_VCPU_EXT_CTRL_HALT_CPU, align 4
  %215 = xor i32 %214, -1
  %216 = and i32 %213, %215
  %217 = call i32 @CSR_WRITE_4(%struct.bge_softc* %211, i32 %212, i32 %216)
  br label %218

218:                                              ; preds = %198, %192
  %219 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %220 = call i64 @BGE_IS_5705_PLUS(%struct.bge_softc* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %218
  %223 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %224 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @BGE_FLAG_CPMU_PRESENT, align 4
  %227 = and i32 %225, %226
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = load i32, i32* @BGE_MISCCFG_GPHY_PD_OVERRIDE, align 4
  %231 = load i32, i32* %9, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %229, %222, %218
  %234 = load void (%struct.bge_softc*, i32, i32)*, void (%struct.bge_softc*, i32, i32)** %11, align 8
  %235 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %236 = load i32, i32* @BGE_MISC_CFG, align 4
  %237 = load i32, i32* %9, align 4
  call void %234(%struct.bge_softc* %235, i32 %236, i32 %237)
  %238 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %239 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @BGE_FLAG_PCIE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %233
  %245 = call i32 @DELAY(i32 100000)
  br label %248

246:                                              ; preds = %233
  %247 = call i32 @DELAY(i32 1000)
  br label %248

248:                                              ; preds = %246, %244
  %249 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %250 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @BGE_FLAG_PCIE, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %310

255:                                              ; preds = %248
  %256 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %257 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @BGE_CHIPID_BCM5750_A0, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %269

261:                                              ; preds = %255
  %262 = call i32 @DELAY(i32 500000)
  %263 = load i32, i32* %4, align 4
  %264 = call i32 @pci_read_config(i32 %263, i32 196, i32 4)
  store i32 %264, i32* %10, align 4
  %265 = load i32, i32* %4, align 4
  %266 = load i32, i32* %10, align 4
  %267 = or i32 %266, 32768
  %268 = call i32 @pci_write_config(i32 %265, i32 196, i32 %267, i32 4)
  br label %269

269:                                              ; preds = %261, %255
  %270 = load i32, i32* %4, align 4
  %271 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %272 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @PCIER_DEVICE_CTL, align 4
  %275 = add nsw i32 %273, %274
  %276 = call i32 @pci_read_config(i32 %270, i32 %275, i32 2)
  store i32 %276, i32* %12, align 4
  %277 = load i32, i32* @PCIEM_CTL_RELAXED_ORD_ENABLE, align 4
  %278 = load i32, i32* @PCIEM_CTL_NOSNOOP_ENABLE, align 4
  %279 = or i32 %277, %278
  %280 = xor i32 %279, -1
  %281 = load i32, i32* %12, align 4
  %282 = and i32 %281, %280
  store i32 %282, i32* %12, align 4
  %283 = load i32, i32* %4, align 4
  %284 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %285 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @PCIER_DEVICE_CTL, align 4
  %288 = add nsw i32 %286, %287
  %289 = load i32, i32* %12, align 4
  %290 = call i32 @pci_write_config(i32 %283, i32 %288, i32 %289, i32 2)
  %291 = load i32, i32* %4, align 4
  %292 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %293 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @pci_set_max_read_req(i32 %291, i32 %294)
  %296 = load i32, i32* %4, align 4
  %297 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %298 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @PCIER_DEVICE_STA, align 4
  %301 = add nsw i32 %299, %300
  %302 = load i32, i32* @PCIEM_STA_CORRECTABLE_ERROR, align 4
  %303 = load i32, i32* @PCIEM_STA_NON_FATAL_ERROR, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* @PCIEM_STA_FATAL_ERROR, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @PCIEM_STA_UNSUPPORTED_REQ, align 4
  %308 = or i32 %306, %307
  %309 = call i32 @pci_write_config(i32 %296, i32 %301, i32 %308, i32 2)
  br label %310

310:                                              ; preds = %269, %248
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* @BGE_PCI_MISC_CTL, align 4
  %313 = load i32, i32* @BGE_PCIMISCCTL_INDIRECT_ACCESS, align 4
  %314 = load i32, i32* @BGE_PCIMISCCTL_MASK_PCI_INTR, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @BGE_HIF_SWAP_OPTIONS, align 4
  %317 = or i32 %315, %316
  %318 = load i32, i32* @BGE_PCIMISCCTL_PCISTATE_RW, align 4
  %319 = or i32 %317, %318
  %320 = call i32 @pci_write_config(i32 %311, i32 %312, i32 %319, i32 4)
  %321 = load i32, i32* @BGE_PCISTATE_ROM_ENABLE, align 4
  %322 = load i32, i32* @BGE_PCISTATE_ROM_RETRY_ENABLE, align 4
  %323 = or i32 %321, %322
  store i32 %323, i32* %10, align 4
  %324 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %325 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @BGE_CHIPID_BCM5704_A0, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %340

329:                                              ; preds = %310
  %330 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %331 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @BGE_FLAG_PCIX, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %329
  %337 = load i32, i32* @BGE_PCISTATE_RETRY_SAME_DMA, align 4
  %338 = load i32, i32* %10, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %10, align 4
  br label %340

340:                                              ; preds = %336, %329, %310
  %341 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %342 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @BGE_MFW_ON_APE, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %340
  %348 = load i32, i32* @BGE_PCISTATE_ALLOW_APE_CTLSPC_WR, align 4
  %349 = load i32, i32* @BGE_PCISTATE_ALLOW_APE_SHMEM_WR, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @BGE_PCISTATE_ALLOW_APE_PSPACE_WR, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* %10, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %10, align 4
  br label %355

355:                                              ; preds = %347, %340
  %356 = load i32, i32* %4, align 4
  %357 = load i32, i32* @BGE_PCI_PCISTATE, align 4
  %358 = load i32, i32* %10, align 4
  %359 = call i32 @pci_write_config(i32 %356, i32 %357, i32 %358, i32 4)
  %360 = load i32, i32* %4, align 4
  %361 = load i32, i32* @BGE_PCI_CACHESZ, align 4
  %362 = load i32, i32* %5, align 4
  %363 = call i32 @pci_write_config(i32 %360, i32 %361, i32 %362, i32 4)
  %364 = load i32, i32* %4, align 4
  %365 = load i32, i32* @BGE_PCI_CMD, align 4
  %366 = load i32, i32* %6, align 4
  %367 = call i32 @pci_write_config(i32 %364, i32 %365, i32 %366, i32 4)
  %368 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %369 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @BGE_FLAG_PCIX, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %425

374:                                              ; preds = %355
  %375 = load i32, i32* %4, align 4
  %376 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %377 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @PCIXR_COMMAND, align 4
  %380 = add nsw i32 %378, %379
  %381 = call i32 @pci_read_config(i32 %375, i32 %380, i32 2)
  store i32 %381, i32* %12, align 4
  %382 = load i32, i32* @PCIXM_COMMAND_ERO, align 4
  %383 = xor i32 %382, -1
  %384 = load i32, i32* %12, align 4
  %385 = and i32 %384, %383
  store i32 %385, i32* %12, align 4
  %386 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %387 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @BGE_ASICREV_BCM5703, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %399

391:                                              ; preds = %374
  %392 = load i32, i32* @PCIXM_COMMAND_MAX_READ, align 4
  %393 = xor i32 %392, -1
  %394 = load i32, i32* %12, align 4
  %395 = and i32 %394, %393
  store i32 %395, i32* %12, align 4
  %396 = load i32, i32* @PCIXM_COMMAND_MAX_READ_2048, align 4
  %397 = load i32, i32* %12, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %12, align 4
  br label %416

399:                                              ; preds = %374
  %400 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %401 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @BGE_ASICREV_BCM5704, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %415

405:                                              ; preds = %399
  %406 = load i32, i32* @PCIXM_COMMAND_MAX_SPLITS, align 4
  %407 = load i32, i32* @PCIXM_COMMAND_MAX_READ, align 4
  %408 = or i32 %406, %407
  %409 = xor i32 %408, -1
  %410 = load i32, i32* %12, align 4
  %411 = and i32 %410, %409
  store i32 %411, i32* %12, align 4
  %412 = load i32, i32* @PCIXM_COMMAND_MAX_READ_2048, align 4
  %413 = load i32, i32* %12, align 4
  %414 = or i32 %413, %412
  store i32 %414, i32* %12, align 4
  br label %415

415:                                              ; preds = %405, %399
  br label %416

416:                                              ; preds = %415, %391
  %417 = load i32, i32* %4, align 4
  %418 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %419 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %418, i32 0, i32 5
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @PCIXR_COMMAND, align 4
  %422 = add nsw i32 %420, %421
  %423 = load i32, i32* %12, align 4
  %424 = call i32 @pci_write_config(i32 %417, i32 %422, i32 %423, i32 2)
  br label %425

425:                                              ; preds = %416, %355
  %426 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %427 = call i64 @BGE_IS_5714_FAMILY(%struct.bge_softc* %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %473

429:                                              ; preds = %425
  %430 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %431 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* @BGE_FLAG_MSI, align 4
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %463

436:                                              ; preds = %429
  %437 = load i32, i32* %4, align 4
  %438 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %439 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %438, i32 0, i32 6
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @PCIR_MSI_CTRL, align 4
  %442 = add nsw i32 %440, %441
  %443 = call i32 @pci_read_config(i32 %437, i32 %442, i32 2)
  store i32 %443, i32* %10, align 4
  %444 = load i32, i32* %4, align 4
  %445 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %446 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %445, i32 0, i32 6
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* @PCIR_MSI_CTRL, align 4
  %449 = add nsw i32 %447, %448
  %450 = load i32, i32* %10, align 4
  %451 = load i32, i32* @PCIM_MSICTRL_MSI_ENABLE, align 4
  %452 = or i32 %450, %451
  %453 = call i32 @pci_write_config(i32 %444, i32 %449, i32 %452, i32 2)
  %454 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %455 = load i32, i32* @BGE_MSI_MODE, align 4
  %456 = call i32 @CSR_READ_4(%struct.bge_softc* %454, i32 %455)
  store i32 %456, i32* %10, align 4
  %457 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %458 = load i32, i32* @BGE_MSI_MODE, align 4
  %459 = load i32, i32* %10, align 4
  %460 = load i32, i32* @BGE_MSIMODE_ENABLE, align 4
  %461 = or i32 %459, %460
  %462 = call i32 @CSR_WRITE_4(%struct.bge_softc* %457, i32 %458, i32 %461)
  br label %463

463:                                              ; preds = %436, %429
  %464 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %465 = load i32, i32* @BGE_MARB_MODE, align 4
  %466 = call i32 @CSR_READ_4(%struct.bge_softc* %464, i32 %465)
  store i32 %466, i32* %10, align 4
  %467 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %468 = load i32, i32* @BGE_MARB_MODE, align 4
  %469 = load i32, i32* @BGE_MARBMODE_ENABLE, align 4
  %470 = load i32, i32* %10, align 4
  %471 = or i32 %469, %470
  %472 = call i32 @CSR_WRITE_4(%struct.bge_softc* %467, i32 %468, i32 %471)
  br label %478

473:                                              ; preds = %425
  %474 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %475 = load i32, i32* @BGE_MARB_MODE, align 4
  %476 = load i32, i32* @BGE_MARBMODE_ENABLE, align 4
  %477 = call i32 @CSR_WRITE_4(%struct.bge_softc* %474, i32 %475, i32 %476)
  br label %478

478:                                              ; preds = %473, %463
  %479 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %480 = load i32, i32* @BGE_MODE_CTL, align 4
  %481 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %482 = call i32 @bge_dma_swap_options(%struct.bge_softc* %481)
  %483 = call i32 @CSR_WRITE_4(%struct.bge_softc* %479, i32 %480, i32 %482)
  %484 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %485 = load i32, i32* @BGE_MAC_MODE, align 4
  %486 = call i32 @CSR_READ_4(%struct.bge_softc* %484, i32 %485)
  store i32 %486, i32* %10, align 4
  %487 = load i32, i32* %10, align 4
  %488 = load i32, i32* %8, align 4
  %489 = xor i32 %488, -1
  %490 = and i32 %487, %489
  %491 = load i32, i32* %7, align 4
  %492 = or i32 %490, %491
  store i32 %492, i32* %10, align 4
  %493 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %494 = load i32, i32* @BGE_MAC_MODE, align 4
  %495 = load i32, i32* %10, align 4
  %496 = call i32 @CSR_WRITE_4(%struct.bge_softc* %493, i32 %494, i32 %495)
  %497 = call i32 @DELAY(i32 40)
  %498 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %499 = load i32, i32* @BGE_APE_LOCK_GRC, align 4
  %500 = call i32 @bge_ape_unlock(%struct.bge_softc* %498, i32 %499)
  %501 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %502 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %501, i32 0, i32 1
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* @BGE_ASICREV_BCM5906, align 8
  %505 = icmp eq i64 %503, %504
  br i1 %505, label %506, label %533

506:                                              ; preds = %478
  store i32 0, i32* %13, align 4
  br label %507

507:                                              ; preds = %522, %506
  %508 = load i32, i32* %13, align 4
  %509 = load i32, i32* @BGE_TIMEOUT, align 4
  %510 = icmp slt i32 %508, %509
  br i1 %510, label %511, label %525

511:                                              ; preds = %507
  %512 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %513 = load i32, i32* @BGE_VCPU_STATUS, align 4
  %514 = call i32 @CSR_READ_4(%struct.bge_softc* %512, i32 %513)
  store i32 %514, i32* %10, align 4
  %515 = load i32, i32* %10, align 4
  %516 = load i32, i32* @BGE_VCPU_STATUS_INIT_DONE, align 4
  %517 = and i32 %515, %516
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %511
  br label %525

520:                                              ; preds = %511
  %521 = call i32 @DELAY(i32 100)
  br label %522

522:                                              ; preds = %520
  %523 = load i32, i32* %13, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %13, align 4
  br label %507

525:                                              ; preds = %519, %507
  %526 = load i32, i32* %13, align 4
  %527 = load i32, i32* @BGE_TIMEOUT, align 4
  %528 = icmp eq i32 %526, %527
  br i1 %528, label %529, label %532

529:                                              ; preds = %525
  %530 = load i32, i32* %4, align 4
  %531 = call i32 (i32, i8*, ...) @device_printf(i32 %530, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %642

532:                                              ; preds = %525
  br label %576

533:                                              ; preds = %478
  store i32 0, i32* %13, align 4
  br label %534

534:                                              ; preds = %549, %533
  %535 = load i32, i32* %13, align 4
  %536 = load i32, i32* @BGE_TIMEOUT, align 4
  %537 = icmp slt i32 %535, %536
  br i1 %537, label %538, label %552

538:                                              ; preds = %534
  %539 = call i32 @DELAY(i32 10)
  %540 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %541 = load i32, i32* @BGE_SRAM_FW_MB, align 4
  %542 = call i32 @bge_readmem_ind(%struct.bge_softc* %540, i32 %541)
  store i32 %542, i32* %10, align 4
  %543 = load i32, i32* %10, align 4
  %544 = load i32, i32* @BGE_SRAM_FW_MB_MAGIC, align 4
  %545 = xor i32 %544, -1
  %546 = icmp eq i32 %543, %545
  br i1 %546, label %547, label %548

547:                                              ; preds = %538
  br label %552

548:                                              ; preds = %538
  br label %549

549:                                              ; preds = %548
  %550 = load i32, i32* %13, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %13, align 4
  br label %534

552:                                              ; preds = %547, %534
  %553 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %554 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 8
  %556 = load i32, i32* @BGE_FLAG_EADDR, align 4
  %557 = and i32 %555, %556
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %567

559:                                              ; preds = %552
  %560 = load i32, i32* %13, align 4
  %561 = load i32, i32* @BGE_TIMEOUT, align 4
  %562 = icmp eq i32 %560, %561
  br i1 %562, label %563, label %567

563:                                              ; preds = %559
  %564 = load i32, i32* %4, align 4
  %565 = load i32, i32* %10, align 4
  %566 = call i32 (i32, i8*, ...) @device_printf(i32 %564, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %565)
  br label %567

567:                                              ; preds = %563, %559, %552
  %568 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %569 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %568, i32 0, i32 3
  %570 = load i64, i64* %569, align 8
  %571 = load i64, i64* @BGE_CHIPID_BCM57765_A0, align 8
  %572 = icmp eq i64 %570, %571
  br i1 %572, label %573, label %575

573:                                              ; preds = %567
  %574 = call i32 @DELAY(i32 10000)
  br label %575

575:                                              ; preds = %573, %567
  br label %576

576:                                              ; preds = %575, %532
  %577 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %578 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %577, i32 0, i32 1
  %579 = load i64, i64* %578, align 8
  %580 = load i64, i64* @BGE_ASICREV_BCM5704, align 8
  %581 = icmp eq i64 %579, %580
  br i1 %581, label %582, label %600

582:                                              ; preds = %576
  %583 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %584 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %583, i32 0, i32 2
  %585 = load i32, i32* %584, align 8
  %586 = load i32, i32* @BGE_FLAG_TBI, align 4
  %587 = and i32 %585, %586
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %600

589:                                              ; preds = %582
  %590 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %591 = load i32, i32* @BGE_SERDES_CFG, align 4
  %592 = call i32 @CSR_READ_4(%struct.bge_softc* %590, i32 %591)
  store i32 %592, i32* %10, align 4
  %593 = load i32, i32* %10, align 4
  %594 = and i32 %593, -4096
  %595 = or i32 %594, 2176
  store i32 %595, i32* %10, align 4
  %596 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %597 = load i32, i32* @BGE_SERDES_CFG, align 4
  %598 = load i32, i32* %10, align 4
  %599 = call i32 @CSR_WRITE_4(%struct.bge_softc* %596, i32 %597, i32 %598)
  br label %600

600:                                              ; preds = %589, %582, %576
  %601 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %602 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %601, i32 0, i32 2
  %603 = load i32, i32* %602, align 8
  %604 = load i32, i32* @BGE_FLAG_PCIE, align 4
  %605 = and i32 %603, %604
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %630

607:                                              ; preds = %600
  %608 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %609 = call i32 @BGE_IS_5717_PLUS(%struct.bge_softc* %608)
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %630, label %611

611:                                              ; preds = %607
  %612 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %613 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %612, i32 0, i32 3
  %614 = load i64, i64* %613, align 8
  %615 = load i64, i64* @BGE_CHIPID_BCM5750_A0, align 8
  %616 = icmp ne i64 %614, %615
  br i1 %616, label %617, label %630

617:                                              ; preds = %611
  %618 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %619 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %618, i32 0, i32 1
  %620 = load i64, i64* %619, align 8
  %621 = load i64, i64* @BGE_ASICREV_BCM5785, align 8
  %622 = icmp ne i64 %620, %621
  br i1 %622, label %623, label %630

623:                                              ; preds = %617
  %624 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %625 = call i32 @CSR_READ_4(%struct.bge_softc* %624, i32 31744)
  store i32 %625, i32* %10, align 4
  %626 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %627 = load i32, i32* %10, align 4
  %628 = or i32 %627, 33554432
  %629 = call i32 @CSR_WRITE_4(%struct.bge_softc* %626, i32 31744, i32 %628)
  br label %630

630:                                              ; preds = %623, %617, %611, %607, %600
  %631 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %632 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %631, i32 0, i32 1
  %633 = load i64, i64* %632, align 8
  %634 = load i64, i64* @BGE_ASICREV_BCM5720, align 8
  %635 = icmp eq i64 %633, %634
  br i1 %635, label %636, label %641

636:                                              ; preds = %630
  %637 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %638 = load i32, i32* @BGE_CPMU_CLCK_ORIDE, align 4
  %639 = load i32, i32* @CPMU_CLCK_ORIDE_MAC_ORIDE_EN, align 4
  %640 = call i32 @BGE_CLRBIT(%struct.bge_softc* %637, i32 %638, i32 %639)
  br label %641

641:                                              ; preds = %636, %630
  store i32 0, i32* %2, align 4
  br label %642

642:                                              ; preds = %641, %529
  %643 = load i32, i32* %2, align 4
  ret i32 %643
}

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i64 @BGE_IS_575X_PLUS(%struct.bge_softc*) #1

declare dso_local i64 @BGE_IS_5714_FAMILY(%struct.bge_softc*) #1

declare dso_local void @bge_writemem_direct(%struct.bge_softc*, i32, i32) #1

declare dso_local void @bge_writemem_ind(%struct.bge_softc*, i32, i32) #1

declare dso_local void @bge_writereg_ind(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bge_ape_lock(%struct.bge_softc*, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @BGE_IS_5755_PLUS(%struct.bge_softc*) #1

declare dso_local i64 @BGE_IS_5705_PLUS(%struct.bge_softc*) #1

declare dso_local i32 @pci_set_max_read_req(i32, i32) #1

declare dso_local i32 @bge_dma_swap_options(%struct.bge_softc*) #1

declare dso_local i32 @bge_ape_unlock(%struct.bge_softc*, i32) #1

declare dso_local i32 @bge_readmem_ind(%struct.bge_softc*, i32) #1

declare dso_local i32 @BGE_IS_5717_PLUS(%struct.bge_softc*) #1

declare dso_local i32 @BGE_CLRBIT(%struct.bge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
