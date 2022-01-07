; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, i32, i32, i32, i32, i32*, i32, %struct.ifnet*, i32*, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.vge_softc* }
%struct.TYPE_3__ = type { i64 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"couldn't map ports/memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@VGE_FLAG_PCIE = common dso_local global i32 0, align 4
@VGE_FLAG_JUMBO = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@VGE_FLAG_PMCAP = common dso_local global i32 0, align 4
@msi_disable = common dso_local global i64 0, align 8
@VGE_FLAG_MSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Using %d MSI message\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@VGE_EECSR = common dso_local global i32 0, align 4
@VGE_EECSR_RELOAD = common dso_local global i32 0, align 4
@VGE_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"EEPROM reload timed out\0A\00", align 1
@VGE_CHIPCFG0 = common dso_local global i32 0, align 4
@VGE_CHIPCFG0_PACPI = common dso_local global i32 0, align 4
@VGE_EE_EADDR = common dso_local global i32 0, align 4
@VGE_MIICFG = common dso_local global i32 0, align 4
@VGE_MIICFG_PHYADDR = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@vge_ifmedia_upd = common dso_local global i32 0, align 4
@vge_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@vge_ioctl = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@vge_start = common dso_local global i32 0, align 4
@VGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@vge_init = common dso_local global i32 0, align 4
@VGE_TX_DESC_CNT = common dso_local global i64 0, align 8
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@vge_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vge_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vge_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call %struct.vge_softc* @device_get_softc(i32 %16)
  store %struct.vge_softc* %17, %struct.vge_softc** %5, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %20 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 8
  %21 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %22 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %21, i32 0, i32 9
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @device_get_nameunit(i32 %23)
  %25 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = call i32 @mtx_init(i32* %22, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %29 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %28, i32 0, i32 10
  %30 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %31 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %30, i32 0, i32 9
  %32 = call i32 @callout_init_mtx(i32* %29, i32* %31, i32 0)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @pci_enable_busmaster(i32 %33)
  %35 = call i32 @PCIR_BAR(i32 1)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %11, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %42 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %41, i32 0, i32 8
  store i32* %40, i32** %42, align 8
  %43 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %44 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %1
  %48 = load i32, i32* %2, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %7, align 4
  br label %337

51:                                               ; preds = %1
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @PCIY_EXPRESS, align 4
  %54 = call i64 @pci_find_cap(i32 %52, i32 %53, i32* %8)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32, i32* @VGE_FLAG_PCIE, align 4
  %58 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %59 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %64 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %71

65:                                               ; preds = %51
  %66 = load i32, i32* @VGE_FLAG_JUMBO, align 4
  %67 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %68 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %56
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @PCIY_PMG, align 4
  %74 = call i64 @pci_find_cap(i32 %72, i32 %73, i32* %8)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i32, i32* @VGE_FLAG_PMCAP, align 4
  %78 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %79 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %84 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %76, %71
  store i32 0, i32* %11, align 4
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @pci_msi_count(i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i64, i64* @msi_disable, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %90
  store i32 1, i32* %10, align 4
  %94 = load i32, i32* %2, align 4
  %95 = call i64 @pci_alloc_msi(i32 %94, i32* %10)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* @VGE_FLAG_MSI, align 4
  %102 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %103 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  store i32 1, i32* %11, align 4
  br label %112

109:                                              ; preds = %97
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @pci_release_msi(i32 %110)
  br label %112

112:                                              ; preds = %109, %100
  br label %113

113:                                              ; preds = %112, %93
  br label %114

114:                                              ; preds = %113, %90, %85
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @SYS_RES_IRQ, align 4
  %117 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %118 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @VGE_FLAG_MSI, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %126

124:                                              ; preds = %114
  %125 = load i32, i32* @RF_SHAREABLE, align 4
  br label %126

126:                                              ; preds = %124, %123
  %127 = phi i32 [ 0, %123 ], [ %125, %124 ]
  %128 = load i32, i32* @RF_ACTIVE, align 4
  %129 = or i32 %127, %128
  %130 = call i8* @bus_alloc_resource_any(i32 %115, i32 %116, i32* %11, i32 %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %133 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %132, i32 0, i32 5
  store i32* %131, i32** %133, align 8
  %134 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %135 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %134, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %126
  %139 = load i32, i32* %2, align 4
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @ENXIO, align 4
  store i32 %141, i32* %7, align 4
  br label %337

142:                                              ; preds = %126
  %143 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %144 = call i32 @vge_reset(%struct.vge_softc* %143)
  %145 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %146 = load i32, i32* @VGE_EECSR, align 4
  %147 = load i32, i32* @VGE_EECSR_RELOAD, align 4
  %148 = call i32 @CSR_WRITE_1(%struct.vge_softc* %145, i32 %146, i32 %147)
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %163, %142
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @VGE_TIMEOUT, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %149
  %154 = call i32 @DELAY(i32 5)
  %155 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %156 = load i32, i32* @VGE_EECSR, align 4
  %157 = call i32 @CSR_READ_1(%struct.vge_softc* %155, i32 %156)
  %158 = load i32, i32* @VGE_EECSR_RELOAD, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %166

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %149

166:                                              ; preds = %161, %149
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @VGE_TIMEOUT, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32, i32* %2, align 4
  %172 = call i32 (i32, i8*, ...) @device_printf(i32 %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %166
  %174 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %175 = load i32, i32* @VGE_CHIPCFG0, align 4
  %176 = load i32, i32* @VGE_CHIPCFG0_PACPI, align 4
  %177 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %174, i32 %175, i32 %176)
  %178 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %179 = ptrtoint i32* %15 to i32
  %180 = load i32, i32* @VGE_EE_EADDR, align 4
  %181 = call i32 @vge_read_eeprom(%struct.vge_softc* %178, i32 %179, i32 %180, i32 3, i32 0)
  %182 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %183 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @VGE_FLAG_PCIE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %173
  %189 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %190 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %189, i32 0, i32 3
  store i32 1, i32* %190, align 4
  br label %199

191:                                              ; preds = %173
  %192 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %193 = load i32, i32* @VGE_MIICFG, align 4
  %194 = call i32 @CSR_READ_1(%struct.vge_softc* %192, i32 %193)
  %195 = load i32, i32* @VGE_MIICFG_PHYADDR, align 4
  %196 = and i32 %194, %195
  %197 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %198 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %191, %188
  %200 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %201 = call i32 @vge_clrwol(%struct.vge_softc* %200)
  %202 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %203 = call i32 @vge_sysctl_node(%struct.vge_softc* %202)
  %204 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %205 = call i32 @vge_dma_alloc(%struct.vge_softc* %204)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %199
  br label %337

209:                                              ; preds = %199
  %210 = load i32, i32* @IFT_ETHER, align 4
  %211 = call %struct.ifnet* @if_alloc(i32 %210)
  %212 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %213 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %212, i32 0, i32 7
  store %struct.ifnet* %211, %struct.ifnet** %213, align 8
  store %struct.ifnet* %211, %struct.ifnet** %6, align 8
  %214 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %215 = icmp eq %struct.ifnet* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load i32, i32* %2, align 4
  %218 = call i32 (i32, i8*, ...) @device_printf(i32 %217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %219 = load i32, i32* @ENOSPC, align 4
  store i32 %219, i32* %7, align 4
  br label %337

220:                                              ; preds = %209
  %221 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %222 = call i32 @vge_miipoll_start(%struct.vge_softc* %221)
  %223 = load i32, i32* %2, align 4
  %224 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %225 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %224, i32 0, i32 6
  %226 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %227 = load i32, i32* @vge_ifmedia_upd, align 4
  %228 = load i32, i32* @vge_ifmedia_sts, align 4
  %229 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %230 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %231 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @MII_OFFSET_ANY, align 4
  %234 = load i32, i32* @MIIF_DOPAUSE, align 4
  %235 = call i32 @mii_attach(i32 %223, i32* %225, %struct.ifnet* %226, i32 %227, i32 %228, i32 %229, i32 %232, i32 %233, i32 %234)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %220
  %239 = load i32, i32* %2, align 4
  %240 = call i32 (i32, i8*, ...) @device_printf(i32 %239, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %337

241:                                              ; preds = %220
  %242 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %243 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %244 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %243, i32 0, i32 9
  store %struct.vge_softc* %242, %struct.vge_softc** %244, align 8
  %245 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %246 = load i32, i32* %2, align 4
  %247 = call i32 @device_get_name(i32 %246)
  %248 = load i32, i32* %2, align 4
  %249 = call i32 @device_get_unit(i32 %248)
  %250 = call i32 @if_initname(%struct.ifnet* %245, i32 %247, i32 %249)
  %251 = load i32, i32* @IFF_BROADCAST, align 4
  %252 = load i32, i32* @IFF_SIMPLEX, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @IFF_MULTICAST, align 4
  %255 = or i32 %253, %254
  %256 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %257 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* @vge_ioctl, align 4
  %259 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 8
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %262 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %263 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* @vge_start, align 4
  %265 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %266 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %265, i32 0, i32 7
  store i32 %264, i32* %266, align 8
  %267 = load i32, i32* @VGE_CSUM_FEATURES, align 4
  %268 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %269 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %268, i32 0, i32 6
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* @IFCAP_HWCSUM, align 4
  %271 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %274 = or i32 %272, %273
  %275 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %276 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 4
  %279 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %280 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @VGE_FLAG_PMCAP, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %241
  %286 = load i32, i32* @IFCAP_WOL, align 4
  %287 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %288 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %285, %241
  %292 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %293 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %296 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* @vge_init, align 4
  %298 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %299 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %298, i32 0, i32 5
  store i32 %297, i32* %299, align 8
  %300 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %301 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %300, i32 0, i32 4
  %302 = load i64, i64* @VGE_TX_DESC_CNT, align 8
  %303 = sub nsw i64 %302, 1
  %304 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %301, i64 %303)
  %305 = load i64, i64* @VGE_TX_DESC_CNT, align 8
  %306 = sub nsw i64 %305, 1
  %307 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %308 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 0
  store i64 %306, i64* %309, align 8
  %310 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %311 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %310, i32 0, i32 4
  %312 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %311)
  %313 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %314 = call i32 @ether_ifattach(%struct.ifnet* %313, i32* %15)
  %315 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %316 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %315, i32 0, i32 3
  store i32 4, i32* %316, align 4
  %317 = load i32, i32* %2, align 4
  %318 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %319 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %318, i32 0, i32 5
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* @INTR_TYPE_NET, align 4
  %322 = load i32, i32* @INTR_MPSAFE, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @vge_intr, align 4
  %325 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %326 = load %struct.vge_softc*, %struct.vge_softc** %5, align 8
  %327 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %326, i32 0, i32 4
  %328 = call i32 @bus_setup_intr(i32 %317, i32* %320, i32 %323, i32* null, i32 %324, %struct.vge_softc* %325, i32* %327)
  store i32 %328, i32* %7, align 4
  %329 = load i32, i32* %7, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %291
  %332 = load i32, i32* %2, align 4
  %333 = call i32 (i32, i8*, ...) @device_printf(i32 %332, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %334 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %335 = call i32 @ether_ifdetach(%struct.ifnet* %334)
  br label %337

336:                                              ; preds = %291
  br label %337

337:                                              ; preds = %336, %331, %238, %216, %208, %138, %47
  %338 = load i32, i32* %7, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i32, i32* %2, align 4
  %342 = call i32 @vge_detach(i32 %341)
  br label %343

343:                                              ; preds = %340, %337
  %344 = load i32, i32* %7, align 4
  %345 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %345)
  ret i32 %344
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.vge_softc* @device_get_softc(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #2

declare dso_local i32 @pci_msi_count(i32) #2

declare dso_local i64 @pci_alloc_msi(i32, i32*) #2

declare dso_local i32 @pci_release_msi(i32) #2

declare dso_local i32 @vge_reset(%struct.vge_softc*) #2

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i32 @CSR_READ_1(%struct.vge_softc*, i32) #2

declare dso_local i32 @CSR_CLRBIT_1(%struct.vge_softc*, i32, i32) #2

declare dso_local i32 @vge_read_eeprom(%struct.vge_softc*, i32, i32, i32, i32) #2

declare dso_local i32 @vge_clrwol(%struct.vge_softc*) #2

declare dso_local i32 @vge_sysctl_node(%struct.vge_softc*) #2

declare dso_local i32 @vge_dma_alloc(%struct.vge_softc*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @vge_miipoll_start(%struct.vge_softc*) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.vge_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @vge_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
