; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i64, i32, i32, i32, i32*, i32*, i32**, i32, i32, i32, i32, i64, i32, i32, i32, i32*, i32, i32, i8*, i32, i8*, i32, i32, i32**, i32 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't map memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"warning, negotiated width of link(x%d) != max. width of link(x%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"MSI/MSI-X capability black-listed, will use INTx\0A\00", align 1
@msix_disable = common dso_local global i32 0, align 4
@msi_disable = common dso_local global i32 0, align 4
@NFE_MSI_MESSAGES = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Using %d MSI messages\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"couldn't allocate IRQ resources\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"couldn't allocate IRQ resources for message %d\0A\00", align 1
@NFE_MSIX_MAP0 = common dso_local global i32 0, align 4
@NFE_MSIX_MAP1 = common dso_local global i32 0, align 4
@NFE_MSI_MAP0 = common dso_local global i32 0, align 4
@NFE_MSI_MAP1 = common dso_local global i32 0, align 4
@NFE_IRQ_STATUS = common dso_local global i32 0, align 4
@NFE_IRQ_MASK = common dso_local global i32 0, align 4
@NFE_IRQ_WANTED = common dso_local global i8* null, align 8
@NFE_MSIX_IRQ_STATUS = common dso_local global i32 0, align 4
@NFE_MSI_IRQ_MASK = common dso_local global i32 0, align 4
@NFE_MSI_VECTOR_0_ENABLED = common dso_local global i8* null, align 8
@NFE_JUMBO_SUP = common dso_local global i32 0, align 4
@NFE_HW_CSUM = common dso_local global i32 0, align 4
@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_PWR_MGMT = common dso_local global i32 0, align 4
@NFE_MIB_V1 = common dso_local global i32 0, align 4
@NFE_HW_VLAN = common dso_local global i32 0, align 4
@NFE_TX_FLOW_CTRL = common dso_local global i32 0, align 4
@NFE_MIB_V2 = common dso_local global i32 0, align 4
@NFE_CORRECT_MACADDR = common dso_local global i32 0, align 4
@NFE_MIB_V3 = common dso_local global i32 0, align 4
@NFE_TX_UNK = common dso_local global i32 0, align 4
@NFE_MAC_ADDR_INORDER = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@NFE_DMA_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"can not if_gethandle()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@nfe_ioctl = common dso_local global i32 0, align 4
@nfe_start = common dso_local global i32 0, align 4
@nfe_init = common dso_local global i32 0, align 4
@NFE_TX_RING_COUNT = common dso_local global i64 0, align 8
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@NFE_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@NFE_RX_HEADERS = common dso_local global i64 0, align 8
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@nfe_ifmedia_upd = common dso_local global i64 0, align 8
@nfe_ifmedia_sts = common dso_local global i64 0, align 8
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@nfe_int_task = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"nfe_taskq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@nfe_intr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nfe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfe_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.nfe_softc* @device_get_softc(i32 %15)
  store %struct.nfe_softc* %16, %struct.nfe_softc** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %19 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %21 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %20, i32 0, i32 22
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_nameunit(i32 %22)
  %24 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %21, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %28 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %27, i32 0, i32 24
  %29 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %30 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %29, i32 0, i32 22
  %31 = call i32 @callout_init_mtx(i32* %28, i32* %30, i32 0)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pci_enable_busmaster(i32 %32)
  %34 = call i32 @PCIR_BAR(i32 0)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SYS_RES_MEMORY, align 4
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call i8* @bus_alloc_resource_any(i32 %35, i32 %36, i32* %12, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %41 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %40, i32 0, i32 23
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  store i32* %39, i32** %43, align 8
  %44 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %45 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %44, i32 0, i32 23
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %54 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %53, i32 0, i32 22
  %55 = call i32 @mtx_destroy(i32* %54)
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %752

57:                                               ; preds = %1
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @PCIY_EXPRESS, align 4
  %60 = call i64 @pci_find_cap(i32 %58, i32 %59, i32* %11)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %101

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 8
  %66 = call i32 @pci_read_config(i32 %63, i32 %65, i32 2)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = and i32 %67, -28673
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, 20480
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @pci_write_config(i32 %71, i32 %73, i32 %74, i32 2)
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 12
  %79 = call i32 @pci_read_config(i32 %76, i32 %78, i32 2)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = ashr i32 %80, 4
  %82 = and i32 %81, 15
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 18
  %86 = call i32 @pci_read_config(i32 %83, i32 %85, i32 2)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = ashr i32 %87, 4
  %89 = and i32 %88, 63
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %62
  %94 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %95 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %62
  br label %101

101:                                              ; preds = %100, %57
  %102 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %103 = call i64 @nfe_can_use_msix(%struct.nfe_softc* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %107 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @msix_disable, align 4
  store i32 1, i32* @msi_disable, align 4
  br label %110

110:                                              ; preds = %105, %101
  %111 = load i32, i32* @msix_disable, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* @msi_disable, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %164

116:                                              ; preds = %113, %110
  %117 = load i32, i32* @msix_disable, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @pci_msix_count(i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* @NFE_MSI_MESSAGES, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @nfe_alloc_msix(%struct.nfe_softc* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %119, %116
  %129 = load i32, i32* @msi_disable, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %163

131:                                              ; preds = %128
  %132 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %133 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %131
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @pci_msi_count(i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* @NFE_MSI_MESSAGES, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %136
  %142 = load i32, i32* %3, align 4
  %143 = call i64 @pci_alloc_msi(i32 %142, i32* %9)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %141
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @NFE_MSI_MESSAGES, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load i64, i64* @bootverbose, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 (i32, i8*, ...) @device_printf(i32 %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %152, %149
  %157 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %158 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %157, i32 0, i32 1
  store i32 1, i32* %158, align 8
  br label %162

159:                                              ; preds = %145
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @pci_release_msi(i32 %160)
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162, %141, %136, %131, %128
  br label %164

164:                                              ; preds = %163, %113
  %165 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %166 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %197

169:                                              ; preds = %164
  %170 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %171 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %169
  store i32 0, i32* %12, align 4
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* @SYS_RES_IRQ, align 4
  %177 = load i32, i32* @RF_SHAREABLE, align 4
  %178 = load i32, i32* @RF_ACTIVE, align 4
  %179 = or i32 %177, %178
  %180 = call i8* @bus_alloc_resource_any(i32 %175, i32 %176, i32* %12, i32 %179)
  %181 = bitcast i8* %180 to i32*
  %182 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %183 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %182, i32 0, i32 6
  %184 = load i32**, i32*** %183, align 8
  %185 = getelementptr inbounds i32*, i32** %184, i64 0
  store i32* %181, i32** %185, align 8
  %186 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %187 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %186, i32 0, i32 6
  %188 = load i32**, i32*** %187, align 8
  %189 = getelementptr inbounds i32*, i32** %188, i64 0
  %190 = load i32*, i32** %189, align 8
  %191 = icmp eq i32* %190, null
  br i1 %191, label %192, label %196

192:                                              ; preds = %174
  %193 = load i32, i32* %3, align 4
  %194 = call i32 (i32, i8*, ...) @device_printf(i32 %193, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %195 = load i32, i32* @ENXIO, align 4
  store i32 %195, i32* %7, align 4
  br label %744

196:                                              ; preds = %174
  br label %259

197:                                              ; preds = %169, %164
  store i32 0, i32* %8, align 4
  store i32 1, i32* %12, align 4
  br label %198

198:                                              ; preds = %228, %197
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @NFE_MSI_MESSAGES, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %233

202:                                              ; preds = %198
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @SYS_RES_IRQ, align 4
  %205 = load i32, i32* @RF_ACTIVE, align 4
  %206 = call i8* @bus_alloc_resource_any(i32 %203, i32 %204, i32* %12, i32 %205)
  %207 = bitcast i8* %206 to i32*
  %208 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %209 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %208, i32 0, i32 6
  %210 = load i32**, i32*** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  store i32* %207, i32** %213, align 8
  %214 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %215 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %214, i32 0, i32 6
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = icmp eq i32* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %202
  %223 = load i32, i32* %3, align 4
  %224 = load i32, i32* %12, align 4
  %225 = call i32 (i32, i8*, ...) @device_printf(i32 %223, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* @ENXIO, align 4
  store i32 %226, i32* %7, align 4
  br label %744

227:                                              ; preds = %202
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %198

233:                                              ; preds = %198
  %234 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %235 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %233
  %239 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %240 = load i32, i32* @NFE_MSIX_MAP0, align 4
  %241 = call i32 @NFE_WRITE(%struct.nfe_softc* %239, i32 %240, i32 0)
  %242 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %243 = load i32, i32* @NFE_MSIX_MAP1, align 4
  %244 = call i32 @NFE_WRITE(%struct.nfe_softc* %242, i32 %243, i32 0)
  br label %258

245:                                              ; preds = %233
  %246 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %247 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %245
  %251 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %252 = load i32, i32* @NFE_MSI_MAP0, align 4
  %253 = call i32 @NFE_WRITE(%struct.nfe_softc* %251, i32 %252, i32 0)
  %254 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %255 = load i32, i32* @NFE_MSI_MAP1, align 4
  %256 = call i32 @NFE_WRITE(%struct.nfe_softc* %254, i32 %255, i32 0)
  br label %257

257:                                              ; preds = %250, %245
  br label %258

258:                                              ; preds = %257, %238
  br label %259

259:                                              ; preds = %258, %196
  %260 = load i32, i32* @NFE_IRQ_STATUS, align 4
  %261 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %262 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %261, i32 0, i32 21
  store i32 %260, i32* %262, align 8
  %263 = load i32, i32* @NFE_IRQ_MASK, align 4
  %264 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %265 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %264, i32 0, i32 19
  store i32 %263, i32* %265, align 8
  %266 = load i8*, i8** @NFE_IRQ_WANTED, align 8
  %267 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %268 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %267, i32 0, i32 18
  store i8* %266, i8** %268, align 8
  %269 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %270 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %269, i32 0, i32 20
  store i8* null, i8** %270, align 8
  %271 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %272 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %259
  %276 = load i32, i32* @NFE_MSIX_IRQ_STATUS, align 4
  %277 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %278 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %277, i32 0, i32 21
  store i32 %276, i32* %278, align 8
  %279 = load i8*, i8** @NFE_IRQ_WANTED, align 8
  %280 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %281 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %280, i32 0, i32 20
  store i8* %279, i8** %281, align 8
  br label %295

282:                                              ; preds = %259
  %283 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %284 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %282
  %288 = load i32, i32* @NFE_MSI_IRQ_MASK, align 4
  %289 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %290 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %289, i32 0, i32 19
  store i32 %288, i32* %290, align 8
  %291 = load i8*, i8** @NFE_MSI_VECTOR_0_ENABLED, align 8
  %292 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %293 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %292, i32 0, i32 18
  store i8* %291, i8** %293, align 8
  br label %294

294:                                              ; preds = %287, %282
  br label %295

295:                                              ; preds = %294, %275
  %296 = load i32, i32* %3, align 4
  %297 = call i32 @pci_get_device(i32 %296)
  %298 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %299 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %298, i32 0, i32 2
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %3, align 4
  %301 = call i32 @pci_get_revid(i32 %300)
  %302 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %303 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %302, i32 0, i32 17
  store i32 %301, i32* %303, align 4
  %304 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %305 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %304, i32 0, i32 3
  store i32 0, i32* %305, align 8
  %306 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %307 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  switch i32 %308, label %417 [
    i32 131, label %309
    i32 130, label %309
    i32 129, label %309
    i32 128, label %309
    i32 160, label %317
    i32 159, label %317
    i32 164, label %327
    i32 163, label %327
    i32 162, label %327
    i32 161, label %327
    i32 158, label %339
    i32 157, label %339
    i32 156, label %357
    i32 155, label %357
    i32 154, label %357
    i32 153, label %357
    i32 148, label %357
    i32 147, label %357
    i32 146, label %357
    i32 145, label %357
    i32 144, label %357
    i32 143, label %357
    i32 142, label %357
    i32 141, label %357
    i32 140, label %371
    i32 139, label %371
    i32 138, label %371
    i32 137, label %371
    i32 136, label %385
    i32 135, label %385
    i32 134, label %385
    i32 133, label %385
    i32 132, label %385
    i32 152, label %401
    i32 151, label %401
    i32 150, label %401
    i32 149, label %401
  ]

309:                                              ; preds = %295, %295, %295, %295
  %310 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %311 = load i32, i32* @NFE_HW_CSUM, align 4
  %312 = or i32 %310, %311
  %313 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %314 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 8
  br label %417

317:                                              ; preds = %295, %295
  %318 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %319 = load i32, i32* @NFE_PWR_MGMT, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @NFE_MIB_V1, align 4
  %322 = or i32 %320, %321
  %323 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %324 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %325, %322
  store i32 %326, i32* %324, align 8
  br label %417

327:                                              ; preds = %295, %295, %295, %295
  %328 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %329 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @NFE_HW_CSUM, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @NFE_MIB_V1, align 4
  %334 = or i32 %332, %333
  %335 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %336 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 8
  br label %417

339:                                              ; preds = %295, %295
  %340 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %341 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* @NFE_HW_CSUM, align 4
  %344 = or i32 %342, %343
  %345 = load i32, i32* @NFE_HW_VLAN, align 4
  %346 = or i32 %344, %345
  %347 = load i32, i32* @NFE_PWR_MGMT, align 4
  %348 = or i32 %346, %347
  %349 = load i32, i32* @NFE_TX_FLOW_CTRL, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @NFE_MIB_V2, align 4
  %352 = or i32 %350, %351
  %353 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %354 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 8
  br label %417

357:                                              ; preds = %295, %295, %295, %295, %295, %295, %295, %295, %295, %295, %295, %295
  %358 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %359 = load i32, i32* @NFE_PWR_MGMT, align 4
  %360 = or i32 %358, %359
  %361 = load i32, i32* @NFE_CORRECT_MACADDR, align 4
  %362 = or i32 %360, %361
  %363 = load i32, i32* @NFE_TX_FLOW_CTRL, align 4
  %364 = or i32 %362, %363
  %365 = load i32, i32* @NFE_MIB_V2, align 4
  %366 = or i32 %364, %365
  %367 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %368 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 8
  br label %417

371:                                              ; preds = %295, %295, %295, %295
  %372 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %373 = load i32, i32* @NFE_HW_CSUM, align 4
  %374 = or i32 %372, %373
  %375 = load i32, i32* @NFE_PWR_MGMT, align 4
  %376 = or i32 %374, %375
  %377 = load i32, i32* @NFE_CORRECT_MACADDR, align 4
  %378 = or i32 %376, %377
  %379 = load i32, i32* @NFE_MIB_V3, align 4
  %380 = or i32 %378, %379
  %381 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %382 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 8
  br label %417

385:                                              ; preds = %295, %295, %295, %295, %295
  %386 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %387 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @NFE_HW_CSUM, align 4
  %390 = or i32 %388, %389
  %391 = load i32, i32* @NFE_PWR_MGMT, align 4
  %392 = or i32 %390, %391
  %393 = load i32, i32* @NFE_CORRECT_MACADDR, align 4
  %394 = or i32 %392, %393
  %395 = load i32, i32* @NFE_MIB_V3, align 4
  %396 = or i32 %394, %395
  %397 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %398 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 8
  %400 = or i32 %399, %396
  store i32 %400, i32* %398, align 8
  br label %417

401:                                              ; preds = %295, %295, %295, %295
  %402 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %403 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %404 = or i32 %402, %403
  %405 = load i32, i32* @NFE_PWR_MGMT, align 4
  %406 = or i32 %404, %405
  %407 = load i32, i32* @NFE_CORRECT_MACADDR, align 4
  %408 = or i32 %406, %407
  %409 = load i32, i32* @NFE_TX_FLOW_CTRL, align 4
  %410 = or i32 %408, %409
  %411 = load i32, i32* @NFE_MIB_V2, align 4
  %412 = or i32 %410, %411
  %413 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %414 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 8
  br label %417

417:                                              ; preds = %295, %401, %385, %371, %357, %339, %327, %317, %309
  %418 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %419 = call i32 @nfe_power(%struct.nfe_softc* %418)
  %420 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %421 = load i32, i32* @NFE_TX_UNK, align 4
  %422 = call i32 @NFE_READ(%struct.nfe_softc* %420, i32 %421)
  %423 = load i32, i32* @NFE_MAC_ADDR_INORDER, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %432

426:                                              ; preds = %417
  %427 = load i32, i32* @NFE_CORRECT_MACADDR, align 4
  %428 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %429 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 8
  %431 = or i32 %430, %427
  store i32 %431, i32* %429, align 8
  br label %432

432:                                              ; preds = %426, %417
  %433 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %434 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %435 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %434, i32 0, i32 9
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @nfe_get_macaddr(%struct.nfe_softc* %433, i32 %436)
  %438 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  store i32 %438, i32* %6, align 4
  %439 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %440 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %432
  %446 = load i32, i32* @NFE_DMA_MAXADDR, align 4
  store i32 %446, i32* %6, align 4
  br label %447

447:                                              ; preds = %445, %432
  %448 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %449 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %448, i32 0, i32 7
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @bus_get_dma_tag(i32 %450)
  %452 = load i32, i32* %6, align 4
  %453 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %454 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %455 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %456 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %457 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %456, i32 0, i32 16
  %458 = call i32 @bus_dma_tag_create(i32 %451, i32 1, i32 0, i32 %452, i32 %453, i32* null, i32* null, i32 %454, i32 0, i32 %455, i32 0, i32* null, i32* null, i32* %457)
  store i32 %458, i32* %7, align 4
  %459 = load i32, i32* %7, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %447
  br label %744

462:                                              ; preds = %447
  %463 = load i32, i32* @IFT_ETHER, align 4
  %464 = call i32* @if_gethandle(i32 %463)
  %465 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %466 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %465, i32 0, i32 15
  store i32* %464, i32** %466, align 8
  store i32* %464, i32** %5, align 8
  %467 = load i32*, i32** %5, align 8
  %468 = icmp eq i32* %467, null
  br i1 %468, label %469, label %473

469:                                              ; preds = %462
  %470 = load i32, i32* %3, align 4
  %471 = call i32 (i32, i8*, ...) @device_printf(i32 %470, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %472 = load i32, i32* @ENOSPC, align 4
  store i32 %472, i32* %7, align 4
  br label %744

473:                                              ; preds = %462
  %474 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %475 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %476 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %475, i32 0, i32 14
  %477 = call i32 @nfe_alloc_tx_ring(%struct.nfe_softc* %474, i32* %476)
  store i32 %477, i32* %7, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %480

479:                                              ; preds = %473
  br label %744

480:                                              ; preds = %473
  %481 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %482 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %483 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %482, i32 0, i32 13
  %484 = call i32 @nfe_alloc_rx_ring(%struct.nfe_softc* %481, i32* %483)
  store i32 %484, i32* %7, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %480
  br label %744

487:                                              ; preds = %480
  %488 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %489 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %490 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %489, i32 0, i32 12
  %491 = call i32 @nfe_alloc_jrx_ring(%struct.nfe_softc* %488, i32* %490)
  %492 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %493 = call i32 @nfe_sysctl_node(%struct.nfe_softc* %492)
  %494 = load i32*, i32** %5, align 8
  %495 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %496 = call i32 @if_setsoftc(i32* %494, %struct.nfe_softc* %495)
  %497 = load i32*, i32** %5, align 8
  %498 = load i32, i32* %3, align 4
  %499 = call i32 @device_get_name(i32 %498)
  %500 = load i32, i32* %3, align 4
  %501 = call i32 @device_get_unit(i32 %500)
  %502 = call i32 @if_initname(i32* %497, i32 %499, i32 %501)
  %503 = load i32*, i32** %5, align 8
  %504 = load i32, i32* @IFF_BROADCAST, align 4
  %505 = load i32, i32* @IFF_SIMPLEX, align 4
  %506 = or i32 %504, %505
  %507 = load i32, i32* @IFF_MULTICAST, align 4
  %508 = or i32 %506, %507
  %509 = call i32 @if_setflags(i32* %503, i32 %508)
  %510 = load i32*, i32** %5, align 8
  %511 = load i32, i32* @nfe_ioctl, align 4
  %512 = call i32 @if_setioctlfn(i32* %510, i32 %511)
  %513 = load i32*, i32** %5, align 8
  %514 = load i32, i32* @nfe_start, align 4
  %515 = call i32 @if_setstartfn(i32* %513, i32 %514)
  %516 = load i32*, i32** %5, align 8
  %517 = call i32 @if_sethwassist(i32* %516, i32 0)
  %518 = load i32*, i32** %5, align 8
  %519 = call i32 @if_setcapabilities(i32* %518, i32 0)
  %520 = load i32*, i32** %5, align 8
  %521 = load i32, i32* @nfe_init, align 4
  %522 = call i32 @if_setinitfn(i32* %520, i32 %521)
  %523 = load i32*, i32** %5, align 8
  %524 = load i64, i64* @NFE_TX_RING_COUNT, align 8
  %525 = sub nsw i64 %524, 1
  %526 = call i32 @if_setsendqlen(i32* %523, i64 %525)
  %527 = load i32*, i32** %5, align 8
  %528 = call i32 @if_setsendqready(i32* %527)
  %529 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %530 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %529, i32 0, i32 3
  %531 = load i32, i32* %530, align 8
  %532 = load i32, i32* @NFE_HW_CSUM, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %546

535:                                              ; preds = %487
  %536 = load i32*, i32** %5, align 8
  %537 = load i32, i32* @IFCAP_HWCSUM, align 4
  %538 = load i32, i32* @IFCAP_TSO4, align 4
  %539 = or i32 %537, %538
  %540 = call i32 @if_setcapabilitiesbit(i32* %536, i32 %539, i32 0)
  %541 = load i32*, i32** %5, align 8
  %542 = load i32, i32* @NFE_CSUM_FEATURES, align 4
  %543 = load i32, i32* @CSUM_TSO, align 4
  %544 = or i32 %542, %543
  %545 = call i32 @if_sethwassistbits(i32* %541, i32 %544, i32 0)
  br label %546

546:                                              ; preds = %535, %487
  %547 = load i32*, i32** %5, align 8
  %548 = load i32*, i32** %5, align 8
  %549 = call i32 @if_getcapabilities(i32* %548)
  %550 = call i32 @if_setcapenable(i32* %547, i32 %549)
  %551 = load i32*, i32** %5, align 8
  %552 = call i64 @if_getmtu(i32* %551)
  %553 = load i64, i64* @NFE_RX_HEADERS, align 8
  %554 = add nsw i64 %552, %553
  %555 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %556 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %555, i32 0, i32 11
  store i64 %554, i64* %556, align 8
  %557 = load i32*, i32** %5, align 8
  %558 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %559 = call i32 @if_setcapabilitiesbit(i32* %557, i32 %558, i32 0)
  %560 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %561 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %560, i32 0, i32 3
  %562 = load i32, i32* %561, align 8
  %563 = load i32, i32* @NFE_HW_VLAN, align 4
  %564 = and i32 %562, %563
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %582

566:                                              ; preds = %546
  %567 = load i32*, i32** %5, align 8
  %568 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %569 = call i32 @if_setcapabilitiesbit(i32* %567, i32 %568, i32 0)
  %570 = load i32*, i32** %5, align 8
  %571 = call i32 @if_getcapabilities(i32* %570)
  %572 = load i32, i32* @IFCAP_HWCSUM, align 4
  %573 = and i32 %571, %572
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %581

575:                                              ; preds = %566
  %576 = load i32*, i32** %5, align 8
  %577 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %578 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %579 = or i32 %577, %578
  %580 = call i32 @if_setcapabilitiesbit(i32* %576, i32 %579, i32 0)
  br label %581

581:                                              ; preds = %575, %566
  br label %582

582:                                              ; preds = %581, %546
  %583 = load i32, i32* %3, align 4
  %584 = load i32, i32* @PCIY_PMG, align 4
  %585 = call i64 @pci_find_cap(i32 %583, i32 %584, i32* %11)
  %586 = icmp eq i64 %585, 0
  br i1 %586, label %587, label %591

587:                                              ; preds = %582
  %588 = load i32*, i32** %5, align 8
  %589 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %590 = call i32 @if_setcapabilitiesbit(i32* %588, i32 %589, i32 0)
  br label %591

591:                                              ; preds = %587, %582
  %592 = load i32*, i32** %5, align 8
  %593 = load i32*, i32** %5, align 8
  %594 = call i32 @if_getcapabilities(i32* %593)
  %595 = call i32 @if_setcapenable(i32* %592, i32 %594)
  %596 = load i32*, i32** %5, align 8
  %597 = call i32 @if_setifheaderlen(i32* %596, i32 4)
  %598 = load i32, i32* @MII_PHY_ANY, align 4
  store i32 %598, i32* %10, align 4
  %599 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %600 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 4
  %602 = icmp eq i32 %601, 156
  br i1 %602, label %618, label %603

603:                                              ; preds = %591
  %604 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %605 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 4
  %607 = icmp eq i32 %606, 155
  br i1 %607, label %618, label %608

608:                                              ; preds = %603
  %609 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %610 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 4
  %612 = icmp eq i32 %611, 154
  br i1 %612, label %618, label %613

613:                                              ; preds = %608
  %614 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %615 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %614, i32 0, i32 2
  %616 = load i32, i32* %615, align 4
  %617 = icmp eq i32 %616, 153
  br i1 %617, label %618, label %624

618:                                              ; preds = %613, %608, %603, %591
  %619 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %620 = call i64 @nfe_detect_msik9(%struct.nfe_softc* %619)
  %621 = icmp ne i64 %620, 0
  br i1 %621, label %622, label %623

622:                                              ; preds = %618
  store i32 0, i32* %10, align 4
  br label %623

623:                                              ; preds = %622, %618
  br label %624

624:                                              ; preds = %623, %613
  %625 = load i32, i32* %3, align 4
  %626 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %627 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %626, i32 0, i32 10
  %628 = load i32*, i32** %5, align 8
  %629 = load i64, i64* @nfe_ifmedia_upd, align 8
  %630 = trunc i64 %629 to i32
  %631 = load i64, i64* @nfe_ifmedia_sts, align 8
  %632 = trunc i64 %631 to i32
  %633 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %634 = load i32, i32* %10, align 4
  %635 = load i32, i32* @MII_OFFSET_ANY, align 4
  %636 = load i32, i32* @MIIF_DOPAUSE, align 4
  %637 = call i32 @mii_attach(i32 %625, i32* %627, i32* %628, i32 %630, i32 %632, i32 %633, i32 %634, i32 %635, i32 %636)
  store i32 %637, i32* %7, align 4
  %638 = load i32, i32* %7, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %643

640:                                              ; preds = %624
  %641 = load i32, i32* %3, align 4
  %642 = call i32 (i32, i8*, ...) @device_printf(i32 %641, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %744

643:                                              ; preds = %624
  %644 = load i32*, i32** %5, align 8
  %645 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %646 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %645, i32 0, i32 9
  %647 = load i32, i32* %646, align 8
  %648 = call i32 @ether_ifattach(i32* %644, i32 %647)
  %649 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %650 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %649, i32 0, i32 8
  %651 = load i32, i32* @nfe_int_task, align 4
  %652 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %653 = call i32 @TASK_INIT(i32* %650, i32 0, i32 %651, %struct.nfe_softc* %652)
  %654 = load i32, i32* @M_WAITOK, align 4
  %655 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %656 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %657 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %656, i32 0, i32 4
  %658 = call i32* @taskqueue_create_fast(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %654, i32 %655, i32** %657)
  %659 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %660 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %659, i32 0, i32 4
  store i32* %658, i32** %660, align 8
  %661 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %662 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %661, i32 0, i32 4
  %663 = load i32, i32* @PI_NET, align 4
  %664 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %665 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %664, i32 0, i32 7
  %666 = load i32, i32* %665, align 8
  %667 = call i32 @device_get_nameunit(i32 %666)
  %668 = call i32 @taskqueue_start_threads(i32** %662, i32 1, i32 %663, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %667)
  store i32 0, i32* %7, align 4
  %669 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %670 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %669, i32 0, i32 1
  %671 = load i32, i32* %670, align 8
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %695

673:                                              ; preds = %643
  %674 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %675 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %674, i32 0, i32 0
  %676 = load i64, i64* %675, align 8
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %678, label %695

678:                                              ; preds = %673
  %679 = load i32, i32* %3, align 4
  %680 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %681 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %680, i32 0, i32 6
  %682 = load i32**, i32*** %681, align 8
  %683 = getelementptr inbounds i32*, i32** %682, i64 0
  %684 = load i32*, i32** %683, align 8
  %685 = load i32, i32* @INTR_TYPE_NET, align 4
  %686 = load i32, i32* @INTR_MPSAFE, align 4
  %687 = or i32 %685, %686
  %688 = load i32, i32* @nfe_intr, align 4
  %689 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %690 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %691 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %690, i32 0, i32 5
  %692 = load i32*, i32** %691, align 8
  %693 = getelementptr inbounds i32, i32* %692, i64 0
  %694 = call i32 @bus_setup_intr(i32 %679, i32* %684, i32 %687, i32 %688, i32* null, %struct.nfe_softc* %689, i32* %693)
  store i32 %694, i32* %7, align 4
  br label %729

695:                                              ; preds = %673, %643
  store i32 0, i32* %8, align 4
  br label %696

696:                                              ; preds = %725, %695
  %697 = load i32, i32* %8, align 4
  %698 = load i32, i32* @NFE_MSI_MESSAGES, align 4
  %699 = icmp slt i32 %697, %698
  br i1 %699, label %700, label %728

700:                                              ; preds = %696
  %701 = load i32, i32* %3, align 4
  %702 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %703 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %702, i32 0, i32 6
  %704 = load i32**, i32*** %703, align 8
  %705 = load i32, i32* %8, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32*, i32** %704, i64 %706
  %708 = load i32*, i32** %707, align 8
  %709 = load i32, i32* @INTR_TYPE_NET, align 4
  %710 = load i32, i32* @INTR_MPSAFE, align 4
  %711 = or i32 %709, %710
  %712 = load i32, i32* @nfe_intr, align 4
  %713 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %714 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %715 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %714, i32 0, i32 5
  %716 = load i32*, i32** %715, align 8
  %717 = load i32, i32* %8, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i32, i32* %716, i64 %718
  %720 = call i32 @bus_setup_intr(i32 %701, i32* %708, i32 %711, i32 %712, i32* null, %struct.nfe_softc* %713, i32* %719)
  store i32 %720, i32* %7, align 4
  %721 = load i32, i32* %7, align 4
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %724

723:                                              ; preds = %700
  br label %728

724:                                              ; preds = %700
  br label %725

725:                                              ; preds = %724
  %726 = load i32, i32* %8, align 4
  %727 = add nsw i32 %726, 1
  store i32 %727, i32* %8, align 4
  br label %696

728:                                              ; preds = %723, %696
  br label %729

729:                                              ; preds = %728, %678
  %730 = load i32, i32* %7, align 4
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %743

732:                                              ; preds = %729
  %733 = load i32, i32* %3, align 4
  %734 = call i32 (i32, i8*, ...) @device_printf(i32 %733, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %735 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %736 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %735, i32 0, i32 4
  %737 = load i32*, i32** %736, align 8
  %738 = call i32 @taskqueue_free(i32* %737)
  %739 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %740 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %739, i32 0, i32 4
  store i32* null, i32** %740, align 8
  %741 = load i32*, i32** %5, align 8
  %742 = call i32 @ether_ifdetach(i32* %741)
  br label %744

743:                                              ; preds = %729
  br label %744

744:                                              ; preds = %743, %732, %640, %486, %479, %469, %461, %222, %192
  %745 = load i32, i32* %7, align 4
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %750

747:                                              ; preds = %744
  %748 = load i32, i32* %3, align 4
  %749 = call i32 @nfe_detach(i32 %748)
  br label %750

750:                                              ; preds = %747, %744
  %751 = load i32, i32* %7, align 4
  store i32 %751, i32* %2, align 4
  br label %752

752:                                              ; preds = %750, %50
  %753 = load i32, i32* %2, align 4
  ret i32 %753
}

declare dso_local %struct.nfe_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @nfe_can_use_msix(%struct.nfe_softc*) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @nfe_alloc_msix(%struct.nfe_softc*, i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @nfe_power(%struct.nfe_softc*) #1

declare dso_local i32 @NFE_READ(%struct.nfe_softc*, i32) #1

declare dso_local i32 @nfe_get_macaddr(%struct.nfe_softc*, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32* @if_gethandle(i32) #1

declare dso_local i32 @nfe_alloc_tx_ring(%struct.nfe_softc*, i32*) #1

declare dso_local i32 @nfe_alloc_rx_ring(%struct.nfe_softc*, i32*) #1

declare dso_local i32 @nfe_alloc_jrx_ring(%struct.nfe_softc*, i32*) #1

declare dso_local i32 @nfe_sysctl_node(%struct.nfe_softc*) #1

declare dso_local i32 @if_setsoftc(i32*, %struct.nfe_softc*) #1

declare dso_local i32 @if_initname(i32*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @if_setflags(i32*, i32) #1

declare dso_local i32 @if_setioctlfn(i32*, i32) #1

declare dso_local i32 @if_setstartfn(i32*, i32) #1

declare dso_local i32 @if_sethwassist(i32*, i32) #1

declare dso_local i32 @if_setcapabilities(i32*, i32) #1

declare dso_local i32 @if_setinitfn(i32*, i32) #1

declare dso_local i32 @if_setsendqlen(i32*, i64) #1

declare dso_local i32 @if_setsendqready(i32*) #1

declare dso_local i32 @if_setcapabilitiesbit(i32*, i32, i32) #1

declare dso_local i32 @if_sethwassistbits(i32*, i32, i32) #1

declare dso_local i32 @if_setcapenable(i32*, i32) #1

declare dso_local i32 @if_getcapabilities(i32*) #1

declare dso_local i64 @if_getmtu(i32*) #1

declare dso_local i32 @if_setifheaderlen(i32*, i32) #1

declare dso_local i64 @nfe_detect_msik9(%struct.nfe_softc*) #1

declare dso_local i32 @mii_attach(i32, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ether_ifattach(i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.nfe_softc*) #1

declare dso_local i32* @taskqueue_create_fast(i8*, i32, i32, i32**) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.nfe_softc*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @ether_ifdetach(i32*) #1

declare dso_local i32 @nfe_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
