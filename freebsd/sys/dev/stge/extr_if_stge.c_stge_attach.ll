; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i64, i32, i32, i32, i32, i32, i32, %struct.ifnet*, i32, i32, i32*, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i64, %struct.TYPE_3__, i32, i32, i32, %struct.stge_softc* }
%struct.TYPE_3__ = type { i64 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32* null, align 8
@MTX_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"stge_mii_mutex\00", align 1
@stge_link_task = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@stge_res_spec_mem = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"couldn't locate IO BAR\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@stge_res_spec_io = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't allocate %s resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"rxint_nframe\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_stge_rxint_nframe = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"stge rx interrupt nframe\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"rxint_dmawait\00", align 1
@sysctl_hw_stge_rxint_dmawait = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"stge rx interrupt dmawait\00", align 1
@STGE_RXINT_NFRAME_DEFAULT = common dso_local global i8* null, align 8
@STGE_RXINT_NFRAME_MIN = common dso_local global i8* null, align 8
@STGE_RXINT_NFRAME_MAX = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [52 x i8] c"rxint_nframe value out of range; using default: %d\0A\00", align 1
@STGE_RXINT_DMAWAIT_DEFAULT = common dso_local global i8* null, align 8
@STGE_RXINT_DMAWAIT_MIN = common dso_local global i8* null, align 8
@STGE_RXINT_DMAWAIT_MAX = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [53 x i8] c"rxint_dmawait value out of range; using default: %d\0A\00", align 1
@STGE_AsicCtrl = common dso_local global i32 0, align 4
@AC_PhyMedia = common dso_local global i32 0, align 4
@STGE_EEPROM_LEDMode = common dso_local global i64 0, align 8
@STGE_RESET_FULL = common dso_local global i32 0, align 4
@DEVICEID_SUNDANCETI_ST1023 = common dso_local global i64 0, align 8
@STGE_StationAddress0 = common dso_local global i32 0, align 4
@STGE_StationAddress1 = common dso_local global i32 0, align 4
@STGE_StationAddress2 = common dso_local global i32 0, align 4
@STGE_EEPROM_StationAddress0 = common dso_local global i64 0, align 8
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"failed to if_alloc()\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@stge_ioctl = common dso_local global i32 0, align 4
@stge_start = common dso_local global i32 0, align 4
@stge_init = common dso_local global i32 0, align 4
@STGE_TX_RING_CNT = common dso_local global i64 0, align 8
@STGE_CSUM_FEATURES = common dso_local global i64 0, align 8
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@STGE_PhyCtrl = common dso_local global i32 0, align 4
@PC_PhyDuplexPolarity = common dso_local global i32 0, align 4
@PC_PhyLnkPolarity = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@MIIF_MACPRIV0 = common dso_local global i32 0, align 4
@stge_mediachange = common dso_local global i32 0, align 4
@stge_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@PCIM_CMD_MWRICEN = common dso_local global i32 0, align 4
@DMAC_MWIDisable = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@stge_intr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"couldn't set up IRQ\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call %struct.stge_softc* @device_get_softc(i32 %19)
  store %struct.stge_softc* %20, %struct.stge_softc** %3, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %23 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %25 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %24, i32 0, i32 16
  %26 = load i32, i32* %2, align 4
  %27 = call i8* @device_get_nameunit(i32 %26)
  %28 = load i32*, i32** @MTX_NETWORK_LOCK, align 8
  %29 = load i32, i32* @MTX_DEF, align 4
  %30 = call i32 @mtx_init(i32* %25, i8* %27, i32* %28, i32 %29)
  %31 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %32 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %31, i32 0, i32 18
  %33 = load i32, i32* @MTX_DEF, align 4
  %34 = call i32 @mtx_init(i32* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32 %33)
  %35 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %35, i32 0, i32 17
  %37 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %38 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %37, i32 0, i32 16
  %39 = call i32 @callout_init_mtx(i32* %36, i32* %38, i32 0)
  %40 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %41 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %40, i32 0, i32 15
  %42 = load i32, i32* @stge_link_task, align 4
  %43 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %44 = call i32 @TASK_INIT(i32* %41, i32 0, i32 %42, %struct.stge_softc* %43)
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @pci_enable_busmaster(i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @PCIR_COMMAND, align 4
  %49 = call i8* @pci_read_config(i32 %47, i32 %48, i32 2)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @PCIR_BAR(i32 1)
  %53 = call i8* @pci_read_config(i32 %51, i32 %52, i32 4)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i64 @PCI_BAR_IO(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %1
  %58 = load i64, i64* @stge_res_spec_mem, align 8
  %59 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %60 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %78

61:                                               ; preds = %1
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @PCIR_BAR(i32 0)
  %64 = call i8* @pci_read_config(i32 %62, i32 %63, i32 4)
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @PCI_BAR_IO(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  %69 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %70 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %7, align 4
  br label %493

74:                                               ; preds = %61
  %75 = load i64, i64* @stge_res_spec_io, align 8
  %76 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %77 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %57
  %79 = load i32, i32* %2, align 4
  %80 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %81 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %84 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %83, i32 0, i32 10
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @bus_alloc_resources(i32 %79, i64 %82, i32* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %78
  %90 = load i32, i32* %2, align 4
  %91 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %92 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @stge_res_spec_mem, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  br label %493

99:                                               ; preds = %78
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @pci_get_revid(i32 %100)
  %102 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %103 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @device_get_sysctl_ctx(i32 %104)
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @device_get_sysctl_tree(i32 %106)
  %108 = call i32 @SYSCTL_CHILDREN(i32 %107)
  %109 = load i32, i32* @OID_AUTO, align 4
  %110 = load i32, i32* @CTLTYPE_INT, align 4
  %111 = load i32, i32* @CTLFLAG_RW, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %114 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %113, i32 0, i32 14
  %115 = load i32, i32* @sysctl_hw_stge_rxint_nframe, align 4
  %116 = call i32 @SYSCTL_ADD_PROC(i32 %105, i32 %108, i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %112, i8** %114, i32 0, i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @device_get_sysctl_ctx(i32 %117)
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @device_get_sysctl_tree(i32 %119)
  %121 = call i32 @SYSCTL_CHILDREN(i32 %120)
  %122 = load i32, i32* @OID_AUTO, align 4
  %123 = load i32, i32* @CTLTYPE_INT, align 4
  %124 = load i32, i32* @CTLFLAG_RW, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %127 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %126, i32 0, i32 13
  %128 = load i32, i32* @sysctl_hw_stge_rxint_dmawait, align 4
  %129 = call i32 @SYSCTL_ADD_PROC(i32 %118, i32 %121, i32 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %125, i8** %127, i32 0, i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %130 = load i8*, i8** @STGE_RXINT_NFRAME_DEFAULT, align 8
  %131 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %132 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %131, i32 0, i32 14
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @device_get_name(i32 %133)
  %135 = load i32, i32* %2, align 4
  %136 = call i32 @device_get_unit(i32 %135)
  %137 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %138 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %137, i32 0, i32 14
  %139 = call i32 @resource_int_value(i32 %134, i32 %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %99
  %143 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %144 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %143, i32 0, i32 14
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** @STGE_RXINT_NFRAME_MIN, align 8
  %147 = icmp ult i8* %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %150 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %149, i32 0, i32 14
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** @STGE_RXINT_NFRAME_MAX, align 8
  %153 = icmp ugt i8* %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %148, %142
  %155 = load i32, i32* %2, align 4
  %156 = load i8*, i8** @STGE_RXINT_NFRAME_DEFAULT, align 8
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i8* %156)
  %158 = load i8*, i8** @STGE_RXINT_NFRAME_DEFAULT, align 8
  %159 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %160 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %159, i32 0, i32 14
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %154, %148
  br label %162

162:                                              ; preds = %161, %99
  %163 = load i8*, i8** @STGE_RXINT_DMAWAIT_DEFAULT, align 8
  %164 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %165 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %164, i32 0, i32 13
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %2, align 4
  %167 = call i32 @device_get_name(i32 %166)
  %168 = load i32, i32* %2, align 4
  %169 = call i32 @device_get_unit(i32 %168)
  %170 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %171 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %170, i32 0, i32 13
  %172 = call i32 @resource_int_value(i32 %167, i32 %169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %162
  %176 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %177 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %176, i32 0, i32 13
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** @STGE_RXINT_DMAWAIT_MIN, align 8
  %180 = icmp ult i8* %178, %179
  br i1 %180, label %187, label %181

181:                                              ; preds = %175
  %182 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %183 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %182, i32 0, i32 13
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** @STGE_RXINT_DMAWAIT_MAX, align 8
  %186 = icmp ugt i8* %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %181, %175
  %188 = load i32, i32* %2, align 4
  %189 = load i8*, i8** @STGE_RXINT_DMAWAIT_DEFAULT, align 8
  %190 = call i32 (i32, i8*, ...) @device_printf(i32 %188, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %189)
  %191 = load i8*, i8** @STGE_RXINT_DMAWAIT_DEFAULT, align 8
  %192 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %193 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %192, i32 0, i32 13
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %187, %181
  br label %195

195:                                              ; preds = %194, %162
  %196 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %197 = call i32 @stge_dma_alloc(%struct.stge_softc* %196)
  store i32 %197, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %493

200:                                              ; preds = %195
  %201 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %202 = load i32, i32* @STGE_AsicCtrl, align 4
  %203 = call i32 @CSR_READ_4(%struct.stge_softc* %201, i32 %202)
  %204 = load i32, i32* @AC_PhyMedia, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %209 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %208, i32 0, i32 2
  store i32 1, i32* %209, align 4
  br label %213

210:                                              ; preds = %200
  %211 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %212 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %211, i32 0, i32 2
  store i32 0, i32* %212, align 4
  br label %213

213:                                              ; preds = %210, %207
  %214 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %215 = load i64, i64* @STGE_EEPROM_LEDMode, align 8
  %216 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %217 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %216, i32 0, i32 3
  %218 = call i32 @stge_read_eeprom(%struct.stge_softc* %214, i64 %215, i32* %217)
  %219 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %220 = call i32 @STGE_LOCK(%struct.stge_softc* %219)
  %221 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %222 = load i32, i32* @STGE_RESET_FULL, align 4
  %223 = call i32 @stge_reset(%struct.stge_softc* %221, i32 %222)
  %224 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %225 = call i32 @STGE_UNLOCK(%struct.stge_softc* %224)
  %226 = load i32, i32* %2, align 4
  %227 = call i64 @pci_get_device(i32 %226)
  %228 = load i64, i64* @DEVICEID_SUNDANCETI_ST1023, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %260

230:                                              ; preds = %213
  %231 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %232 = load i32, i32* @STGE_StationAddress0, align 4
  %233 = call i32 @CSR_READ_2(%struct.stge_softc* %231, i32 %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = and i32 %234, 255
  %236 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %235, i32* %236, align 16
  %237 = load i32, i32* %12, align 4
  %238 = ashr i32 %237, 8
  %239 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %238, i32* %239, align 4
  %240 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %241 = load i32, i32* @STGE_StationAddress1, align 4
  %242 = call i32 @CSR_READ_2(%struct.stge_softc* %240, i32 %241)
  store i32 %242, i32* %12, align 4
  %243 = load i32, i32* %12, align 4
  %244 = and i32 %243, 255
  %245 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 %244, i32* %245, align 8
  %246 = load i32, i32* %12, align 4
  %247 = ashr i32 %246, 8
  %248 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 %247, i32* %248, align 4
  %249 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %250 = load i32, i32* @STGE_StationAddress2, align 4
  %251 = call i32 @CSR_READ_2(%struct.stge_softc* %249, i32 %250)
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  %253 = and i32 %252, 255
  %254 = getelementptr inbounds i32, i32* %18, i64 4
  store i32 %253, i32* %254, align 16
  %255 = load i32, i32* %12, align 4
  %256 = ashr i32 %255, 8
  %257 = getelementptr inbounds i32, i32* %18, i64 5
  store i32 %256, i32* %257, align 4
  %258 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %259 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %258, i32 0, i32 4
  store i32 0, i32* %259, align 4
  br label %299

260:                                              ; preds = %213
  %261 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %262 = sdiv i32 %261, 2
  %263 = zext i32 %262 to i64
  %264 = call i8* @llvm.stacksave()
  store i8* %264, i8** %13, align 8
  %265 = alloca i32, i64 %263, align 16
  store i64 %263, i64* %14, align 8
  store i32 0, i32* %9, align 4
  br label %266

266:                                              ; preds = %289, %260
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %269 = sdiv i32 %268, 2
  %270 = icmp slt i32 %267, %269
  br i1 %270, label %271, label %292

271:                                              ; preds = %266
  %272 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %273 = load i64, i64* @STGE_EEPROM_StationAddress0, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %273, %275
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %265, i64 %278
  %280 = call i32 @stge_read_eeprom(%struct.stge_softc* %272, i64 %276, i32* %279)
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %265, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @le16toh(i32 %284)
  %286 = load i32, i32* %9, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %265, i64 %287
  store i32 %285, i32* %288, align 4
  br label %289

289:                                              ; preds = %271
  %290 = load i32, i32* %9, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %9, align 4
  br label %266

292:                                              ; preds = %266
  %293 = mul nuw i64 4, %16
  %294 = trunc i64 %293 to i32
  %295 = call i32 @bcopy(i32* %265, i32* %18, i32 %294)
  %296 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %297 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %296, i32 0, i32 4
  store i32 1, i32* %297, align 4
  %298 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %298)
  br label %299

299:                                              ; preds = %292, %230
  %300 = load i32, i32* @IFT_ETHER, align 4
  %301 = call %struct.ifnet* @if_alloc(i32 %300)
  %302 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %303 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %302, i32 0, i32 7
  store %struct.ifnet* %301, %struct.ifnet** %303, align 8
  store %struct.ifnet* %301, %struct.ifnet** %4, align 8
  %304 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %305 = icmp eq %struct.ifnet* %304, null
  br i1 %305, label %306, label %312

306:                                              ; preds = %299
  %307 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %308 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 8
  %310 = call i32 (i32, i8*, ...) @device_printf(i32 %309, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %311 = load i32, i32* @ENXIO, align 4
  store i32 %311, i32* %7, align 4
  br label %493

312:                                              ; preds = %299
  %313 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %314 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %315 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %314, i32 0, i32 9
  store %struct.stge_softc* %313, %struct.stge_softc** %315, align 8
  %316 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %317 = load i32, i32* %2, align 4
  %318 = call i32 @device_get_name(i32 %317)
  %319 = load i32, i32* %2, align 4
  %320 = call i32 @device_get_unit(i32 %319)
  %321 = call i32 @if_initname(%struct.ifnet* %316, i32 %318, i32 %320)
  %322 = load i32, i32* @IFF_BROADCAST, align 4
  %323 = load i32, i32* @IFF_SIMPLEX, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* @IFF_MULTICAST, align 4
  %326 = or i32 %324, %325
  %327 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %328 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %327, i32 0, i32 0
  store i32 %326, i32* %328, align 8
  %329 = load i32, i32* @stge_ioctl, align 4
  %330 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %331 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %330, i32 0, i32 8
  store i32 %329, i32* %331, align 8
  %332 = load i32, i32* @stge_start, align 4
  %333 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %334 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %333, i32 0, i32 7
  store i32 %332, i32* %334, align 4
  %335 = load i32, i32* @stge_init, align 4
  %336 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %337 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %336, i32 0, i32 6
  store i32 %335, i32* %337, align 8
  %338 = load i64, i64* @STGE_TX_RING_CNT, align 8
  %339 = sub nsw i64 %338, 1
  %340 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %341 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %340, i32 0, i32 5
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 0
  store i64 %339, i64* %342, align 8
  %343 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %344 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %343, i32 0, i32 5
  %345 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %346 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %345, i32 0, i32 5
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %344, i64 %348)
  %350 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %351 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %350, i32 0, i32 5
  %352 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %351)
  %353 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %354 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = icmp sge i32 %355, 12
  br i1 %356, label %357, label %364

357:                                              ; preds = %312
  %358 = load i64, i64* @STGE_CSUM_FEATURES, align 8
  %359 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %360 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %359, i32 0, i32 4
  store i64 %358, i64* %360, align 8
  %361 = load i32, i32* @IFCAP_HWCSUM, align 4
  %362 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %363 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %362, i32 0, i32 1
  store i32 %361, i32* %363, align 4
  br label %369

364:                                              ; preds = %312
  %365 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %366 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %365, i32 0, i32 4
  store i64 0, i64* %366, align 8
  %367 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %368 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %367, i32 0, i32 1
  store i32 0, i32* %368, align 4
  br label %369

369:                                              ; preds = %364, %357
  %370 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %371 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %372 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %373, %370
  store i32 %374, i32* %372, align 4
  %375 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %376 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %379 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %378, i32 0, i32 2
  store i32 %377, i32* %379, align 8
  %380 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %381 = load i32, i32* @STGE_PhyCtrl, align 4
  %382 = call i32 @CSR_READ_1(%struct.stge_softc* %380, i32 %381)
  %383 = load i32, i32* @PC_PhyDuplexPolarity, align 4
  %384 = load i32, i32* @PC_PhyLnkPolarity, align 4
  %385 = or i32 %383, %384
  %386 = and i32 %382, %385
  %387 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %388 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %387, i32 0, i32 5
  store i32 %386, i32* %388, align 8
  %389 = load i32, i32* @MIIF_DOPAUSE, align 4
  store i32 %389, i32* %8, align 4
  %390 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %391 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = icmp sge i32 %392, 64
  br i1 %393, label %394, label %403

394:                                              ; preds = %369
  %395 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %396 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = icmp sle i32 %397, 78
  br i1 %398, label %399, label %403

399:                                              ; preds = %394
  %400 = load i32, i32* @MIIF_MACPRIV0, align 4
  %401 = load i32, i32* %8, align 4
  %402 = or i32 %401, %400
  store i32 %402, i32* %8, align 4
  br label %403

403:                                              ; preds = %399, %394, %369
  %404 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %405 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %404, i32 0, i32 8
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %408 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %407, i32 0, i32 12
  %409 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %410 = load i32, i32* @stge_mediachange, align 4
  %411 = load i32, i32* @stge_mediastatus, align 4
  %412 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %413 = load i32, i32* @MII_PHY_ANY, align 4
  %414 = load i32, i32* @MII_OFFSET_ANY, align 4
  %415 = load i32, i32* %8, align 4
  %416 = call i32 @mii_attach(i32 %406, i32* %408, %struct.ifnet* %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415)
  store i32 %416, i32* %7, align 4
  %417 = load i32, i32* %7, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %403
  %420 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %421 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %420, i32 0, i32 8
  %422 = load i32, i32* %421, align 8
  %423 = call i32 (i32, i8*, ...) @device_printf(i32 %422, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %493

424:                                              ; preds = %403
  %425 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %426 = call i32 @ether_ifattach(%struct.ifnet* %425, i32* %18)
  %427 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %428 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %429 = or i32 %427, %428
  %430 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %431 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = or i32 %432, %429
  store i32 %433, i32* %431, align 4
  %434 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %435 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = icmp sge i32 %436, 12
  br i1 %437, label %438, label %444

438:                                              ; preds = %424
  %439 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %440 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %441 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = or i32 %442, %439
  store i32 %443, i32* %441, align 4
  br label %444

444:                                              ; preds = %438, %424
  %445 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %446 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %449 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %448, i32 0, i32 2
  store i32 %447, i32* %449, align 8
  %450 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %451 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %450, i32 0, i32 3
  store i32 4, i32* %451, align 4
  %452 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %453 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %452, i32 0, i32 6
  store i32 4095, i32* %453, align 4
  %454 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %455 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %454, i32 0, i32 11
  store i32 0, i32* %455, align 8
  %456 = load i32, i32* %10, align 4
  %457 = load i32, i32* @PCIM_CMD_MWRICEN, align 4
  %458 = and i32 %456, %457
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %466

460:                                              ; preds = %444
  %461 = load i32, i32* @DMAC_MWIDisable, align 4
  %462 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %463 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %462, i32 0, i32 11
  %464 = load i32, i32* %463, align 8
  %465 = or i32 %464, %461
  store i32 %465, i32* %463, align 8
  br label %466

466:                                              ; preds = %460, %444
  %467 = load i32, i32* %2, align 4
  %468 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %469 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %468, i32 0, i32 10
  %470 = load i32*, i32** %469, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 1
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* @INTR_TYPE_NET, align 4
  %474 = load i32, i32* @INTR_MPSAFE, align 4
  %475 = or i32 %473, %474
  %476 = load i32, i32* @stge_intr, align 4
  %477 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %478 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %479 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %478, i32 0, i32 9
  %480 = call i32 @bus_setup_intr(i32 %467, i32 %472, i32 %475, i32* null, i32 %476, %struct.stge_softc* %477, i32* %479)
  store i32 %480, i32* %7, align 4
  %481 = load i32, i32* %7, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %492

483:                                              ; preds = %466
  %484 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %485 = call i32 @ether_ifdetach(%struct.ifnet* %484)
  %486 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %487 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %486, i32 0, i32 8
  %488 = load i32, i32* %487, align 8
  %489 = call i32 (i32, i8*, ...) @device_printf(i32 %488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %490 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %491 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %490, i32 0, i32 7
  store %struct.ifnet* null, %struct.ifnet** %491, align 8
  br label %493

492:                                              ; preds = %466
  br label %493

493:                                              ; preds = %492, %483, %419, %306, %199, %89, %68
  %494 = load i32, i32* %7, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %493
  %497 = load i32, i32* %2, align 4
  %498 = call i32 @stge_detach(i32 %497)
  br label %499

499:                                              ; preds = %496, %493
  %500 = load i32, i32* %7, align 4
  %501 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %501)
  ret i32 %500
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.stge_softc* @device_get_softc(i32) #2

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #2

declare dso_local i8* @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.stge_softc*) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i8* @pci_read_config(i32, i32, i32) #2

declare dso_local i32 @PCIR_BAR(i32) #2

declare dso_local i64 @PCI_BAR_IO(i8*) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @bus_alloc_resources(i32, i64, i32*) #2

declare dso_local i32 @pci_get_revid(i32) #2

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i8**, i32, i32, i8*, i8*) #2

declare dso_local i32 @device_get_sysctl_ctx(i32) #2

declare dso_local i32 @SYSCTL_CHILDREN(i32) #2

declare dso_local i32 @device_get_sysctl_tree(i32) #2

declare dso_local i32 @resource_int_value(i32, i32, i8*, i8**) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @stge_dma_alloc(%struct.stge_softc*) #2

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #2

declare dso_local i32 @stge_read_eeprom(%struct.stge_softc*, i64, i32*) #2

declare dso_local i32 @STGE_LOCK(%struct.stge_softc*) #2

declare dso_local i32 @stge_reset(%struct.stge_softc*, i32) #2

declare dso_local i32 @STGE_UNLOCK(%struct.stge_softc*) #2

declare dso_local i64 @pci_get_device(i32) #2

declare dso_local i32 @CSR_READ_2(%struct.stge_softc*, i32) #2

declare dso_local i32 @le16toh(i32) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i32 @CSR_READ_1(%struct.stge_softc*, i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.stge_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @stge_detach(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
