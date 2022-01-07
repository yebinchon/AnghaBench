; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i32, i64, i32, i32, i32*, i32, i8*, i32, %struct.ifnet*, i32*, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.vr_softc* }
%struct.TYPE_3__ = type { i64 }
%struct.vr_type = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Lost if_vr device match\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Quirks: 0x%x\0A\00", align 1
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@vr_sysctl_stats = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Statistics\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Revision: 0x%x\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"couldn't map ports\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"couldn't allocate ifnet structure\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@vr_ioctl = common dso_local global i32 0, align 4
@vr_start = common dso_local global i32 0, align 4
@vr_init = common dso_local global i32 0, align 4
@VR_TX_RING_CNT = common dso_local global i64 0, align 8
@vr_int_task = common dso_local global i32 0, align 4
@VR_TXTHRESH_MIN = common dso_local global i8* null, align 8
@REV_ID_VT6105_A0 = common dso_local global i64 0, align 8
@VR_TXTHRESH_MAX = common dso_local global i8* null, align 8
@VR_Q_CSUM = common dso_local global i32 0, align 4
@VR_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@REV_ID_VT6102_A = common dso_local global i64 0, align 8
@PCIY_PMG = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@VR_STICKHW = common dso_local global i32 0, align 4
@VR_STICKHW_DS0 = common dso_local global i32 0, align 4
@VR_STICKHW_DS1 = common dso_local global i32 0, align 4
@VR_EECSR = common dso_local global i64 0, align 8
@VR_EECSR_LOAD = common dso_local global i32 0, align 4
@VR_TIMEOUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Reloading EEPROM timeout!\0A\00", align 1
@VR_PAR0 = common dso_local global i64 0, align 8
@VR_ISR = common dso_local global i32 0, align 4
@VR_IMR = common dso_local global i32 0, align 4
@VR_MII_IMR = common dso_local global i32 0, align 4
@VR_PCI_MODE2 = common dso_local global i32 0, align 4
@VR_MODE2_MODE10T = common dso_local global i32 0, align 4
@VR_MODE2_PCEROPT = common dso_local global i32 0, align 4
@VR_PCI_MODE3 = common dso_local global i32 0, align 4
@VR_MODE3_MIION = common dso_local global i32 0, align 4
@REV_ID_VT6105_LOM = common dso_local global i64 0, align 8
@REV_ID_VT6105M_A0 = common dso_local global i64 0, align 8
@REV_ID_VT6107_A1 = common dso_local global i64 0, align 8
@VR_MODE2_MRDPL = common dso_local global i32 0, align 4
@VR_MIICMD = common dso_local global i32 0, align 4
@VR_MIICMD_AUTOPOLL = common dso_local global i32 0, align 4
@VR_PHYADDR = common dso_local global i64 0, align 8
@VR_PHYADDR_MASK = common dso_local global i32 0, align 4
@vr_ifmedia_upd = common dso_local global i32 0, align 4
@vr_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@vr_intr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vr_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vr_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.vr_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call %struct.vr_softc* @device_get_softc(i32 %17)
  store %struct.vr_softc* %18, %struct.vr_softc** %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %20, i32 0, i32 13
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call %struct.vr_type* @vr_match(i32 %22)
  store %struct.vr_type* %23, %struct.vr_type** %5, align 8
  %24 = load %struct.vr_type*, %struct.vr_type** %5, align 8
  %25 = icmp ne %struct.vr_type* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.vr_type*, %struct.vr_type** %5, align 8
  %29 = getelementptr inbounds %struct.vr_type, %struct.vr_type* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %32 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %2, align 4
  %34 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %35 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %39 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %38, i32 0, i32 11
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @device_get_nameunit(i32 %40)
  %42 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %43 = load i32, i32* @MTX_DEF, align 4
  %44 = call i32 @mtx_init(i32* %39, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %46 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %45, i32 0, i32 12
  %47 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %48 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %47, i32 0, i32 11
  %49 = call i32 @callout_init_mtx(i32* %46, i32* %48, i32 0)
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @device_get_sysctl_ctx(i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @device_get_sysctl_tree(i32 %52)
  %54 = call i32 @SYSCTL_CHILDREN(i32 %53)
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLTYPE_INT, align 4
  %57 = load i32, i32* @CTLFLAG_RW, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %60 = load i32, i32* @vr_sysctl_stats, align 4
  %61 = call i32 @SYSCTL_ADD_PROC(i32 %51, i32 %54, i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %58, %struct.vr_softc* %59, i32 0, i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @pci_enable_busmaster(i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = call i64 @pci_get_revid(i32 %64)
  %66 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %67 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %2, align 4
  %69 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %70 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %71)
  %73 = call i32 @PCIR_BAR(i32 0)
  %74 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %75 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @SYS_RES_IOPORT, align 4
  %77 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %78 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %2, align 4
  %80 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %81 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %84 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %83, i32 0, i32 2
  %85 = load i32, i32* @RF_ACTIVE, align 4
  %86 = call i8* @bus_alloc_resource_any(i32 %79, i32 %82, i32* %84, i32 %85)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %89 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %88, i32 0, i32 9
  store i32* %87, i32** %89, align 8
  %90 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %91 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %90, i32 0, i32 9
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %1
  %95 = load i32, i32* %2, align 4
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %8, align 4
  br label %455

98:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @SYS_RES_IRQ, align 4
  %101 = load i32, i32* @RF_SHAREABLE, align 4
  %102 = load i32, i32* @RF_ACTIVE, align 4
  %103 = or i32 %101, %102
  %104 = call i8* @bus_alloc_resource_any(i32 %99, i32 %100, i32* %9, i32 %103)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %107 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %106, i32 0, i32 4
  store i32* %105, i32** %107, align 8
  %108 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %109 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %98
  %113 = load i32, i32* %2, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %115 = load i32, i32* @ENXIO, align 4
  store i32 %115, i32* %8, align 4
  br label %455

116:                                              ; preds = %98
  %117 = load i32, i32* @IFT_ETHER, align 4
  %118 = call %struct.ifnet* @if_alloc(i32 %117)
  %119 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %120 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %119, i32 0, i32 8
  store %struct.ifnet* %118, %struct.ifnet** %120, align 8
  store %struct.ifnet* %118, %struct.ifnet** %4, align 8
  %121 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %122 = icmp eq %struct.ifnet* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i32, i32* %2, align 4
  %125 = call i32 (i32, i8*, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %126 = load i32, i32* @ENOSPC, align 4
  store i32 %126, i32* %8, align 4
  br label %455

127:                                              ; preds = %116
  %128 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %129 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %130 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %129, i32 0, i32 9
  store %struct.vr_softc* %128, %struct.vr_softc** %130, align 8
  %131 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %132 = load i32, i32* %2, align 4
  %133 = call i32 @device_get_name(i32 %132)
  %134 = load i32, i32* %2, align 4
  %135 = call i32 @device_get_unit(i32 %134)
  %136 = call i32 @if_initname(%struct.ifnet* %131, i32 %133, i32 %135)
  %137 = load i32, i32* @IFF_BROADCAST, align 4
  %138 = load i32, i32* @IFF_SIMPLEX, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @IFF_MULTICAST, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %143 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* @vr_ioctl, align 4
  %145 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @vr_start, align 4
  %148 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %149 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @vr_init, align 4
  %151 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %152 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 5
  %155 = load i64, i64* @VR_TX_RING_CNT, align 8
  %156 = sub nsw i64 %155, 1
  %157 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %154, i64 %156)
  %158 = load i64, i64* @VR_TX_RING_CNT, align 8
  %159 = sub nsw i64 %158, 1
  %160 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i64 %159, i64* %162, align 8
  %163 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %164 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %163, i32 0, i32 5
  %165 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %164)
  %166 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %167 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %166, i32 0, i32 7
  %168 = load i32, i32* @vr_int_task, align 4
  %169 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %170 = call i32 @TASK_INIT(i32* %167, i32 0, i32 %168, %struct.vr_softc* %169)
  %171 = load i8*, i8** @VR_TXTHRESH_MIN, align 8
  %172 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %173 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %172, i32 0, i32 6
  store i8* %171, i8** %173, align 8
  %174 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %175 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @REV_ID_VT6105_A0, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %127
  %180 = load i8*, i8** @VR_TXTHRESH_MAX, align 8
  %181 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %182 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %181, i32 0, i32 6
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %179, %127
  %184 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %185 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @VR_Q_CSUM, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %183
  %191 = load i32, i32* @VR_CSUM_FEATURES, align 4
  %192 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %193 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @IFCAP_HWCSUM, align 4
  %195 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %196 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load i8*, i8** @VR_TXTHRESH_MAX, align 8
  %200 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %201 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %200, i32 0, i32 6
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %190, %183
  %203 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %204 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @REV_ID_VT6102_A, align 8
  %207 = icmp sge i64 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %202
  %209 = load i32, i32* %2, align 4
  %210 = load i32, i32* @PCIY_PMG, align 4
  %211 = call i64 @pci_find_cap(i32 %209, i32 %210, i32* %12)
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %215 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %213, %208, %202
  %222 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %223 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %224 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 4
  %227 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %231 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* %2, align 4
  %233 = load i32, i32* @PCIY_PMG, align 4
  %234 = call i64 @pci_find_cap(i32 %232, i32 %233, i32* %12)
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %221
  %237 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %238 = load i32, i32* @VR_STICKHW, align 4
  %239 = load i32, i32* @VR_STICKHW_DS0, align 4
  %240 = load i32, i32* @VR_STICKHW_DS1, align 4
  %241 = or i32 %239, %240
  %242 = call i32 @VR_CLRBIT(%struct.vr_softc* %237, i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %236, %221
  %244 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %245 = load i64, i64* @VR_EECSR, align 8
  %246 = load i32, i32* @VR_EECSR_LOAD, align 4
  %247 = call i32 @VR_SETBIT(%struct.vr_softc* %244, i64 %245, i32 %246)
  %248 = load i32, i32* @VR_TIMEOUT, align 4
  store i32 %248, i32* %10, align 4
  br label %249

249:                                              ; preds = %262, %243
  %250 = load i32, i32* %10, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %249
  %253 = call i32 @DELAY(i32 1)
  %254 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %255 = load i64, i64* @VR_EECSR, align 8
  %256 = call i32 @CSR_READ_1(%struct.vr_softc* %254, i64 %255)
  %257 = load i32, i32* @VR_EECSR_LOAD, align 4
  %258 = and i32 %256, %257
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %252
  br label %265

261:                                              ; preds = %252
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %10, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %10, align 4
  br label %249

265:                                              ; preds = %260, %249
  %266 = load i32, i32* %10, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load i32, i32* %2, align 4
  %270 = call i32 (i32, i8*, ...) @device_printf(i32 %269, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %271

271:                                              ; preds = %268, %265
  store i32 0, i32* %10, align 4
  br label %272

272:                                              ; preds = %286, %271
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %289

276:                                              ; preds = %272
  %277 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %278 = load i64, i64* @VR_PAR0, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %278, %280
  %282 = call i32 @CSR_READ_1(%struct.vr_softc* %277, i64 %281)
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %16, i64 %284
  store i32 %282, i32* %285, align 4
  br label %286

286:                                              ; preds = %276
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %10, align 4
  br label %272

289:                                              ; preds = %272
  %290 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %291 = call i32 @vr_reset(%struct.vr_softc* %290)
  %292 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %293 = load i32, i32* @VR_ISR, align 4
  %294 = call i32 @CSR_WRITE_2(%struct.vr_softc* %292, i32 %293, i32 65535)
  %295 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %296 = load i32, i32* @VR_IMR, align 4
  %297 = call i32 @CSR_WRITE_2(%struct.vr_softc* %295, i32 %296, i32 0)
  %298 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %299 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @REV_ID_VT6102_A, align 8
  %302 = icmp sge i64 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %289
  %304 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %305 = load i32, i32* @VR_MII_IMR, align 4
  %306 = call i32 @CSR_WRITE_2(%struct.vr_softc* %304, i32 %305, i32 0)
  br label %307

307:                                              ; preds = %303, %289
  %308 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %309 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @REV_ID_VT6102_A, align 8
  %312 = icmp slt i64 %310, %311
  br i1 %312, label %313, label %322

313:                                              ; preds = %307
  %314 = load i32, i32* %2, align 4
  %315 = load i32, i32* @VR_PCI_MODE2, align 4
  %316 = load i32, i32* %2, align 4
  %317 = load i32, i32* @VR_PCI_MODE2, align 4
  %318 = call i32 @pci_read_config(i32 %316, i32 %317, i32 1)
  %319 = load i32, i32* @VR_MODE2_MODE10T, align 4
  %320 = or i32 %318, %319
  %321 = call i32 @pci_write_config(i32 %314, i32 %315, i32 %320, i32 1)
  br label %381

322:                                              ; preds = %307
  %323 = load i32, i32* %2, align 4
  %324 = load i32, i32* @VR_PCI_MODE2, align 4
  %325 = load i32, i32* %2, align 4
  %326 = load i32, i32* @VR_PCI_MODE2, align 4
  %327 = call i32 @pci_read_config(i32 %325, i32 %326, i32 1)
  %328 = load i32, i32* @VR_MODE2_PCEROPT, align 4
  %329 = or i32 %327, %328
  %330 = call i32 @pci_write_config(i32 %323, i32 %324, i32 %329, i32 1)
  %331 = load i32, i32* %2, align 4
  %332 = load i32, i32* @VR_PCI_MODE3, align 4
  %333 = load i32, i32* %2, align 4
  %334 = load i32, i32* @VR_PCI_MODE3, align 4
  %335 = call i32 @pci_read_config(i32 %333, i32 %334, i32 1)
  %336 = load i32, i32* @VR_MODE3_MIION, align 4
  %337 = or i32 %335, %336
  %338 = call i32 @pci_write_config(i32 %331, i32 %332, i32 %337, i32 1)
  %339 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %340 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @REV_ID_VT6105_LOM, align 8
  %343 = icmp sge i64 %341, %342
  br i1 %343, label %344, label %359

344:                                              ; preds = %322
  %345 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %346 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @REV_ID_VT6105M_A0, align 8
  %349 = icmp slt i64 %347, %348
  br i1 %349, label %350, label %359

350:                                              ; preds = %344
  %351 = load i32, i32* %2, align 4
  %352 = load i32, i32* @VR_PCI_MODE2, align 4
  %353 = load i32, i32* %2, align 4
  %354 = load i32, i32* @VR_PCI_MODE2, align 4
  %355 = call i32 @pci_read_config(i32 %353, i32 %354, i32 1)
  %356 = load i32, i32* @VR_MODE2_MODE10T, align 4
  %357 = or i32 %355, %356
  %358 = call i32 @pci_write_config(i32 %351, i32 %352, i32 %357, i32 1)
  br label %359

359:                                              ; preds = %350, %344, %322
  %360 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %361 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @REV_ID_VT6107_A1, align 8
  %364 = icmp sge i64 %362, %363
  br i1 %364, label %365, label %380

365:                                              ; preds = %359
  %366 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %367 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @REV_ID_VT6105M_A0, align 8
  %370 = icmp slt i64 %368, %369
  br i1 %370, label %371, label %380

371:                                              ; preds = %365
  %372 = load i32, i32* %2, align 4
  %373 = load i32, i32* @VR_PCI_MODE2, align 4
  %374 = load i32, i32* %2, align 4
  %375 = load i32, i32* @VR_PCI_MODE2, align 4
  %376 = call i32 @pci_read_config(i32 %374, i32 %375, i32 1)
  %377 = load i32, i32* @VR_MODE2_MRDPL, align 4
  %378 = or i32 %376, %377
  %379 = call i32 @pci_write_config(i32 %372, i32 %373, i32 %378, i32 1)
  br label %380

380:                                              ; preds = %371, %365, %359
  br label %381

381:                                              ; preds = %380, %313
  %382 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %383 = load i32, i32* @VR_MIICMD, align 4
  %384 = load i32, i32* @VR_MIICMD_AUTOPOLL, align 4
  %385 = call i32 @VR_CLRBIT(%struct.vr_softc* %382, i32 %383, i32 %384)
  %386 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %387 = call i64 @vr_dma_alloc(%struct.vr_softc* %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %381
  %390 = load i32, i32* @ENXIO, align 4
  store i32 %390, i32* %8, align 4
  br label %455

391:                                              ; preds = %381
  %392 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %393 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @REV_ID_VT6105_A0, align 8
  %396 = icmp sge i64 %394, %395
  br i1 %396, label %397, label %398

397:                                              ; preds = %391
  store i32 1, i32* %11, align 4
  br label %404

398:                                              ; preds = %391
  %399 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %400 = load i64, i64* @VR_PHYADDR, align 8
  %401 = call i32 @CSR_READ_1(%struct.vr_softc* %399, i64 %400)
  %402 = load i32, i32* @VR_PHYADDR_MASK, align 4
  %403 = and i32 %401, %402
  store i32 %403, i32* %11, align 4
  br label %404

404:                                              ; preds = %398, %397
  %405 = load i32, i32* %2, align 4
  %406 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %407 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %406, i32 0, i32 5
  %408 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %409 = load i32, i32* @vr_ifmedia_upd, align 4
  %410 = load i32, i32* @vr_ifmedia_sts, align 4
  %411 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %412 = load i32, i32* %11, align 4
  %413 = load i32, i32* @MII_OFFSET_ANY, align 4
  %414 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %415 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @REV_ID_VT6102_A, align 8
  %418 = icmp sge i64 %416, %417
  br i1 %418, label %419, label %421

419:                                              ; preds = %404
  %420 = load i32, i32* @MIIF_DOPAUSE, align 4
  br label %422

421:                                              ; preds = %404
  br label %422

422:                                              ; preds = %421, %419
  %423 = phi i32 [ %420, %419 ], [ 0, %421 ]
  %424 = call i32 @mii_attach(i32 %405, i32* %407, %struct.ifnet* %408, i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %423)
  store i32 %424, i32* %8, align 4
  %425 = load i32, i32* %8, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %422
  %428 = load i32, i32* %2, align 4
  %429 = call i32 (i32, i8*, ...) @device_printf(i32 %428, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %455

430:                                              ; preds = %422
  %431 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %432 = call i32 @ether_ifattach(%struct.ifnet* %431, i32* %16)
  %433 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %434 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %433, i32 0, i32 3
  store i32 4, i32* %434, align 4
  %435 = load i32, i32* %2, align 4
  %436 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %437 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %436, i32 0, i32 4
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* @INTR_TYPE_NET, align 4
  %440 = load i32, i32* @INTR_MPSAFE, align 4
  %441 = or i32 %439, %440
  %442 = load i32, i32* @vr_intr, align 4
  %443 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %444 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %445 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %444, i32 0, i32 3
  %446 = call i32 @bus_setup_intr(i32 %435, i32* %438, i32 %441, i32 %442, i32* null, %struct.vr_softc* %443, i32* %445)
  store i32 %446, i32* %8, align 4
  %447 = load i32, i32* %8, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %454

449:                                              ; preds = %430
  %450 = load i32, i32* %2, align 4
  %451 = call i32 (i32, i8*, ...) @device_printf(i32 %450, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %452 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %453 = call i32 @ether_ifdetach(%struct.ifnet* %452)
  br label %455

454:                                              ; preds = %430
  br label %455

455:                                              ; preds = %454, %449, %427, %389, %123, %112, %94
  %456 = load i32, i32* %8, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %455
  %459 = load i32, i32* %2, align 4
  %460 = call i32 @vr_detach(i32 %459)
  br label %461

461:                                              ; preds = %458, %455
  %462 = load i32, i32* %8, align 4
  %463 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %463)
  ret i32 %462
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.vr_softc* @device_get_softc(i32) #2

declare dso_local %struct.vr_type* @vr_match(i32) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.vr_softc*, i32, i32, i8*, i8*) #2

declare dso_local i32 @device_get_sysctl_ctx(i32) #2

declare dso_local i32 @SYSCTL_CHILDREN(i32) #2

declare dso_local i32 @device_get_sysctl_tree(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i64 @pci_get_revid(i32) #2

declare dso_local i32 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.vr_softc*) #2

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #2

declare dso_local i32 @VR_CLRBIT(%struct.vr_softc*, i32, i32) #2

declare dso_local i32 @VR_SETBIT(%struct.vr_softc*, i64, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i32 @CSR_READ_1(%struct.vr_softc*, i64) #2

declare dso_local i32 @vr_reset(%struct.vr_softc*) #2

declare dso_local i32 @CSR_WRITE_2(%struct.vr_softc*, i32, i32) #2

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #2

declare dso_local i32 @pci_read_config(i32, i32, i32) #2

declare dso_local i64 @vr_dma_alloc(%struct.vr_softc*) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.vr_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @vr_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
