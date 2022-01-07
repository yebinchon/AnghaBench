; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme_pci.c_hme_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme_pci.c_hme_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_pci_softc = type { %struct.resource*, %struct.resource*, i32, %struct.hme_softc }
%struct.resource = type { i32 }
%struct.hme_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@HME_PCI = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not map device registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"could not get children\0A\00", align 1
@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCI_VENDOR_SUN = common dso_local global i32 0, align 4
@PCI_PRODUCT_SUN_EBUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"could not find EBus bridge\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"could not map PROM registers\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"unexpected PCI Expansion ROM header\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"unexpected PCI Expansion ROM data\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"unexpected PCI VPD\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"could not be configured\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@hme_intr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"couldn't establish interrupt\0A\00", align 1
@PCI_ROMHDR_PTR_DATA = common dso_local global i64 0, align 8
@PCI_ROMHDR_SIG = common dso_local global i64 0, align 8
@PCI_ROMHDR_SIG_MAGIC = common dso_local global i32 0, align 4
@PCI_ROMHDR_SIZE = common dso_local global i32 0, align 4
@PCI_ROM_DEVICE = common dso_local global i64 0, align 8
@PCI_ROM_PTR_VPD = common dso_local global i64 0, align 8
@PCI_ROM_SIG = common dso_local global i64 0, align 8
@PCI_ROM_SIG_MAGIC = common dso_local global i64 0, align 8
@PCI_ROM_SIZE = common dso_local global i32 0, align 4
@PCI_ROM_VENDOR = common dso_local global i64 0, align 8
@PCI_VPDRES_BYTE0 = common dso_local global i32 0, align 4
@PCI_VPDRES_LARGE_DATA = common dso_local global i32 0, align 4
@PCI_VPDRES_LARGE_LEN_LSB = common dso_local global i32 0, align 4
@PCI_VPDRES_LARGE_LEN_MSB = common dso_local global i32 0, align 4
@PCI_VPDRES_TYPE_VPD = common dso_local global i64 0, align 8
@PCI_VPD_DATA = common dso_local global i64 0, align 8
@PCI_VPD_KEY0 = common dso_local global i32 0, align 4
@PCI_VPD_KEY1 = common dso_local global i32 0, align 4
@PCI_VPD_LEN = common dso_local global i32 0, align 4
@PCI_VPD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hme_pci_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hme_pci_softc*, align 8
  %5 = alloca %struct.hme_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @pci_enable_busmaster(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @pci_get_intpin(i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @pci_set_intpin(i32* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32*, i32** %3, align 8
  %25 = call %struct.hme_pci_softc* @device_get_softc(i32* %24)
  store %struct.hme_pci_softc* %25, %struct.hme_pci_softc** %4, align 8
  %26 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %27 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %26, i32 0, i32 3
  store %struct.hme_softc* %27, %struct.hme_softc** %5, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %30 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %29, i32 0, i32 14
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* @HME_PCI, align 4
  %32 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %33 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %37 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @device_get_nameunit(i32* %38)
  %40 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %41 = load i32, i32* @MTX_DEF, align 4
  %42 = call i32 @mtx_init(i32* %37, i32 %39, i32 %40, i32 %41)
  %43 = call i32 @PCIR_BAR(i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @SYS_RES_MEMORY, align 4
  %46 = load i32, i32* @RF_ACTIVE, align 4
  %47 = call i8* @bus_alloc_resource_any(i32* %44, i32 %45, i32* %8, i32 %46)
  %48 = bitcast i8* %47 to %struct.resource*
  %49 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %50 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %49, i32 0, i32 0
  store %struct.resource* %48, %struct.resource** %50, align 8
  %51 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %52 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %51, i32 0, i32 0
  %53 = load %struct.resource*, %struct.resource** %52, align 8
  %54 = icmp eq %struct.resource* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %23
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @device_printf(i32* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %9, align 4
  br label %423

59:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @SYS_RES_IRQ, align 4
  %62 = load i32, i32* @RF_SHAREABLE, align 4
  %63 = load i32, i32* @RF_ACTIVE, align 4
  %64 = or i32 %62, %63
  %65 = call i8* @bus_alloc_resource_any(i32* %60, i32 %61, i32* %8, i32 %64)
  %66 = bitcast i8* %65 to %struct.resource*
  %67 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %68 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %67, i32 0, i32 1
  store %struct.resource* %66, %struct.resource** %68, align 8
  %69 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %70 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %69, i32 0, i32 1
  %71 = load %struct.resource*, %struct.resource** %70, align 8
  %72 = icmp eq %struct.resource* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @device_printf(i32* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %9, align 4
  br label %412

77:                                               ; preds = %59
  %78 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %79 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %78, i32 0, i32 0
  %80 = load %struct.resource*, %struct.resource** %79, align 8
  %81 = call i32 @rman_get_bustag(%struct.resource* %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %83 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %82, i32 0, i32 0
  %84 = load %struct.resource*, %struct.resource** %83, align 8
  %85 = call i32 @rman_get_bushandle(%struct.resource* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %88 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %90 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %89, i32 0, i32 9
  store i32 %86, i32* %90, align 4
  %91 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %92 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %91, i32 0, i32 10
  store i32 %86, i32* %92, align 8
  %93 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %94 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %93, i32 0, i32 11
  store i32 %86, i32* %94, align 4
  %95 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %96 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %95, i32 0, i32 12
  store i32 %86, i32* %96, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %100 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %99, i32 0, i32 7
  %101 = call i32 @bus_space_subregion(i32 %97, i32 %98, i32 0, i32 4096, i32* %100)
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %105 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %104, i32 0, i32 6
  %106 = call i32 @bus_space_subregion(i32 %102, i32 %103, i32 8192, i32 4096, i32* %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %110 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %109, i32 0, i32 5
  %111 = call i32 @bus_space_subregion(i32 %107, i32 %108, i32 16384, i32 4096, i32* %110)
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %115 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %114, i32 0, i32 4
  %116 = call i32 @bus_space_subregion(i32 %112, i32 %113, i32 24576, i32 4096, i32* %115)
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %120 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %119, i32 0, i32 3
  %121 = call i32 @bus_space_subregion(i32 %117, i32 %118, i32 28672, i32 4096, i32* %120)
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @pci_get_slot(i32* %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @device_get_parent(i32* %124)
  %126 = call i64 @device_get_children(i32 %125, i32*** %10, i32* %8)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %77
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @device_printf(i32* %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @ENXIO, align 4
  store i32 %131, i32* %9, align 4
  br label %412

132:                                              ; preds = %77
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %133

133:                                              ; preds = %180, %132
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %183

137:                                              ; preds = %133
  %138 = load i32**, i32*** %10, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @pci_get_class(i32* %142)
  %144 = load i64, i64* @PCIC_BRIDGE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %179

146:                                              ; preds = %137
  %147 = load i32**, i32*** %10, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @pci_get_vendor(i32* %151)
  %153 = load i32, i32* @PCI_VENDOR_SUN, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %179

155:                                              ; preds = %146
  %156 = load i32**, i32*** %10, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @pci_get_device(i32* %160)
  %162 = load i32, i32* @PCI_PRODUCT_SUN_EBUS, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %155
  %165 = load i32**, i32*** %10, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @pci_get_slot(i32* %169)
  %171 = load i32, i32* %14, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %164
  %174 = load i32**, i32*** %10, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %11, align 8
  br label %183

179:                                              ; preds = %164, %155, %146, %137
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %133

183:                                              ; preds = %173, %133
  %184 = load i32*, i32** %11, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i32*, i32** %3, align 8
  %188 = call i32 @device_printf(i32* %187, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %189 = load i32, i32* @ENXIO, align 4
  store i32 %189, i32* %9, align 4
  br label %365

190:                                              ; preds = %183
  %191 = call i32 @PCIR_BAR(i32 0)
  store i32 %191, i32* %8, align 4
  %192 = load i32*, i32** %11, align 8
  %193 = load i32, i32* @SYS_RES_MEMORY, align 4
  %194 = load i32, i32* @RF_ACTIVE, align 4
  %195 = call i8* @bus_alloc_resource_any(i32* %192, i32 %193, i32* %8, i32 %194)
  %196 = bitcast i8* %195 to %struct.resource*
  store %struct.resource* %196, %struct.resource** %12, align 8
  %197 = icmp eq %struct.resource* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %190
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @device_printf(i32* %199, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %201 = load i32, i32* @ENXIO, align 4
  store i32 %201, i32* %9, align 4
  br label %365

202:                                              ; preds = %190
  %203 = load %struct.resource*, %struct.resource** %12, align 8
  %204 = call i32 @rman_get_bustag(%struct.resource* %203)
  store i32 %204, i32* %6, align 4
  %205 = load %struct.resource*, %struct.resource** %12, align 8
  %206 = call i32 @rman_get_bushandle(%struct.resource* %205)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %7, align 4
  %209 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_2 to i32 (i32, i32, i32, ...)*)(i32 %207, i32 %208, i32 0)
  %210 = icmp ne i32 %209, 43605
  br i1 %210, label %216, label %211

211:                                              ; preds = %202
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %7, align 4
  %214 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_2 to i32 (i32, i32, i32, ...)*)(i32 %212, i32 %213, i32 24)
  store i32 %214, i32* %8, align 4
  %215 = icmp slt i32 %214, 28
  br i1 %215, label %216, label %220

216:                                              ; preds = %211, %202
  %217 = load i32*, i32** %3, align 8
  %218 = call i32 @device_printf(i32* %217, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %219 = load i32, i32* @ENXIO, align 4
  store i32 %219, i32* %9, align 4
  br label %358

220:                                              ; preds = %211
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 0
  %225 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_4 to i32 (i32, i32, i32, ...)*)(i32 %221, i32 %222, i32 %224)
  %226 = icmp ne i32 %225, 1380533072
  br i1 %226, label %254, label %227

227:                                              ; preds = %220
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 4
  %232 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_2 to i32 (i32, i32, i32, ...)*)(i32 %228, i32 %229, i32 %231)
  %233 = load i32*, i32** %3, align 8
  %234 = call i32 @pci_get_vendor(i32* %233)
  %235 = icmp ne i32 %232, %234
  br i1 %235, label %254, label %236

236:                                              ; preds = %227
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, 6
  %241 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_2 to i32 (i32, i32, i32, ...)*)(i32 %237, i32 %238, i32 %240)
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @pci_get_device(i32* %242)
  %244 = icmp ne i32 %241, %243
  br i1 %244, label %254, label %245

245:                                              ; preds = %236
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 8
  %250 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_2 to i32 (i32, i32, i32, ...)*)(i32 %246, i32 %247, i32 %249)
  store i32 %250, i32* %13, align 4
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 24
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %245, %236, %227, %220
  %255 = load i32*, i32** %3, align 8
  %256 = call i32 @device_printf(i32* %255, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %257 = load i32, i32* @ENXIO, align 4
  store i32 %257, i32* %9, align 4
  br label %358

258:                                              ; preds = %245
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %13, align 4
  %262 = add nsw i32 %261, 3
  %263 = add nsw i32 %262, 3
  %264 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %265 = add nsw i32 %263, %264
  %266 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_1 to i32 (i32, i32, i32, ...)*)(i32 %259, i32 %260, i32 %265)
  %267 = icmp ne i32 %266, 121
  br i1 %267, label %268, label %285

268:                                              ; preds = %258
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %273 = add nsw i32 6, %272
  %274 = mul nsw i32 4, %273
  %275 = add nsw i32 %271, %274
  %276 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_1 to i32 (i32, i32, i32, ...)*)(i32 %269, i32 %270, i32 %275)
  %277 = icmp eq i32 %276, 121
  br i1 %277, label %278, label %285

278:                                              ; preds = %268
  %279 = load i32, i32* %14, align 4
  %280 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %281 = add nsw i32 6, %280
  %282 = mul nsw i32 %279, %281
  %283 = load i32, i32* %13, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %13, align 4
  br label %285

285:                                              ; preds = %278, %268, %258
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, 0
  %290 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_1 to i32 (i32, i32, i32, ...)*)(i32 %286, i32 %287, i32 %289)
  %291 = and i32 %290, 128
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %342, label %293

293:                                              ; preds = %285
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* %13, align 4
  %297 = add nsw i32 %296, 0
  %298 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_1 to i32 (i32, i32, i32, ...)*)(i32 %294, i32 %295, i32 %297)
  %299 = and i32 %298, 127
  %300 = icmp ne i32 %299, 16
  br i1 %300, label %342, label %301

301:                                              ; preds = %293
  %302 = load i32, i32* %6, align 4
  %303 = load i32, i32* %7, align 4
  %304 = load i32, i32* %13, align 4
  %305 = add nsw i32 %304, 1
  %306 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_1 to i32 (i32, i32, i32, ...)*)(i32 %302, i32 %303, i32 %305)
  %307 = shl i32 %306, 8
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* %13, align 4
  %311 = add nsw i32 %310, 2
  %312 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_1 to i32 (i32, i32, i32, ...)*)(i32 %308, i32 %309, i32 %311)
  %313 = or i32 %307, %312
  %314 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %315 = add nsw i32 3, %314
  %316 = icmp ne i32 %313, %315
  br i1 %316, label %342, label %317

317:                                              ; preds = %301
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, 3
  %322 = add nsw i32 %321, 0
  %323 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_1 to i32 (i32, i32, i32, ...)*)(i32 %318, i32 %319, i32 %322)
  %324 = icmp ne i32 %323, 78
  br i1 %324, label %342, label %325

325:                                              ; preds = %317
  %326 = load i32, i32* %6, align 4
  %327 = load i32, i32* %7, align 4
  %328 = load i32, i32* %13, align 4
  %329 = add nsw i32 %328, 3
  %330 = add nsw i32 %329, 1
  %331 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_1 to i32 (i32, i32, i32, ...)*)(i32 %326, i32 %327, i32 %330)
  %332 = icmp ne i32 %331, 65
  br i1 %332, label %342, label %333

333:                                              ; preds = %325
  %334 = load i32, i32* %6, align 4
  %335 = load i32, i32* %7, align 4
  %336 = load i32, i32* %13, align 4
  %337 = add nsw i32 %336, 3
  %338 = add nsw i32 %337, 2
  %339 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @bus_space_read_1 to i32 (i32, i32, i32, ...)*)(i32 %334, i32 %335, i32 %338)
  %340 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %333, %325, %317, %301, %293, %285
  %343 = load i32*, i32** %3, align 8
  %344 = call i32 @device_printf(i32* %343, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %345 = load i32, i32* @ENXIO, align 4
  store i32 %345, i32* %9, align 4
  br label %358

346:                                              ; preds = %333
  %347 = load i32, i32* %6, align 4
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* %13, align 4
  %350 = add nsw i32 %349, 3
  %351 = add nsw i32 %350, 3
  %352 = sext i32 %351 to i64
  %353 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %354 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %357 = call i32 @bus_space_read_region_1(i32 %347, i32 %348, i64 %352, i32 %355, i32 %356)
  br label %358

358:                                              ; preds = %346, %342, %254, %216
  %359 = load i32*, i32** %11, align 8
  %360 = load i32, i32* @SYS_RES_MEMORY, align 4
  %361 = load %struct.resource*, %struct.resource** %12, align 8
  %362 = call i32 @rman_get_rid(%struct.resource* %361)
  %363 = load %struct.resource*, %struct.resource** %12, align 8
  %364 = call i32 @bus_release_resource(i32* %359, i32 %360, i32 %362, %struct.resource* %363)
  br label %365

365:                                              ; preds = %358, %198, %186
  %366 = load i32**, i32*** %10, align 8
  %367 = load i32, i32* @M_TEMP, align 4
  %368 = call i32 @free(i32** %366, i32 %367)
  %369 = load i32, i32* %9, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %365
  br label %412

372:                                              ; preds = %365
  %373 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %374 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %373, i32 0, i32 0
  store i32 64, i32* %374, align 8
  %375 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %376 = call i32 @hme_config(%struct.hme_softc* %375)
  store i32 %376, i32* %9, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %372
  %379 = load i32*, i32** %3, align 8
  %380 = call i32 @device_printf(i32* %379, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %401

381:                                              ; preds = %372
  %382 = load i32*, i32** %3, align 8
  %383 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %384 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %383, i32 0, i32 1
  %385 = load %struct.resource*, %struct.resource** %384, align 8
  %386 = load i32, i32* @INTR_TYPE_NET, align 4
  %387 = load i32, i32* @INTR_MPSAFE, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @hme_intr, align 4
  %390 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %391 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %392 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %391, i32 0, i32 2
  %393 = call i32 @bus_setup_intr(i32* %382, %struct.resource* %385, i32 %388, i32* null, i32 %389, %struct.hme_softc* %390, i32* %392)
  store i32 %393, i32* %9, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %381
  %396 = load i32*, i32** %3, align 8
  %397 = call i32 @device_printf(i32* %396, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %398 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %399 = call i32 @hme_detach(%struct.hme_softc* %398)
  br label %401

400:                                              ; preds = %381
  store i32 0, i32* %2, align 4
  br label %428

401:                                              ; preds = %395, %378
  %402 = load i32*, i32** %3, align 8
  %403 = load i32, i32* @SYS_RES_IRQ, align 4
  %404 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %405 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %404, i32 0, i32 1
  %406 = load %struct.resource*, %struct.resource** %405, align 8
  %407 = call i32 @rman_get_rid(%struct.resource* %406)
  %408 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %409 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %408, i32 0, i32 1
  %410 = load %struct.resource*, %struct.resource** %409, align 8
  %411 = call i32 @bus_release_resource(i32* %402, i32 %403, i32 %407, %struct.resource* %410)
  br label %412

412:                                              ; preds = %401, %371, %128, %73
  %413 = load i32*, i32** %3, align 8
  %414 = load i32, i32* @SYS_RES_MEMORY, align 4
  %415 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %416 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %415, i32 0, i32 0
  %417 = load %struct.resource*, %struct.resource** %416, align 8
  %418 = call i32 @rman_get_rid(%struct.resource* %417)
  %419 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %4, align 8
  %420 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %419, i32 0, i32 0
  %421 = load %struct.resource*, %struct.resource** %420, align 8
  %422 = call i32 @bus_release_resource(i32* %413, i32 %414, i32 %418, %struct.resource* %421)
  br label %423

423:                                              ; preds = %412, %55
  %424 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %425 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %424, i32 0, i32 1
  %426 = call i32 @mtx_destroy(i32* %425)
  %427 = load i32, i32* %9, align 4
  store i32 %427, i32* %2, align 4
  br label %428

428:                                              ; preds = %423, %400
  %429 = load i32, i32* %2, align 4
  ret i32 %429
}

declare dso_local i32 @pci_enable_busmaster(i32*) #1

declare dso_local i64 @pci_get_intpin(i32*) #1

declare dso_local i32 @pci_set_intpin(i32*, i32) #1

declare dso_local %struct.hme_pci_softc* @device_get_softc(i32*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @bus_space_subregion(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pci_get_slot(i32*) #1

declare dso_local i64 @device_get_children(i32, i32***, i32*) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i64 @pci_get_class(i32*) #1

declare dso_local i32 @pci_get_vendor(i32*) #1

declare dso_local i32 @pci_get_device(i32*) #1

declare dso_local i32 @bus_space_read_2(...) #1

declare dso_local i32 @bus_space_read_4(...) #1

declare dso_local i32 @bus_space_read_1(...) #1

declare dso_local i32 @bus_space_read_region_1(i32, i32, i64, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_get_rid(%struct.resource*) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32 @hme_config(%struct.hme_softc*) #1

declare dso_local i32 @bus_setup_intr(i32*, %struct.resource*, i32, i32*, i32, %struct.hme_softc*, i32*) #1

declare dso_local i32 @hme_detach(%struct.hme_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
