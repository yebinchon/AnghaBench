; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, i32, i64, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32*, %struct.TYPE_4__, i32, i32, i32, %struct.ifnet*, i32*, i8*, i8*, i32*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32*, i32, i32, i32 }
%struct.ifnet = type { i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, %struct.xl_softc* }
%struct.TYPE_5__ = type { i64 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@xl_ifmedia_upd = common dso_local global i32 0, align 4
@xl_ifmedia_sts = common dso_local global i32 0, align 4
@TC_DEVICEID_HURRICANE_555 = common dso_local global i32 0, align 4
@XL_FLAG_EEPROM_OFFSET_30 = common dso_local global i32 0, align 4
@XL_FLAG_PHYOK = common dso_local global i32 0, align 4
@TC_DEVICEID_HURRICANE_556 = common dso_local global i32 0, align 4
@TC_DEVICEID_HURRICANE_556B = common dso_local global i32 0, align 4
@XL_FLAG_FUNCREG = common dso_local global i32 0, align 4
@XL_FLAG_WEIRDRESET = common dso_local global i32 0, align 4
@XL_FLAG_INVERT_LED_PWR = common dso_local global i32 0, align 4
@XL_FLAG_INVERT_MII_PWR = common dso_local global i32 0, align 4
@XL_FLAG_8BITROM = common dso_local global i32 0, align 4
@XL_FLAG_NO_XCVR_PWR = common dso_local global i32 0, align 4
@TC_DEVICEID_HURRICANE_656B = common dso_local global i32 0, align 4
@TC_DEVICEID_TORNADO_656C = common dso_local global i32 0, align 4
@TC_DEVICEID_HURRICANE_656 = common dso_local global i32 0, align 4
@TC_DEVICEID_TORNADO_10_100BT_920B = common dso_local global i32 0, align 4
@TC_DEVICEID_TORNADO_10_100BT_920B_WNM = common dso_local global i32 0, align 4
@XL_FLAG_NO_MMIO = common dso_local global i32 0, align 4
@XL_PCI_LOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@XL_FLAG_USE_MMIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"using memory mapped I/O\0A\00", align 1
@XL_PCI_LOIO = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"couldn't map ports/memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"using port I/O\0A\00", align 1
@XL_PCI_FUNCMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't map funcreg memory\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@XL_EE_OEM_ADR0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to read station address\0A\00", align 1
@xl_rxeof_task = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@XL_RX_LIST_SZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to allocate rx dma tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"no memory for rx list buffers!\0A\00", align 1
@xl_dma_map_addr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"cannot get dma address of the rx ring!\0A\00", align 1
@XL_TX_LIST_SZ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"failed to allocate tx dma tag\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"no memory for list buffers!\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"cannot get dma address of the tx ring!\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@XL_MAXFRAGS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"failed to allocate mbuf dma tag\0A\00", align 1
@XL_EE_CAPS = common dso_local global i32 0, align 4
@XL_CAPS_NO_TXLENGTH = common dso_local global i32 0, align 4
@XL_CAPS_LARGE_PKTS = common dso_local global i32 0, align 4
@XL_TYPE_905B = common dso_local global i64 0, align 8
@XL_TYPE_90X = common dso_local global i64 0, align 8
@XL_CAPS_PWRMGMT = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@XL_FLAG_WOL = common dso_local global i32 0, align 4
@XL_EE_SOFTINFO2 = common dso_local global i32 0, align 4
@XL_SINFO2_AUX_WOL_CON = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"No auxiliary remote wakeup connector!\0A\00", align 1
@XL_MIN_FRAMELEN = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@xl_ioctl = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@XL905B_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@xl_start = common dso_local global i32 0, align 4
@xl_init = common dso_local global i32 0, align 4
@XL_TX_LIST_CNT = common dso_local global i64 0, align 8
@XL_W3_MEDIA_OPT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"media options word: %x\0A\00", align 1
@XL_EE_ICFG_0 = common dso_local global i32 0, align 4
@XL_ICFG_CONNECTOR_MASK = common dso_local global i32 0, align 4
@XL_ICFG_CONNECTOR_BITS = common dso_local global i32 0, align 4
@XL_MEDIAOPT_MII = common dso_local global i32 0, align 4
@XL_MEDIAOPT_BTX = common dso_local global i32 0, align 4
@XL_MEDIAOPT_BT4 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"found MII/AUTO\0A\00", align 1
@MII_PHY_ANY = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@XL_XCVR_AUTO = common dso_local global i32 0, align 4
@XL_MEDIAOPT_BT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"found 10baseT\0A\00", align 1
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@XL_CAPS_FULL_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@XL_MEDIAOPT_AUI = common dso_local global i32 0, align 4
@XL_MEDIAOPT_10FL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"found 10baseFL\0A\00", align 1
@IFM_10_FL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"found AUI\0A\00", align 1
@IFM_10_5 = common dso_local global i32 0, align 4
@XL_MEDIAOPT_BNC = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"found BNC\0A\00", align 1
@IFM_10_2 = common dso_local global i32 0, align 4
@XL_MEDIAOPT_BFX = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"found 100baseFX\0A\00", align 1
@IFM_100_FX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@XL_W0_MFG_ID = common dso_local global i32 0, align 4
@XL_NO_XCVR_PWR_MAGICBITS = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@xl_intr = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca %struct.xl_softc*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %17 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %3, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %4, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call %struct.xl_softc* @device_get_softc(i32 %21)
  store %struct.xl_softc* %22, %struct.xl_softc** %7, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %25 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %24, i32 0, i32 24
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @device_get_unit(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %29 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %28, i32 0, i32 15
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @device_get_nameunit(i32 %30)
  %32 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %33 = load i32, i32* @MTX_DEF, align 4
  %34 = call i32 @mtx_init(i32* %29, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %36 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %35, i32 0, i32 8
  %37 = load i32, i32* @xl_ifmedia_upd, align 4
  %38 = load i32, i32* @xl_ifmedia_sts, align 4
  %39 = call i32 @ifmedia_init(i32* %36, i32 0, i32 %37, i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @pci_get_device(i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %43 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @TC_DEVICEID_HURRICANE_555, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %1
  %48 = load i32, i32* @XL_FLAG_EEPROM_OFFSET_30, align 4
  %49 = load i32, i32* @XL_FLAG_PHYOK, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %52 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %47, %1
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @TC_DEVICEID_HURRICANE_556, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @TC_DEVICEID_HURRICANE_556B, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59, %55
  %64 = load i32, i32* @XL_FLAG_FUNCREG, align 4
  %65 = load i32, i32* @XL_FLAG_PHYOK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @XL_FLAG_EEPROM_OFFSET_30, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @XL_FLAG_WEIRDRESET, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @XL_FLAG_INVERT_LED_PWR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @XL_FLAG_INVERT_MII_PWR, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %76 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %63, %59
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @TC_DEVICEID_HURRICANE_555, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @TC_DEVICEID_HURRICANE_556, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @XL_FLAG_8BITROM, align 4
  %89 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %90 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %83
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @TC_DEVICEID_HURRICANE_556B, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* @XL_FLAG_NO_XCVR_PWR, align 4
  %99 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %100 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %93
  %104 = load i32, i32* %16, align 4
  %105 = icmp eq i32 %104, 129
  br i1 %105, label %117, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %16, align 4
  %108 = icmp eq i32 %107, 128
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @TC_DEVICEID_HURRICANE_656B, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @TC_DEVICEID_TORNADO_656C, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113, %109, %106, %103
  %118 = load i32, i32* @XL_FLAG_FUNCREG, align 4
  %119 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %120 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %113
  %124 = load i32, i32* %16, align 4
  %125 = icmp eq i32 %124, 130
  br i1 %125, label %140, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %16, align 4
  %128 = icmp eq i32 %127, 129
  br i1 %128, label %140, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %16, align 4
  %131 = icmp eq i32 %130, 128
  br i1 %131, label %140, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* @TC_DEVICEID_HURRICANE_656B, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* @TC_DEVICEID_TORNADO_656C, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %136, %132, %129, %126, %123
  %141 = load i32, i32* @XL_FLAG_PHYOK, align 4
  %142 = load i32, i32* @XL_FLAG_EEPROM_OFFSET_30, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @XL_FLAG_8BITROM, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %147 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %140, %136
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* @TC_DEVICEID_HURRICANE_656, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i32, i32* @XL_FLAG_FUNCREG, align 4
  %156 = load i32, i32* @XL_FLAG_PHYOK, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %159 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %154, %150
  %163 = load i32, i32* %16, align 4
  %164 = icmp eq i32 %163, 129
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32, i32* @XL_FLAG_INVERT_LED_PWR, align 4
  %167 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %168 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %162
  %172 = load i32, i32* %16, align 4
  %173 = icmp eq i32 %172, 128
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i32, i32* @XL_FLAG_INVERT_MII_PWR, align 4
  %176 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %177 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %174, %171
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* @TC_DEVICEID_TORNADO_656C, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load i32, i32* @XL_FLAG_INVERT_MII_PWR, align 4
  %186 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %187 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %180
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* @TC_DEVICEID_HURRICANE_656, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* @TC_DEVICEID_HURRICANE_656B, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %194, %190
  %199 = load i32, i32* @XL_FLAG_INVERT_MII_PWR, align 4
  %200 = load i32, i32* @XL_FLAG_INVERT_LED_PWR, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %203 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %198, %194
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* @TC_DEVICEID_TORNADO_10_100BT_920B, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* @TC_DEVICEID_TORNADO_10_100BT_920B_WNM, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %210, %206
  %215 = load i32, i32* @XL_FLAG_PHYOK, align 4
  %216 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %217 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %210
  %221 = load i32, i32* %16, align 4
  switch i32 %221, label %228 [
    i32 131, label %222
    i32 130, label %222
    i32 129, label %222
    i32 128, label %222
  ]

222:                                              ; preds = %220, %220, %220, %220
  %223 = load i32, i32* @XL_FLAG_NO_MMIO, align 4
  %224 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %225 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %229

228:                                              ; preds = %220
  br label %229

229:                                              ; preds = %228, %222
  %230 = load i32, i32* %2, align 4
  %231 = call i32 @pci_enable_busmaster(i32 %230)
  %232 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %233 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @XL_FLAG_NO_MMIO, align 4
  %236 = and i32 %234, %235
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %229
  %239 = load i32, i32* @XL_PCI_LOMEM, align 4
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %240, i32* %14, align 4
  %241 = load i32, i32* %2, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* @RF_ACTIVE, align 4
  %244 = call i8* @bus_alloc_resource_any(i32 %241, i32 %242, i32* %13, i32 %243)
  %245 = bitcast i8* %244 to i32*
  %246 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %247 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %246, i32 0, i32 21
  store i32* %245, i32** %247, align 8
  br label %248

248:                                              ; preds = %238, %229
  %249 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %250 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %249, i32 0, i32 21
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %265

253:                                              ; preds = %248
  %254 = load i32, i32* @XL_FLAG_USE_MMIO, align 4
  %255 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %256 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load i64, i64* @bootverbose, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %253
  %262 = load i32, i32* %2, align 4
  %263 = call i32 (i32, i8*, ...) @device_printf(i32 %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %264

264:                                              ; preds = %261, %253
  br label %290

265:                                              ; preds = %248
  %266 = load i32, i32* @XL_PCI_LOIO, align 4
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %267, i32* %14, align 4
  %268 = load i32, i32* %2, align 4
  %269 = load i32, i32* %14, align 4
  %270 = load i32, i32* @RF_ACTIVE, align 4
  %271 = call i8* @bus_alloc_resource_any(i32 %268, i32 %269, i32* %13, i32 %270)
  %272 = bitcast i8* %271 to i32*
  %273 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %274 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %273, i32 0, i32 21
  store i32* %272, i32** %274, align 8
  %275 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %276 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %275, i32 0, i32 21
  %277 = load i32*, i32** %276, align 8
  %278 = icmp eq i32* %277, null
  br i1 %278, label %279, label %283

279:                                              ; preds = %265
  %280 = load i32, i32* %2, align 4
  %281 = call i32 (i32, i8*, ...) @device_printf(i32 %280, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %282 = load i32, i32* @ENXIO, align 4
  store i32 %282, i32* %11, align 4
  br label %1073

283:                                              ; preds = %265
  %284 = load i64, i64* @bootverbose, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i32, i32* %2, align 4
  %288 = call i32 (i32, i8*, ...) @device_printf(i32 %287, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %289

289:                                              ; preds = %286, %283
  br label %290

290:                                              ; preds = %289, %264
  %291 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %292 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %291, i32 0, i32 21
  %293 = load i32*, i32** %292, align 8
  %294 = call i8* @rman_get_bustag(i32* %293)
  %295 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %296 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %295, i32 0, i32 23
  store i8* %294, i8** %296, align 8
  %297 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %298 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %297, i32 0, i32 21
  %299 = load i32*, i32** %298, align 8
  %300 = call i8* @rman_get_bushandle(i32* %299)
  %301 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %302 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %301, i32 0, i32 22
  store i8* %300, i8** %302, align 8
  %303 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %304 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @XL_FLAG_FUNCREG, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %339

309:                                              ; preds = %290
  %310 = load i32, i32* @XL_PCI_FUNCMEM, align 4
  store i32 %310, i32* %13, align 4
  %311 = load i32, i32* %2, align 4
  %312 = load i32, i32* @SYS_RES_MEMORY, align 4
  %313 = load i32, i32* @RF_ACTIVE, align 4
  %314 = call i8* @bus_alloc_resource_any(i32 %311, i32 %312, i32* %13, i32 %313)
  %315 = bitcast i8* %314 to i32*
  %316 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %317 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %316, i32 0, i32 18
  store i32* %315, i32** %317, align 8
  %318 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %319 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %318, i32 0, i32 18
  %320 = load i32*, i32** %319, align 8
  %321 = icmp eq i32* %320, null
  br i1 %321, label %322, label %326

322:                                              ; preds = %309
  %323 = load i32, i32* %2, align 4
  %324 = call i32 (i32, i8*, ...) @device_printf(i32 %323, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %325 = load i32, i32* @ENXIO, align 4
  store i32 %325, i32* %11, align 4
  br label %1073

326:                                              ; preds = %309
  %327 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %328 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %327, i32 0, i32 18
  %329 = load i32*, i32** %328, align 8
  %330 = call i8* @rman_get_bustag(i32* %329)
  %331 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %332 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %331, i32 0, i32 20
  store i8* %330, i8** %332, align 8
  %333 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %334 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %333, i32 0, i32 18
  %335 = load i32*, i32** %334, align 8
  %336 = call i8* @rman_get_bushandle(i32* %335)
  %337 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %338 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %337, i32 0, i32 19
  store i8* %336, i8** %338, align 8
  br label %339

339:                                              ; preds = %326, %290
  store i32 0, i32* %13, align 4
  %340 = load i32, i32* %2, align 4
  %341 = load i32, i32* @SYS_RES_IRQ, align 4
  %342 = load i32, i32* @RF_SHAREABLE, align 4
  %343 = load i32, i32* @RF_ACTIVE, align 4
  %344 = or i32 %342, %343
  %345 = call i8* @bus_alloc_resource_any(i32 %340, i32 %341, i32* %13, i32 %344)
  %346 = bitcast i8* %345 to i32*
  %347 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %348 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %347, i32 0, i32 7
  store i32* %346, i32** %348, align 8
  %349 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %350 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %349, i32 0, i32 7
  %351 = load i32*, i32** %350, align 8
  %352 = icmp eq i32* %351, null
  br i1 %352, label %353, label %357

353:                                              ; preds = %339
  %354 = load i32, i32* %2, align 4
  %355 = call i32 (i32, i8*, ...) @device_printf(i32 %354, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %356 = load i32, i32* @ENXIO, align 4
  store i32 %356, i32* %11, align 4
  br label %1073

357:                                              ; preds = %339
  %358 = load i32, i32* @IFT_ETHER, align 4
  %359 = call %struct.ifnet* @if_alloc(i32 %358)
  %360 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %361 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %360, i32 0, i32 17
  store %struct.ifnet* %359, %struct.ifnet** %361, align 8
  store %struct.ifnet* %359, %struct.ifnet** %8, align 8
  %362 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %363 = icmp eq %struct.ifnet* %362, null
  br i1 %363, label %364, label %368

364:                                              ; preds = %357
  %365 = load i32, i32* %2, align 4
  %366 = call i32 (i32, i8*, ...) @device_printf(i32 %365, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %367 = load i32, i32* @ENOSPC, align 4
  store i32 %367, i32* %11, align 4
  br label %1073

368:                                              ; preds = %357
  %369 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %370 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %371 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %370, i32 0, i32 8
  store %struct.xl_softc* %369, %struct.xl_softc** %371, align 8
  %372 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %373 = load i32, i32* %2, align 4
  %374 = call i32 @device_get_name(i32 %373)
  %375 = load i32, i32* %2, align 4
  %376 = call i32 @device_get_unit(i32 %375)
  %377 = call i32 @if_initname(%struct.ifnet* %372, i32 %374, i32 %376)
  %378 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %379 = call i32 @XL_LOCK(%struct.xl_softc* %378)
  %380 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %381 = call i32 @xl_reset(%struct.xl_softc* %380)
  %382 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %383 = call i32 @XL_UNLOCK(%struct.xl_softc* %382)
  %384 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %385 = bitcast i32* %20 to i8*
  %386 = load i32, i32* @XL_EE_OEM_ADR0, align 4
  %387 = call i64 @xl_read_eeprom(%struct.xl_softc* %384, i8* %385, i32 %386, i32 3, i32 1)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %368
  %390 = load i32, i32* %2, align 4
  %391 = call i32 (i32, i8*, ...) @device_printf(i32 %390, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %392 = load i32, i32* @ENXIO, align 4
  store i32 %392, i32* %11, align 4
  br label %1073

393:                                              ; preds = %368
  %394 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %395 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %394, i32 0, i32 16
  %396 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %397 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %396, i32 0, i32 15
  %398 = call i32 @callout_init_mtx(i32* %395, i32* %397, i32 0)
  %399 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %400 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %399, i32 0, i32 14
  %401 = load i32, i32* @xl_rxeof_task, align 4
  %402 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %403 = call i32 @TASK_INIT(i32* %400, i32 0, i32 %401, %struct.xl_softc* %402)
  %404 = load i32, i32* %2, align 4
  %405 = call i32 @bus_get_dma_tag(i32 %404)
  %406 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %407 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %408 = load i32, i32* @XL_RX_LIST_SZ, align 4
  %409 = load i32, i32* @XL_RX_LIST_SZ, align 4
  %410 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %411 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %410, i32 0, i32 13
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 4
  %413 = call i32 @bus_dma_tag_create(i32 %405, i32 8, i32 0, i32 %406, i32 %407, i32* null, i32* null, i32 %408, i32 1, i32 %409, i32 0, i32* null, i32* null, i32** %412)
  store i32 %413, i32* %11, align 4
  %414 = load i32, i32* %11, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %393
  %417 = load i32, i32* %2, align 4
  %418 = call i32 (i32, i8*, ...) @device_printf(i32 %417, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %1073

419:                                              ; preds = %393
  %420 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %421 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %420, i32 0, i32 13
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 4
  %423 = load i32*, i32** %422, align 8
  %424 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %425 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %424, i32 0, i32 13
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 6
  %427 = bitcast i32* %426 to i8**
  %428 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %429 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %430 = or i32 %428, %429
  %431 = load i32, i32* @BUS_DMA_ZERO, align 4
  %432 = or i32 %430, %431
  %433 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %434 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %433, i32 0, i32 13
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 5
  %436 = call i32 @bus_dmamem_alloc(i32* %423, i8** %427, i32 %432, i32* %435)
  store i32 %436, i32* %11, align 4
  %437 = load i32, i32* %11, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %450

439:                                              ; preds = %419
  %440 = load i32, i32* %2, align 4
  %441 = call i32 (i32, i8*, ...) @device_printf(i32 %440, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %442 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %443 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %442, i32 0, i32 13
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 4
  %445 = load i32*, i32** %444, align 8
  %446 = call i32 @bus_dma_tag_destroy(i32* %445)
  %447 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %448 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %447, i32 0, i32 13
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 4
  store i32* null, i32** %449, align 8
  br label %1073

450:                                              ; preds = %419
  %451 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %452 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %451, i32 0, i32 13
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 4
  %454 = load i32*, i32** %453, align 8
  %455 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %456 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %455, i32 0, i32 13
  %457 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %460 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %459, i32 0, i32 13
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 6
  %462 = load i32, i32* %461, align 4
  %463 = load i32, i32* @XL_RX_LIST_SZ, align 4
  %464 = load i32, i32* @xl_dma_map_addr, align 4
  %465 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %466 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %465, i32 0, i32 13
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 7
  %468 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %469 = call i32 @bus_dmamap_load(i32* %454, i32 %458, i32 %462, i32 %463, i32 %464, i32* %467, i32 %468)
  store i32 %469, i32* %11, align 4
  %470 = load i32, i32* %11, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %496

472:                                              ; preds = %450
  %473 = load i32, i32* %2, align 4
  %474 = call i32 (i32, i8*, ...) @device_printf(i32 %473, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %475 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %476 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %475, i32 0, i32 13
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 4
  %478 = load i32*, i32** %477, align 8
  %479 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %480 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %479, i32 0, i32 13
  %481 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %480, i32 0, i32 6
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %484 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %483, i32 0, i32 13
  %485 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %484, i32 0, i32 5
  %486 = load i32, i32* %485, align 8
  %487 = call i32 @bus_dmamem_free(i32* %478, i32 %482, i32 %486)
  %488 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %489 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %488, i32 0, i32 13
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 4
  %491 = load i32*, i32** %490, align 8
  %492 = call i32 @bus_dma_tag_destroy(i32* %491)
  %493 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %494 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %493, i32 0, i32 13
  %495 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %494, i32 0, i32 4
  store i32* null, i32** %495, align 8
  br label %1073

496:                                              ; preds = %450
  %497 = load i32, i32* %2, align 4
  %498 = call i32 @bus_get_dma_tag(i32 %497)
  %499 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %500 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %501 = load i32, i32* @XL_TX_LIST_SZ, align 4
  %502 = load i32, i32* @XL_TX_LIST_SZ, align 4
  %503 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %504 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %503, i32 0, i32 13
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 0
  %506 = call i32 @bus_dma_tag_create(i32 %498, i32 8, i32 0, i32 %499, i32 %500, i32* null, i32* null, i32 %501, i32 1, i32 %502, i32 0, i32* null, i32* null, i32** %505)
  store i32 %506, i32* %11, align 4
  %507 = load i32, i32* %11, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %496
  %510 = load i32, i32* %2, align 4
  %511 = call i32 (i32, i8*, ...) @device_printf(i32 %510, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %1073

512:                                              ; preds = %496
  %513 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %514 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %513, i32 0, i32 13
  %515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %514, i32 0, i32 0
  %516 = load i32*, i32** %515, align 8
  %517 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %518 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %517, i32 0, i32 13
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 2
  %520 = bitcast i32* %519 to i8**
  %521 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %522 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %523 = or i32 %521, %522
  %524 = load i32, i32* @BUS_DMA_ZERO, align 4
  %525 = or i32 %523, %524
  %526 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %527 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %526, i32 0, i32 13
  %528 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %527, i32 0, i32 1
  %529 = call i32 @bus_dmamem_alloc(i32* %516, i8** %520, i32 %525, i32* %528)
  store i32 %529, i32* %11, align 4
  %530 = load i32, i32* %11, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %543

532:                                              ; preds = %512
  %533 = load i32, i32* %2, align 4
  %534 = call i32 (i32, i8*, ...) @device_printf(i32 %533, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %535 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %536 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %535, i32 0, i32 13
  %537 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %536, i32 0, i32 0
  %538 = load i32*, i32** %537, align 8
  %539 = call i32 @bus_dma_tag_destroy(i32* %538)
  %540 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %541 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %540, i32 0, i32 13
  %542 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %541, i32 0, i32 0
  store i32* null, i32** %542, align 8
  br label %1073

543:                                              ; preds = %512
  %544 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %545 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %544, i32 0, i32 13
  %546 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %545, i32 0, i32 0
  %547 = load i32*, i32** %546, align 8
  %548 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %549 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %548, i32 0, i32 13
  %550 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %549, i32 0, i32 1
  %551 = load i32, i32* %550, align 8
  %552 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %553 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %552, i32 0, i32 13
  %554 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = load i32, i32* @XL_TX_LIST_SZ, align 4
  %557 = load i32, i32* @xl_dma_map_addr, align 4
  %558 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %559 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %558, i32 0, i32 13
  %560 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %559, i32 0, i32 3
  %561 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %562 = call i32 @bus_dmamap_load(i32* %547, i32 %551, i32 %555, i32 %556, i32 %557, i32* %560, i32 %561)
  store i32 %562, i32* %11, align 4
  %563 = load i32, i32* %11, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %589

565:                                              ; preds = %543
  %566 = load i32, i32* %2, align 4
  %567 = call i32 (i32, i8*, ...) @device_printf(i32 %566, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %568 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %569 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %568, i32 0, i32 13
  %570 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %569, i32 0, i32 0
  %571 = load i32*, i32** %570, align 8
  %572 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %573 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %572, i32 0, i32 13
  %574 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %573, i32 0, i32 2
  %575 = load i32, i32* %574, align 4
  %576 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %577 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %576, i32 0, i32 13
  %578 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @bus_dmamem_free(i32* %571, i32 %575, i32 %579)
  %581 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %582 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %581, i32 0, i32 13
  %583 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %582, i32 0, i32 0
  %584 = load i32*, i32** %583, align 8
  %585 = call i32 @bus_dma_tag_destroy(i32* %584)
  %586 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %587 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %586, i32 0, i32 13
  %588 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %587, i32 0, i32 0
  store i32* null, i32** %588, align 8
  br label %1073

589:                                              ; preds = %543
  %590 = load i32, i32* %2, align 4
  %591 = call i32 @bus_get_dma_tag(i32 %590)
  %592 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %593 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %594 = load i32, i32* @MCLBYTES, align 4
  %595 = load i32, i32* @XL_MAXFRAGS, align 4
  %596 = mul nsw i32 %594, %595
  %597 = load i32, i32* @XL_MAXFRAGS, align 4
  %598 = load i32, i32* @MCLBYTES, align 4
  %599 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %600 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %599, i32 0, i32 12
  %601 = call i32 @bus_dma_tag_create(i32 %591, i32 1, i32 0, i32 %592, i32 %593, i32* null, i32* null, i32 %596, i32 %597, i32 %598, i32 0, i32* null, i32* null, i32** %600)
  store i32 %601, i32* %11, align 4
  %602 = load i32, i32* %11, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %607

604:                                              ; preds = %589
  %605 = load i32, i32* %2, align 4
  %606 = call i32 (i32, i8*, ...) @device_printf(i32 %605, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %1073

607:                                              ; preds = %589
  %608 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %609 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %608, i32 0, i32 12
  %610 = load i32*, i32** %609, align 8
  %611 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %612 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %611, i32 0, i32 11
  %613 = call i32 @bus_dmamap_create(i32* %610, i32 0, i32* %612)
  store i32 %613, i32* %11, align 4
  %614 = load i32, i32* %11, align 4
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %607
  br label %1073

617:                                              ; preds = %607
  %618 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %619 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %620 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %619, i32 0, i32 1
  %621 = bitcast i32* %620 to i8*
  %622 = load i32, i32* @XL_EE_CAPS, align 4
  %623 = call i64 @xl_read_eeprom(%struct.xl_softc* %618, i8* %621, i32 %622, i32 1, i32 0)
  %624 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %625 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* @XL_CAPS_NO_TXLENGTH, align 4
  %628 = and i32 %626, %627
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %637, label %630

630:                                              ; preds = %617
  %631 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %632 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %631, i32 0, i32 1
  %633 = load i32, i32* %632, align 4
  %634 = load i32, i32* @XL_CAPS_LARGE_PKTS, align 4
  %635 = and i32 %633, %634
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %641, label %637

637:                                              ; preds = %630, %617
  %638 = load i64, i64* @XL_TYPE_905B, align 8
  %639 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %640 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %639, i32 0, i32 2
  store i64 %638, i64* %640, align 8
  br label %645

641:                                              ; preds = %630
  %642 = load i64, i64* @XL_TYPE_90X, align 8
  %643 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %644 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %643, i32 0, i32 2
  store i64 %642, i64* %644, align 8
  br label %645

645:                                              ; preds = %641, %637
  %646 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %647 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %646, i32 0, i32 1
  %648 = load i32, i32* %647, align 4
  %649 = load i32, i32* @XL_CAPS_PWRMGMT, align 4
  %650 = and i32 %648, %649
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %681

652:                                              ; preds = %645
  %653 = load i32, i32* %2, align 4
  %654 = load i32, i32* @PCIY_PMG, align 4
  %655 = call i64 @pci_find_cap(i32 %653, i32 %654, i32* %10)
  %656 = icmp eq i64 %655, 0
  br i1 %656, label %657, label %681

657:                                              ; preds = %652
  %658 = load i32, i32* %10, align 4
  %659 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %660 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %659, i32 0, i32 3
  store i32 %658, i32* %660, align 8
  %661 = load i32, i32* @XL_FLAG_WOL, align 4
  %662 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %663 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 8
  %665 = or i32 %664, %661
  store i32 %665, i32* %663, align 8
  store i32 0, i32* %5, align 4
  %666 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %667 = bitcast i32* %5 to i8*
  %668 = load i32, i32* @XL_EE_SOFTINFO2, align 4
  %669 = call i64 @xl_read_eeprom(%struct.xl_softc* %666, i8* %667, i32 %668, i32 1, i32 0)
  %670 = load i32, i32* %5, align 4
  %671 = load i32, i32* @XL_SINFO2_AUX_WOL_CON, align 4
  %672 = and i32 %670, %671
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %680

674:                                              ; preds = %657
  %675 = load i64, i64* @bootverbose, align 8
  %676 = icmp ne i64 %675, 0
  br i1 %676, label %677, label %680

677:                                              ; preds = %674
  %678 = load i32, i32* %2, align 4
  %679 = call i32 (i32, i8*, ...) @device_printf(i32 %678, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  br label %680

680:                                              ; preds = %677, %674, %657
  br label %681

681:                                              ; preds = %680, %652, %645
  %682 = load i32, i32* @XL_MIN_FRAMELEN, align 4
  %683 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %684 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %683, i32 0, i32 10
  store i32 %682, i32* %684, align 8
  %685 = load i32, i32* @IFF_BROADCAST, align 4
  %686 = load i32, i32* @IFF_SIMPLEX, align 4
  %687 = or i32 %685, %686
  %688 = load i32, i32* @IFF_MULTICAST, align 4
  %689 = or i32 %687, %688
  %690 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %691 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %690, i32 0, i32 0
  store i32 %689, i32* %691, align 8
  %692 = load i32, i32* @xl_ioctl, align 4
  %693 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %694 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %693, i32 0, i32 7
  store i32 %692, i32* %694, align 4
  %695 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %696 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %697 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %696, i32 0, i32 4
  store i32 %695, i32* %697, align 8
  %698 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %699 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %698, i32 0, i32 2
  %700 = load i64, i64* %699, align 8
  %701 = load i64, i64* @XL_TYPE_905B, align 8
  %702 = icmp eq i64 %700, %701
  br i1 %702, label %703, label %712

703:                                              ; preds = %681
  %704 = load i32, i32* @XL905B_CSUM_FEATURES, align 4
  %705 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %706 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %705, i32 0, i32 6
  store i32 %704, i32* %706, align 8
  %707 = load i32, i32* @IFCAP_HWCSUM, align 4
  %708 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %709 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %708, i32 0, i32 4
  %710 = load i32, i32* %709, align 8
  %711 = or i32 %710, %707
  store i32 %711, i32* %709, align 8
  br label %712

712:                                              ; preds = %703, %681
  %713 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %714 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %713, i32 0, i32 0
  %715 = load i32, i32* %714, align 8
  %716 = load i32, i32* @XL_FLAG_WOL, align 4
  %717 = and i32 %715, %716
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %725

719:                                              ; preds = %712
  %720 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %721 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %722 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %721, i32 0, i32 4
  %723 = load i32, i32* %722, align 8
  %724 = or i32 %723, %720
  store i32 %724, i32* %722, align 8
  br label %725

725:                                              ; preds = %719, %712
  %726 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %727 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %726, i32 0, i32 4
  %728 = load i32, i32* %727, align 8
  %729 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %730 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %729, i32 0, i32 5
  store i32 %728, i32* %730, align 4
  %731 = load i32, i32* @xl_start, align 4
  %732 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %733 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %732, i32 0, i32 3
  store i32 %731, i32* %733, align 4
  %734 = load i32, i32* @xl_init, align 4
  %735 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %736 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %735, i32 0, i32 2
  store i32 %734, i32* %736, align 8
  %737 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %738 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %737, i32 0, i32 1
  %739 = load i64, i64* @XL_TX_LIST_CNT, align 8
  %740 = sub nsw i64 %739, 1
  %741 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %738, i64 %740)
  %742 = load i64, i64* @XL_TX_LIST_CNT, align 8
  %743 = sub nsw i64 %742, 1
  %744 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %745 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %744, i32 0, i32 1
  %746 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %745, i32 0, i32 0
  store i64 %743, i64* %746, align 8
  %747 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %748 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %747, i32 0, i32 1
  %749 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %748)
  %750 = call i32 @XL_SEL_WIN(i32 3)
  %751 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %752 = load i32, i32* @XL_W3_MEDIA_OPT, align 4
  %753 = call i32 @CSR_READ_2(%struct.xl_softc* %751, i32 %752)
  %754 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %755 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %754, i32 0, i32 4
  store i32 %753, i32* %755, align 4
  %756 = load i64, i64* @bootverbose, align 8
  %757 = icmp ne i64 %756, 0
  br i1 %757, label %758, label %764

758:                                              ; preds = %725
  %759 = load i32, i32* %2, align 4
  %760 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %761 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %760, i32 0, i32 4
  %762 = load i32, i32* %761, align 4
  %763 = call i32 (i32, i8*, ...) @device_printf(i32 %759, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %762)
  br label %764

764:                                              ; preds = %758, %725
  %765 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %766 = bitcast [2 x i32]* %6 to i8*
  %767 = load i32, i32* @XL_EE_ICFG_0, align 4
  %768 = call i64 @xl_read_eeprom(%struct.xl_softc* %765, i8* %766, i32 %767, i32 2, i32 0)
  %769 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %770 = load i32, i32* %769, align 4
  %771 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %772 = load i32, i32* %771, align 4
  %773 = shl i32 %772, 16
  %774 = or i32 %770, %773
  %775 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %776 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %775, i32 0, i32 5
  store i32 %774, i32* %776, align 8
  %777 = load i32, i32* @XL_ICFG_CONNECTOR_MASK, align 4
  %778 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %779 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %778, i32 0, i32 5
  %780 = load i32, i32* %779, align 8
  %781 = and i32 %780, %777
  store i32 %781, i32* %779, align 8
  %782 = load i32, i32* @XL_ICFG_CONNECTOR_BITS, align 4
  %783 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %784 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %783, i32 0, i32 5
  %785 = load i32, i32* %784, align 8
  %786 = ashr i32 %785, %782
  store i32 %786, i32* %784, align 8
  %787 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %788 = call i32 @xl_mediacheck(%struct.xl_softc* %787)
  %789 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %790 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %789, i32 0, i32 4
  %791 = load i32, i32* %790, align 4
  %792 = load i32, i32* @XL_MEDIAOPT_MII, align 4
  %793 = and i32 %791, %792
  %794 = icmp ne i32 %793, 0
  br i1 %794, label %809, label %795

795:                                              ; preds = %764
  %796 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %797 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %796, i32 0, i32 4
  %798 = load i32, i32* %797, align 4
  %799 = load i32, i32* @XL_MEDIAOPT_BTX, align 4
  %800 = and i32 %798, %799
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %809, label %802

802:                                              ; preds = %795
  %803 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %804 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %803, i32 0, i32 4
  %805 = load i32, i32* %804, align 4
  %806 = load i32, i32* @XL_MEDIAOPT_BT4, align 4
  %807 = and i32 %805, %806
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %809, label %853

809:                                              ; preds = %802, %795, %764
  %810 = load i64, i64* @bootverbose, align 8
  %811 = icmp ne i64 %810, 0
  br i1 %811, label %812, label %815

812:                                              ; preds = %809
  %813 = load i32, i32* %2, align 4
  %814 = call i32 (i32, i8*, ...) @device_printf(i32 %813, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %815

815:                                              ; preds = %812, %809
  %816 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %817 = call i32 @xl_setcfg(%struct.xl_softc* %816)
  %818 = load i32, i32* @MII_PHY_ANY, align 4
  store i32 %818, i32* %12, align 4
  %819 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %820 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %819, i32 0, i32 0
  %821 = load i32, i32* %820, align 8
  %822 = load i32, i32* @XL_FLAG_PHYOK, align 4
  %823 = and i32 %821, %822
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %825, label %826

825:                                              ; preds = %815
  store i32 24, i32* %12, align 4
  br label %826

826:                                              ; preds = %825, %815
  %827 = load i32, i32* %2, align 4
  %828 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %829 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %828, i32 0, i32 9
  %830 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %831 = load i32, i32* @xl_ifmedia_upd, align 4
  %832 = load i32, i32* @xl_ifmedia_sts, align 4
  %833 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %834 = load i32, i32* %12, align 4
  %835 = load i32, i32* @MII_OFFSET_ANY, align 4
  %836 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %837 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %836, i32 0, i32 2
  %838 = load i64, i64* %837, align 8
  %839 = load i64, i64* @XL_TYPE_905B, align 8
  %840 = icmp eq i64 %838, %839
  br i1 %840, label %841, label %843

841:                                              ; preds = %826
  %842 = load i32, i32* @MIIF_DOPAUSE, align 4
  br label %844

843:                                              ; preds = %826
  br label %844

844:                                              ; preds = %843, %841
  %845 = phi i32 [ %842, %841 ], [ 0, %843 ]
  %846 = call i32 @mii_attach(i32 %827, i32** %829, %struct.ifnet* %830, i32 %831, i32 %832, i32 %833, i32 %834, i32 %835, i32 %845)
  store i32 %846, i32* %11, align 4
  %847 = load i32, i32* %11, align 4
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %849, label %852

849:                                              ; preds = %844
  %850 = load i32, i32* %2, align 4
  %851 = call i32 (i32, i8*, ...) @device_printf(i32 %850, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  br label %1073

852:                                              ; preds = %844
  br label %1037

853:                                              ; preds = %802
  %854 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %855 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %854, i32 0, i32 5
  %856 = load i32, i32* %855, align 8
  %857 = load i32, i32* @XL_XCVR_AUTO, align 4
  %858 = icmp eq i32 %856, %857
  br i1 %858, label %859, label %863

859:                                              ; preds = %853
  %860 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %861 = load i64, i64* @bootverbose, align 8
  %862 = call i32 @xl_choose_xcvr(%struct.xl_softc* %860, i64 %861)
  br label %863

863:                                              ; preds = %859, %853
  %864 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %865 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %864, i32 0, i32 4
  %866 = load i32, i32* %865, align 4
  %867 = load i32, i32* @XL_MEDIAOPT_BT, align 4
  %868 = and i32 %866, %867
  %869 = icmp ne i32 %868, 0
  br i1 %869, label %870, label %907

870:                                              ; preds = %863
  %871 = load i64, i64* @bootverbose, align 8
  %872 = icmp ne i64 %871, 0
  br i1 %872, label %873, label %876

873:                                              ; preds = %870
  %874 = load i32, i32* %2, align 4
  %875 = call i32 (i32, i8*, ...) @device_printf(i32 %874, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  br label %876

876:                                              ; preds = %873, %870
  %877 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %878 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %877, i32 0, i32 8
  %879 = load i32, i32* @IFM_ETHER, align 4
  %880 = load i32, i32* @IFM_10_T, align 4
  %881 = or i32 %879, %880
  %882 = call i32 @ifmedia_add(i32* %878, i32 %881, i32 0, i32* null)
  %883 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %884 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %883, i32 0, i32 8
  %885 = load i32, i32* @IFM_ETHER, align 4
  %886 = load i32, i32* @IFM_10_T, align 4
  %887 = or i32 %885, %886
  %888 = load i32, i32* @IFM_HDX, align 4
  %889 = or i32 %887, %888
  %890 = call i32 @ifmedia_add(i32* %884, i32 %889, i32 0, i32* null)
  %891 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %892 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %891, i32 0, i32 1
  %893 = load i32, i32* %892, align 4
  %894 = load i32, i32* @XL_CAPS_FULL_DUPLEX, align 4
  %895 = and i32 %893, %894
  %896 = icmp ne i32 %895, 0
  br i1 %896, label %897, label %906

897:                                              ; preds = %876
  %898 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %899 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %898, i32 0, i32 8
  %900 = load i32, i32* @IFM_ETHER, align 4
  %901 = load i32, i32* @IFM_10_T, align 4
  %902 = or i32 %900, %901
  %903 = load i32, i32* @IFM_FDX, align 4
  %904 = or i32 %902, %903
  %905 = call i32 @ifmedia_add(i32* %899, i32 %904, i32 0, i32* null)
  br label %906

906:                                              ; preds = %897, %876
  br label %907

907:                                              ; preds = %906, %863
  %908 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %909 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %908, i32 0, i32 4
  %910 = load i32, i32* %909, align 4
  %911 = load i32, i32* @XL_MEDIAOPT_AUI, align 4
  %912 = load i32, i32* @XL_MEDIAOPT_10FL, align 4
  %913 = or i32 %911, %912
  %914 = and i32 %910, %913
  %915 = icmp ne i32 %914, 0
  br i1 %915, label %916, label %979

916:                                              ; preds = %907
  %917 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %918 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %917, i32 0, i32 2
  %919 = load i64, i64* %918, align 8
  %920 = load i64, i64* @XL_TYPE_905B, align 8
  %921 = icmp eq i64 %919, %920
  br i1 %921, label %922, label %965

922:                                              ; preds = %916
  %923 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %924 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %923, i32 0, i32 4
  %925 = load i32, i32* %924, align 4
  %926 = load i32, i32* @XL_MEDIAOPT_10FL, align 4
  %927 = icmp eq i32 %925, %926
  br i1 %927, label %928, label %965

928:                                              ; preds = %922
  %929 = load i64, i64* @bootverbose, align 8
  %930 = icmp ne i64 %929, 0
  br i1 %930, label %931, label %934

931:                                              ; preds = %928
  %932 = load i32, i32* %2, align 4
  %933 = call i32 (i32, i8*, ...) @device_printf(i32 %932, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  br label %934

934:                                              ; preds = %931, %928
  %935 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %936 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %935, i32 0, i32 8
  %937 = load i32, i32* @IFM_ETHER, align 4
  %938 = load i32, i32* @IFM_10_FL, align 4
  %939 = or i32 %937, %938
  %940 = call i32 @ifmedia_add(i32* %936, i32 %939, i32 0, i32* null)
  %941 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %942 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %941, i32 0, i32 8
  %943 = load i32, i32* @IFM_ETHER, align 4
  %944 = load i32, i32* @IFM_10_FL, align 4
  %945 = or i32 %943, %944
  %946 = load i32, i32* @IFM_HDX, align 4
  %947 = or i32 %945, %946
  %948 = call i32 @ifmedia_add(i32* %942, i32 %947, i32 0, i32* null)
  %949 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %950 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %949, i32 0, i32 1
  %951 = load i32, i32* %950, align 4
  %952 = load i32, i32* @XL_CAPS_FULL_DUPLEX, align 4
  %953 = and i32 %951, %952
  %954 = icmp ne i32 %953, 0
  br i1 %954, label %955, label %964

955:                                              ; preds = %934
  %956 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %957 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %956, i32 0, i32 8
  %958 = load i32, i32* @IFM_ETHER, align 4
  %959 = load i32, i32* @IFM_10_FL, align 4
  %960 = or i32 %958, %959
  %961 = load i32, i32* @IFM_FDX, align 4
  %962 = or i32 %960, %961
  %963 = call i32 @ifmedia_add(i32* %957, i32 %962, i32 0, i32* null)
  br label %964

964:                                              ; preds = %955, %934
  br label %978

965:                                              ; preds = %922, %916
  %966 = load i64, i64* @bootverbose, align 8
  %967 = icmp ne i64 %966, 0
  br i1 %967, label %968, label %971

968:                                              ; preds = %965
  %969 = load i32, i32* %2, align 4
  %970 = call i32 (i32, i8*, ...) @device_printf(i32 %969, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %971

971:                                              ; preds = %968, %965
  %972 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %973 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %972, i32 0, i32 8
  %974 = load i32, i32* @IFM_ETHER, align 4
  %975 = load i32, i32* @IFM_10_5, align 4
  %976 = or i32 %974, %975
  %977 = call i32 @ifmedia_add(i32* %973, i32 %976, i32 0, i32* null)
  br label %978

978:                                              ; preds = %971, %964
  br label %979

979:                                              ; preds = %978, %907
  %980 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %981 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %980, i32 0, i32 4
  %982 = load i32, i32* %981, align 4
  %983 = load i32, i32* @XL_MEDIAOPT_BNC, align 4
  %984 = and i32 %982, %983
  %985 = icmp ne i32 %984, 0
  br i1 %985, label %986, label %999

986:                                              ; preds = %979
  %987 = load i64, i64* @bootverbose, align 8
  %988 = icmp ne i64 %987, 0
  br i1 %988, label %989, label %992

989:                                              ; preds = %986
  %990 = load i32, i32* %2, align 4
  %991 = call i32 (i32, i8*, ...) @device_printf(i32 %990, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %992

992:                                              ; preds = %989, %986
  %993 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %994 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %993, i32 0, i32 8
  %995 = load i32, i32* @IFM_ETHER, align 4
  %996 = load i32, i32* @IFM_10_2, align 4
  %997 = or i32 %995, %996
  %998 = call i32 @ifmedia_add(i32* %994, i32 %997, i32 0, i32* null)
  br label %999

999:                                              ; preds = %992, %979
  %1000 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %1001 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %1000, i32 0, i32 4
  %1002 = load i32, i32* %1001, align 4
  %1003 = load i32, i32* @XL_MEDIAOPT_BFX, align 4
  %1004 = and i32 %1002, %1003
  %1005 = icmp ne i32 %1004, 0
  br i1 %1005, label %1006, label %1019

1006:                                             ; preds = %999
  %1007 = load i64, i64* @bootverbose, align 8
  %1008 = icmp ne i64 %1007, 0
  br i1 %1008, label %1009, label %1012

1009:                                             ; preds = %1006
  %1010 = load i32, i32* %2, align 4
  %1011 = call i32 (i32, i8*, ...) @device_printf(i32 %1010, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  br label %1012

1012:                                             ; preds = %1009, %1006
  %1013 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %1014 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %1013, i32 0, i32 8
  %1015 = load i32, i32* @IFM_ETHER, align 4
  %1016 = load i32, i32* @IFM_100_FX, align 4
  %1017 = or i32 %1015, %1016
  %1018 = call i32 @ifmedia_add(i32* %1014, i32 %1017, i32 0, i32* null)
  br label %1019

1019:                                             ; preds = %1012, %999
  %1020 = load i32, i32* @IFM_ETHER, align 4
  %1021 = load i32, i32* @IFM_100_TX, align 4
  %1022 = or i32 %1020, %1021
  %1023 = load i32, i32* @IFM_FDX, align 4
  %1024 = or i32 %1022, %1023
  store i32 %1024, i32* %9, align 4
  %1025 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %1026 = call i32 @xl_choose_media(%struct.xl_softc* %1025, i32* %9)
  %1027 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %1028 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %1027, i32 0, i32 9
  %1029 = load i32*, i32** %1028, align 8
  %1030 = icmp eq i32* %1029, null
  br i1 %1030, label %1031, label %1036

1031:                                             ; preds = %1019
  %1032 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %1033 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %1032, i32 0, i32 8
  %1034 = load i32, i32* %9, align 4
  %1035 = call i32 @ifmedia_set(i32* %1033, i32 %1034)
  br label %1036

1036:                                             ; preds = %1031, %1019
  br label %1037

1037:                                             ; preds = %1036, %852
  %1038 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %1039 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %1038, i32 0, i32 0
  %1040 = load i32, i32* %1039, align 8
  %1041 = load i32, i32* @XL_FLAG_NO_XCVR_PWR, align 4
  %1042 = and i32 %1040, %1041
  %1043 = icmp ne i32 %1042, 0
  br i1 %1043, label %1044, label %1050

1044:                                             ; preds = %1037
  %1045 = call i32 @XL_SEL_WIN(i32 0)
  %1046 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %1047 = load i32, i32* @XL_W0_MFG_ID, align 4
  %1048 = load i32, i32* @XL_NO_XCVR_PWR_MAGICBITS, align 4
  %1049 = call i32 @CSR_WRITE_2(%struct.xl_softc* %1046, i32 %1047, i32 %1048)
  br label %1050

1050:                                             ; preds = %1044, %1037
  %1051 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %1052 = call i32 @ether_ifattach(%struct.ifnet* %1051, i32* %20)
  %1053 = load i32, i32* %2, align 4
  %1054 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %1055 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %1054, i32 0, i32 7
  %1056 = load i32*, i32** %1055, align 8
  %1057 = load i32, i32* @INTR_TYPE_NET, align 4
  %1058 = load i32, i32* @INTR_MPSAFE, align 4
  %1059 = or i32 %1057, %1058
  %1060 = load i32, i32* @xl_intr, align 4
  %1061 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %1062 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %1063 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %1062, i32 0, i32 6
  %1064 = call i32 @bus_setup_intr(i32 %1053, i32* %1056, i32 %1059, i32* null, i32 %1060, %struct.xl_softc* %1061, i32* %1063)
  store i32 %1064, i32* %11, align 4
  %1065 = load i32, i32* %11, align 4
  %1066 = icmp ne i32 %1065, 0
  br i1 %1066, label %1067, label %1072

1067:                                             ; preds = %1050
  %1068 = load i32, i32* %2, align 4
  %1069 = call i32 (i32, i8*, ...) @device_printf(i32 %1068, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  %1070 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %1071 = call i32 @ether_ifdetach(%struct.ifnet* %1070)
  br label %1073

1072:                                             ; preds = %1050
  br label %1073

1073:                                             ; preds = %1072, %1067, %849, %616, %604, %565, %532, %509, %472, %439, %416, %389, %364, %353, %322, %279
  %1074 = load i32, i32* %11, align 4
  %1075 = icmp ne i32 %1074, 0
  br i1 %1075, label %1076, label %1079

1076:                                             ; preds = %1073
  %1077 = load i32, i32* %2, align 4
  %1078 = call i32 @xl_detach(i32 %1077)
  br label %1079

1079:                                             ; preds = %1076, %1073
  %1080 = load i32, i32* %11, align 4
  %1081 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %1081)
  ret i32 %1080
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.xl_softc* @device_get_softc(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #2

declare dso_local i32 @pci_get_device(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i8* @rman_get_bustag(i32*) #2

declare dso_local i8* @rman_get_bushandle(i32*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @XL_LOCK(%struct.xl_softc*) #2

declare dso_local i32 @xl_reset(%struct.xl_softc*) #2

declare dso_local i32 @XL_UNLOCK(%struct.xl_softc*) #2

declare dso_local i64 @xl_read_eeprom(%struct.xl_softc*, i8*, i32, i32, i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.xl_softc*) #2

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32**) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @bus_dmamem_alloc(i32*, i8**, i32, i32*) #2

declare dso_local i32 @bus_dma_tag_destroy(i32*) #2

declare dso_local i32 @bus_dmamap_load(i32*, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @bus_dmamem_free(i32*, i32, i32) #2

declare dso_local i32 @bus_dmamap_create(i32*, i32, i32*) #2

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #2

declare dso_local i32 @XL_SEL_WIN(i32) #2

declare dso_local i32 @CSR_READ_2(%struct.xl_softc*, i32) #2

declare dso_local i32 @xl_mediacheck(%struct.xl_softc*) #2

declare dso_local i32 @xl_setcfg(%struct.xl_softc*) #2

declare dso_local i32 @mii_attach(i32, i32**, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @xl_choose_xcvr(%struct.xl_softc*, i64) #2

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #2

declare dso_local i32 @xl_choose_media(%struct.xl_softc*, i32*) #2

declare dso_local i32 @ifmedia_set(i32*, i32) #2

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.xl_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @xl_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
