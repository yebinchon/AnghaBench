; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, %struct.ti_softc*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ti_softc = type { i32, i32, i32*, %struct.TYPE_4__*, i32, i32*, i32*, i32*, i32, i32, %struct.ifnet*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.ti_softc* }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@IFM_IMASK = common dso_local global i32 0, align 4
@ti_ifmedia_upd = common dso_local global i32 0, align 4
@ti_ifmedia_sts = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@TI_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"couldn't map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"chip initialization failed\0A\00", align 1
@TI_EE_MAC_OFFSET = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to read station address\0A\00", align 1
@TI_WINLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"cannot allocate memory buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ALT_VENDORID = common dso_local global i64 0, align 8
@ALT_DEVICEID_ACENIC_COPPER = common dso_local global i64 0, align 8
@NG_VENDORID = common dso_local global i64 0, align 8
@NG_DEVICEID_GA620T = common dso_local global i64 0, align 8
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ti_ioctl = common dso_local global i32 0, align 4
@ti_start = common dso_local global i32 0, align 4
@ti_init = common dso_local global i32 0, align 4
@ti_get_counter = common dso_local global i32 0, align 4
@TI_TX_RING_CNT = common dso_local global i64 0, align 8
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@ti_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"ti%d\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ti_intr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ti_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.ti_softc* @device_get_softc(i32 %8)
  store %struct.ti_softc* %9, %struct.ti_softc** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %11, i32 0, i32 13
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %13, i32 0, i32 11
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @device_get_nameunit(i32 %15)
  %17 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %18 = load i32, i32* @MTX_DEF, align 4
  %19 = call i32 @mtx_init(i32* %14, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %20, i32 0, i32 12
  %22 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %22, i32 0, i32 11
  %24 = call i32 @callout_init_mtx(i32* %21, i32* %23, i32 0)
  %25 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %25, i32 0, i32 4
  %27 = load i32, i32* @IFM_IMASK, align 4
  %28 = load i32, i32* @ti_ifmedia_upd, align 4
  %29 = load i32, i32* @ti_ifmedia_sts, align 4
  %30 = call i32 @ifmedia_init(i32* %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @IFT_ETHER, align 4
  %32 = call %struct.ifnet* @if_alloc(i32 %31)
  %33 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %34 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %33, i32 0, i32 10
  store %struct.ifnet* %32, %struct.ifnet** %34, align 8
  store %struct.ifnet* %32, %struct.ifnet** %3, align 8
  %35 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %36 = icmp eq %struct.ifnet* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOSPC, align 4
  store i32 %40, i32* %5, align 4
  br label %391

41:                                               ; preds = %1
  %42 = load i32, i32* @TI_CSUM_FEATURES, align 4
  %43 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %43, i32 0, i32 10
  %45 = load %struct.ifnet*, %struct.ifnet** %44, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 11
  store i32 %42, i32* %46, align 8
  %47 = load i32, i32* @IFCAP_TXCSUM, align 4
  %48 = load i32, i32* @IFCAP_RXCSUM, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %50, i32 0, i32 10
  %52 = load %struct.ifnet*, %struct.ifnet** %51, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %54, i32 0, i32 10
  %56 = load %struct.ifnet*, %struct.ifnet** %55, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %59, i32 0, i32 10
  %61 = load %struct.ifnet*, %struct.ifnet** %60, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @pci_enable_busmaster(i32 %63)
  %65 = call i32 @PCIR_BAR(i32 0)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SYS_RES_MEMORY, align 4
  %68 = load i32, i32* @RF_ACTIVE, align 4
  %69 = call i8* @bus_alloc_resource_any(i32 %66, i32 %67, i32* %6, i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %72 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %71, i32 0, i32 7
  store i32* %70, i32** %72, align 8
  %73 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %74 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %73, i32 0, i32 7
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %41
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %5, align 4
  br label %391

81:                                               ; preds = %41
  %82 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %83 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %82, i32 0, i32 7
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @rman_get_bustag(i32* %84)
  %86 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %87 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %88, i32 0, i32 7
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @rman_get_bushandle(i32* %90)
  %92 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %93 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %92, i32 0, i32 8
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %6, align 4
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @SYS_RES_IRQ, align 4
  %96 = load i32, i32* @RF_SHAREABLE, align 4
  %97 = load i32, i32* @RF_ACTIVE, align 4
  %98 = or i32 %96, %97
  %99 = call i8* @bus_alloc_resource_any(i32 %94, i32 %95, i32* %6, i32 %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %102 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %104 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %81
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %5, align 4
  br label %391

111:                                              ; preds = %81
  %112 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %113 = call i64 @ti_chipinit(%struct.ti_softc* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %2, align 4
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @ENXIO, align 4
  store i32 %118, i32* %5, align 4
  br label %391

119:                                              ; preds = %111
  %120 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %121 = call i32 @ti_mem_zero(%struct.ti_softc* %120, i32 8192, i32 1040384)
  %122 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %123 = call i64 @ti_chipinit(%struct.ti_softc* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @device_printf(i32 %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %5, align 4
  br label %391

129:                                              ; preds = %119
  %130 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %131 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %132 = load i64, i64* @TI_EE_MAC_OFFSET, align 8
  %133 = add nsw i64 %132, 2
  %134 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %135 = call i64 @ti_read_eeprom(%struct.ti_softc* %130, i32* %131, i64 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @device_printf(i32 %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32, i32* @ENXIO, align 4
  store i32 %140, i32* %5, align 4
  br label %391

141:                                              ; preds = %129
  %142 = load i32, i32* @TI_WINLEN, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 4, %143
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* @M_DEVBUF, align 4
  %147 = load i32, i32* @M_NOWAIT, align 4
  %148 = call i8* @malloc(i32 %145, i32 %146, i32 %147)
  %149 = bitcast i8* %148 to i32*
  %150 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %151 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %150, i32 0, i32 6
  store i32* %149, i32** %151, align 8
  %152 = load i32, i32* @TI_WINLEN, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 4, %153
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* @M_DEVBUF, align 4
  %157 = load i32, i32* @M_NOWAIT, align 4
  %158 = call i8* @malloc(i32 %155, i32 %156, i32 %157)
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %161 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %160, i32 0, i32 5
  store i32* %159, i32** %161, align 8
  %162 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %163 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %141
  %167 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %168 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %166, %141
  %172 = load i32, i32* %2, align 4
  %173 = call i32 @device_printf(i32 %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %174 = load i32, i32* @ENOMEM, align 4
  store i32 %174, i32* %5, align 4
  br label %391

175:                                              ; preds = %166
  %176 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %177 = call i32 @ti_dma_alloc(%struct.ti_softc* %176)
  store i32 %177, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %391

180:                                              ; preds = %175
  %181 = load i32, i32* %2, align 4
  %182 = call i64 @pci_get_vendor(i32 %181)
  %183 = load i64, i64* @ALT_VENDORID, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = load i32, i32* %2, align 4
  %187 = call i64 @pci_get_device(i32 %186)
  %188 = load i64, i64* @ALT_DEVICEID_ACENIC_COPPER, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %192 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %191, i32 0, i32 0
  store i32 1, i32* %192, align 8
  br label %193

193:                                              ; preds = %190, %185, %180
  %194 = load i32, i32* %2, align 4
  %195 = call i64 @pci_get_vendor(i32 %194)
  %196 = load i64, i64* @NG_VENDORID, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = load i32, i32* %2, align 4
  %200 = call i64 @pci_get_device(i32 %199)
  %201 = load i64, i64* @NG_DEVICEID_GA620T, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %205 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %204, i32 0, i32 0
  store i32 1, i32* %205, align 8
  br label %206

206:                                              ; preds = %203, %198, %193
  %207 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %208 = call i32 @ti_sysctl_node(%struct.ti_softc* %207)
  %209 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %210 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %211 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %210, i32 0, i32 10
  store %struct.ti_softc* %209, %struct.ti_softc** %211, align 8
  %212 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %213 = load i32, i32* %2, align 4
  %214 = call i32 @device_get_name(i32 %213)
  %215 = load i32, i32* %2, align 4
  %216 = call i32 @device_get_unit(i32 %215)
  %217 = call i32 @if_initname(%struct.ifnet* %212, i32 %214, i32 %216)
  %218 = load i32, i32* @IFF_BROADCAST, align 4
  %219 = load i32, i32* @IFF_SIMPLEX, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @IFF_MULTICAST, align 4
  %222 = or i32 %220, %221
  %223 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %224 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* @ti_ioctl, align 4
  %226 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %227 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %226, i32 0, i32 9
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @ti_start, align 4
  %229 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %230 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %229, i32 0, i32 8
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @ti_init, align 4
  %232 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %233 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %232, i32 0, i32 7
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* @ti_get_counter, align 4
  %235 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %236 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %235, i32 0, i32 6
  store i32 %234, i32* %236, align 4
  %237 = call i32 @IF_Gbps(i64 1)
  %238 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %239 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %238, i32 0, i32 5
  store i32 %237, i32* %239, align 8
  %240 = load i64, i64* @TI_TX_RING_CNT, align 8
  %241 = sub nsw i64 %240, 1
  %242 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %243 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  store i64 %241, i64* %244, align 8
  %245 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %246 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %245, i32 0, i32 4
  %247 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %248 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %246, i64 %250)
  %252 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %253 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %252, i32 0, i32 4
  %254 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %253)
  %255 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %256 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %302

259:                                              ; preds = %206
  %260 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %261 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %260, i32 0, i32 4
  %262 = load i32, i32* @IFM_ETHER, align 4
  %263 = load i32, i32* @IFM_10_T, align 4
  %264 = or i32 %262, %263
  %265 = call i32 @ifmedia_add(i32* %261, i32 %264, i32 0, i32* null)
  %266 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %267 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %266, i32 0, i32 4
  %268 = load i32, i32* @IFM_ETHER, align 4
  %269 = load i32, i32* @IFM_10_T, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @IFM_FDX, align 4
  %272 = or i32 %270, %271
  %273 = call i32 @ifmedia_add(i32* %267, i32 %272, i32 0, i32* null)
  %274 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %275 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %274, i32 0, i32 4
  %276 = load i32, i32* @IFM_ETHER, align 4
  %277 = load i32, i32* @IFM_100_TX, align 4
  %278 = or i32 %276, %277
  %279 = call i32 @ifmedia_add(i32* %275, i32 %278, i32 0, i32* null)
  %280 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %281 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %280, i32 0, i32 4
  %282 = load i32, i32* @IFM_ETHER, align 4
  %283 = load i32, i32* @IFM_100_TX, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @IFM_FDX, align 4
  %286 = or i32 %284, %285
  %287 = call i32 @ifmedia_add(i32* %281, i32 %286, i32 0, i32* null)
  %288 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %289 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %288, i32 0, i32 4
  %290 = load i32, i32* @IFM_ETHER, align 4
  %291 = load i32, i32* @IFM_1000_T, align 4
  %292 = or i32 %290, %291
  %293 = call i32 @ifmedia_add(i32* %289, i32 %292, i32 0, i32* null)
  %294 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %295 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %294, i32 0, i32 4
  %296 = load i32, i32* @IFM_ETHER, align 4
  %297 = load i32, i32* @IFM_1000_T, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @IFM_FDX, align 4
  %300 = or i32 %298, %299
  %301 = call i32 @ifmedia_add(i32* %295, i32 %300, i32 0, i32* null)
  br label %317

302:                                              ; preds = %206
  %303 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %304 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %303, i32 0, i32 4
  %305 = load i32, i32* @IFM_ETHER, align 4
  %306 = load i32, i32* @IFM_1000_SX, align 4
  %307 = or i32 %305, %306
  %308 = call i32 @ifmedia_add(i32* %304, i32 %307, i32 0, i32* null)
  %309 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %310 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %309, i32 0, i32 4
  %311 = load i32, i32* @IFM_ETHER, align 4
  %312 = load i32, i32* @IFM_1000_SX, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @IFM_FDX, align 4
  %315 = or i32 %313, %314
  %316 = call i32 @ifmedia_add(i32* %310, i32 %315, i32 0, i32* null)
  br label %317

317:                                              ; preds = %302, %259
  %318 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %319 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %318, i32 0, i32 4
  %320 = load i32, i32* @IFM_ETHER, align 4
  %321 = load i32, i32* @IFM_AUTO, align 4
  %322 = or i32 %320, %321
  %323 = call i32 @ifmedia_add(i32* %319, i32 %322, i32 0, i32* null)
  %324 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %325 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %324, i32 0, i32 4
  %326 = load i32, i32* @IFM_ETHER, align 4
  %327 = load i32, i32* @IFM_AUTO, align 4
  %328 = or i32 %326, %327
  %329 = call i32 @ifmedia_set(i32* %325, i32 %328)
  %330 = load i32, i32* %2, align 4
  %331 = call i32 @device_get_unit(i32 %330)
  %332 = load i32, i32* @UID_ROOT, align 4
  %333 = load i32, i32* @GID_OPERATOR, align 4
  %334 = load i32, i32* %2, align 4
  %335 = call i32 @device_get_unit(i32 %334)
  %336 = call %struct.TYPE_4__* @make_dev(i32* @ti_cdevsw, i32 %331, i32 %332, i32 %333, i32 384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %335)
  %337 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %338 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %337, i32 0, i32 3
  store %struct.TYPE_4__* %336, %struct.TYPE_4__** %338, align 8
  %339 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %340 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %341 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %340, i32 0, i32 3
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 0
  store %struct.ti_softc* %339, %struct.ti_softc** %343, align 8
  %344 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %345 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %346 = call i32 @ether_ifattach(%struct.ifnet* %344, i32* %345)
  %347 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %348 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %349 = or i32 %347, %348
  %350 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %351 = or i32 %349, %350
  %352 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %353 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = or i32 %354, %351
  store i32 %355, i32* %353, align 8
  %356 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %357 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %360 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %359, i32 0, i32 1
  store i32 %358, i32* %360, align 4
  %361 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %362 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %361, i32 0, i32 3
  store i32 4, i32* %362, align 4
  %363 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %364 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %365 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 8
  %368 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %369 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %370 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 4
  %373 = load i32, i32* %2, align 4
  %374 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %375 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* @INTR_TYPE_NET, align 4
  %378 = load i32, i32* @INTR_MPSAFE, align 4
  %379 = or i32 %377, %378
  %380 = load i32, i32* @ti_intr, align 4
  %381 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %382 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %383 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %382, i32 0, i32 1
  %384 = call i32 @bus_setup_intr(i32 %373, i32* %376, i32 %379, i32* null, i32 %380, %struct.ti_softc* %381, i32* %383)
  store i32 %384, i32* %5, align 4
  %385 = load i32, i32* %5, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %317
  %388 = load i32, i32* %2, align 4
  %389 = call i32 @device_printf(i32 %388, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %391

390:                                              ; preds = %317
  br label %391

391:                                              ; preds = %390, %387, %179, %171, %137, %125, %115, %107, %77, %37
  %392 = load i32, i32* %5, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %391
  %395 = load i32, i32* %2, align 4
  %396 = call i32 @ti_detach(i32 %395)
  br label %397

397:                                              ; preds = %394, %391
  %398 = load i32, i32* %5, align 4
  ret i32 %398
}

declare dso_local %struct.ti_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @ti_chipinit(%struct.ti_softc*) #1

declare dso_local i32 @ti_mem_zero(%struct.ti_softc*, i32, i32) #1

declare dso_local i64 @ti_read_eeprom(%struct.ti_softc*, i32*, i64, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ti_dma_alloc(%struct.ti_softc*) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @ti_sysctl_node(%struct.ti_softc*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IF_Gbps(i64) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ti_softc*, i32*) #1

declare dso_local i32 @ti_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
