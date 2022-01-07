; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, %struct.ifnet*, i32, i32*, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.ale_softc* }
%struct.TYPE_3__ = type { i64 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@ale_int_task = common dso_local global i32 0, align 4
@ale_res_spec_mem = common dso_local global i32 0, align 4
@ale_irq_spec_legacy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot allocate memory resources.\0A\00", align 1
@ALE_PHY_ADDR = common dso_local global i32 0, align 4
@ALE_FLAG_FASTETHER = common dso_local global i32 0, align 4
@ALE_PHY_STATUS = common dso_local global i32 0, align 4
@PHY_STATUS_100M = common dso_local global i32 0, align 4
@ALE_FLAG_JUMBO = common dso_local global i32 0, align 4
@ALE_FLAG_TXCSUM_BUG = common dso_local global i32 0, align 4
@ALE_FLAG_RXCSUM_BUG = common dso_local global i32 0, align 4
@ALE_FLAG_TXCMB_BUG = common dso_local global i32 0, align 4
@ALE_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_CHIP_REV_SHIFT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"PCI device revision : 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Chip id/revision : 0x%04x\0A\00", align 1
@ALE_SRAM_TX_FIFO_LEN = common dso_local global i32 0, align 4
@ALE_SRAM_RX_FIFO_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"chip revision : 0x%04x, %u Tx FIFO %u Rx FIFO -- not initialized?\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"%u Tx FIFO, %u Rx FIFO\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"MSIX count : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"MSI count : %d\0A\00", align 1
@msix_disable = common dso_local global i64 0, align 8
@msi_disable = common dso_local global i64 0, align 8
@ALE_MSIX_MESSAGES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Using %d MSIX messages.\0A\00", align 1
@ALE_FLAG_MSIX = common dso_local global i32 0, align 4
@ale_irq_spec_msix = common dso_local global i32 0, align 4
@ALE_MSI_MESSAGES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Using %d MSI messages.\0A\00", align 1
@ALE_FLAG_MSI = common dso_local global i32 0, align 4
@ale_irq_spec_msi = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"cannot allocate IRQ resources.\0A\00", align 1
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@ALE_FLAG_PCIE = common dso_local global i32 0, align 4
@DMA_CFG_RD_BURST_SHIFT = common dso_local global i32 0, align 4
@DMA_CFG_WR_BURST_SHIFT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Read request size : %d bytes.\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"TLP payload size : %d bytes.\0A\00", align 1
@DMA_CFG_RD_BURST_128 = common dso_local global i32 0, align 4
@DMA_CFG_WR_BURST_128 = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"cannot allocate ifnet structure.\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ale_ioctl = common dso_local global i32 0, align 4
@ale_start = common dso_local global i32 0, align 4
@ale_init = common dso_local global i32 0, align 4
@ALE_TX_RING_CNT = common dso_local global i64 0, align 8
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@ALE_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@ALE_FLAG_PMCAP = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@ale_mediachange = common dso_local global i32 0, align 4
@ale_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"ale_taskq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"could not create taskqueue.\0A\00", align 1
@PI_NET = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ale_intr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [37 x i8] c"could not set up interrupt handler.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ale_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ale_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ale_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.ale_softc* @device_get_softc(i32 %13)
  store %struct.ale_softc* %14, %struct.ale_softc** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %18, i32 0, i32 17
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @device_get_nameunit(i32 %20)
  %22 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %23 = load i32, i32* @MTX_DEF, align 4
  %24 = call i32 @mtx_init(i32* %19, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %25, i32 0, i32 18
  %27 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %27, i32 0, i32 17
  %29 = call i32 @callout_init_mtx(i32* %26, i32* %28, i32 0)
  %30 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %30, i32 0, i32 16
  %32 = load i32, i32* @ale_int_task, align 4
  %33 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %34 = call i32 @TASK_INIT(i32* %31, i32 0, i32 %32, %struct.ale_softc* %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @pci_enable_busmaster(i32 %35)
  %37 = load i32, i32* @ale_res_spec_mem, align 4
  %38 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %38, i32 0, i32 15
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @ale_irq_spec_legacy, align 4
  %41 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %41, i32 0, i32 13
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %2, align 4
  %44 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %47, i32 0, i32 14
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bus_alloc_resources(i32 %43, i32 %46, i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %1
  %54 = load i32, i32* %2, align 4
  %55 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %557

56:                                               ; preds = %1
  %57 = load i32, i32* @ALE_PHY_ADDR, align 4
  %58 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %61 = call i32 @ale_phy_reset(%struct.ale_softc* %60)
  %62 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %63 = call i32 @ale_reset(%struct.ale_softc* %62)
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @pci_get_revid(i32 %64)
  %66 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 240
  br i1 %71, label %72, label %78

72:                                               ; preds = %56
  %73 = load i32, i32* @ALE_FLAG_FASTETHER, align 4
  %74 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %98

78:                                               ; preds = %56
  %79 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %80 = load i32, i32* @ALE_PHY_STATUS, align 4
  %81 = call i32 @CSR_READ_4(%struct.ale_softc* %79, i32 %80)
  %82 = load i32, i32* @PHY_STATUS_100M, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i32, i32* @ALE_FLAG_JUMBO, align 4
  %87 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %97

91:                                               ; preds = %78
  %92 = load i32, i32* @ALE_FLAG_FASTETHER, align 4
  %93 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %85
  br label %98

98:                                               ; preds = %97, %72
  %99 = load i32, i32* @ALE_FLAG_TXCSUM_BUG, align 4
  %100 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %101 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @ALE_FLAG_RXCSUM_BUG, align 4
  %105 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %106 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @ALE_FLAG_TXCMB_BUG, align 4
  %110 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %115 = load i32, i32* @ALE_MASTER_CFG, align 4
  %116 = call i32 @CSR_READ_4(%struct.ale_softc* %114, i32 %115)
  %117 = load i32, i32* @MASTER_CHIP_REV_SHIFT, align 4
  %118 = ashr i32 %116, %117
  %119 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %120 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i64, i64* @bootverbose, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %98
  %124 = load i32, i32* %2, align 4
  %125 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %126 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %2, align 4
  %130 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %131 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %123, %98
  %135 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %136 = load i32, i32* @ALE_SRAM_TX_FIFO_LEN, align 4
  %137 = call i32 @CSR_READ_4(%struct.ale_softc* %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %139 = load i32, i32* @ALE_SRAM_RX_FIFO_LEN, align 4
  %140 = call i32 @CSR_READ_4(%struct.ale_softc* %138, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %142 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 65535
  br i1 %144, label %151, label %145

145:                                              ; preds = %134
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = icmp eq i32 %149, 268435455
  br i1 %150, label %151, label %160

151:                                              ; preds = %148, %145, %134
  %152 = load i32, i32* %2, align 4
  %153 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i32 (i32, i8*, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* @ENXIO, align 4
  store i32 %159, i32* %6, align 4
  br label %557

160:                                              ; preds = %148
  %161 = load i32, i32* %2, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 (i32, i8*, ...) @device_printf(i32 %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load i32, i32* %2, align 4
  %166 = call i32 @pci_msix_count(i32 %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %2, align 4
  %168 = call i32 @pci_msi_count(i32 %167)
  store i32 %168, i32* %8, align 4
  %169 = load i64, i64* @bootverbose, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %160
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 (i32, i8*, ...) @device_printf(i32 %172, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %2, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 (i32, i8*, ...) @device_printf(i32 %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %171, %160
  %179 = load i64, i64* @msix_disable, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i64, i64* @msi_disable, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %254

184:                                              ; preds = %181, %178
  %185 = load i64, i64* @msix_disable, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %215

187:                                              ; preds = %184
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @ALE_MSIX_MESSAGES, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %215

191:                                              ; preds = %187
  %192 = load i32, i32* %2, align 4
  %193 = call i64 @pci_alloc_msix(i32 %192, i32* %9)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %215

195:                                              ; preds = %191
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @ALE_MSIX_MESSAGES, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %195
  %200 = load i32, i32* %2, align 4
  %201 = load i32, i32* %9, align 4
  %202 = call i32 (i32, i8*, ...) @device_printf(i32 %200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* @ALE_FLAG_MSIX, align 4
  %204 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %205 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* @ale_irq_spec_msix, align 4
  %209 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %210 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %209, i32 0, i32 13
  store i32 %208, i32* %210, align 8
  br label %214

211:                                              ; preds = %195
  %212 = load i32, i32* %2, align 4
  %213 = call i32 @pci_release_msi(i32 %212)
  br label %214

214:                                              ; preds = %211, %199
  br label %215

215:                                              ; preds = %214, %191, %187, %184
  %216 = load i64, i64* @msi_disable, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %253

218:                                              ; preds = %215
  %219 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %220 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @ALE_FLAG_MSIX, align 4
  %223 = and i32 %221, %222
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %253

225:                                              ; preds = %218
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @ALE_MSI_MESSAGES, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %253

229:                                              ; preds = %225
  %230 = load i32, i32* %2, align 4
  %231 = call i64 @pci_alloc_msi(i32 %230, i32* %8)
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %253

233:                                              ; preds = %229
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @ALE_MSI_MESSAGES, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %233
  %238 = load i32, i32* %2, align 4
  %239 = load i32, i32* %8, align 4
  %240 = call i32 (i32, i8*, ...) @device_printf(i32 %238, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* @ALE_FLAG_MSI, align 4
  %242 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %243 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  %246 = load i32, i32* @ale_irq_spec_msi, align 4
  %247 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %248 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %247, i32 0, i32 13
  store i32 %246, i32* %248, align 8
  br label %252

249:                                              ; preds = %233
  %250 = load i32, i32* %2, align 4
  %251 = call i32 @pci_release_msi(i32 %250)
  br label %252

252:                                              ; preds = %249, %237
  br label %253

253:                                              ; preds = %252, %229, %225, %218, %215
  br label %254

254:                                              ; preds = %253, %181
  %255 = load i32, i32* %2, align 4
  %256 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %257 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %260 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %259, i32 0, i32 7
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @bus_alloc_resources(i32 %255, i32 %258, i32* %261)
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %254
  %266 = load i32, i32* %2, align 4
  %267 = call i32 (i32, i8*, ...) @device_printf(i32 %266, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %557

268:                                              ; preds = %254
  %269 = load i32, i32* %2, align 4
  %270 = load i32, i32* @PCIY_EXPRESS, align 4
  %271 = call i64 @pci_find_cap(i32 %269, i32 %270, i32* %7)
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %313

273:                                              ; preds = %268
  %274 = load i32, i32* @ALE_FLAG_PCIE, align 4
  %275 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %276 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 4
  %279 = load i32, i32* %2, align 4
  %280 = load i32, i32* %7, align 4
  %281 = add nsw i32 %280, 8
  %282 = call i32 @pci_read_config(i32 %279, i32 %281, i32 2)
  store i32 %282, i32* %5, align 4
  %283 = load i32, i32* %5, align 4
  %284 = ashr i32 %283, 12
  %285 = and i32 %284, 7
  %286 = load i32, i32* @DMA_CFG_RD_BURST_SHIFT, align 4
  %287 = shl i32 %285, %286
  %288 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %289 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %288, i32 0, i32 3
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* %5, align 4
  %291 = ashr i32 %290, 5
  %292 = and i32 %291, 7
  %293 = load i32, i32* @DMA_CFG_WR_BURST_SHIFT, align 4
  %294 = shl i32 %292, %293
  %295 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %296 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %295, i32 0, i32 4
  store i32 %294, i32* %296, align 8
  %297 = load i64, i64* @bootverbose, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %312

299:                                              ; preds = %273
  %300 = load i32, i32* %2, align 4
  %301 = load i32, i32* %5, align 4
  %302 = ashr i32 %301, 12
  %303 = and i32 %302, 7
  %304 = shl i32 128, %303
  %305 = call i32 (i32, i8*, ...) @device_printf(i32 %300, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %304)
  %306 = load i32, i32* %2, align 4
  %307 = load i32, i32* %5, align 4
  %308 = ashr i32 %307, 5
  %309 = and i32 %308, 7
  %310 = shl i32 128, %309
  %311 = call i32 (i32, i8*, ...) @device_printf(i32 %306, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %310)
  br label %312

312:                                              ; preds = %299, %273
  br label %320

313:                                              ; preds = %268
  %314 = load i32, i32* @DMA_CFG_RD_BURST_128, align 4
  %315 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %316 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %315, i32 0, i32 3
  store i32 %314, i32* %316, align 4
  %317 = load i32, i32* @DMA_CFG_WR_BURST_128, align 4
  %318 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %319 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %318, i32 0, i32 4
  store i32 %317, i32* %319, align 8
  br label %320

320:                                              ; preds = %313, %312
  %321 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %322 = call i32 @ale_sysctl_node(%struct.ale_softc* %321)
  %323 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %324 = call i32 @ale_dma_alloc(%struct.ale_softc* %323)
  store i32 %324, i32* %6, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %320
  br label %557

327:                                              ; preds = %320
  %328 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %329 = call i32 @ale_get_macaddr(%struct.ale_softc* %328)
  %330 = load i32, i32* @IFT_ETHER, align 4
  %331 = call %struct.ifnet* @if_alloc(i32 %330)
  %332 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %333 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %332, i32 0, i32 12
  store %struct.ifnet* %331, %struct.ifnet** %333, align 8
  store %struct.ifnet* %331, %struct.ifnet** %4, align 8
  %334 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %335 = icmp eq %struct.ifnet* %334, null
  br i1 %335, label %336, label %340

336:                                              ; preds = %327
  %337 = load i32, i32* %2, align 4
  %338 = call i32 (i32, i8*, ...) @device_printf(i32 %337, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %339 = load i32, i32* @ENXIO, align 4
  store i32 %339, i32* %6, align 4
  br label %557

340:                                              ; preds = %327
  %341 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %342 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %343 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %342, i32 0, i32 9
  store %struct.ale_softc* %341, %struct.ale_softc** %343, align 8
  %344 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %345 = load i32, i32* %2, align 4
  %346 = call i32 @device_get_name(i32 %345)
  %347 = load i32, i32* %2, align 4
  %348 = call i32 @device_get_unit(i32 %347)
  %349 = call i32 @if_initname(%struct.ifnet* %344, i32 %346, i32 %348)
  %350 = load i32, i32* @IFF_BROADCAST, align 4
  %351 = load i32, i32* @IFF_SIMPLEX, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* @IFF_MULTICAST, align 4
  %354 = or i32 %352, %353
  %355 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %356 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %355, i32 0, i32 0
  store i32 %354, i32* %356, align 8
  %357 = load i32, i32* @ale_ioctl, align 4
  %358 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %359 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %358, i32 0, i32 8
  store i32 %357, i32* %359, align 8
  %360 = load i32, i32* @ale_start, align 4
  %361 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %362 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %361, i32 0, i32 7
  store i32 %360, i32* %362, align 4
  %363 = load i32, i32* @ale_init, align 4
  %364 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %365 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %364, i32 0, i32 6
  store i32 %363, i32* %365, align 8
  %366 = load i64, i64* @ALE_TX_RING_CNT, align 8
  %367 = sub nsw i64 %366, 1
  %368 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %369 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %368, i32 0, i32 5
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 0
  store i64 %367, i64* %370, align 8
  %371 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %372 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %371, i32 0, i32 5
  %373 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %374 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %373, i32 0, i32 5
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %372, i64 %376)
  %378 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %379 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %378, i32 0, i32 5
  %380 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %379)
  %381 = load i32, i32* @IFCAP_RXCSUM, align 4
  %382 = load i32, i32* @IFCAP_TXCSUM, align 4
  %383 = or i32 %381, %382
  %384 = load i32, i32* @IFCAP_TSO4, align 4
  %385 = or i32 %383, %384
  %386 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %387 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* @ALE_CSUM_FEATURES, align 4
  %389 = load i32, i32* @CSUM_TSO, align 4
  %390 = or i32 %388, %389
  %391 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %392 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %391, i32 0, i32 2
  store i32 %390, i32* %392, align 8
  %393 = load i32, i32* %2, align 4
  %394 = load i32, i32* @PCIY_PMG, align 4
  %395 = call i64 @pci_find_cap(i32 %393, i32 %394, i32* %10)
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %410

397:                                              ; preds = %340
  %398 = load i32, i32* @ALE_FLAG_PMCAP, align 4
  %399 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %400 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 4
  %403 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %404 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %405 = or i32 %403, %404
  %406 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %407 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = or i32 %408, %405
  store i32 %409, i32* %407, align 4
  br label %410

410:                                              ; preds = %397, %340
  %411 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %412 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %415 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %414, i32 0, i32 3
  store i32 %413, i32* %415, align 4
  %416 = load i32, i32* %2, align 4
  %417 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %418 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %417, i32 0, i32 11
  %419 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %420 = load i32, i32* @ale_mediachange, align 4
  %421 = load i32, i32* @ale_mediastatus, align 4
  %422 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %423 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %424 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %423, i32 0, i32 10
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* @MII_OFFSET_ANY, align 4
  %427 = load i32, i32* @MIIF_DOPAUSE, align 4
  %428 = call i32 @mii_attach(i32 %416, i32* %418, %struct.ifnet* %419, i32 %420, i32 %421, i32 %422, i32 %425, i32 %426, i32 %427)
  store i32 %428, i32* %6, align 4
  %429 = load i32, i32* %6, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %434

431:                                              ; preds = %410
  %432 = load i32, i32* %2, align 4
  %433 = call i32 (i32, i8*, ...) @device_printf(i32 %432, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %557

434:                                              ; preds = %410
  %435 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %436 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %437 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %436, i32 0, i32 9
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @ether_ifattach(%struct.ifnet* %435, i32 %438)
  %440 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %441 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %442 = or i32 %440, %441
  %443 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %444 = or i32 %442, %443
  %445 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %446 = or i32 %444, %445
  %447 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %448 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = or i32 %449, %446
  store i32 %450, i32* %448, align 4
  %451 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %452 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %455 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %454, i32 0, i32 3
  store i32 %453, i32* %455, align 4
  %456 = load i32, i32* @IFCAP_RXCSUM, align 4
  %457 = xor i32 %456, -1
  %458 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %459 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = and i32 %460, %457
  store i32 %461, i32* %459, align 4
  %462 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %463 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %462, i32 0, i32 4
  store i32 4, i32* %463, align 8
  %464 = load i32, i32* @M_WAITOK, align 4
  %465 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %466 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %467 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %466, i32 0, i32 5
  %468 = call i32* @taskqueue_create_fast(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %464, i32 %465, i32** %467)
  %469 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %470 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %469, i32 0, i32 5
  store i32* %468, i32** %470, align 8
  %471 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %472 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %471, i32 0, i32 5
  %473 = load i32*, i32** %472, align 8
  %474 = icmp eq i32* %473, null
  br i1 %474, label %475, label %481

475:                                              ; preds = %434
  %476 = load i32, i32* %2, align 4
  %477 = call i32 (i32, i8*, ...) @device_printf(i32 %476, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %478 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %479 = call i32 @ether_ifdetach(%struct.ifnet* %478)
  %480 = load i32, i32* @ENXIO, align 4
  store i32 %480, i32* %6, align 4
  br label %557

481:                                              ; preds = %434
  %482 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %483 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %482, i32 0, i32 5
  %484 = load i32, i32* @PI_NET, align 4
  %485 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %486 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %485, i32 0, i32 8
  %487 = load i32, i32* %486, align 8
  %488 = call i32 @device_get_nameunit(i32 %487)
  %489 = call i32 @taskqueue_start_threads(i32** %483, i32 1, i32 %484, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %488)
  %490 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %491 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @ALE_FLAG_MSIX, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %498

496:                                              ; preds = %481
  %497 = load i32, i32* @ALE_MSIX_MESSAGES, align 4
  store i32 %497, i32* %8, align 4
  br label %509

498:                                              ; preds = %481
  %499 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %500 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* @ALE_FLAG_MSI, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %498
  %506 = load i32, i32* @ALE_MSI_MESSAGES, align 4
  store i32 %506, i32* %8, align 4
  br label %508

507:                                              ; preds = %498
  store i32 1, i32* %8, align 4
  br label %508

508:                                              ; preds = %507, %505
  br label %509

509:                                              ; preds = %508, %496
  store i32 0, i32* %7, align 4
  br label %510

510:                                              ; preds = %539, %509
  %511 = load i32, i32* %7, align 4
  %512 = load i32, i32* %8, align 4
  %513 = icmp slt i32 %511, %512
  br i1 %513, label %514, label %542

514:                                              ; preds = %510
  %515 = load i32, i32* %2, align 4
  %516 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %517 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %516, i32 0, i32 7
  %518 = load i32*, i32** %517, align 8
  %519 = load i32, i32* %7, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %518, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = load i32, i32* @INTR_TYPE_NET, align 4
  %524 = load i32, i32* @INTR_MPSAFE, align 4
  %525 = or i32 %523, %524
  %526 = load i32, i32* @ale_intr, align 4
  %527 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %528 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %529 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %528, i32 0, i32 6
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %7, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = call i32 @bus_setup_intr(i32 %515, i32 %522, i32 %525, i32 %526, i32* null, %struct.ale_softc* %527, i32* %533)
  store i32 %534, i32* %6, align 4
  %535 = load i32, i32* %6, align 4
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %514
  br label %542

538:                                              ; preds = %514
  br label %539

539:                                              ; preds = %538
  %540 = load i32, i32* %7, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %7, align 4
  br label %510

542:                                              ; preds = %537, %510
  %543 = load i32, i32* %6, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %556

545:                                              ; preds = %542
  %546 = load i32, i32* %2, align 4
  %547 = call i32 (i32, i8*, ...) @device_printf(i32 %546, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  %548 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %549 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %548, i32 0, i32 5
  %550 = load i32*, i32** %549, align 8
  %551 = call i32 @taskqueue_free(i32* %550)
  %552 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %553 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %552, i32 0, i32 5
  store i32* null, i32** %553, align 8
  %554 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %555 = call i32 @ether_ifdetach(%struct.ifnet* %554)
  br label %557

556:                                              ; preds = %542
  br label %557

557:                                              ; preds = %556, %545, %475, %431, %336, %326, %265, %151, %53
  %558 = load i32, i32* %6, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %563

560:                                              ; preds = %557
  %561 = load i32, i32* %2, align 4
  %562 = call i32 @ale_detach(i32 %561)
  br label %563

563:                                              ; preds = %560, %557
  %564 = load i32, i32* %6, align 4
  ret i32 %564
}

declare dso_local %struct.ale_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ale_softc*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ale_phy_reset(%struct.ale_softc*) #1

declare dso_local i32 @ale_reset(%struct.ale_softc*) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ale_sysctl_node(%struct.ale_softc*) #1

declare dso_local i32 @ale_dma_alloc(%struct.ale_softc*) #1

declare dso_local i32 @ale_get_macaddr(%struct.ale_softc*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32* @taskqueue_create_fast(i8*, i32, i32, i32**) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.ale_softc*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @ale_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
