; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, %struct.ifnet*, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.et_softc* }
%struct.TYPE_3__ = type { i64 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@et_rx_intr_npkts = common dso_local global i32 0, align 4
@et_rx_intr_delay = common dso_local global i32 0, align 4
@et_tx_intr_nsegs = common dso_local global i32 0, align 4
@et_timer = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"can't allocate IO memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@ET_FLAG_PCIE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"MSI count: %d\0A\00", align 1
@msi_disable = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Using %d MSI message\0A\00", align 1
@ET_FLAG_MSI = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"can't allocate irq\0A\00", align 1
@PCI_PRODUCT_LUCENT_ET1310_FAST = common dso_local global i64 0, align 8
@ET_FLAG_FASTETHER = common dso_local global i32 0, align 4
@ET_PM_SYSCLK_GATE = common dso_local global i32 0, align 4
@ET_PM_TXCLK_GATE = common dso_local global i32 0, align 4
@ET_PM_RXCLK_GATE = common dso_local global i32 0, align 4
@EM_PM_GIGEPHY_ENB = common dso_local global i32 0, align 4
@ET_PM = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@et_init = common dso_local global i32 0, align 4
@et_ioctl = common dso_local global i32 0, align 4
@et_start = common dso_local global i32 0, align 4
@et_get_counter = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@ET_TX_NDESC = common dso_local global i64 0, align 8
@et_ifmedia_upd = common dso_local global i32 0, align 4
@et_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@et_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"can't setup intr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @et_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.et_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.et_softc* @device_get_softc(i32 %17)
  store %struct.et_softc* %18, %struct.et_softc** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %21 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %20, i32 0, i32 15
  store i32 %19, i32* %21, align 8
  %22 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %23 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %22, i32 0, i32 13
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_get_nameunit(i32 %24)
  %26 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %23, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %30 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %29, i32 0, i32 14
  %31 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %32 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %31, i32 0, i32 13
  %33 = call i32 @callout_init_mtx(i32* %30, i32* %32, i32 0)
  %34 = load i32, i32* @IFT_ETHER, align 4
  %35 = call %struct.ifnet* @if_alloc(i32 %34)
  %36 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %37 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %36, i32 0, i32 12
  store %struct.ifnet* %35, %struct.ifnet** %37, align 8
  store %struct.ifnet* %35, %struct.ifnet** %5, align 8
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = icmp eq %struct.ifnet* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOSPC, align 4
  store i32 %43, i32* %10, align 4
  br label %315

44:                                               ; preds = %1
  %45 = load i32, i32* @et_rx_intr_npkts, align 4
  %46 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %47 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @et_rx_intr_delay, align 4
  %49 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %50 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @et_tx_intr_nsegs, align 4
  %52 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %53 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @et_timer, align 4
  %55 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %56 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pci_enable_busmaster(i32 %57)
  %59 = call i32 @PCIR_BAR(i32 0)
  %60 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %61 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SYS_RES_MEMORY, align 4
  %64 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %65 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %64, i32 0, i32 0
  %66 = load i32, i32* @RF_ACTIVE, align 4
  %67 = call i8* @bus_alloc_resource_any(i32 %62, i32 %63, i32* %65, i32 %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %70 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %69, i32 0, i32 7
  store i32* %68, i32** %70, align 8
  %71 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %72 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %44
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %319

79:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @PCIY_EXPRESS, align 4
  %82 = call i64 @pci_find_cap(i32 %80, i32 %81, i32* %9)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %87 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @ET_FLAG_PCIE, align 4
  %89 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %90 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @pci_msi_count(i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i64, i64* @bootverbose, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %84
  br label %102

102:                                              ; preds = %101, %79
  %103 = load i32, i32* %11, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = load i64, i64* @msi_disable, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %105
  store i32 1, i32* %11, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i64 @pci_alloc_msi(i32 %109, i32* %11)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 (i32, i8*, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ET_FLAG_MSI, align 4
  %120 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %121 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %127

124:                                              ; preds = %112
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @pci_release_msi(i32 %125)
  br label %127

127:                                              ; preds = %124, %115
  br label %128

128:                                              ; preds = %127, %108
  br label %129

129:                                              ; preds = %128, %105, %102
  %130 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %131 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ET_FLAG_MSI, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %129
  %137 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %138 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %137, i32 0, i32 3
  store i32 0, i32* %138, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @SYS_RES_IRQ, align 4
  %141 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %142 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %141, i32 0, i32 3
  %143 = load i32, i32* @RF_SHAREABLE, align 4
  %144 = load i32, i32* @RF_ACTIVE, align 4
  %145 = or i32 %143, %144
  %146 = call i8* @bus_alloc_resource_any(i32 %139, i32 %140, i32* %142, i32 %145)
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %149 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %148, i32 0, i32 5
  store i32* %147, i32** %149, align 8
  br label %162

150:                                              ; preds = %129
  %151 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %152 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %151, i32 0, i32 3
  store i32 1, i32* %152, align 4
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @SYS_RES_IRQ, align 4
  %155 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %156 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %155, i32 0, i32 3
  %157 = load i32, i32* @RF_ACTIVE, align 4
  %158 = call i8* @bus_alloc_resource_any(i32 %153, i32 %154, i32* %156, i32 %157)
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %161 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %160, i32 0, i32 5
  store i32* %159, i32** %161, align 8
  br label %162

162:                                              ; preds = %150, %136
  %163 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %164 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* %3, align 4
  %169 = call i32 (i32, i8*, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i32, i32* @ENXIO, align 4
  store i32 %170, i32* %10, align 4
  br label %315

171:                                              ; preds = %162
  %172 = load i32, i32* %3, align 4
  %173 = call i64 @pci_get_device(i32 %172)
  %174 = load i64, i64* @PCI_PRODUCT_LUCENT_ET1310_FAST, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load i32, i32* @ET_FLAG_FASTETHER, align 4
  %178 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %179 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %176, %171
  %183 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %184 = call i32 @et_bus_config(%struct.et_softc* %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %315

188:                                              ; preds = %182
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @et_get_eaddr(i32 %189, i32* %16)
  %191 = load i32, i32* @ET_PM_SYSCLK_GATE, align 4
  %192 = load i32, i32* @ET_PM_TXCLK_GATE, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @ET_PM_RXCLK_GATE, align 4
  %195 = or i32 %193, %194
  store i32 %195, i32* %8, align 4
  %196 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %197 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @ET_FLAG_FASTETHER, align 4
  %200 = and i32 %198, %199
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %188
  %203 = load i32, i32* @EM_PM_GIGEPHY_ENB, align 4
  %204 = load i32, i32* %8, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %202, %188
  %207 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %208 = load i32, i32* @ET_PM, align 4
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @CSR_WRITE_4(%struct.et_softc* %207, i32 %208, i32 %209)
  %211 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %212 = call i32 @et_reset(%struct.et_softc* %211)
  %213 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %214 = call i32 @et_dma_alloc(%struct.et_softc* %213)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %206
  br label %315

218:                                              ; preds = %206
  %219 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %220 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %221 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %220, i32 0, i32 9
  store %struct.et_softc* %219, %struct.et_softc** %221, align 8
  %222 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %223 = load i32, i32* %3, align 4
  %224 = call i32 @device_get_name(i32 %223)
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @device_get_unit(i32 %225)
  %227 = call i32 @if_initname(%struct.ifnet* %222, i32 %224, i32 %226)
  %228 = load i32, i32* @IFF_BROADCAST, align 4
  %229 = load i32, i32* @IFF_SIMPLEX, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @IFF_MULTICAST, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %234 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* @et_init, align 4
  %236 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 8
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @et_ioctl, align 4
  %239 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %240 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %239, i32 0, i32 7
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* @et_start, align 4
  %242 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %243 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %242, i32 0, i32 6
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* @et_get_counter, align 4
  %245 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %246 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* @IFCAP_TXCSUM, align 4
  %248 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %251 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %253 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %256 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  %257 = load i64, i64* @ET_TX_NDESC, align 8
  %258 = sub nsw i64 %257, 1
  %259 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  store i64 %258, i64* %261, align 8
  %262 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %263 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %262, i32 0, i32 4
  %264 = load i64, i64* @ET_TX_NDESC, align 8
  %265 = sub nsw i64 %264, 1
  %266 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %263, i64 %265)
  %267 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %268 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %267, i32 0, i32 4
  %269 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %268)
  %270 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %271 = call i32 @et_chip_attach(%struct.et_softc* %270)
  %272 = load i32, i32* %3, align 4
  %273 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %274 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %273, i32 0, i32 6
  %275 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %276 = load i32, i32* @et_ifmedia_upd, align 4
  %277 = load i32, i32* @et_ifmedia_sts, align 4
  %278 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %279 = load i32, i32* @MII_PHY_ANY, align 4
  %280 = load i32, i32* @MII_OFFSET_ANY, align 4
  %281 = load i32, i32* @MIIF_DOPAUSE, align 4
  %282 = call i32 @mii_attach(i32 %272, i32* %274, %struct.ifnet* %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281)
  store i32 %282, i32* %10, align 4
  %283 = load i32, i32* %10, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %218
  %286 = load i32, i32* %3, align 4
  %287 = call i32 (i32, i8*, ...) @device_printf(i32 %286, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %315

288:                                              ; preds = %218
  %289 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %290 = call i32 @ether_ifattach(%struct.ifnet* %289, i32* %16)
  %291 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %292 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %291, i32 0, i32 3
  store i32 4, i32* %292, align 4
  %293 = load i32, i32* %3, align 4
  %294 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %295 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %294, i32 0, i32 5
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* @INTR_TYPE_NET, align 4
  %298 = load i32, i32* @INTR_MPSAFE, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @et_intr, align 4
  %301 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %302 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %303 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %302, i32 0, i32 4
  %304 = call i32 @bus_setup_intr(i32 %293, i32* %296, i32 %299, i32* null, i32 %300, %struct.et_softc* %301, i32* %303)
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %10, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %288
  %308 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %309 = call i32 @ether_ifdetach(%struct.ifnet* %308)
  %310 = load i32, i32* %3, align 4
  %311 = call i32 (i32, i8*, ...) @device_printf(i32 %310, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %315

312:                                              ; preds = %288
  %313 = load %struct.et_softc*, %struct.et_softc** %4, align 8
  %314 = call i32 @et_add_sysctls(%struct.et_softc* %313)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %319

315:                                              ; preds = %307, %285, %217, %187, %167, %40
  %316 = load i32, i32* %3, align 4
  %317 = call i32 @et_detach(i32 %316)
  %318 = load i32, i32* %10, align 4
  store i32 %318, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %319

319:                                              ; preds = %315, %312, %75
  %320 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %320)
  %321 = load i32, i32* %2, align 4
  ret i32 %321
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.et_softc* @device_get_softc(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #2

declare dso_local i32 @pci_msi_count(i32) #2

declare dso_local i64 @pci_alloc_msi(i32, i32*) #2

declare dso_local i32 @pci_release_msi(i32) #2

declare dso_local i64 @pci_get_device(i32) #2

declare dso_local i32 @et_bus_config(%struct.et_softc*) #2

declare dso_local i32 @et_get_eaddr(i32, i32*) #2

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #2

declare dso_local i32 @et_reset(%struct.et_softc*) #2

declare dso_local i32 @et_dma_alloc(%struct.et_softc*) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i32 @et_chip_attach(%struct.et_softc*) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.et_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @et_add_sysctls(%struct.et_softc*) #2

declare dso_local i32 @et_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
