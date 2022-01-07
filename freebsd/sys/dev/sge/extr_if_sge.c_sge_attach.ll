; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32, i32, i32, i32*, i32, %struct.ifnet*, i32, i32*, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.sge_softc* }
%struct.TYPE_3__ = type { i64 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"couldn't allocate resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't allocate IRQ resources\0A\00", align 1
@SIS_DEVICEID_190 = common dso_local global i64 0, align 8
@SGE_FLAG_FASTETHER = common dso_local global i32 0, align 4
@SGE_FLAG_SIS190 = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot allocate ifnet structure.\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@sge_ioctl = common dso_local global i32 0, align 4
@sge_start = common dso_local global i32 0, align 4
@sge_init = common dso_local global i32 0, align 4
@SGE_TX_RING_CNT = common dso_local global i64 0, align 8
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@SGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@sge_ifmedia_upd = common dso_local global i32 0, align 4
@sge_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@sge_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.sge_softc* @device_get_softc(i32 %13)
  store %struct.sge_softc* %14, %struct.sge_softc** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %19 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %18, i32 0, i32 9
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @device_get_nameunit(i32 %20)
  %22 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %23 = load i32, i32* @MTX_DEF, align 4
  %24 = call i32 @mtx_init(i32* %19, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %26 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %25, i32 0, i32 10
  %27 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %28 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %27, i32 0, i32 9
  %29 = call i32 @callout_init_mtx(i32* %26, i32* %28, i32 0)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @pci_enable_busmaster(i32 %30)
  %32 = call i32 @PCIR_BAR(i32 0)
  %33 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %34 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @SYS_RES_MEMORY, align 4
  %36 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %37 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %2, align 4
  %39 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %40 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %43 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %42, i32 0, i32 0
  %44 = load i32, i32* @RF_ACTIVE, align 4
  %45 = call i8* @bus_alloc_resource_any(i32 %38, i32 %41, i32* %43, i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %48 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %47, i32 0, i32 7
  store i32* %46, i32** %48, align 8
  %49 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %50 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %1
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %7, align 4
  br label %235

57:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @SYS_RES_IRQ, align 4
  %60 = load i32, i32* @RF_SHAREABLE, align 4
  %61 = load i32, i32* @RF_ACTIVE, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @bus_alloc_resource_any(i32 %58, i32 %59, i32* %8, i32 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %66 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %65, i32 0, i32 3
  store i32* %64, i32** %66, align 8
  %67 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %68 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %57
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %7, align 4
  br label %235

75:                                               ; preds = %57
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @pci_get_revid(i32 %76)
  %78 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %79 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %2, align 4
  %81 = call i64 @pci_get_device(i32 %80)
  %82 = load i64, i64* @SIS_DEVICEID_190, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = load i32, i32* @SGE_FLAG_FASTETHER, align 4
  %86 = load i32, i32* @SGE_FLAG_SIS190, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %89 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %84, %75
  %93 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %94 = call i32 @sge_reset(%struct.sge_softc* %93)
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @pci_read_config(i32 %95, i32 115, i32 1)
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %101 = call i32 @sge_get_mac_addr_apc(%struct.sge_softc* %100, i32* %12)
  br label %105

102:                                              ; preds = %92
  %103 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %104 = call i32 @sge_get_mac_addr_eeprom(%struct.sge_softc* %103, i32* %12)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %107 = call i32 @sge_dma_alloc(%struct.sge_softc* %106)
  store i32 %107, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %235

110:                                              ; preds = %105
  %111 = load i32, i32* @IFT_ETHER, align 4
  %112 = call %struct.ifnet* @if_alloc(i32 %111)
  %113 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %114 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %113, i32 0, i32 5
  store %struct.ifnet* %112, %struct.ifnet** %114, align 8
  store %struct.ifnet* %112, %struct.ifnet** %4, align 8
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = icmp eq %struct.ifnet* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @device_printf(i32 %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @ENOSPC, align 4
  store i32 %120, i32* %7, align 4
  br label %235

121:                                              ; preds = %110
  %122 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %123 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 9
  store %struct.sge_softc* %122, %struct.sge_softc** %124, align 8
  %125 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @device_get_name(i32 %126)
  %128 = load i32, i32* %2, align 4
  %129 = call i32 @device_get_unit(i32 %128)
  %130 = call i32 @if_initname(%struct.ifnet* %125, i32 %127, i32 %129)
  %131 = load i32, i32* @IFF_BROADCAST, align 4
  %132 = load i32, i32* @IFF_SIMPLEX, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @IFF_MULTICAST, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %137 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @sge_ioctl, align 4
  %139 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 8
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @sge_start, align 4
  %142 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %143 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @sge_init, align 4
  %145 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 8
  %147 = load i64, i64* @SGE_TX_RING_CNT, align 8
  %148 = sub nsw i64 %147, 1
  %149 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i64 %148, i64* %151, align 8
  %152 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 5
  %154 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %155 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %153, i64 %157)
  %159 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %160 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %159, i32 0, i32 5
  %161 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %160)
  %162 = load i32, i32* @IFCAP_TXCSUM, align 4
  %163 = load i32, i32* @IFCAP_RXCSUM, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @IFCAP_TSO4, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %168 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* @SGE_CSUM_FEATURES, align 4
  %170 = load i32, i32* @CSUM_TSO, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %173 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %175 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %178 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %2, align 4
  %180 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %181 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %180, i32 0, i32 4
  %182 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %183 = load i32, i32* @sge_ifmedia_upd, align 4
  %184 = load i32, i32* @sge_ifmedia_sts, align 4
  %185 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %186 = load i32, i32* @MII_PHY_ANY, align 4
  %187 = load i32, i32* @MII_OFFSET_ANY, align 4
  %188 = call i32 @mii_attach(i32 %179, i32* %181, %struct.ifnet* %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 0)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %121
  %192 = load i32, i32* %2, align 4
  %193 = call i32 @device_printf(i32 %192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %235

194:                                              ; preds = %121
  %195 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %196 = call i32 @ether_ifattach(%struct.ifnet* %195, i32* %12)
  %197 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %198 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %205 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  %208 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %209 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %212 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %214 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %213, i32 0, i32 4
  store i32 4, i32* %214, align 8
  %215 = load i32, i32* %2, align 4
  %216 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %217 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* @INTR_TYPE_NET, align 4
  %220 = load i32, i32* @INTR_MPSAFE, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @sge_intr, align 4
  %223 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %224 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %225 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %224, i32 0, i32 2
  %226 = call i32 @bus_setup_intr(i32 %215, i32* %218, i32 %221, i32* null, i32 %222, %struct.sge_softc* %223, i32* %225)
  store i32 %226, i32* %7, align 4
  %227 = load i32, i32* %7, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %194
  %230 = load i32, i32* %2, align 4
  %231 = call i32 @device_printf(i32 %230, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %232 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %233 = call i32 @ether_ifdetach(%struct.ifnet* %232)
  br label %235

234:                                              ; preds = %194
  br label %235

235:                                              ; preds = %234, %229, %191, %117, %109, %71, %53
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32, i32* %2, align 4
  %240 = call i32 @sge_detach(i32 %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load i32, i32* %7, align 4
  %243 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %243)
  ret i32 %242
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sge_softc* @device_get_softc(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @pci_get_revid(i32) #2

declare dso_local i64 @pci_get_device(i32) #2

declare dso_local i32 @sge_reset(%struct.sge_softc*) #2

declare dso_local i32 @pci_read_config(i32, i32, i32) #2

declare dso_local i32 @sge_get_mac_addr_apc(%struct.sge_softc*, i32*) #2

declare dso_local i32 @sge_get_mac_addr_eeprom(%struct.sge_softc*, i32*) #2

declare dso_local i32 @sge_dma_alloc(%struct.sge_softc*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.sge_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @sge_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
