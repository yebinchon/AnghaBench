; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, %struct.ifnet*, i32, i32, i32, %struct.TYPE_4__*, i32*, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, %struct.alc_softc* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@alc_int_task = common dso_local global i32 0, align 4
@alc_res_spec_mem = common dso_local global i32 0, align 4
@alc_irq_spec_legacy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot allocate memory resources.\0A\00", align 1
@ALC_PHY_ADDR = common dso_local global i32 0, align 4
@ALC_FLAG_E2X00 = common dso_local global i32 0, align 4
@VENDORID_ATHEROS = common dso_local global i32 0, align 4
@ALC_FLAG_LINK_WAR = common dso_local global i32 0, align 4
@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@ALC_FLAG_FASTETHER = common dso_local global i32 0, align 4
@ALC_FLAG_APS = common dso_local global i32 0, align 4
@ALC_FLAG_JUMBO = common dso_local global i32 0, align 4
@ALC_FLAG_SMB_BUG = common dso_local global i32 0, align 4
@ALC_FLAG_CMB_BUG = common dso_local global i32 0, align 4
@ALC_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_CHIP_REV_SHIFT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"PCI device revision : 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Chip id/revision : 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"AR816x revision : 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%u Tx FIFO, %u Rx FIFO\0A\00", align 1
@ALC_SRAM_TX_FIFO_LEN = common dso_local global i32 0, align 4
@ALC_SRAM_RX_FIFO_LEN = common dso_local global i32 0, align 4
@DMA_CFG_RCB_64 = common dso_local global i32 0, align 4
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@ALC_FLAG_PCIE = common dso_local global i32 0, align 4
@PCIER_DEVICE_CTL = common dso_local global i64 0, align 8
@PCIEM_CTL_MAX_READ_REQUEST = common dso_local global i32 0, align 4
@PCIEM_CTL_MAX_PAYLOAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Read request size : %u bytes.\0A\00", align 1
@alc_dma_burst = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"TLP payload size : %u bytes.\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"MSIX count : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"MSI count : %d\0A\00", align 1
@msix_disable = common dso_local global i64 0, align 8
@msi_disable = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"Using %d MSIX message(s).\0A\00", align 1
@ALC_FLAG_MSIX = common dso_local global i32 0, align 4
@alc_irq_spec_msix = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Using %d MSI message(s).\0A\00", align 1
@ALC_FLAG_MSI = common dso_local global i32 0, align 4
@alc_irq_spec_msi = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"cannot allocate IRQ resources.\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"cannot allocate ifnet structure.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@alc_ioctl = common dso_local global i32 0, align 4
@alc_start = common dso_local global i32 0, align 4
@alc_init = common dso_local global i32 0, align 4
@ALC_TX_RING_CNT = common dso_local global i64 0, align 8
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@ALC_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@ALC_FLAG_PM = common dso_local global i32 0, align 4
@alc_mediachange = common dso_local global i32 0, align 4
@alc_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"alc_taskq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"could not create taskqueue.\0A\00", align 1
@PI_NET = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@ALC_MSIX_MESSAGES = common dso_local global i32 0, align 4
@ALC_MSI_MESSAGES = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@alc_intr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [37 x i8] c"could not set up interrupt handler.\0A\00", align 1
@alc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @alc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alc_softc*, align 8
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
  %12 = call %struct.alc_softc* @device_get_softc(i32 %11)
  store %struct.alc_softc* %12, %struct.alc_softc** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @pci_get_revid(i32 %16)
  %18 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %18, i32 0, i32 16
  store i32 %17, i32* %19, align 8
  %20 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %20, i32 0, i32 21
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @device_get_nameunit(i32 %22)
  %24 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %21, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %27, i32 0, i32 22
  %29 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %30 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %29, i32 0, i32 21
  %31 = call i32 @callout_init_mtx(i32* %28, i32* %30, i32 0)
  %32 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %32, i32 0, i32 20
  %34 = load i32, i32* @alc_int_task, align 4
  %35 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %36 = call i32 @TASK_INIT(i32* %33, i32 0, i32 %34, %struct.alc_softc* %35)
  %37 = load i32, i32* %2, align 4
  %38 = call %struct.TYPE_4__* @alc_find_ident(i32 %37)
  %39 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %40 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %39, i32 0, i32 17
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @pci_enable_busmaster(i32 %41)
  %43 = load i32, i32* @alc_res_spec_mem, align 4
  %44 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %44, i32 0, i32 19
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @alc_irq_spec_legacy, align 4
  %47 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %48 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %47, i32 0, i32 14
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %51 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %50, i32 0, i32 19
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %53, i32 0, i32 18
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_alloc_resources(i32 %49, i32 %52, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %1
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %659

62:                                               ; preds = %1
  %63 = load i32, i32* @ALC_PHY_ADDR, align 4
  %64 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %65 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %64, i32 0, i32 11
  store i32 %63, i32* %65, align 8
  %66 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %67 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %66, i32 0, i32 17
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %130 [
    i32 130, label %71
    i32 129, label %71
    i32 128, label %71
    i32 134, label %77
    i32 132, label %98
    i32 133, label %104
    i32 131, label %104
    i32 136, label %112
    i32 135, label %112
    i32 139, label %118
    i32 138, label %124
    i32 137, label %124
  ]

71:                                               ; preds = %62, %62, %62
  %72 = load i32, i32* @ALC_FLAG_E2X00, align 4
  %73 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %74 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %62, %71
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @pci_get_subvendor(i32 %78)
  %80 = load i32, i32* @VENDORID_ATHEROS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @pci_get_subdevice(i32 %83)
  %85 = icmp eq i32 %84, 145
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %88 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %87, i32 0, i32 16
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* @ALC_FLAG_LINK_WAR, align 4
  %93 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %94 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %86, %82, %77
  br label %98

98:                                               ; preds = %62, %97
  %99 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %100 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %101 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %131

104:                                              ; preds = %62, %62
  %105 = load i32, i32* @ALC_FLAG_FASTETHER, align 4
  %106 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %109 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %131

112:                                              ; preds = %62, %62
  %113 = load i32, i32* @ALC_FLAG_APS, align 4
  %114 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %115 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %62, %112
  %119 = load i32, i32* @ALC_FLAG_FASTETHER, align 4
  %120 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %121 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %131

124:                                              ; preds = %62, %62
  %125 = load i32, i32* @ALC_FLAG_APS, align 4
  %126 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %127 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %62, %124
  br label %131

131:                                              ; preds = %130, %118, %104, %98
  %132 = load i32, i32* @ALC_FLAG_JUMBO, align 4
  %133 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %134 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i32, i32* @ALC_FLAG_SMB_BUG, align 4
  %138 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %139 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @ALC_FLAG_CMB_BUG, align 4
  %143 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %144 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %148 = load i32, i32* @ALC_MASTER_CFG, align 4
  %149 = call i32 @CSR_READ_4(%struct.alc_softc* %147, i32 %148)
  %150 = load i32, i32* @MASTER_CHIP_REV_SHIFT, align 4
  %151 = ashr i32 %149, %150
  %152 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %153 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i64, i64* @bootverbose, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %181

156:                                              ; preds = %131
  %157 = load i32, i32* %2, align 4
  %158 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %159 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %158, i32 0, i32 16
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, ...) @device_printf(i32 %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %2, align 4
  %163 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %164 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @device_printf(i32 %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  %167 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %168 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %156
  %174 = load i32, i32* %2, align 4
  %175 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %176 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %175, i32 0, i32 16
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @AR816X_REV(i32 %177)
  %179 = call i32 (i32, i8*, ...) @device_printf(i32 %174, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %173, %156
  br label %181

181:                                              ; preds = %180, %131
  %182 = load i32, i32* %2, align 4
  %183 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %184 = load i32, i32* @ALC_SRAM_TX_FIFO_LEN, align 4
  %185 = call i32 @CSR_READ_4(%struct.alc_softc* %183, i32 %184)
  %186 = mul nsw i32 %185, 8
  %187 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %188 = load i32, i32* @ALC_SRAM_RX_FIFO_LEN, align 4
  %189 = call i32 @CSR_READ_4(%struct.alc_softc* %187, i32 %188)
  %190 = mul nsw i32 %189, 8
  %191 = call i32 (i32, i8*, ...) @device_printf(i32 %182, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %186, i32 %190)
  %192 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %193 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %192, i32 0, i32 2
  store i32 0, i32* %193, align 8
  %194 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %195 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %194, i32 0, i32 3
  store i32 0, i32* %195, align 4
  %196 = load i32, i32* @DMA_CFG_RCB_64, align 4
  %197 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %198 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %197, i32 0, i32 15
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %2, align 4
  %200 = load i32, i32* @PCIY_EXPRESS, align 4
  %201 = call i64 @pci_find_cap(i32 %199, i32 %200, i32* %5)
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %288

203:                                              ; preds = %181
  %204 = load i32, i32* @ALC_FLAG_PCIE, align 4
  %205 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %206 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load i32, i32* %5, align 4
  %210 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %211 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 8
  %212 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* @PCIER_DEVICE_CTL, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @CSR_READ_2(%struct.alc_softc* %212, i64 %216)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* @PCIEM_CTL_MAX_READ_REQUEST, align 4
  %220 = and i32 %218, %219
  %221 = ashr i32 %220, 12
  %222 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %223 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* @PCIEM_CTL_MAX_PAYLOAD, align 4
  %226 = and i32 %224, %225
  %227 = ashr i32 %226, 5
  %228 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %229 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 4
  %230 = load i64, i64* @bootverbose, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %251

232:                                              ; preds = %203
  %233 = load i32, i32* %2, align 4
  %234 = load i32*, i32** @alc_dma_burst, align 8
  %235 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %236 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %234, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i32, i8*, ...) @device_printf(i32 %233, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* %2, align 4
  %243 = load i32*, i32** @alc_dma_burst, align 8
  %244 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %245 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %243, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i32, i8*, ...) @device_printf(i32 %242, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %232, %203
  %252 = load i32*, i32** @alc_dma_burst, align 8
  %253 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %254 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 1024
  br i1 %259, label %260, label %263

260:                                              ; preds = %251
  %261 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %262 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %261, i32 0, i32 2
  store i32 3, i32* %262, align 8
  br label %263

263:                                              ; preds = %260, %251
  %264 = load i32*, i32** @alc_dma_burst, align 8
  %265 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %266 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp sgt i32 %270, 1024
  br i1 %271, label %272, label %275

272:                                              ; preds = %263
  %273 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %274 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %273, i32 0, i32 3
  store i32 3, i32* %274, align 4
  br label %275

275:                                              ; preds = %272, %263
  %276 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %277 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @ALC_FLAG_E2X00, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %275
  %283 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %284 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %283, i32 0, i32 3
  store i32 0, i32* %284, align 4
  br label %285

285:                                              ; preds = %282, %275
  %286 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %287 = call i32 @alc_init_pcie(%struct.alc_softc* %286)
  br label %288

288:                                              ; preds = %285, %181
  %289 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %290 = call i32 @alc_phy_reset(%struct.alc_softc* %289)
  %291 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %292 = call i32 @alc_stop_mac(%struct.alc_softc* %291)
  %293 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %294 = call i32 @alc_reset(%struct.alc_softc* %293)
  %295 = load i32, i32* %2, align 4
  %296 = call i32 @pci_msix_count(i32 %295)
  store i32 %296, i32* %9, align 4
  %297 = load i32, i32* %2, align 4
  %298 = call i32 @pci_msi_count(i32 %297)
  store i32 %298, i32* %8, align 4
  %299 = load i64, i64* @bootverbose, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %288
  %302 = load i32, i32* %2, align 4
  %303 = load i32, i32* %9, align 4
  %304 = call i32 (i32, i8*, ...) @device_printf(i32 %302, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %303)
  %305 = load i32, i32* %2, align 4
  %306 = load i32, i32* %8, align 4
  %307 = call i32 (i32, i8*, ...) @device_printf(i32 %305, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %306)
  br label %308

308:                                              ; preds = %301, %288
  %309 = load i32, i32* %9, align 4
  %310 = icmp sgt i32 %309, 1
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  store i32 1, i32* %9, align 4
  br label %312

312:                                              ; preds = %311, %308
  %313 = load i32, i32* %8, align 4
  %314 = icmp sgt i32 %313, 1
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  store i32 1, i32* %8, align 4
  br label %316

316:                                              ; preds = %315, %312
  %317 = load i64, i64* @msix_disable, align 8
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %316
  %320 = load i64, i64* @msi_disable, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %388

322:                                              ; preds = %319, %316
  %323 = load i64, i64* @msix_disable, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %351

325:                                              ; preds = %322
  %326 = load i32, i32* %9, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %351

328:                                              ; preds = %325
  %329 = load i32, i32* %2, align 4
  %330 = call i64 @pci_alloc_msix(i32 %329, i32* %9)
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %351

332:                                              ; preds = %328
  %333 = load i32, i32* %8, align 4
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %347

335:                                              ; preds = %332
  %336 = load i32, i32* %2, align 4
  %337 = load i32, i32* %9, align 4
  %338 = call i32 (i32, i8*, ...) @device_printf(i32 %336, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %337)
  %339 = load i32, i32* @ALC_FLAG_MSIX, align 4
  %340 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %341 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 8
  %344 = load i32, i32* @alc_irq_spec_msix, align 4
  %345 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %346 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %345, i32 0, i32 14
  store i32 %344, i32* %346, align 8
  br label %350

347:                                              ; preds = %332
  %348 = load i32, i32* %2, align 4
  %349 = call i32 @pci_release_msi(i32 %348)
  br label %350

350:                                              ; preds = %347, %335
  br label %351

351:                                              ; preds = %350, %328, %325, %322
  %352 = load i64, i64* @msi_disable, align 8
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %387

354:                                              ; preds = %351
  %355 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %356 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @ALC_FLAG_MSIX, align 4
  %359 = and i32 %357, %358
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %387

361:                                              ; preds = %354
  %362 = load i32, i32* %8, align 4
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %364, label %387

364:                                              ; preds = %361
  %365 = load i32, i32* %2, align 4
  %366 = call i64 @pci_alloc_msi(i32 %365, i32* %8)
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %387

368:                                              ; preds = %364
  %369 = load i32, i32* %8, align 4
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %383

371:                                              ; preds = %368
  %372 = load i32, i32* %2, align 4
  %373 = load i32, i32* %8, align 4
  %374 = call i32 (i32, i8*, ...) @device_printf(i32 %372, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %373)
  %375 = load i32, i32* @ALC_FLAG_MSI, align 4
  %376 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %377 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = or i32 %378, %375
  store i32 %379, i32* %377, align 8
  %380 = load i32, i32* @alc_irq_spec_msi, align 4
  %381 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %382 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %381, i32 0, i32 14
  store i32 %380, i32* %382, align 8
  br label %386

383:                                              ; preds = %368
  %384 = load i32, i32* %2, align 4
  %385 = call i32 @pci_release_msi(i32 %384)
  br label %386

386:                                              ; preds = %383, %371
  br label %387

387:                                              ; preds = %386, %364, %361, %354, %351
  br label %388

388:                                              ; preds = %387, %319
  %389 = load i32, i32* %2, align 4
  %390 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %391 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %390, i32 0, i32 14
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %394 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %393, i32 0, i32 8
  %395 = load i32*, i32** %394, align 8
  %396 = call i32 @bus_alloc_resources(i32 %389, i32 %392, i32* %395)
  store i32 %396, i32* %6, align 4
  %397 = load i32, i32* %6, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %388
  %400 = load i32, i32* %2, align 4
  %401 = call i32 (i32, i8*, ...) @device_printf(i32 %400, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %659

402:                                              ; preds = %388
  %403 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %404 = call i32 @alc_sysctl_node(%struct.alc_softc* %403)
  %405 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %406 = call i32 @alc_dma_alloc(%struct.alc_softc* %405)
  store i32 %406, i32* %6, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %402
  br label %659

409:                                              ; preds = %402
  %410 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %411 = call i32 @alc_get_macaddr(%struct.alc_softc* %410)
  %412 = load i32, i32* @IFT_ETHER, align 4
  %413 = call %struct.ifnet* @if_alloc(i32 %412)
  %414 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %415 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %414, i32 0, i32 13
  store %struct.ifnet* %413, %struct.ifnet** %415, align 8
  store %struct.ifnet* %413, %struct.ifnet** %4, align 8
  %416 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %417 = icmp eq %struct.ifnet* %416, null
  br i1 %417, label %418, label %422

418:                                              ; preds = %409
  %419 = load i32, i32* %2, align 4
  %420 = call i32 (i32, i8*, ...) @device_printf(i32 %419, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %421 = load i32, i32* @ENXIO, align 4
  store i32 %421, i32* %6, align 4
  br label %659

422:                                              ; preds = %409
  %423 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %424 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %425 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %424, i32 0, i32 9
  store %struct.alc_softc* %423, %struct.alc_softc** %425, align 8
  %426 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %427 = load i32, i32* %2, align 4
  %428 = call i32 @device_get_name(i32 %427)
  %429 = load i32, i32* %2, align 4
  %430 = call i32 @device_get_unit(i32 %429)
  %431 = call i32 @if_initname(%struct.ifnet* %426, i32 %428, i32 %430)
  %432 = load i32, i32* @IFF_BROADCAST, align 4
  %433 = load i32, i32* @IFF_SIMPLEX, align 4
  %434 = or i32 %432, %433
  %435 = load i32, i32* @IFF_MULTICAST, align 4
  %436 = or i32 %434, %435
  %437 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %438 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %437, i32 0, i32 0
  store i32 %436, i32* %438, align 8
  %439 = load i32, i32* @alc_ioctl, align 4
  %440 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %441 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %440, i32 0, i32 8
  store i32 %439, i32* %441, align 8
  %442 = load i32, i32* @alc_start, align 4
  %443 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %444 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %443, i32 0, i32 7
  store i32 %442, i32* %444, align 4
  %445 = load i32, i32* @alc_init, align 4
  %446 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %447 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %446, i32 0, i32 6
  store i32 %445, i32* %447, align 8
  %448 = load i64, i64* @ALC_TX_RING_CNT, align 8
  %449 = sub nsw i64 %448, 1
  %450 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %451 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i32 0, i32 0
  store i64 %449, i64* %452, align 8
  %453 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %454 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %453, i32 0, i32 5
  %455 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %456 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %455, i32 0, i32 5
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %454, i64 %458)
  %460 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %461 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %460, i32 0, i32 5
  %462 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %461)
  %463 = load i32, i32* @IFCAP_TXCSUM, align 4
  %464 = load i32, i32* @IFCAP_TSO4, align 4
  %465 = or i32 %463, %464
  %466 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %467 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %466, i32 0, i32 1
  store i32 %465, i32* %467, align 4
  %468 = load i32, i32* @ALC_CSUM_FEATURES, align 4
  %469 = load i32, i32* @CSUM_TSO, align 4
  %470 = or i32 %468, %469
  %471 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %472 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %471, i32 0, i32 2
  store i32 %470, i32* %472, align 8
  %473 = load i32, i32* %2, align 4
  %474 = load i32, i32* @PCIY_PMG, align 4
  %475 = call i64 @pci_find_cap(i32 %473, i32 %474, i32* %5)
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %477, label %493

477:                                              ; preds = %422
  %478 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %479 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %480 = or i32 %478, %479
  %481 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %482 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = or i32 %483, %480
  store i32 %484, i32* %482, align 4
  %485 = load i32, i32* @ALC_FLAG_PM, align 4
  %486 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %487 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = or i32 %488, %485
  store i32 %489, i32* %487, align 8
  %490 = load i32, i32* %5, align 4
  %491 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %492 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %491, i32 0, i32 5
  store i32 %490, i32* %492, align 4
  br label %493

493:                                              ; preds = %477, %422
  %494 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %495 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %498 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %497, i32 0, i32 3
  store i32 %496, i32* %498, align 4
  %499 = load i32, i32* %2, align 4
  %500 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %501 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %500, i32 0, i32 12
  %502 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %503 = load i32, i32* @alc_mediachange, align 4
  %504 = load i32, i32* @alc_mediastatus, align 4
  %505 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %506 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %507 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %506, i32 0, i32 11
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* @MII_OFFSET_ANY, align 4
  %510 = load i32, i32* @MIIF_DOPAUSE, align 4
  %511 = call i32 @mii_attach(i32 %499, i32* %501, %struct.ifnet* %502, i32 %503, i32 %504, i32 %505, i32 %508, i32 %509, i32 %510)
  store i32 %511, i32* %6, align 4
  %512 = load i32, i32* %6, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %517

514:                                              ; preds = %493
  %515 = load i32, i32* %2, align 4
  %516 = call i32 (i32, i8*, ...) @device_printf(i32 %515, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %659

517:                                              ; preds = %493
  %518 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %519 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %520 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %519, i32 0, i32 10
  %521 = load i32, i32* %520, align 4
  %522 = call i32 @ether_ifattach(%struct.ifnet* %518, i32 %521)
  %523 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %524 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %525 = or i32 %523, %524
  %526 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %527 = or i32 %525, %526
  %528 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %529 = or i32 %527, %528
  %530 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %531 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 4
  %533 = or i32 %532, %529
  store i32 %533, i32* %531, align 4
  %534 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %535 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %538 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %537, i32 0, i32 3
  store i32 %536, i32* %538, align 4
  %539 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %540 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %543 = and i32 %541, %542
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %558

545:                                              ; preds = %517
  %546 = load i32, i32* @IFCAP_TXCSUM, align 4
  %547 = xor i32 %546, -1
  %548 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %549 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %548, i32 0, i32 3
  %550 = load i32, i32* %549, align 4
  %551 = and i32 %550, %547
  store i32 %551, i32* %549, align 4
  %552 = load i32, i32* @ALC_CSUM_FEATURES, align 4
  %553 = xor i32 %552, -1
  %554 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %555 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 8
  %557 = and i32 %556, %553
  store i32 %557, i32* %555, align 8
  br label %558

558:                                              ; preds = %545, %517
  %559 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %560 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %559, i32 0, i32 4
  store i32 4, i32* %560, align 8
  %561 = load i32, i32* @M_WAITOK, align 4
  %562 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %563 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %564 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %563, i32 0, i32 6
  %565 = call i32* @taskqueue_create_fast(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %561, i32 %562, i32** %564)
  %566 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %567 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %566, i32 0, i32 6
  store i32* %565, i32** %567, align 8
  %568 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %569 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %568, i32 0, i32 6
  %570 = load i32*, i32** %569, align 8
  %571 = icmp eq i32* %570, null
  br i1 %571, label %572, label %578

572:                                              ; preds = %558
  %573 = load i32, i32* %2, align 4
  %574 = call i32 (i32, i8*, ...) @device_printf(i32 %573, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %575 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %576 = call i32 @ether_ifdetach(%struct.ifnet* %575)
  %577 = load i32, i32* @ENXIO, align 4
  store i32 %577, i32* %6, align 4
  br label %659

578:                                              ; preds = %558
  %579 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %580 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %579, i32 0, i32 6
  %581 = load i32, i32* @PI_NET, align 4
  %582 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %583 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %582, i32 0, i32 9
  %584 = load i32, i32* %583, align 8
  %585 = call i32 @device_get_nameunit(i32 %584)
  %586 = call i32 @taskqueue_start_threads(i32** %580, i32 1, i32 %581, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %585)
  %587 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %588 = call i32 @alc_config_msi(%struct.alc_softc* %587)
  %589 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %590 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = load i32, i32* @ALC_FLAG_MSIX, align 4
  %593 = and i32 %591, %592
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %597

595:                                              ; preds = %578
  %596 = load i32, i32* @ALC_MSIX_MESSAGES, align 4
  store i32 %596, i32* %8, align 4
  br label %608

597:                                              ; preds = %578
  %598 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %599 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = load i32, i32* @ALC_FLAG_MSI, align 4
  %602 = and i32 %600, %601
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %606

604:                                              ; preds = %597
  %605 = load i32, i32* @ALC_MSI_MESSAGES, align 4
  store i32 %605, i32* %8, align 4
  br label %607

606:                                              ; preds = %597
  store i32 1, i32* %8, align 4
  br label %607

607:                                              ; preds = %606, %604
  br label %608

608:                                              ; preds = %607, %595
  store i32 0, i32* %7, align 4
  br label %609

609:                                              ; preds = %638, %608
  %610 = load i32, i32* %7, align 4
  %611 = load i32, i32* %8, align 4
  %612 = icmp slt i32 %610, %611
  br i1 %612, label %613, label %641

613:                                              ; preds = %609
  %614 = load i32, i32* %2, align 4
  %615 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %616 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %615, i32 0, i32 8
  %617 = load i32*, i32** %616, align 8
  %618 = load i32, i32* %7, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i32, i32* %617, i64 %619
  %621 = load i32, i32* %620, align 4
  %622 = load i32, i32* @INTR_TYPE_NET, align 4
  %623 = load i32, i32* @INTR_MPSAFE, align 4
  %624 = or i32 %622, %623
  %625 = load i32, i32* @alc_intr, align 4
  %626 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %627 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %628 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %627, i32 0, i32 7
  %629 = load i32*, i32** %628, align 8
  %630 = load i32, i32* %7, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i32, i32* %629, i64 %631
  %633 = call i32 @bus_setup_intr(i32 %614, i32 %621, i32 %624, i32 %625, i32* null, %struct.alc_softc* %626, i32* %632)
  store i32 %633, i32* %6, align 4
  %634 = load i32, i32* %6, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %637

636:                                              ; preds = %613
  br label %641

637:                                              ; preds = %613
  br label %638

638:                                              ; preds = %637
  %639 = load i32, i32* %7, align 4
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* %7, align 4
  br label %609

641:                                              ; preds = %636, %609
  %642 = load i32, i32* %6, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %655

644:                                              ; preds = %641
  %645 = load i32, i32* %2, align 4
  %646 = call i32 (i32, i8*, ...) @device_printf(i32 %645, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  %647 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %648 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %647, i32 0, i32 6
  %649 = load i32*, i32** %648, align 8
  %650 = call i32 @taskqueue_free(i32* %649)
  %651 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %652 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %651, i32 0, i32 6
  store i32* null, i32** %652, align 8
  %653 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %654 = call i32 @ether_ifdetach(%struct.ifnet* %653)
  br label %659

655:                                              ; preds = %641
  %656 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %657 = load i32, i32* @alc, align 4
  %658 = call i32 @DEBUGNET_SET(%struct.ifnet* %656, i32 %657)
  br label %659

659:                                              ; preds = %655, %644, %572, %514, %418, %408, %399, %59
  %660 = load i32, i32* %6, align 4
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %662, label %665

662:                                              ; preds = %659
  %663 = load i32, i32* %2, align 4
  %664 = call i32 @alc_detach(i32 %663)
  br label %665

665:                                              ; preds = %662, %659
  %666 = load i32, i32* %6, align 4
  ret i32 %666
}

declare dso_local %struct.alc_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.alc_softc*) #1

declare dso_local %struct.TYPE_4__* @alc_find_ident(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @AR816X_REV(i32) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @CSR_READ_2(%struct.alc_softc*, i64) #1

declare dso_local i32 @alc_init_pcie(%struct.alc_softc*) #1

declare dso_local i32 @alc_phy_reset(%struct.alc_softc*) #1

declare dso_local i32 @alc_stop_mac(%struct.alc_softc*) #1

declare dso_local i32 @alc_reset(%struct.alc_softc*) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @alc_sysctl_node(%struct.alc_softc*) #1

declare dso_local i32 @alc_dma_alloc(%struct.alc_softc*) #1

declare dso_local i32 @alc_get_macaddr(%struct.alc_softc*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32* @taskqueue_create_fast(i8*, i32, i32, i32**) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @alc_config_msi(%struct.alc_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.alc_softc*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @DEBUGNET_SET(%struct.ifnet*, i32) #1

declare dso_local i32 @alc_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
