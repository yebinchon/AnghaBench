; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i64, i64, i32*, i32, i32, i32, i32, i32, i8*, i32, i32*, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.fxp_cb_tx*, i32, i32, i32, i32, i32, %struct.fxp_cb_tx*, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.fxp_rx*, i32*, i32, %struct.fxp_cb_tx*, %struct.fxp_tx*, i32 }
%struct.fxp_rx = type { i32 }
%struct.fxp_tx = type { i32, %struct.fxp_cb_tx* }
%struct.fxp_cb_tx = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@fxp_serial_ifmedia_upd = common dso_local global i32 0, align 4
@fxp_serial_ifmedia_sts = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"prefer_iomap\00", align 1
@fxp_res_spec_io = common dso_local global i8* null, align 8
@fxp_res_spec_mem = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"using %s space register mapping\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@FXP_CSR_PORT = common dso_local global i32 0, align 4
@FXP_PORT_SELECTIVE_RESET = common dso_local global i32 0, align 4
@FXP_PORT_SOFTWARE_RESET = common dso_local global i32 0, align 4
@FXP_CSR_SCB_INTRCNTL = common dso_local global i32 0, align 4
@FXP_SCB_INTR_DISABLE = common dso_local global i32 0, align 4
@FXP_REV_82559_A0 = common dso_local global i64 0, align 8
@FXP_EEPROM_MAP_CNTR = common dso_local global i64 0, align 8
@FXP_REV_82557 = common dso_local global i64 0, align 8
@FXP_REV_82558_A4 = common dso_local global i64 0, align 8
@FXP_REV_82559S_A = common dso_local global i64 0, align 8
@FXP_EEPROM_MAP_ID = common dso_local global i64 0, align 8
@PCIY_PMG = common dso_local global i32 0, align 4
@FXP_FLAG_WOLCAP = common dso_local global i32 0, align 4
@FXP_REV_82550_C = common dso_local global i64 0, align 8
@FXP_EEPROM_MAP_COMPAT = common dso_local global i64 0, align 8
@FXP_FLAG_NO_UCODE = common dso_local global i32 0, align 4
@FXP_FLAG_RXBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Enabling Rx lock-up workaround\0A\00", align 1
@FXP_EEPROM_MAP_PRI_PHY = common dso_local global i64 0, align 8
@FXP_PHY_DEVICE_MASK = common dso_local global i32 0, align 4
@FXP_PHY_SERIAL_ONLY = common dso_local global i32 0, align 4
@FXP_FLAG_SERIAL_MEDIA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Disabling dynamic standby mode in EEPROM\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"New EEPROM ID: 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"EEPROM checksum @ 0x%x: 0x%x -> 0x%x\0A\00", align 1
@FXP_FLAG_CU_RESUME_BUG = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_MWRICEN = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i32 0, align 4
@FXP_FLAG_MWI_ENABLE = common dso_local global i32 0, align 4
@FXP_FLAG_EXT_TXCB = common dso_local global i32 0, align 4
@FXP_FLAG_LONG_PKT_EN = common dso_local global i32 0, align 4
@FXP_FLAG_SAVE_BAD = common dso_local global i32 0, align 4
@FXP_FLAG_82559_RXCSUM = common dso_local global i32 0, align 4
@FXP_REV_82550 = common dso_local global i64 0, align 8
@FXP_REV_82551_E = common dso_local global i64 0, align 8
@FXP_REV_82551_F = common dso_local global i64 0, align 8
@FXP_REV_82551_10 = common dso_local global i64 0, align 8
@FXP_CB_COMMAND_IPCBXMIT = common dso_local global i32 0, align 4
@FXP_FLAG_EXT_RFA = common dso_local global i32 0, align 4
@FXP_RFAX_LEN = common dso_local global i32 0, align 4
@FXP_CB_COMMAND_XMIT = common dso_local global i32 0, align 4
@FXP_NTXSEG = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@FXP_TSO_SEGSIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"could not create TX DMA tag\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"could not create RX DMA tag\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"could not create stats DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"could not allocate stats DMA memory\0A\00", align 1
@fxp_dma_map_addr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"could not load the stats DMA buffer\0A\00", align 1
@FXP_TXCB_SZ = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"could not create TxCB DMA tag\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"could not allocate TxCB DMA memory\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"could not load TxCB DMA buffer\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"could not create multicast setup DMA tag\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"could not allocate multicast setup DMA memory\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"can't load the multicast setup DMA buffer\0A\00", align 1
@FXP_NTXCB = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"can't create DMA map for TX\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"can't create spare DMA map\0A\00", align 1
@FXP_NRFABUFS = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"can't create DMA map for RX\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FXP_EEPROM_MAP_IA0 = common dso_local global i64 0, align 8
@FXP_EEPROM_MAP_IA1 = common dso_local global i64 0, align 8
@FXP_EEPROM_MAP_IA2 = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [35 x i8] c"PCI IDs: %04x %04x %04x %04x %04x\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Dynamic Standby mode is %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_MANUAL = common dso_local global i32 0, align 4
@MIIF_NOISOLATE = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@fxp_ifmedia_upd = common dso_local global i64 0, align 8
@fxp_ifmedia_sts = common dso_local global i64 0, align 8
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@fxp_init = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@fxp_ioctl = common dso_local global i32 0, align 4
@fxp_start = common dso_local global i32 0, align 4
@FXP_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@fxp_intr = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [21 x i8] c"could not setup irq\0A\00", align 1
@FXP_CSR_PMDR = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fxp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fxp_softc*, align 8
  %4 = alloca %struct.fxp_cb_tx*, align 8
  %5 = alloca %struct.fxp_tx*, align 8
  %6 = alloca %struct.fxp_rx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %19 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call %struct.fxp_softc* @device_get_softc(i32 %23)
  store %struct.fxp_softc* %24, %struct.fxp_softc** %3, align 8
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %27 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %26, i32 0, i32 29
  store i32 %25, i32* %27, align 8
  %28 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %29 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %28, i32 0, i32 30
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @device_get_nameunit(i32 %30)
  %32 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %33 = load i32, i32* @MTX_DEF, align 4
  %34 = call i32 @mtx_init(i32* %29, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %36 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %35, i32 0, i32 31
  %37 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %38 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %37, i32 0, i32 30
  %39 = call i32 @callout_init_mtx(i32* %36, i32* %38, i32 0)
  %40 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %41 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %40, i32 0, i32 12
  %42 = load i32, i32* @fxp_serial_ifmedia_upd, align 4
  %43 = load i32, i32* @fxp_serial_ifmedia_sts, align 4
  %44 = call i32 @ifmedia_init(i32* %41, i32 0, i32 %42, i32 %43)
  %45 = load i32, i32* @IFT_ETHER, align 4
  %46 = call i8* @if_gethandle(i32 %45)
  %47 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %48 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  store i8* %46, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %1
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOSPC, align 4
  store i32 %54, i32* %12, align 4
  br label %1154

55:                                               ; preds = %1
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @pci_enable_busmaster(i32 %56)
  store i32 0, i32* %16, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @device_get_name(i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @device_get_unit(i32 %60)
  %62 = call i32 @resource_int_value(i32 %59, i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i8*, i8** @fxp_res_spec_io, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %69 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %74

70:                                               ; preds = %55
  %71 = load i64, i64* @fxp_res_spec_mem, align 8
  %72 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %73 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %2, align 4
  %76 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %77 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %80 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %79, i32 0, i32 10
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @bus_alloc_resources(i32 %75, i64 %78, i32* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %74
  %86 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %87 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @fxp_res_spec_mem, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i8*, i8** @fxp_res_spec_io, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %95 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %100

96:                                               ; preds = %85
  %97 = load i64, i64* @fxp_res_spec_mem, align 8
  %98 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %99 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32, i32* %2, align 4
  %102 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %103 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %106 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %105, i32 0, i32 10
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @bus_alloc_resources(i32 %101, i64 %104, i32* %107)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %100, %74
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %2, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @ENXIO, align 4
  store i32 %115, i32* %12, align 4
  br label %1154

116:                                              ; preds = %109
  %117 = load i64, i64* @bootverbose, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %2, align 4
  %121 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %122 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @fxp_res_spec_mem, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %128 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %119, %116
  %130 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %131 = load i32, i32* @FXP_CSR_PORT, align 4
  %132 = load i32, i32* @FXP_PORT_SELECTIVE_RESET, align 4
  %133 = call i32 @CSR_WRITE_4(%struct.fxp_softc* %130, i32 %131, i32 %132)
  %134 = call i32 @DELAY(i32 10)
  %135 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %136 = load i32, i32* @FXP_CSR_PORT, align 4
  %137 = load i32, i32* @FXP_PORT_SOFTWARE_RESET, align 4
  %138 = call i32 @CSR_WRITE_4(%struct.fxp_softc* %135, i32 %136, i32 %137)
  %139 = call i32 @DELAY(i32 10)
  %140 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %141 = load i32, i32* @FXP_CSR_SCB_INTRCNTL, align 4
  %142 = load i32, i32* @FXP_SCB_INTR_DISABLE, align 4
  %143 = call i32 @CSR_WRITE_1(%struct.fxp_softc* %140, i32 %141, i32 %142)
  %144 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %145 = call i32 @fxp_autosize_eeprom(%struct.fxp_softc* %144)
  %146 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %147 = call i32 @fxp_load_eeprom(%struct.fxp_softc* %146)
  %148 = load i32, i32* %2, align 4
  %149 = call %struct.TYPE_4__* @fxp_find_ident(i32 %148)
  %150 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %151 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %150, i32 0, i32 28
  store %struct.TYPE_4__* %149, %struct.TYPE_4__** %151, align 8
  %152 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %153 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %152, i32 0, i32 28
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %129
  %159 = load i64, i64* @FXP_REV_82559_A0, align 8
  %160 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %161 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  br label %182

162:                                              ; preds = %129
  %163 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %164 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @FXP_EEPROM_MAP_CNTR, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = ashr i32 %169, 8
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %176

172:                                              ; preds = %162
  %173 = load i64, i64* @FXP_REV_82557, align 8
  %174 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %175 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  br label %181

176:                                              ; preds = %162
  %177 = load i32, i32* %2, align 4
  %178 = call i64 @pci_get_revid(i32 %177)
  %179 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %180 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %176, %172
  br label %182

182:                                              ; preds = %181, %158
  %183 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %184 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @FXP_REV_82558_A4, align 8
  %187 = icmp sge i64 %185, %186
  br i1 %187, label %188, label %218

188:                                              ; preds = %182
  %189 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %190 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @FXP_REV_82559S_A, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %218

194:                                              ; preds = %188
  %195 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %196 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @FXP_EEPROM_MAP_ID, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = and i32 %201, 32
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %194
  %205 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %206 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %205, i32 0, i32 29
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @PCIY_PMG, align 4
  %209 = call i64 @pci_find_cap(i32 %207, i32 %208, i32* %15)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load i32, i32* @FXP_FLAG_WOLCAP, align 4
  %213 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %214 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %211, %204, %194
  br label %218

218:                                              ; preds = %217, %188, %182
  %219 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %220 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @FXP_REV_82550_C, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %218
  %225 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %226 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* @FXP_EEPROM_MAP_COMPAT, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = and i32 %231, 1024
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %224
  %235 = load i32, i32* @FXP_FLAG_NO_UCODE, align 4
  %236 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %237 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %234, %224
  br label %241

241:                                              ; preds = %240, %218
  %242 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %243 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @FXP_REV_82558_A4, align 8
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %247, label %266

247:                                              ; preds = %241
  %248 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %249 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* @FXP_EEPROM_MAP_COMPAT, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = and i32 %254, 3
  %256 = icmp ne i32 %255, 3
  br i1 %256, label %257, label %265

257:                                              ; preds = %247
  %258 = load i32, i32* @FXP_FLAG_RXBUG, align 4
  %259 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %260 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load i32, i32* %2, align 4
  %264 = call i32 (i32, i8*, ...) @device_printf(i32 %263, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %265

265:                                              ; preds = %257, %247
  br label %266

266:                                              ; preds = %265, %241
  %267 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %268 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = load i64, i64* @FXP_EEPROM_MAP_PRI_PHY, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %9, align 4
  %273 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %274 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @FXP_REV_82557, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %294

278:                                              ; preds = %266
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @FXP_PHY_DEVICE_MASK, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %278
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @FXP_PHY_SERIAL_ONLY, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %283
  %289 = load i32, i32* @FXP_FLAG_SERIAL_MEDIA, align 4
  %290 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %291 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %288, %283, %278, %266
  %295 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %296 = call i32 @fxp_sysctl_node(%struct.fxp_softc* %295)
  %297 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %298 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %297, i32 0, i32 28
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = icmp sge i32 %301, 2
  br i1 %302, label %303, label %310

303:                                              ; preds = %294
  %304 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %305 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %304, i32 0, i32 28
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp sle i32 %308, 3
  br i1 %309, label %323, label %310

310:                                              ; preds = %303, %294
  %311 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %312 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %311, i32 0, i32 28
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %407

317:                                              ; preds = %310
  %318 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %319 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @FXP_REV_82559_A0, align 8
  %322 = icmp sge i64 %320, %321
  br i1 %322, label %323, label %407

323:                                              ; preds = %317, %303
  %324 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %325 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %324, i32 0, i32 2
  %326 = load i32*, i32** %325, align 8
  %327 = load i64, i64* @FXP_EEPROM_MAP_ID, align 8
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %9, align 4
  %330 = load i32, i32* %9, align 4
  %331 = and i32 %330, 2
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %406

333:                                              ; preds = %323
  %334 = load i32, i32* %2, align 4
  %335 = call i32 (i32, i8*, ...) @device_printf(i32 %334, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %336 = load i32, i32* %9, align 4
  %337 = and i32 %336, -3
  store i32 %337, i32* %9, align 4
  %338 = load i32, i32* %9, align 4
  %339 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %340 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %339, i32 0, i32 2
  %341 = load i32*, i32** %340, align 8
  %342 = load i64, i64* @FXP_EEPROM_MAP_ID, align 8
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  store i32 %338, i32* %343, align 4
  %344 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %345 = load i64, i64* @FXP_EEPROM_MAP_ID, align 8
  %346 = trunc i64 %345 to i32
  %347 = call i32 @fxp_write_eeprom(%struct.fxp_softc* %344, i32* %9, i32 %346, i32 1)
  %348 = load i32, i32* %2, align 4
  %349 = load i32, i32* %9, align 4
  %350 = call i32 (i32, i8*, ...) @device_printf(i32 %348, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %349)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %351

351:                                              ; preds = %369, %333
  %352 = load i32, i32* %18, align 4
  %353 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %354 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 4
  %356 = shl i32 1, %355
  %357 = sub nsw i32 %356, 1
  %358 = icmp slt i32 %352, %357
  br i1 %358, label %359, label %372

359:                                              ; preds = %351
  %360 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %361 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %360, i32 0, i32 2
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %18, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %17, align 4
  %368 = add nsw i32 %367, %366
  store i32 %368, i32* %17, align 4
  br label %369

369:                                              ; preds = %359
  %370 = load i32, i32* %18, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %18, align 4
  br label %351

372:                                              ; preds = %351
  %373 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %374 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = shl i32 1, %375
  %377 = sub nsw i32 %376, 1
  store i32 %377, i32* %18, align 4
  %378 = load i32, i32* %17, align 4
  %379 = sub nsw i32 47802, %378
  store i32 %379, i32* %17, align 4
  %380 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %381 = load i32, i32* %18, align 4
  %382 = call i32 @fxp_write_eeprom(%struct.fxp_softc* %380, i32* %17, i32 %381, i32 1)
  %383 = load i32, i32* %2, align 4
  %384 = load i32, i32* %18, align 4
  %385 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %386 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %385, i32 0, i32 2
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %18, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %17, align 4
  %393 = call i32 (i32, i8*, ...) @device_printf(i32 %383, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %384, i32 %391, i32 %392)
  %394 = load i32, i32* %17, align 4
  %395 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %396 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %395, i32 0, i32 2
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %18, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  store i32 %394, i32* %400, align 4
  %401 = load i32, i32* @FXP_FLAG_CU_RESUME_BUG, align 4
  %402 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %403 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 8
  %405 = or i32 %404, %401
  store i32 %405, i32* %403, align 8
  br label %406

406:                                              ; preds = %372, %323
  br label %407

407:                                              ; preds = %406, %317, %310
  %408 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %409 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @FXP_REV_82557, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %413, label %444

413:                                              ; preds = %407
  %414 = load i32, i32* %2, align 4
  %415 = load i32, i32* @PCIR_COMMAND, align 4
  %416 = call i64 @pci_read_config(i32 %414, i32 %415, i32 2)
  %417 = trunc i64 %416 to i32
  store i32 %417, i32* %8, align 4
  %418 = load i32, i32* %8, align 4
  %419 = load i32, i32* @PCIM_CMD_MWRICEN, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %433

422:                                              ; preds = %413
  %423 = load i32, i32* %2, align 4
  %424 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %425 = call i64 @pci_read_config(i32 %423, i32 %424, i32 1)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %422
  %428 = load i32, i32* @FXP_FLAG_MWI_ENABLE, align 4
  %429 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %430 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 8
  %432 = or i32 %431, %428
  store i32 %432, i32* %430, align 8
  br label %433

433:                                              ; preds = %427, %422, %413
  %434 = load i32, i32* @FXP_FLAG_EXT_TXCB, align 4
  %435 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %436 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = or i32 %437, %434
  store i32 %438, i32* %436, align 8
  %439 = load i32, i32* @FXP_FLAG_LONG_PKT_EN, align 4
  %440 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %441 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = or i32 %442, %439
  store i32 %443, i32* %441, align 8
  br label %450

444:                                              ; preds = %407
  %445 = load i32, i32* @FXP_FLAG_SAVE_BAD, align 4
  %446 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %447 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %446, i32 0, i32 3
  %448 = load i32, i32* %447, align 8
  %449 = or i32 %448, %445
  store i32 %449, i32* %447, align 8
  br label %450

450:                                              ; preds = %444, %433
  %451 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %452 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @FXP_REV_82559_A0, align 8
  %455 = icmp sge i64 %453, %454
  br i1 %455, label %456, label %470

456:                                              ; preds = %450
  %457 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %458 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %457, i32 0, i32 28
  %459 = load %struct.TYPE_4__*, %struct.TYPE_4__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = icmp ne i32 %461, 4617
  br i1 %462, label %463, label %469

463:                                              ; preds = %456
  %464 = load i32, i32* @FXP_FLAG_82559_RXCSUM, align 4
  %465 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %466 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 8
  %468 = or i32 %467, %464
  store i32 %468, i32* %466, align 8
  br label %469

469:                                              ; preds = %463, %456
  br label %470

470:                                              ; preds = %469, %450
  %471 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %472 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %471, i32 0, i32 1
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @FXP_REV_82550, align 8
  %475 = icmp eq i64 %473, %474
  br i1 %475, label %500, label %476

476:                                              ; preds = %470
  %477 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %478 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %477, i32 0, i32 1
  %479 = load i64, i64* %478, align 8
  %480 = load i64, i64* @FXP_REV_82550_C, align 8
  %481 = icmp eq i64 %479, %480
  br i1 %481, label %500, label %482

482:                                              ; preds = %476
  %483 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %484 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @FXP_REV_82551_E, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %500, label %488

488:                                              ; preds = %482
  %489 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %490 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = load i64, i64* @FXP_REV_82551_F, align 8
  %493 = icmp eq i64 %491, %492
  br i1 %493, label %500, label %494

494:                                              ; preds = %488
  %495 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %496 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @FXP_REV_82551_10, align 8
  %499 = icmp eq i64 %497, %498
  br i1 %499, label %500, label %517

500:                                              ; preds = %494, %488, %482, %476, %470
  %501 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %502 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %501, i32 0, i32 5
  store i32 4, i32* %502, align 8
  %503 = load i32, i32* @FXP_CB_COMMAND_IPCBXMIT, align 4
  %504 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %505 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %504, i32 0, i32 27
  store i32 %503, i32* %505, align 8
  %506 = load i32, i32* @FXP_FLAG_EXT_RFA, align 4
  %507 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %508 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %507, i32 0, i32 3
  %509 = load i32, i32* %508, align 8
  %510 = or i32 %509, %506
  store i32 %510, i32* %508, align 8
  %511 = load i32, i32* @FXP_FLAG_82559_RXCSUM, align 4
  %512 = xor i32 %511, -1
  %513 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %514 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 8
  %516 = and i32 %515, %512
  store i32 %516, i32* %514, align 8
  br label %527

517:                                              ; preds = %494
  %518 = load i32, i32* @FXP_RFAX_LEN, align 4
  %519 = sext i32 %518 to i64
  %520 = sub i64 4, %519
  %521 = trunc i64 %520 to i32
  %522 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %523 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %522, i32 0, i32 5
  store i32 %521, i32* %523, align 8
  %524 = load i32, i32* @FXP_CB_COMMAND_XMIT, align 4
  %525 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %526 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %525, i32 0, i32 27
  store i32 %524, i32* %526, align 8
  br label %527

527:                                              ; preds = %517, %500
  %528 = load i32, i32* @FXP_NTXSEG, align 4
  %529 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %530 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %529, i32 0, i32 6
  store i32 %528, i32* %530, align 4
  %531 = load i32, i32* @MCLBYTES, align 4
  %532 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %533 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %532, i32 0, i32 7
  store i32 %531, i32* %533, align 8
  %534 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %535 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %534, i32 0, i32 3
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @FXP_FLAG_EXT_RFA, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %548

540:                                              ; preds = %527
  %541 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %542 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %541, i32 0, i32 6
  %543 = load i32, i32* %542, align 4
  %544 = add nsw i32 %543, -1
  store i32 %544, i32* %542, align 4
  %545 = load i32, i32* @FXP_TSO_SEGSIZE, align 4
  %546 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %547 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %546, i32 0, i32 7
  store i32 %545, i32* %547, align 8
  br label %548

548:                                              ; preds = %540, %527
  %549 = load i32, i32* %2, align 4
  %550 = call i32 @bus_get_dma_tag(i32 %549)
  %551 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %552 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %553 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %554 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %553, i32 0, i32 7
  %555 = load i32, i32* %554, align 8
  %556 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %557 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %556, i32 0, i32 6
  %558 = load i32, i32* %557, align 4
  %559 = mul nsw i32 %555, %558
  %560 = sext i32 %559 to i64
  %561 = add i64 %560, 4
  %562 = trunc i64 %561 to i32
  %563 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %564 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %563, i32 0, i32 6
  %565 = load i32, i32* %564, align 4
  %566 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %567 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %566, i32 0, i32 7
  %568 = load i32, i32* %567, align 8
  %569 = load i32, i32* @busdma_lock_mutex, align 4
  %570 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %571 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %570, i32 0, i32 16
  %572 = call i32 @bus_dma_tag_create(i32 %550, i32 2, i32 0, i32 %551, i32 %552, i32* null, i32* null, i32 %562, i32 %565, i32 %568, i32 0, i32 %569, i32* @Giant, i32* %571)
  store i32 %572, i32* %12, align 4
  %573 = load i32, i32* %12, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %578

575:                                              ; preds = %548
  %576 = load i32, i32* %2, align 4
  %577 = call i32 (i32, i8*, ...) @device_printf(i32 %576, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %1154

578:                                              ; preds = %548
  %579 = load i32, i32* %2, align 4
  %580 = call i32 @bus_get_dma_tag(i32 %579)
  %581 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %582 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %583 = load i32, i32* @MCLBYTES, align 4
  %584 = load i32, i32* @MCLBYTES, align 4
  %585 = load i32, i32* @busdma_lock_mutex, align 4
  %586 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %587 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %586, i32 0, i32 13
  %588 = call i32 @bus_dma_tag_create(i32 %580, i32 2, i32 0, i32 %581, i32 %582, i32* null, i32* null, i32 %583, i32 1, i32 %584, i32 0, i32 %585, i32* @Giant, i32* %587)
  store i32 %588, i32* %12, align 4
  %589 = load i32, i32* %12, align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %594

591:                                              ; preds = %578
  %592 = load i32, i32* %2, align 4
  %593 = call i32 (i32, i8*, ...) @device_printf(i32 %592, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %1154

594:                                              ; preds = %578
  %595 = load i32, i32* %2, align 4
  %596 = call i32 @bus_get_dma_tag(i32 %595)
  %597 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %598 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %599 = load i32, i32* @busdma_lock_mutex, align 4
  %600 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %601 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %600, i32 0, i32 26
  %602 = call i32 @bus_dma_tag_create(i32 %596, i32 4, i32 0, i32 %597, i32 %598, i32* null, i32* null, i32 4, i32 1, i32 4, i32 0, i32 %599, i32* @Giant, i32* %601)
  store i32 %602, i32* %12, align 4
  %603 = load i32, i32* %12, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %594
  %606 = load i32, i32* %2, align 4
  %607 = call i32 (i32, i8*, ...) @device_printf(i32 %606, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %1154

608:                                              ; preds = %594
  %609 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %610 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %609, i32 0, i32 26
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %613 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %612, i32 0, i32 24
  %614 = bitcast %struct.fxp_cb_tx** %613 to i8**
  %615 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %616 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %617 = or i32 %615, %616
  %618 = load i32, i32* @BUS_DMA_ZERO, align 4
  %619 = or i32 %617, %618
  %620 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %621 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %620, i32 0, i32 25
  %622 = call i32 @bus_dmamem_alloc(i32 %611, i8** %614, i32 %619, i32* %621)
  store i32 %622, i32* %12, align 4
  %623 = load i32, i32* %12, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %628

625:                                              ; preds = %608
  %626 = load i32, i32* %2, align 4
  %627 = call i32 (i32, i8*, ...) @device_printf(i32 %626, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %1154

628:                                              ; preds = %608
  %629 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %630 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %629, i32 0, i32 26
  %631 = load i32, i32* %630, align 4
  %632 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %633 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %632, i32 0, i32 25
  %634 = load i32, i32* %633, align 8
  %635 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %636 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %635, i32 0, i32 24
  %637 = load %struct.fxp_cb_tx*, %struct.fxp_cb_tx** %636, align 8
  %638 = load i32, i32* @fxp_dma_map_addr, align 4
  %639 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %640 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %639, i32 0, i32 23
  %641 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %642 = call i32 @bus_dmamap_load(i32 %631, i32 %634, %struct.fxp_cb_tx* %637, i32 4, i32 %638, i32* %640, i32 %641)
  store i32 %642, i32* %12, align 4
  %643 = load i32, i32* %12, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %648

645:                                              ; preds = %628
  %646 = load i32, i32* %2, align 4
  %647 = call i32 (i32, i8*, ...) @device_printf(i32 %646, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %1154

648:                                              ; preds = %628
  %649 = load i32, i32* %2, align 4
  %650 = call i32 @bus_get_dma_tag(i32 %649)
  %651 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %652 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %653 = load i32, i32* @FXP_TXCB_SZ, align 4
  %654 = load i32, i32* @FXP_TXCB_SZ, align 4
  %655 = load i32, i32* @busdma_lock_mutex, align 4
  %656 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %657 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %656, i32 0, i32 22
  %658 = call i32 @bus_dma_tag_create(i32 %650, i32 4, i32 0, i32 %651, i32 %652, i32* null, i32* null, i32 %653, i32 1, i32 %654, i32 0, i32 %655, i32* @Giant, i32* %657)
  store i32 %658, i32* %12, align 4
  %659 = load i32, i32* %12, align 4
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %664

661:                                              ; preds = %648
  %662 = load i32, i32* %2, align 4
  %663 = call i32 (i32, i8*, ...) @device_printf(i32 %662, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  br label %1154

664:                                              ; preds = %648
  %665 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %666 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %665, i32 0, i32 22
  %667 = load i32, i32* %666, align 4
  %668 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %669 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %668, i32 0, i32 14
  %670 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %669, i32 0, i32 3
  %671 = bitcast %struct.fxp_cb_tx** %670 to i8**
  %672 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %673 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %674 = or i32 %672, %673
  %675 = load i32, i32* @BUS_DMA_ZERO, align 4
  %676 = or i32 %674, %675
  %677 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %678 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %677, i32 0, i32 21
  %679 = call i32 @bus_dmamem_alloc(i32 %667, i8** %671, i32 %676, i32* %678)
  store i32 %679, i32* %12, align 4
  %680 = load i32, i32* %12, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %685

682:                                              ; preds = %664
  %683 = load i32, i32* %2, align 4
  %684 = call i32 (i32, i8*, ...) @device_printf(i32 %683, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  br label %1154

685:                                              ; preds = %664
  %686 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %687 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %686, i32 0, i32 22
  %688 = load i32, i32* %687, align 4
  %689 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %690 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %689, i32 0, i32 21
  %691 = load i32, i32* %690, align 8
  %692 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %693 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %692, i32 0, i32 14
  %694 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %693, i32 0, i32 3
  %695 = load %struct.fxp_cb_tx*, %struct.fxp_cb_tx** %694, align 8
  %696 = load i32, i32* @FXP_TXCB_SZ, align 4
  %697 = load i32, i32* @fxp_dma_map_addr, align 4
  %698 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %699 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %698, i32 0, i32 14
  %700 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %699, i32 0, i32 5
  %701 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %702 = call i32 @bus_dmamap_load(i32 %688, i32 %691, %struct.fxp_cb_tx* %695, i32 %696, i32 %697, i32* %700, i32 %701)
  store i32 %702, i32* %12, align 4
  %703 = load i32, i32* %12, align 4
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %708

705:                                              ; preds = %685
  %706 = load i32, i32* %2, align 4
  %707 = call i32 (i32, i8*, ...) @device_printf(i32 %706, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  br label %1154

708:                                              ; preds = %685
  %709 = load i32, i32* %2, align 4
  %710 = call i32 @bus_get_dma_tag(i32 %709)
  %711 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %712 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %713 = load i32, i32* @busdma_lock_mutex, align 4
  %714 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %715 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %714, i32 0, i32 20
  %716 = call i32 @bus_dma_tag_create(i32 %710, i32 4, i32 0, i32 %711, i32 %712, i32* null, i32* null, i32 4, i32 1, i32 4, i32 0, i32 %713, i32* @Giant, i32* %715)
  store i32 %716, i32* %12, align 4
  %717 = load i32, i32* %12, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %722

719:                                              ; preds = %708
  %720 = load i32, i32* %2, align 4
  %721 = call i32 (i32, i8*, ...) @device_printf(i32 %720, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  br label %1154

722:                                              ; preds = %708
  %723 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %724 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %723, i32 0, i32 20
  %725 = load i32, i32* %724, align 4
  %726 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %727 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %726, i32 0, i32 18
  %728 = bitcast %struct.fxp_cb_tx** %727 to i8**
  %729 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %730 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %731 = or i32 %729, %730
  %732 = load i32, i32* @BUS_DMA_ZERO, align 4
  %733 = or i32 %731, %732
  %734 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %735 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %734, i32 0, i32 19
  %736 = call i32 @bus_dmamem_alloc(i32 %725, i8** %728, i32 %733, i32* %735)
  store i32 %736, i32* %12, align 4
  %737 = load i32, i32* %12, align 4
  %738 = icmp ne i32 %737, 0
  br i1 %738, label %739, label %742

739:                                              ; preds = %722
  %740 = load i32, i32* %2, align 4
  %741 = call i32 (i32, i8*, ...) @device_printf(i32 %740, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  br label %1154

742:                                              ; preds = %722
  %743 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %744 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %743, i32 0, i32 20
  %745 = load i32, i32* %744, align 4
  %746 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %747 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %746, i32 0, i32 19
  %748 = load i32, i32* %747, align 8
  %749 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %750 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %749, i32 0, i32 18
  %751 = load %struct.fxp_cb_tx*, %struct.fxp_cb_tx** %750, align 8
  %752 = load i32, i32* @fxp_dma_map_addr, align 4
  %753 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %754 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %753, i32 0, i32 17
  %755 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %756 = call i32 @bus_dmamap_load(i32 %745, i32 %748, %struct.fxp_cb_tx* %751, i32 4, i32 %752, i32* %754, i32 %755)
  store i32 %756, i32* %12, align 4
  %757 = load i32, i32* %12, align 4
  %758 = icmp ne i32 %757, 0
  br i1 %758, label %759, label %762

759:                                              ; preds = %742
  %760 = load i32, i32* %2, align 4
  %761 = call i32 (i32, i8*, ...) @device_printf(i32 %760, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0))
  br label %1154

762:                                              ; preds = %742
  %763 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %764 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %763, i32 0, i32 14
  %765 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %764, i32 0, i32 4
  %766 = load %struct.fxp_tx*, %struct.fxp_tx** %765, align 8
  store %struct.fxp_tx* %766, %struct.fxp_tx** %5, align 8
  %767 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %768 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %767, i32 0, i32 14
  %769 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %768, i32 0, i32 3
  %770 = load %struct.fxp_cb_tx*, %struct.fxp_cb_tx** %769, align 8
  store %struct.fxp_cb_tx* %770, %struct.fxp_cb_tx** %4, align 8
  store i32 0, i32* %14, align 4
  br label %771

771:                                              ; preds = %800, %762
  %772 = load i32, i32* %14, align 4
  %773 = load i32, i32* @FXP_NTXCB, align 4
  %774 = icmp slt i32 %772, %773
  br i1 %774, label %775, label %803

775:                                              ; preds = %771
  %776 = load %struct.fxp_cb_tx*, %struct.fxp_cb_tx** %4, align 8
  %777 = load i32, i32* %14, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.fxp_cb_tx, %struct.fxp_cb_tx* %776, i64 %778
  %780 = load %struct.fxp_tx*, %struct.fxp_tx** %5, align 8
  %781 = load i32, i32* %14, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %780, i64 %782
  %784 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %783, i32 0, i32 1
  store %struct.fxp_cb_tx* %779, %struct.fxp_cb_tx** %784, align 8
  %785 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %786 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %785, i32 0, i32 16
  %787 = load i32, i32* %786, align 4
  %788 = load %struct.fxp_tx*, %struct.fxp_tx** %5, align 8
  %789 = load i32, i32* %14, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %788, i64 %790
  %792 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %791, i32 0, i32 0
  %793 = call i32 @bus_dmamap_create(i32 %787, i32 0, i32* %792)
  store i32 %793, i32* %12, align 4
  %794 = load i32, i32* %12, align 4
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %796, label %799

796:                                              ; preds = %775
  %797 = load i32, i32* %2, align 4
  %798 = call i32 (i32, i8*, ...) @device_printf(i32 %797, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  br label %1154

799:                                              ; preds = %775
  br label %800

800:                                              ; preds = %799
  %801 = load i32, i32* %14, align 4
  %802 = add nsw i32 %801, 1
  store i32 %802, i32* %14, align 4
  br label %771

803:                                              ; preds = %771
  %804 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %805 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %804, i32 0, i32 13
  %806 = load i32, i32* %805, align 8
  %807 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %808 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %807, i32 0, i32 15
  %809 = call i32 @bus_dmamap_create(i32 %806, i32 0, i32* %808)
  store i32 %809, i32* %12, align 4
  %810 = load i32, i32* %12, align 4
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %812, label %815

812:                                              ; preds = %803
  %813 = load i32, i32* %2, align 4
  %814 = call i32 (i32, i8*, ...) @device_printf(i32 %813, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  br label %1154

815:                                              ; preds = %803
  %816 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %817 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %816, i32 0, i32 14
  %818 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %817, i32 0, i32 1
  store i32* null, i32** %818, align 8
  %819 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %820 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %819, i32 0, i32 14
  %821 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %820, i32 0, i32 2
  store i32 0, i32* %821, align 8
  store i32 0, i32* %14, align 4
  br label %822

822:                                              ; preds = %856, %815
  %823 = load i32, i32* %14, align 4
  %824 = load i32, i32* @FXP_NRFABUFS, align 4
  %825 = icmp slt i32 %823, %824
  br i1 %825, label %826, label %859

826:                                              ; preds = %822
  %827 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %828 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %827, i32 0, i32 14
  %829 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %828, i32 0, i32 0
  %830 = load %struct.fxp_rx*, %struct.fxp_rx** %829, align 8
  %831 = load i32, i32* %14, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %830, i64 %832
  store %struct.fxp_rx* %833, %struct.fxp_rx** %6, align 8
  %834 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %835 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %834, i32 0, i32 13
  %836 = load i32, i32* %835, align 8
  %837 = load %struct.fxp_rx*, %struct.fxp_rx** %6, align 8
  %838 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %837, i32 0, i32 0
  %839 = call i32 @bus_dmamap_create(i32 %836, i32 0, i32* %838)
  store i32 %839, i32* %12, align 4
  %840 = load i32, i32* %12, align 4
  %841 = icmp ne i32 %840, 0
  br i1 %841, label %842, label %845

842:                                              ; preds = %826
  %843 = load i32, i32* %2, align 4
  %844 = call i32 (i32, i8*, ...) @device_printf(i32 %843, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  br label %1154

845:                                              ; preds = %826
  %846 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %847 = load %struct.fxp_rx*, %struct.fxp_rx** %6, align 8
  %848 = call i64 @fxp_new_rfabuf(%struct.fxp_softc* %846, %struct.fxp_rx* %847)
  %849 = icmp ne i64 %848, 0
  br i1 %849, label %850, label %852

850:                                              ; preds = %845
  %851 = load i32, i32* @ENOMEM, align 4
  store i32 %851, i32* %12, align 4
  br label %1154

852:                                              ; preds = %845
  %853 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %854 = load %struct.fxp_rx*, %struct.fxp_rx** %6, align 8
  %855 = call i32 @fxp_add_rfabuf(%struct.fxp_softc* %853, %struct.fxp_rx* %854)
  br label %856

856:                                              ; preds = %852
  %857 = load i32, i32* %14, align 4
  %858 = add nsw i32 %857, 1
  store i32 %858, i32* %14, align 4
  br label %822

859:                                              ; preds = %822
  %860 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %861 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %860, i32 0, i32 2
  %862 = load i32*, i32** %861, align 8
  %863 = load i64, i64* @FXP_EEPROM_MAP_IA0, align 8
  %864 = getelementptr inbounds i32, i32* %862, i64 %863
  %865 = load i32, i32* %864, align 4
  %866 = and i32 %865, 255
  %867 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %866, i32* %867, align 16
  %868 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %869 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %868, i32 0, i32 2
  %870 = load i32*, i32** %869, align 8
  %871 = load i64, i64* @FXP_EEPROM_MAP_IA0, align 8
  %872 = getelementptr inbounds i32, i32* %870, i64 %871
  %873 = load i32, i32* %872, align 4
  %874 = ashr i32 %873, 8
  %875 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %874, i32* %875, align 4
  %876 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %877 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %876, i32 0, i32 2
  %878 = load i32*, i32** %877, align 8
  %879 = load i64, i64* @FXP_EEPROM_MAP_IA1, align 8
  %880 = getelementptr inbounds i32, i32* %878, i64 %879
  %881 = load i32, i32* %880, align 4
  %882 = and i32 %881, 255
  %883 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %882, i32* %883, align 8
  %884 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %885 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %884, i32 0, i32 2
  %886 = load i32*, i32** %885, align 8
  %887 = load i64, i64* @FXP_EEPROM_MAP_IA1, align 8
  %888 = getelementptr inbounds i32, i32* %886, i64 %887
  %889 = load i32, i32* %888, align 4
  %890 = ashr i32 %889, 8
  %891 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 %890, i32* %891, align 4
  %892 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %893 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %892, i32 0, i32 2
  %894 = load i32*, i32** %893, align 8
  %895 = load i64, i64* @FXP_EEPROM_MAP_IA2, align 8
  %896 = getelementptr inbounds i32, i32* %894, i64 %895
  %897 = load i32, i32* %896, align 4
  %898 = and i32 %897, 255
  %899 = getelementptr inbounds i32, i32* %22, i64 4
  store i32 %898, i32* %899, align 16
  %900 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %901 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %900, i32 0, i32 2
  %902 = load i32*, i32** %901, align 8
  %903 = load i64, i64* @FXP_EEPROM_MAP_IA2, align 8
  %904 = getelementptr inbounds i32, i32* %902, i64 %903
  %905 = load i32, i32* %904, align 4
  %906 = ashr i32 %905, 8
  %907 = getelementptr inbounds i32, i32* %22, i64 5
  store i32 %906, i32* %907, align 4
  %908 = load i64, i64* @bootverbose, align 8
  %909 = icmp ne i64 %908, 0
  br i1 %909, label %910, label %935

910:                                              ; preds = %859
  %911 = load i32, i32* %2, align 4
  %912 = load i32, i32* %2, align 4
  %913 = call i32 @pci_get_vendor(i32 %912)
  %914 = load i32, i32* %2, align 4
  %915 = call i32 @pci_get_device(i32 %914)
  %916 = load i32, i32* %2, align 4
  %917 = call i32 @pci_get_subvendor(i32 %916)
  %918 = load i32, i32* %2, align 4
  %919 = call i32 @pci_get_subdevice(i32 %918)
  %920 = load i32, i32* %2, align 4
  %921 = call i64 @pci_get_revid(i32 %920)
  %922 = call i32 (i32, i8*, ...) @device_printf(i32 %911, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), i32 %913, i32 %915, i32 %917, i32 %919, i64 %921)
  %923 = load i32, i32* %2, align 4
  %924 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %925 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %924, i32 0, i32 2
  %926 = load i32*, i32** %925, align 8
  %927 = load i64, i64* @FXP_EEPROM_MAP_ID, align 8
  %928 = getelementptr inbounds i32, i32* %926, i64 %927
  %929 = load i32, i32* %928, align 4
  %930 = and i32 %929, 2
  %931 = icmp ne i32 %930, 0
  %932 = zext i1 %931 to i64
  %933 = select i1 %931, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)
  %934 = call i32 (i32, i8*, ...) @device_printf(i32 %923, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* %933)
  br label %935

935:                                              ; preds = %910, %859
  %936 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %937 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %936, i32 0, i32 3
  %938 = load i32, i32* %937, align 8
  %939 = load i32, i32* @FXP_FLAG_SERIAL_MEDIA, align 4
  %940 = and i32 %938, %939
  %941 = icmp ne i32 %940, 0
  br i1 %941, label %942, label %955

942:                                              ; preds = %935
  %943 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %944 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %943, i32 0, i32 12
  %945 = load i32, i32* @IFM_ETHER, align 4
  %946 = load i32, i32* @IFM_MANUAL, align 4
  %947 = or i32 %945, %946
  %948 = call i32 @ifmedia_add(i32* %944, i32 %947, i32 0, i32* null)
  %949 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %950 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %949, i32 0, i32 12
  %951 = load i32, i32* @IFM_ETHER, align 4
  %952 = load i32, i32* @IFM_MANUAL, align 4
  %953 = or i32 %951, %952
  %954 = call i32 @ifmedia_set(i32* %950, i32 %953)
  br label %986

955:                                              ; preds = %935
  %956 = load i32, i32* @MIIF_NOISOLATE, align 4
  store i32 %956, i32* %13, align 4
  %957 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %958 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %957, i32 0, i32 1
  %959 = load i64, i64* %958, align 8
  %960 = load i64, i64* @FXP_REV_82558_A4, align 8
  %961 = icmp sge i64 %959, %960
  br i1 %961, label %962, label %966

962:                                              ; preds = %955
  %963 = load i32, i32* @MIIF_DOPAUSE, align 4
  %964 = load i32, i32* %13, align 4
  %965 = or i32 %964, %963
  store i32 %965, i32* %13, align 4
  br label %966

966:                                              ; preds = %962, %955
  %967 = load i32, i32* %2, align 4
  %968 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %969 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %968, i32 0, i32 11
  %970 = load i8*, i8** %7, align 8
  %971 = load i64, i64* @fxp_ifmedia_upd, align 8
  %972 = trunc i64 %971 to i32
  %973 = load i64, i64* @fxp_ifmedia_sts, align 8
  %974 = trunc i64 %973 to i32
  %975 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %976 = load i32, i32* @MII_PHY_ANY, align 4
  %977 = load i32, i32* @MII_OFFSET_ANY, align 4
  %978 = load i32, i32* %13, align 4
  %979 = call i32 @mii_attach(i32 %967, i32* %969, i8* %970, i32 %972, i32 %974, i32 %975, i32 %976, i32 %977, i32 %978)
  store i32 %979, i32* %12, align 4
  %980 = load i32, i32* %12, align 4
  %981 = icmp ne i32 %980, 0
  br i1 %981, label %982, label %985

982:                                              ; preds = %966
  %983 = load i32, i32* %2, align 4
  %984 = call i32 (i32, i8*, ...) @device_printf(i32 %983, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0))
  br label %1154

985:                                              ; preds = %966
  br label %986

986:                                              ; preds = %985, %942
  %987 = load i8*, i8** %7, align 8
  %988 = load i32, i32* %2, align 4
  %989 = call i32 @device_get_name(i32 %988)
  %990 = load i32, i32* %2, align 4
  %991 = call i32 @device_get_unit(i32 %990)
  %992 = call i32 @if_initname(i8* %987, i32 %989, i32 %991)
  %993 = load i8*, i8** %7, align 8
  %994 = load i32, i32* %2, align 4
  %995 = call i32 @if_setdev(i8* %993, i32 %994)
  %996 = load i8*, i8** %7, align 8
  %997 = load i32, i32* @fxp_init, align 4
  %998 = call i32 @if_setinitfn(i8* %996, i32 %997)
  %999 = load i8*, i8** %7, align 8
  %1000 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1001 = call i32 @if_setsoftc(i8* %999, %struct.fxp_softc* %1000)
  %1002 = load i8*, i8** %7, align 8
  %1003 = load i32, i32* @IFF_BROADCAST, align 4
  %1004 = load i32, i32* @IFF_SIMPLEX, align 4
  %1005 = or i32 %1003, %1004
  %1006 = load i32, i32* @IFF_MULTICAST, align 4
  %1007 = or i32 %1005, %1006
  %1008 = call i32 @if_setflags(i8* %1002, i32 %1007)
  %1009 = load i8*, i8** %7, align 8
  %1010 = load i32, i32* @fxp_ioctl, align 4
  %1011 = call i32 @if_setioctlfn(i8* %1009, i32 %1010)
  %1012 = load i8*, i8** %7, align 8
  %1013 = load i32, i32* @fxp_start, align 4
  %1014 = call i32 @if_setstartfn(i8* %1012, i32 %1013)
  %1015 = load i8*, i8** %7, align 8
  %1016 = call i32 @if_setcapabilities(i8* %1015, i32 0)
  %1017 = load i8*, i8** %7, align 8
  %1018 = call i32 @if_setcapenable(i8* %1017, i32 0)
  %1019 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1020 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %1019, i32 0, i32 3
  %1021 = load i32, i32* %1020, align 8
  %1022 = load i32, i32* @FXP_FLAG_EXT_RFA, align 4
  %1023 = and i32 %1021, %1022
  %1024 = icmp ne i32 %1023, 0
  br i1 %1024, label %1025, label %1041

1025:                                             ; preds = %986
  %1026 = load i8*, i8** %7, align 8
  %1027 = load i32, i32* @FXP_CSUM_FEATURES, align 4
  %1028 = load i32, i32* @CSUM_TSO, align 4
  %1029 = or i32 %1027, %1028
  %1030 = call i32 @if_sethwassist(i8* %1026, i32 %1029)
  %1031 = load i8*, i8** %7, align 8
  %1032 = load i32, i32* @IFCAP_HWCSUM, align 4
  %1033 = load i32, i32* @IFCAP_TSO4, align 4
  %1034 = or i32 %1032, %1033
  %1035 = call i32 @if_setcapabilitiesbit(i8* %1031, i32 %1034, i32 0)
  %1036 = load i8*, i8** %7, align 8
  %1037 = load i32, i32* @IFCAP_HWCSUM, align 4
  %1038 = load i32, i32* @IFCAP_TSO4, align 4
  %1039 = or i32 %1037, %1038
  %1040 = call i32 @if_setcapenablebit(i8* %1036, i32 %1039, i32 0)
  br label %1041

1041:                                             ; preds = %1025, %986
  %1042 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1043 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %1042, i32 0, i32 3
  %1044 = load i32, i32* %1043, align 8
  %1045 = load i32, i32* @FXP_FLAG_82559_RXCSUM, align 4
  %1046 = and i32 %1044, %1045
  %1047 = icmp ne i32 %1046, 0
  br i1 %1047, label %1048, label %1055

1048:                                             ; preds = %1041
  %1049 = load i8*, i8** %7, align 8
  %1050 = load i32, i32* @IFCAP_RXCSUM, align 4
  %1051 = call i32 @if_setcapabilitiesbit(i8* %1049, i32 %1050, i32 0)
  %1052 = load i8*, i8** %7, align 8
  %1053 = load i32, i32* @IFCAP_RXCSUM, align 4
  %1054 = call i32 @if_setcapenablebit(i8* %1052, i32 %1053, i32 0)
  br label %1055

1055:                                             ; preds = %1048, %1041
  %1056 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1057 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %1056, i32 0, i32 3
  %1058 = load i32, i32* %1057, align 8
  %1059 = load i32, i32* @FXP_FLAG_WOLCAP, align 4
  %1060 = and i32 %1058, %1059
  %1061 = icmp ne i32 %1060, 0
  br i1 %1061, label %1062, label %1069

1062:                                             ; preds = %1055
  %1063 = load i8*, i8** %7, align 8
  %1064 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %1065 = call i32 @if_setcapabilitiesbit(i8* %1063, i32 %1064, i32 0)
  %1066 = load i8*, i8** %7, align 8
  %1067 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %1068 = call i32 @if_setcapenablebit(i8* %1066, i32 %1067, i32 0)
  br label %1069

1069:                                             ; preds = %1062, %1055
  %1070 = load i8*, i8** %7, align 8
  %1071 = call i32 @ether_ifattach(i8* %1070, i32* %22)
  %1072 = load i8*, i8** %7, align 8
  %1073 = call i32 @if_setifheaderlen(i8* %1072, i32 4)
  %1074 = load i8*, i8** %7, align 8
  %1075 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %1076 = call i32 @if_setcapabilitiesbit(i8* %1074, i32 %1075, i32 0)
  %1077 = load i8*, i8** %7, align 8
  %1078 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %1079 = call i32 @if_setcapenablebit(i8* %1077, i32 %1078, i32 0)
  %1080 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1081 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %1080, i32 0, i32 3
  %1082 = load i32, i32* %1081, align 8
  %1083 = load i32, i32* @FXP_FLAG_EXT_RFA, align 4
  %1084 = and i32 %1082, %1083
  %1085 = icmp ne i32 %1084, 0
  br i1 %1085, label %1086, label %1101

1086:                                             ; preds = %1069
  %1087 = load i8*, i8** %7, align 8
  %1088 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %1089 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %1090 = or i32 %1088, %1089
  %1091 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %1092 = or i32 %1090, %1091
  %1093 = call i32 @if_setcapabilitiesbit(i8* %1087, i32 %1092, i32 0)
  %1094 = load i8*, i8** %7, align 8
  %1095 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %1096 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %1097 = or i32 %1095, %1096
  %1098 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %1099 = or i32 %1097, %1098
  %1100 = call i32 @if_setcapenablebit(i8* %1094, i32 %1099, i32 0)
  br label %1101

1101:                                             ; preds = %1086, %1069
  %1102 = load i8*, i8** %7, align 8
  %1103 = load i32, i32* @FXP_NTXCB, align 4
  %1104 = sub nsw i32 %1103, 1
  %1105 = call i32 @if_setsendqlen(i8* %1102, i32 %1104)
  %1106 = load i8*, i8** %7, align 8
  %1107 = call i32 @if_setsendqready(i8* %1106)
  %1108 = load i32, i32* %2, align 4
  %1109 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1110 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %1109, i32 0, i32 10
  %1111 = load i32*, i32** %1110, align 8
  %1112 = getelementptr inbounds i32, i32* %1111, i64 1
  %1113 = load i32, i32* %1112, align 4
  %1114 = load i32, i32* @INTR_TYPE_NET, align 4
  %1115 = load i32, i32* @INTR_MPSAFE, align 4
  %1116 = or i32 %1114, %1115
  %1117 = load i32, i32* @fxp_intr, align 4
  %1118 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1119 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1120 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %1119, i32 0, i32 9
  %1121 = call i32 @bus_setup_intr(i32 %1108, i32 %1113, i32 %1116, i32* null, i32 %1117, %struct.fxp_softc* %1118, i32* %1120)
  store i32 %1121, i32* %12, align 4
  %1122 = load i32, i32* %12, align 4
  %1123 = icmp ne i32 %1122, 0
  br i1 %1123, label %1124, label %1131

1124:                                             ; preds = %1101
  %1125 = load i32, i32* %2, align 4
  %1126 = call i32 (i32, i8*, ...) @device_printf(i32 %1125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  %1127 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1128 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %1127, i32 0, i32 8
  %1129 = load i8*, i8** %1128, align 8
  %1130 = call i32 @ether_ifdetach(i8* %1129)
  br label %1154

1131:                                             ; preds = %1101
  %1132 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1133 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %1132, i32 0, i32 3
  %1134 = load i32, i32* %1133, align 8
  %1135 = load i32, i32* @FXP_FLAG_WOLCAP, align 4
  %1136 = and i32 %1134, %1135
  %1137 = icmp ne i32 %1136, 0
  br i1 %1137, label %1138, label %1153

1138:                                             ; preds = %1131
  %1139 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1140 = call i32 @FXP_LOCK(%struct.fxp_softc* %1139)
  %1141 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1142 = load i32, i32* @FXP_CSR_PMDR, align 4
  %1143 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1144 = load i32, i32* @FXP_CSR_PMDR, align 4
  %1145 = call i32 @CSR_READ_1(%struct.fxp_softc* %1143, i32 %1144)
  %1146 = call i32 @CSR_WRITE_1(%struct.fxp_softc* %1141, i32 %1142, i32 %1145)
  %1147 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1148 = call i32 @fxp_init_body(%struct.fxp_softc* %1147, i32 0)
  %1149 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1150 = call i32 @fxp_stop(%struct.fxp_softc* %1149)
  %1151 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1152 = call i32 @FXP_UNLOCK(%struct.fxp_softc* %1151)
  br label %1153

1153:                                             ; preds = %1138, %1131
  br label %1154

1154:                                             ; preds = %1153, %1124, %982, %850, %842, %812, %796, %759, %739, %719, %705, %682, %661, %645, %625, %605, %591, %575, %112, %51
  %1155 = load i32, i32* %12, align 4
  %1156 = icmp ne i32 %1155, 0
  br i1 %1156, label %1157, label %1160

1157:                                             ; preds = %1154
  %1158 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %1159 = call i32 @fxp_release(%struct.fxp_softc* %1158)
  br label %1160

1160:                                             ; preds = %1157, %1154
  %1161 = load i32, i32* %12, align 4
  %1162 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %1162)
  ret i32 %1161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.fxp_softc* @device_get_softc(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #2

declare dso_local i8* @if_gethandle(i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @bus_alloc_resources(i32, i64, i32*) #2

declare dso_local i32 @CSR_WRITE_4(%struct.fxp_softc*, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i32 @CSR_WRITE_1(%struct.fxp_softc*, i32, i32) #2

declare dso_local i32 @fxp_autosize_eeprom(%struct.fxp_softc*) #2

declare dso_local i32 @fxp_load_eeprom(%struct.fxp_softc*) #2

declare dso_local %struct.TYPE_4__* @fxp_find_ident(i32) #2

declare dso_local i64 @pci_get_revid(i32) #2

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #2

declare dso_local i32 @fxp_sysctl_node(%struct.fxp_softc*) #2

declare dso_local i32 @fxp_write_eeprom(%struct.fxp_softc*, i32*, i32, i32) #2

declare dso_local i64 @pci_read_config(i32, i32, i32) #2

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #2

declare dso_local i32 @bus_dmamap_load(i32, i32, %struct.fxp_cb_tx*, i32, i32, i32*, i32) #2

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #2

declare dso_local i64 @fxp_new_rfabuf(%struct.fxp_softc*, %struct.fxp_rx*) #2

declare dso_local i32 @fxp_add_rfabuf(%struct.fxp_softc*, %struct.fxp_rx*) #2

declare dso_local i32 @pci_get_vendor(i32) #2

declare dso_local i32 @pci_get_device(i32) #2

declare dso_local i32 @pci_get_subvendor(i32) #2

declare dso_local i32 @pci_get_subdevice(i32) #2

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #2

declare dso_local i32 @ifmedia_set(i32*, i32) #2

declare dso_local i32 @mii_attach(i32, i32*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @if_initname(i8*, i32, i32) #2

declare dso_local i32 @if_setdev(i8*, i32) #2

declare dso_local i32 @if_setinitfn(i8*, i32) #2

declare dso_local i32 @if_setsoftc(i8*, %struct.fxp_softc*) #2

declare dso_local i32 @if_setflags(i8*, i32) #2

declare dso_local i32 @if_setioctlfn(i8*, i32) #2

declare dso_local i32 @if_setstartfn(i8*, i32) #2

declare dso_local i32 @if_setcapabilities(i8*, i32) #2

declare dso_local i32 @if_setcapenable(i8*, i32) #2

declare dso_local i32 @if_sethwassist(i8*, i32) #2

declare dso_local i32 @if_setcapabilitiesbit(i8*, i32, i32) #2

declare dso_local i32 @if_setcapenablebit(i8*, i32, i32) #2

declare dso_local i32 @ether_ifattach(i8*, i32*) #2

declare dso_local i32 @if_setifheaderlen(i8*, i32) #2

declare dso_local i32 @if_setsendqlen(i8*, i32) #2

declare dso_local i32 @if_setsendqready(i8*) #2

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.fxp_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(i8*) #2

declare dso_local i32 @FXP_LOCK(%struct.fxp_softc*) #2

declare dso_local i32 @CSR_READ_1(%struct.fxp_softc*, i32) #2

declare dso_local i32 @fxp_init_body(%struct.fxp_softc*, i32) #2

declare dso_local i32 @fxp_stop(%struct.fxp_softc*) #2

declare dso_local i32 @FXP_UNLOCK(%struct.fxp_softc*) #2

declare dso_local i32 @fxp_release(%struct.fxp_softc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
