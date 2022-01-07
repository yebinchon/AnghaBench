; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i64, i32, i32, i32*, i32, i32, i32, %struct.ifnet*, i32*, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.nge_softc* }
%struct.TYPE_3__ = type { i64 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"couldn't allocate %s resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i64 0, align 8
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_MWRICEN = common dso_local global i32 0, align 4
@NGE_EE_NODEADDR = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"can not allocate ifnet structure\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@nge_ioctl = common dso_local global i32 0, align 4
@nge_start = common dso_local global i32 0, align 4
@nge_init = common dso_local global i32 0, align 4
@NGE_TX_RING_CNT = common dso_local global i64 0, align 8
@NGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@NGE_CFG = common dso_local global i32 0, align 4
@NGE_CFG_TBI_EN = common dso_local global i32 0, align 4
@NGE_FLAG_TBI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"Using TBI\0A\00", align 1
@NGE_GPIO = common dso_local global i32 0, align 4
@NGE_GPIO_GP4_OUT = common dso_local global i32 0, align 4
@NGE_GPIO_GP1_OUTENB = common dso_local global i32 0, align 4
@NGE_GPIO_GP2_OUTENB = common dso_local global i32 0, align 4
@NGE_GPIO_GP3_OUTENB = common dso_local global i32 0, align 4
@NGE_GPIO_GP3_IN = common dso_local global i32 0, align 4
@NGE_GPIO_GP4_IN = common dso_local global i32 0, align 4
@nge_mediachange = common dso_local global i32 0, align 4
@nge_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@nge_intr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nge_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nge_softc*, align 8
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %20 = sdiv i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.nge_softc* @device_get_softc(i32 %23)
  store %struct.nge_softc* %24, %struct.nge_softc** %9, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %27 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_get_nameunit(i32 %29)
  %31 = call i32 @NGE_LOCK_INIT(%struct.nge_softc* %28, i32 %30)
  %32 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %33 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %32, i32 0, i32 10
  %34 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %35 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %34, i32 0, i32 9
  %36 = call i32 @callout_init_mtx(i32* %33, i32* %35, i32 0)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @pci_enable_busmaster(i32 %37)
  %39 = load i64, i64* @SYS_RES_MEMORY, align 8
  %40 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %41 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = call i8* @PCIR_BAR(i32 1)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %45 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %48 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %51 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %50, i32 0, i32 1
  %52 = load i32, i32* @RF_ACTIVE, align 4
  %53 = call i8* @bus_alloc_resource_any(i32 %46, i64 %49, i32* %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %56 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %55, i32 0, i32 8
  store i32* %54, i32** %56, align 8
  %57 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %58 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %114

61:                                               ; preds = %1
  %62 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %63 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SYS_RES_MEMORY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i8*, i8** @SYS_RES_IOPORT, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %71 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = call i8* @PCIR_BAR(i32 0)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %75 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %84

76:                                               ; preds = %61
  %77 = load i64, i64* @SYS_RES_MEMORY, align 8
  %78 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %79 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = call i8* @PCIR_BAR(i32 1)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %83 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %76, %67
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %87 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %90 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %89, i32 0, i32 1
  %91 = load i32, i32* @RF_ACTIVE, align 4
  %92 = call i8* @bus_alloc_resource_any(i32 %85, i64 %88, i32* %90, i32 %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %95 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %94, i32 0, i32 8
  store i32* %93, i32** %95, align 8
  %96 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %97 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %96, i32 0, i32 8
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %84
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %103 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SYS_RES_MEMORY, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %108)
  %110 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %111 = call i32 @NGE_LOCK_DESTROY(%struct.nge_softc* %110)
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %356

113:                                              ; preds = %84
  br label %114

114:                                              ; preds = %113, %1
  store i32 0, i32* %13, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load i64, i64* @SYS_RES_IRQ, align 8
  %117 = load i32, i32* @RF_SHAREABLE, align 4
  %118 = load i32, i32* @RF_ACTIVE, align 4
  %119 = or i32 %117, %118
  %120 = call i8* @bus_alloc_resource_any(i32 %115, i64 %116, i32* %13, i32 %119)
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %123 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %122, i32 0, i32 3
  store i32* %121, i32** %123, align 8
  %124 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %125 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %114
  %129 = load i32, i32* %3, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* @ENXIO, align 4
  store i32 %131, i32* %11, align 4
  br label %348

132:                                              ; preds = %114
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @PCIR_COMMAND, align 4
  %135 = call i32 @pci_read_config(i32 %133, i32 %134, i32 2)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* @PCIM_CMD_MWRICEN, align 4
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @PCIR_COMMAND, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @pci_write_config(i32 %139, i32 %140, i32 %141, i32 2)
  %143 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %144 = call i32 @nge_reset(%struct.nge_softc* %143)
  %145 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %146 = ptrtoint i32* %22 to i32
  %147 = load i32, i32* @NGE_EE_NODEADDR, align 4
  %148 = call i32 @nge_read_eeprom(%struct.nge_softc* %145, i32 %146, i32 %147, i32 3)
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %163, %132
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %152 = sdiv i32 %151, 2
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %22, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le16toh(i32 %158)
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %22, i64 %161
  store i32 %159, i32* %162, align 4
  br label %163

163:                                              ; preds = %154
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %149

166:                                              ; preds = %149
  %167 = getelementptr inbounds i32, i32* %22, i64 0
  %168 = load i32, i32* %167, align 16
  store i32 %168, i32* %7, align 4
  %169 = getelementptr inbounds i32, i32* %22, i64 2
  %170 = load i32, i32* %169, align 8
  %171 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %170, i32* %171, align 16
  %172 = load i32, i32* %7, align 4
  %173 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %172, i32* %173, align 8
  %174 = mul nuw i64 4, %16
  %175 = trunc i64 %174 to i32
  %176 = call i32 @bcopy(i32* %22, i32* %18, i32 %175)
  %177 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %178 = call i64 @nge_dma_alloc(%struct.nge_softc* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %166
  %181 = load i32, i32* @ENXIO, align 4
  store i32 %181, i32* %11, align 4
  br label %348

182:                                              ; preds = %166
  %183 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %184 = call i32 @nge_sysctl_node(%struct.nge_softc* %183)
  %185 = load i32, i32* @IFT_ETHER, align 4
  %186 = call %struct.ifnet* @if_alloc(i32 %185)
  %187 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %188 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %187, i32 0, i32 7
  store %struct.ifnet* %186, %struct.ifnet** %188, align 8
  store %struct.ifnet* %186, %struct.ifnet** %10, align 8
  %189 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %190 = icmp eq %struct.ifnet* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %182
  %192 = load i32, i32* %3, align 4
  %193 = call i32 (i32, i8*, ...) @device_printf(i32 %192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %194 = load i32, i32* @ENOSPC, align 4
  store i32 %194, i32* %11, align 4
  br label %348

195:                                              ; preds = %182
  %196 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %197 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %198 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %197, i32 0, i32 9
  store %struct.nge_softc* %196, %struct.nge_softc** %198, align 8
  %199 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @device_get_name(i32 %200)
  %202 = load i32, i32* %3, align 4
  %203 = call i32 @device_get_unit(i32 %202)
  %204 = call i32 @if_initname(%struct.ifnet* %199, i32 %201, i32 %203)
  %205 = load i32, i32* @IFF_BROADCAST, align 4
  %206 = load i32, i32* @IFF_SIMPLEX, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @IFF_MULTICAST, align 4
  %209 = or i32 %207, %208
  %210 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %211 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* @nge_ioctl, align 4
  %213 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %214 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %213, i32 0, i32 8
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* @nge_start, align 4
  %216 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %217 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %216, i32 0, i32 7
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* @nge_init, align 4
  %219 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %220 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %219, i32 0, i32 6
  store i32 %218, i32* %220, align 8
  %221 = load i64, i64* @NGE_TX_RING_CNT, align 8
  %222 = sub nsw i64 %221, 1
  %223 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %224 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  store i64 %222, i64* %225, align 8
  %226 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %227 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %226, i32 0, i32 5
  %228 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %229 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %227, i64 %231)
  %233 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %234 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %233, i32 0, i32 5
  %235 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %234)
  %236 = load i32, i32* @NGE_CSUM_FEATURES, align 4
  %237 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %238 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* @IFCAP_HWCSUM, align 4
  %240 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %241 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  %242 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %243 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @PCIY_PMG, align 4
  %246 = call i64 @pci_find_cap(i32 %244, i32 %245, i32* %12)
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %195
  %249 = load i32, i32* @IFCAP_WOL, align 4
  %250 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %251 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %248, %195
  %255 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %256 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %259 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %261 = load i32, i32* @NGE_CFG, align 4
  %262 = call i32 @CSR_READ_4(%struct.nge_softc* %260, i32 %261)
  %263 = load i32, i32* @NGE_CFG_TBI_EN, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %292

266:                                              ; preds = %254
  %267 = load i32, i32* @NGE_FLAG_TBI, align 4
  %268 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %269 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 4
  %272 = load i32, i32* %3, align 4
  %273 = call i32 (i32, i8*, ...) @device_printf(i32 %272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %274 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %275 = load i32, i32* @NGE_GPIO, align 4
  %276 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %277 = load i32, i32* @NGE_GPIO, align 4
  %278 = call i32 @CSR_READ_4(%struct.nge_softc* %276, i32 %277)
  %279 = load i32, i32* @NGE_GPIO_GP4_OUT, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @NGE_GPIO_GP1_OUTENB, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @NGE_GPIO_GP2_OUTENB, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @NGE_GPIO_GP3_OUTENB, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @NGE_GPIO_GP3_IN, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* @NGE_GPIO_GP4_IN, align 4
  %290 = or i32 %288, %289
  %291 = call i32 @CSR_WRITE_4(%struct.nge_softc* %274, i32 %275, i32 %290)
  br label %292

292:                                              ; preds = %266, %254
  %293 = load i32, i32* %3, align 4
  %294 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %295 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %294, i32 0, i32 4
  %296 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %297 = load i32, i32* @nge_mediachange, align 4
  %298 = load i32, i32* @nge_mediastatus, align 4
  %299 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %300 = load i32, i32* @MII_PHY_ANY, align 4
  %301 = load i32, i32* @MII_OFFSET_ANY, align 4
  %302 = call i32 @mii_attach(i32 %293, i32* %295, %struct.ifnet* %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 0)
  store i32 %302, i32* %11, align 4
  %303 = load i32, i32* %11, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %292
  %306 = load i32, i32* %3, align 4
  %307 = call i32 (i32, i8*, ...) @device_printf(i32 %306, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %348

308:                                              ; preds = %292
  %309 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %310 = call i32 @ether_ifattach(%struct.ifnet* %309, i32* %18)
  %311 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %312 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %313 = or i32 %311, %312
  %314 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %315 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %319 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %320 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %324 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %327 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %326, i32 0, i32 2
  store i32 %325, i32* %327, align 8
  %328 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %329 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %328, i32 0, i32 3
  store i32 4, i32* %329, align 4
  %330 = load i32, i32* %3, align 4
  %331 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %332 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %331, i32 0, i32 3
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* @INTR_TYPE_NET, align 4
  %335 = load i32, i32* @INTR_MPSAFE, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* @nge_intr, align 4
  %338 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %339 = load %struct.nge_softc*, %struct.nge_softc** %9, align 8
  %340 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %339, i32 0, i32 2
  %341 = call i32 @bus_setup_intr(i32 %330, i32* %333, i32 %336, i32* null, i32 %337, %struct.nge_softc* %338, i32* %340)
  store i32 %341, i32* %11, align 4
  %342 = load i32, i32* %11, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %308
  %345 = load i32, i32* %3, align 4
  %346 = call i32 (i32, i8*, ...) @device_printf(i32 %345, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %348

347:                                              ; preds = %308
  br label %348

348:                                              ; preds = %347, %344, %305, %191, %180, %128
  %349 = load i32, i32* %11, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = load i32, i32* %3, align 4
  %353 = call i32 @nge_detach(i32 %352)
  br label %354

354:                                              ; preds = %351, %348
  %355 = load i32, i32* %11, align 4
  store i32 %355, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %356

356:                                              ; preds = %354, %100
  %357 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %357)
  %358 = load i32, i32* %2, align 4
  ret i32 %358
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nge_softc* @device_get_softc(i32) #2

declare dso_local i32 @NGE_LOCK_INIT(%struct.nge_softc*, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i8* @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i64, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @NGE_LOCK_DESTROY(%struct.nge_softc*) #2

declare dso_local i32 @pci_read_config(i32, i32, i32) #2

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #2

declare dso_local i32 @nge_reset(%struct.nge_softc*) #2

declare dso_local i32 @nge_read_eeprom(%struct.nge_softc*, i32, i32, i32) #2

declare dso_local i32 @le16toh(i32) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i64 @nge_dma_alloc(%struct.nge_softc*) #2

declare dso_local i32 @nge_sysctl_node(%struct.nge_softc*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #2

declare dso_local i32 @CSR_READ_4(%struct.nge_softc*, i32) #2

declare dso_local i32 @CSR_WRITE_4(%struct.nge_softc*, i32, i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.nge_softc*, i32*) #2

declare dso_local i32 @nge_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
