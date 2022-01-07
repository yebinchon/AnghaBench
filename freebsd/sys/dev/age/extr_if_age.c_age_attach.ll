; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, %struct.ifnet*, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.age_softc* }
%struct.TYPE_3__ = type { i64 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@age_int_task = common dso_local global i32 0, align 4
@age_link_task = common dso_local global i32 0, align 4
@age_res_spec_mem = common dso_local global i32 0, align 4
@age_irq_spec_legacy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot allocate memory resources.\0A\00", align 1
@AGE_PHY_ADDR = common dso_local global i32 0, align 4
@AGE_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_CHIP_REV_SHIFT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"PCI device revision : 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Chip id/revision : 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"invalid chip revision : 0x%04x -- not initialized?\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"%d Tx FIFO, %d Rx FIFO\0A\00", align 1
@AGE_SRAM_TX_FIFO_LEN = common dso_local global i32 0, align 4
@AGE_SRAM_RX_FIFO_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"MSIX count : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"MSI count : %d\0A\00", align 1
@msix_disable = common dso_local global i64 0, align 8
@msi_disable = common dso_local global i64 0, align 8
@AGE_MSIX_MESSAGES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Using %d MSIX messages.\0A\00", align 1
@AGE_FLAG_MSIX = common dso_local global i32 0, align 4
@age_irq_spec_msix = common dso_local global i32 0, align 4
@AGE_MSI_MESSAGES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Using %d MSI messages.\0A\00", align 1
@AGE_FLAG_MSI = common dso_local global i32 0, align 4
@age_irq_spec_msi = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"cannot allocate IRQ resources.\0A\00", align 1
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@AGE_FLAG_PCIE = common dso_local global i32 0, align 4
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
@age_ioctl = common dso_local global i32 0, align 4
@age_start = common dso_local global i32 0, align 4
@age_init = common dso_local global i32 0, align 4
@AGE_TX_RING_CNT = common dso_local global i64 0, align 8
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@AGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@AGE_FLAG_PMCAP = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@age_mediachange = common dso_local global i32 0, align 4
@age_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"age_taskq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"could not create taskqueue.\0A\00", align 1
@PI_NET = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@age_intr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [37 x i8] c"could not set up interrupt handler.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @age_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @age_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.age_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.age_softc* @device_get_softc(i32 %11)
  store %struct.age_softc* %12, %struct.age_softc** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %15 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %17 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %16, i32 0, i32 18
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @device_get_nameunit(i32 %18)
  %20 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %17, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %24 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %23, i32 0, i32 19
  %25 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %26 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %25, i32 0, i32 18
  %27 = call i32 @callout_init_mtx(i32* %24, i32* %26, i32 0)
  %28 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %29 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %28, i32 0, i32 17
  %30 = load i32, i32* @age_int_task, align 4
  %31 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %32 = call i32 @TASK_INIT(i32* %29, i32 0, i32 %30, %struct.age_softc* %31)
  %33 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %34 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %33, i32 0, i32 16
  %35 = load i32, i32* @age_link_task, align 4
  %36 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %37 = call i32 @TASK_INIT(i32* %34, i32 0, i32 %35, %struct.age_softc* %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @pci_enable_busmaster(i32 %38)
  %40 = load i32, i32* @age_res_spec_mem, align 4
  %41 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %42 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %41, i32 0, i32 15
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @age_irq_spec_legacy, align 4
  %44 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %45 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %2, align 4
  %47 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %48 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %47, i32 0, i32 15
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %51 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %50, i32 0, i32 14
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @bus_alloc_resources(i32 %46, i32 %49, i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %1
  %57 = load i32, i32* %2, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %495

59:                                               ; preds = %1
  %60 = load i32, i32* @AGE_PHY_ADDR, align 4
  %61 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %62 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  %63 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %64 = call i32 @age_phy_reset(%struct.age_softc* %63)
  %65 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %66 = call i32 @age_reset(%struct.age_softc* %65)
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @pci_get_revid(i32 %67)
  %69 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %70 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %69, i32 0, i32 13
  store i32 %68, i32* %70, align 4
  %71 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %72 = load i32, i32* @AGE_MASTER_CFG, align 4
  %73 = call i32 @CSR_READ_4(%struct.age_softc* %71, i32 %72)
  %74 = load i32, i32* @MASTER_CHIP_REV_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %77 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* @bootverbose, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %59
  %81 = load i32, i32* %2, align 4
  %82 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %83 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %88 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %80, %59
  %92 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %93 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 65535
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %2, align 4
  %98 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %99 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %6, align 4
  br label %495

103:                                              ; preds = %91
  %104 = load i32, i32* %2, align 4
  %105 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %106 = load i32, i32* @AGE_SRAM_TX_FIFO_LEN, align 4
  %107 = call i32 @CSR_READ_4(%struct.age_softc* %105, i32 %106)
  %108 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %109 = load i32, i32* @AGE_SRAM_RX_FIFO_LEN, align 4
  %110 = call i32 @CSR_READ_4(%struct.age_softc* %108, i32 %109)
  %111 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @pci_msix_count(i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @pci_msi_count(i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i64, i64* @bootverbose, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %103
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 (i32, i8*, ...) @device_printf(i32 %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %118, %103
  %126 = load i64, i64* @msix_disable, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* @msi_disable, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %201

131:                                              ; preds = %128, %125
  %132 = load i64, i64* @msix_disable, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %162

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @AGE_MSIX_MESSAGES, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %162

138:                                              ; preds = %134
  %139 = load i32, i32* %2, align 4
  %140 = call i64 @pci_alloc_msix(i32 %139, i32* %9)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %138
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @AGE_MSIX_MESSAGES, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (i32, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @AGE_FLAG_MSIX, align 4
  %151 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %152 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @age_irq_spec_msix, align 4
  %156 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %157 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %156, i32 0, i32 12
  store i32 %155, i32* %157, align 8
  br label %161

158:                                              ; preds = %142
  %159 = load i32, i32* %2, align 4
  %160 = call i32 @pci_release_msi(i32 %159)
  br label %161

161:                                              ; preds = %158, %146
  br label %162

162:                                              ; preds = %161, %138, %134, %131
  %163 = load i64, i64* @msi_disable, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %200

165:                                              ; preds = %162
  %166 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %167 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AGE_FLAG_MSIX, align 4
  %170 = and i32 %168, %169
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %200

172:                                              ; preds = %165
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @AGE_MSI_MESSAGES, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %200

176:                                              ; preds = %172
  %177 = load i32, i32* %2, align 4
  %178 = call i64 @pci_alloc_msi(i32 %177, i32* %8)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %200

180:                                              ; preds = %176
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @AGE_MSI_MESSAGES, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %180
  %185 = load i32, i32* %2, align 4
  %186 = load i32, i32* %8, align 4
  %187 = call i32 (i32, i8*, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* @AGE_FLAG_MSI, align 4
  %189 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %190 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* @age_irq_spec_msi, align 4
  %194 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %195 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %194, i32 0, i32 12
  store i32 %193, i32* %195, align 8
  br label %199

196:                                              ; preds = %180
  %197 = load i32, i32* %2, align 4
  %198 = call i32 @pci_release_msi(i32 %197)
  br label %199

199:                                              ; preds = %196, %184
  br label %200

200:                                              ; preds = %199, %176, %172, %165, %162
  br label %201

201:                                              ; preds = %200, %128
  %202 = load i32, i32* %2, align 4
  %203 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %204 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %203, i32 0, i32 12
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %207 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %206, i32 0, i32 6
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @bus_alloc_resources(i32 %202, i32 %205, i32* %208)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %201
  %213 = load i32, i32* %2, align 4
  %214 = call i32 (i32, i8*, ...) @device_printf(i32 %213, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %495

215:                                              ; preds = %201
  %216 = load i32, i32* %2, align 4
  %217 = load i32, i32* @PCIY_EXPRESS, align 4
  %218 = call i64 @pci_find_cap(i32 %216, i32 %217, i32* %7)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %260

220:                                              ; preds = %215
  %221 = load i32, i32* @AGE_FLAG_PCIE, align 4
  %222 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %223 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* %2, align 4
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 8
  %229 = call i32 @pci_read_config(i32 %226, i32 %228, i32 2)
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* %5, align 4
  %231 = ashr i32 %230, 12
  %232 = and i32 %231, 7
  %233 = load i32, i32* @DMA_CFG_RD_BURST_SHIFT, align 4
  %234 = shl i32 %232, %233
  %235 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %236 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* %5, align 4
  %238 = ashr i32 %237, 5
  %239 = and i32 %238, 7
  %240 = load i32, i32* @DMA_CFG_WR_BURST_SHIFT, align 4
  %241 = shl i32 %239, %240
  %242 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %243 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 4
  %244 = load i64, i64* @bootverbose, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %220
  %247 = load i32, i32* %2, align 4
  %248 = load i32, i32* %5, align 4
  %249 = ashr i32 %248, 12
  %250 = and i32 %249, 7
  %251 = shl i32 128, %250
  %252 = call i32 (i32, i8*, ...) @device_printf(i32 %247, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* %2, align 4
  %254 = load i32, i32* %5, align 4
  %255 = ashr i32 %254, 5
  %256 = and i32 %255, 7
  %257 = shl i32 128, %256
  %258 = call i32 (i32, i8*, ...) @device_printf(i32 %253, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %246, %220
  br label %267

260:                                              ; preds = %215
  %261 = load i32, i32* @DMA_CFG_RD_BURST_128, align 4
  %262 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %263 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 8
  %264 = load i32, i32* @DMA_CFG_WR_BURST_128, align 4
  %265 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %266 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %265, i32 0, i32 3
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %260, %259
  %268 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %269 = call i32 @age_sysctl_node(%struct.age_softc* %268)
  %270 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %271 = call i32 @age_dma_alloc(%struct.age_softc* %270)
  store i32 %271, i32* %6, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %267
  br label %495

274:                                              ; preds = %267
  %275 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %276 = call i32 @age_get_macaddr(%struct.age_softc* %275)
  %277 = load i32, i32* @IFT_ETHER, align 4
  %278 = call %struct.ifnet* @if_alloc(i32 %277)
  %279 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %280 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %279, i32 0, i32 11
  store %struct.ifnet* %278, %struct.ifnet** %280, align 8
  store %struct.ifnet* %278, %struct.ifnet** %4, align 8
  %281 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %282 = icmp eq %struct.ifnet* %281, null
  br i1 %282, label %283, label %287

283:                                              ; preds = %274
  %284 = load i32, i32* %2, align 4
  %285 = call i32 (i32, i8*, ...) @device_printf(i32 %284, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %286 = load i32, i32* @ENXIO, align 4
  store i32 %286, i32* %6, align 4
  br label %495

287:                                              ; preds = %274
  %288 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %289 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %290 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %289, i32 0, i32 9
  store %struct.age_softc* %288, %struct.age_softc** %290, align 8
  %291 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %292 = load i32, i32* %2, align 4
  %293 = call i32 @device_get_name(i32 %292)
  %294 = load i32, i32* %2, align 4
  %295 = call i32 @device_get_unit(i32 %294)
  %296 = call i32 @if_initname(%struct.ifnet* %291, i32 %293, i32 %295)
  %297 = load i32, i32* @IFF_BROADCAST, align 4
  %298 = load i32, i32* @IFF_SIMPLEX, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @IFF_MULTICAST, align 4
  %301 = or i32 %299, %300
  %302 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %303 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 8
  %304 = load i32, i32* @age_ioctl, align 4
  %305 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %306 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %305, i32 0, i32 8
  store i32 %304, i32* %306, align 8
  %307 = load i32, i32* @age_start, align 4
  %308 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %309 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %308, i32 0, i32 7
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* @age_init, align 4
  %311 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %312 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %311, i32 0, i32 6
  store i32 %310, i32* %312, align 8
  %313 = load i64, i64* @AGE_TX_RING_CNT, align 8
  %314 = sub nsw i64 %313, 1
  %315 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %316 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %315, i32 0, i32 5
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 0
  store i64 %314, i64* %317, align 8
  %318 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %319 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %318, i32 0, i32 5
  %320 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %321 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %319, i64 %323)
  %325 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %326 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %325, i32 0, i32 5
  %327 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %326)
  %328 = load i32, i32* @IFCAP_HWCSUM, align 4
  %329 = load i32, i32* @IFCAP_TSO4, align 4
  %330 = or i32 %328, %329
  %331 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %332 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 4
  %333 = load i32, i32* @AGE_CSUM_FEATURES, align 4
  %334 = load i32, i32* @CSUM_TSO, align 4
  %335 = or i32 %333, %334
  %336 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %337 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %336, i32 0, i32 2
  store i32 %335, i32* %337, align 8
  %338 = load i32, i32* %2, align 4
  %339 = load i32, i32* @PCIY_PMG, align 4
  %340 = call i64 @pci_find_cap(i32 %338, i32 %339, i32* %10)
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %355

342:                                              ; preds = %287
  %343 = load i32, i32* @AGE_FLAG_PMCAP, align 4
  %344 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %345 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 4
  %348 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %349 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %350 = or i32 %348, %349
  %351 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %352 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 4
  br label %355

355:                                              ; preds = %342, %287
  %356 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %357 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %360 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %359, i32 0, i32 3
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* %2, align 4
  %362 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %363 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %362, i32 0, i32 10
  %364 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %365 = load i32, i32* @age_mediachange, align 4
  %366 = load i32, i32* @age_mediastatus, align 4
  %367 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %368 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %369 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %368, i32 0, i32 9
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @MII_OFFSET_ANY, align 4
  %372 = call i32 @mii_attach(i32 %361, i32* %363, %struct.ifnet* %364, i32 %365, i32 %366, i32 %367, i32 %370, i32 %371, i32 0)
  store i32 %372, i32* %6, align 4
  %373 = load i32, i32* %6, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %355
  %376 = load i32, i32* %2, align 4
  %377 = call i32 (i32, i8*, ...) @device_printf(i32 %376, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %495

378:                                              ; preds = %355
  %379 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %380 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %381 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %380, i32 0, i32 8
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @ether_ifattach(%struct.ifnet* %379, i32 %382)
  %384 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %385 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %390 = or i32 %388, %389
  %391 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %392 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = or i32 %393, %390
  store i32 %394, i32* %392, align 4
  %395 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %396 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %399 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %398, i32 0, i32 3
  store i32 %397, i32* %399, align 4
  %400 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %401 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %400, i32 0, i32 4
  store i32 4, i32* %401, align 8
  %402 = load i32, i32* @M_WAITOK, align 4
  %403 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %404 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %405 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %404, i32 0, i32 4
  %406 = call i32* @taskqueue_create_fast(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %402, i32 %403, i32** %405)
  %407 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %408 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %407, i32 0, i32 4
  store i32* %406, i32** %408, align 8
  %409 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %410 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %409, i32 0, i32 4
  %411 = load i32*, i32** %410, align 8
  %412 = icmp eq i32* %411, null
  br i1 %412, label %413, label %419

413:                                              ; preds = %378
  %414 = load i32, i32* %2, align 4
  %415 = call i32 (i32, i8*, ...) @device_printf(i32 %414, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %416 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %417 = call i32 @ether_ifdetach(%struct.ifnet* %416)
  %418 = load i32, i32* @ENXIO, align 4
  store i32 %418, i32* %6, align 4
  br label %495

419:                                              ; preds = %378
  %420 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %421 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %420, i32 0, i32 4
  %422 = load i32, i32* @PI_NET, align 4
  %423 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %424 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %423, i32 0, i32 7
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @device_get_nameunit(i32 %425)
  %427 = call i32 @taskqueue_start_threads(i32** %421, i32 1, i32 %422, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %426)
  %428 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %429 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @AGE_FLAG_MSIX, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %419
  %435 = load i32, i32* @AGE_MSIX_MESSAGES, align 4
  store i32 %435, i32* %8, align 4
  br label %447

436:                                              ; preds = %419
  %437 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %438 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* @AGE_FLAG_MSI, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %436
  %444 = load i32, i32* @AGE_MSI_MESSAGES, align 4
  store i32 %444, i32* %8, align 4
  br label %446

445:                                              ; preds = %436
  store i32 1, i32* %8, align 4
  br label %446

446:                                              ; preds = %445, %443
  br label %447

447:                                              ; preds = %446, %434
  store i32 0, i32* %7, align 4
  br label %448

448:                                              ; preds = %477, %447
  %449 = load i32, i32* %7, align 4
  %450 = load i32, i32* %8, align 4
  %451 = icmp slt i32 %449, %450
  br i1 %451, label %452, label %480

452:                                              ; preds = %448
  %453 = load i32, i32* %2, align 4
  %454 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %455 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %454, i32 0, i32 6
  %456 = load i32*, i32** %455, align 8
  %457 = load i32, i32* %7, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @INTR_TYPE_NET, align 4
  %462 = load i32, i32* @INTR_MPSAFE, align 4
  %463 = or i32 %461, %462
  %464 = load i32, i32* @age_intr, align 4
  %465 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %466 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %467 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %466, i32 0, i32 5
  %468 = load i32*, i32** %467, align 8
  %469 = load i32, i32* %7, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %468, i64 %470
  %472 = call i32 @bus_setup_intr(i32 %453, i32 %460, i32 %463, i32 %464, i32* null, %struct.age_softc* %465, i32* %471)
  store i32 %472, i32* %6, align 4
  %473 = load i32, i32* %6, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %452
  br label %480

476:                                              ; preds = %452
  br label %477

477:                                              ; preds = %476
  %478 = load i32, i32* %7, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %7, align 4
  br label %448

480:                                              ; preds = %475, %448
  %481 = load i32, i32* %6, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %494

483:                                              ; preds = %480
  %484 = load i32, i32* %2, align 4
  %485 = call i32 (i32, i8*, ...) @device_printf(i32 %484, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  %486 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %487 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %486, i32 0, i32 4
  %488 = load i32*, i32** %487, align 8
  %489 = call i32 @taskqueue_free(i32* %488)
  %490 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %491 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %490, i32 0, i32 4
  store i32* null, i32** %491, align 8
  %492 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %493 = call i32 @ether_ifdetach(%struct.ifnet* %492)
  br label %495

494:                                              ; preds = %480
  br label %495

495:                                              ; preds = %494, %483, %413, %375, %283, %273, %212, %96, %56
  %496 = load i32, i32* %6, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %495
  %499 = load i32, i32* %2, align 4
  %500 = call i32 @age_detach(i32 %499)
  br label %501

501:                                              ; preds = %498, %495
  %502 = load i32, i32* %6, align 4
  ret i32 %502
}

declare dso_local %struct.age_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.age_softc*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @age_phy_reset(%struct.age_softc*) #1

declare dso_local i32 @age_reset(%struct.age_softc*) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @age_sysctl_node(%struct.age_softc*) #1

declare dso_local i32 @age_dma_alloc(%struct.age_softc*) #1

declare dso_local i32 @age_get_macaddr(%struct.age_softc*) #1

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

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.age_softc*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @age_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
