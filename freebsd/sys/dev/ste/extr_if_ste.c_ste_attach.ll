; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32, i32, i32, i32*, i32, i32, %struct.ifnet*, i32, i32, i32*, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.ste_softc* }
%struct.TYPE_3__ = type { i64 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@DL_VENDORID = common dso_local global i64 0, align 8
@DL_DEVICEID_DL10050 = common dso_local global i64 0, align 8
@STE_FLAG_ONE_PHY = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@ST_DEVICEID_ST201_1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"prefer_iomap\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"couldn't map ports/memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@STE_EEADDR_NODE0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to read station address\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@ste_ifmedia_upd = common dso_local global i32 0, align 4
@ste_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ste_ioctl = common dso_local global i32 0, align 4
@ste_start = common dso_local global i32 0, align 4
@ste_init = common dso_local global i32 0, align 4
@STE_TX_LIST_CNT = common dso_local global i64 0, align 8
@STE_TXSTART_THRESH = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ste_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ste_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ste_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ste_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %13 = sdiv i32 %12, 2
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call %struct.ste_softc* @device_get_softc(i32 %17)
  store %struct.ste_softc* %18, %struct.ste_softc** %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @pci_get_vendor(i32 %22)
  %24 = load i64, i64* @DL_VENDORID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @pci_get_device(i32 %27)
  %29 = load i64, i64* @DL_DEVICEID_DL10050, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @pci_get_revid(i32 %32)
  %34 = icmp eq i32 %33, 18
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @STE_FLAG_ONE_PHY, align 4
  %37 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %31, %26, %1
  %42 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %42, i32 0, i32 7
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @device_get_nameunit(i32 %44)
  %46 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %47 = load i32, i32* @MTX_DEF, align 4
  %48 = call i32 @mtx_init(i32* %43, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @pci_enable_busmaster(i32 %49)
  store i32 0, i32* %10, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i64 @pci_get_device(i32 %51)
  %53 = load i64, i64* @ST_DEVICEID_ST201_1, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %66

56:                                               ; preds = %41
  %57 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @device_get_name(i32 %59)
  %61 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_get_unit(i32 %63)
  %65 = call i32 @resource_int_value(i32 %60, i32 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %10)
  br label %66

66:                                               ; preds = %56, %55
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = call i8* @PCIR_BAR(i32 1)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @SYS_RES_MEMORY, align 4
  %75 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %2, align 4
  %78 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %81, i32 0, i32 1
  %83 = load i32, i32* @RF_ACTIVE, align 4
  %84 = call i8* @bus_alloc_resource_any(i32 %77, i32 %80, i32* %82, i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %86, i32 0, i32 9
  store i32* %85, i32** %87, align 8
  br label %88

88:                                               ; preds = %69, %66
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %92, i32 0, i32 9
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %91, %88
  %97 = call i8* @PCIR_BAR(i32 0)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %100 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @SYS_RES_IOPORT, align 4
  %102 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %102, i32 0, i32 10
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %2, align 4
  %105 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %106 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %109 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %108, i32 0, i32 1
  %110 = load i32, i32* @RF_ACTIVE, align 4
  %111 = call i8* @bus_alloc_resource_any(i32 %104, i32 %107, i32* %109, i32 %110)
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %113, i32 0, i32 9
  store i32* %112, i32** %114, align 8
  br label %115

115:                                              ; preds = %96, %91
  %116 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %117 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %116, i32 0, i32 9
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* %2, align 4
  %122 = call i32 @device_printf(i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* @ENXIO, align 4
  store i32 %123, i32* %7, align 4
  br label %290

124:                                              ; preds = %115
  store i32 0, i32* %11, align 4
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* @SYS_RES_IRQ, align 4
  %127 = load i32, i32* @RF_SHAREABLE, align 4
  %128 = load i32, i32* @RF_ACTIVE, align 4
  %129 = or i32 %127, %128
  %130 = call i8* @bus_alloc_resource_any(i32 %125, i32 %126, i32* %11, i32 %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %133 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %132, i32 0, i32 3
  store i32* %131, i32** %133, align 8
  %134 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %135 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %124
  %139 = load i32, i32* %2, align 4
  %140 = call i32 @device_printf(i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @ENXIO, align 4
  store i32 %141, i32* %7, align 4
  br label %290

142:                                              ; preds = %124
  %143 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %144 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %143, i32 0, i32 8
  %145 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %146 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %145, i32 0, i32 7
  %147 = call i32 @callout_init_mtx(i32* %144, i32* %146, i32 0)
  %148 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %149 = call i32 @ste_reset(%struct.ste_softc* %148)
  %150 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %151 = load i32, i32* @STE_EEADDR_NODE0, align 4
  %152 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %153 = sdiv i32 %152, 2
  %154 = call i64 @ste_read_eeprom(%struct.ste_softc* %150, i32* %16, i32 %151, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %142
  %157 = load i32, i32* %2, align 4
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i32, i32* @ENXIO, align 4
  store i32 %159, i32* %7, align 4
  br label %290

160:                                              ; preds = %142
  %161 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %162 = call i32 @ste_sysctl_node(%struct.ste_softc* %161)
  %163 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %164 = call i32 @ste_dma_alloc(%struct.ste_softc* %163)
  store i32 %164, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %290

167:                                              ; preds = %160
  %168 = load i32, i32* @IFT_ETHER, align 4
  %169 = call %struct.ifnet* @if_alloc(i32 %168)
  %170 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %171 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %170, i32 0, i32 6
  store %struct.ifnet* %169, %struct.ifnet** %171, align 8
  store %struct.ifnet* %169, %struct.ifnet** %4, align 8
  %172 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %173 = icmp eq %struct.ifnet* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i32, i32* %2, align 4
  %176 = call i32 @device_printf(i32 %175, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %177 = load i32, i32* @ENOSPC, align 4
  store i32 %177, i32* %7, align 4
  br label %290

178:                                              ; preds = %167
  %179 = load i32, i32* @MII_PHY_ANY, align 4
  store i32 %179, i32* %8, align 4
  %180 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %181 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @STE_FLAG_ONE_PHY, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %186, %178
  %188 = load i32, i32* %2, align 4
  %189 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %190 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %189, i32 0, i32 5
  %191 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %192 = load i32, i32* @ste_ifmedia_upd, align 4
  %193 = load i32, i32* @ste_ifmedia_sts, align 4
  %194 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @MII_OFFSET_ANY, align 4
  %197 = call i32 @mii_attach(i32 %188, i32* %190, %struct.ifnet* %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 0)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %187
  %201 = load i32, i32* %2, align 4
  %202 = call i32 @device_printf(i32 %201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %290

203:                                              ; preds = %187
  %204 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %205 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %206 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %205, i32 0, i32 8
  store %struct.ste_softc* %204, %struct.ste_softc** %206, align 8
  %207 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %208 = load i32, i32* %2, align 4
  %209 = call i32 @device_get_name(i32 %208)
  %210 = load i32, i32* %2, align 4
  %211 = call i32 @device_get_unit(i32 %210)
  %212 = call i32 @if_initname(%struct.ifnet* %207, i32 %209, i32 %211)
  %213 = load i32, i32* @IFF_BROADCAST, align 4
  %214 = load i32, i32* @IFF_SIMPLEX, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @IFF_MULTICAST, align 4
  %217 = or i32 %215, %216
  %218 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %219 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* @ste_ioctl, align 4
  %221 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %222 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %221, i32 0, i32 7
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* @ste_start, align 4
  %224 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %225 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %224, i32 0, i32 6
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @ste_init, align 4
  %227 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 8
  %229 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %230 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %229, i32 0, i32 4
  %231 = load i64, i64* @STE_TX_LIST_CNT, align 8
  %232 = sub nsw i64 %231, 1
  %233 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %230, i64 %232)
  %234 = load i64, i64* @STE_TX_LIST_CNT, align 8
  %235 = sub nsw i64 %234, 1
  %236 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  store i64 %235, i64* %238, align 8
  %239 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %240 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %239, i32 0, i32 4
  %241 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %240)
  %242 = load i32, i32* @STE_TXSTART_THRESH, align 4
  %243 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %244 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %243, i32 0, i32 4
  store i32 %242, i32* %244, align 8
  %245 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %246 = call i32 @ether_ifattach(%struct.ifnet* %245, i32* %16)
  %247 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %248 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %247, i32 0, i32 1
  store i32 4, i32* %248, align 4
  %249 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %250 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %251 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load i32, i32* %2, align 4
  %255 = load i32, i32* @PCIY_PMG, align 4
  %256 = call i64 @pci_find_cap(i32 %254, i32 %255, i32* %9)
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %203
  %259 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %260 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %261 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %258, %203
  %265 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %266 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %269 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* %2, align 4
  %271 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %272 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* @INTR_TYPE_NET, align 4
  %275 = load i32, i32* @INTR_MPSAFE, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @ste_intr, align 4
  %278 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %279 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %280 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %279, i32 0, i32 2
  %281 = call i32 @bus_setup_intr(i32 %270, i32* %273, i32 %276, i32* null, i32 %277, %struct.ste_softc* %278, i32* %280)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %264
  %285 = load i32, i32* %2, align 4
  %286 = call i32 @device_printf(i32 %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %287 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %288 = call i32 @ether_ifdetach(%struct.ifnet* %287)
  br label %290

289:                                              ; preds = %264
  br label %290

290:                                              ; preds = %289, %284, %200, %174, %166, %156, %138, %120
  %291 = load i32, i32* %7, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load i32, i32* %2, align 4
  %295 = call i32 @ste_detach(i32 %294)
  br label %296

296:                                              ; preds = %293, %290
  %297 = load i32, i32* %7, align 4
  %298 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %298)
  ret i32 %297
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ste_softc* @device_get_softc(i32) #2

declare dso_local i64 @pci_get_vendor(i32) #2

declare dso_local i64 @pci_get_device(i32) #2

declare dso_local i32 @pci_get_revid(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i8* @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @ste_reset(%struct.ste_softc*) #2

declare dso_local i64 @ste_read_eeprom(%struct.ste_softc*, i32*, i32, i32) #2

declare dso_local i32 @ste_sysctl_node(%struct.ste_softc*) #2

declare dso_local i32 @ste_dma_alloc(%struct.ste_softc*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ste_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @ste_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
