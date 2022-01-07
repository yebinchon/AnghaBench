; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32, i64, i32, i32*, i32, i32, %struct.ifnet*, i32, i32*, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.vte_softc* }
%struct.TYPE_3__ = type { i64 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"cannot map memory/ports.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"using %s space register mapping\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"MAC Identifier : 0x%04x\0A\00", align 1
@VTE_MACID = common dso_local global i32 0, align 4
@VTE_MACID_REV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"MAC Id. 0x%02x, Rev. 0x%02x\0A\00", align 1
@VTE_MACID_MASK = common dso_local global i32 0, align 4
@VTE_MACID_SHIFT = common dso_local global i32 0, align 4
@VTE_MACID_REV_MASK = common dso_local global i32 0, align 4
@VTE_MACID_REV_SHIFT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i64 0, align 8
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"cannot allocate IRQ resources.\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"cannot allocate ifnet structure.\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@vte_ioctl = common dso_local global i32 0, align 4
@vte_start = common dso_local global i32 0, align 4
@vte_init = common dso_local global i32 0, align 4
@vte_get_counter = common dso_local global i32 0, align 4
@VTE_TX_RING_CNT = common dso_local global i64 0, align 8
@vte_mediachange = common dso_local global i32 0, align 4
@vte_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@vte_intr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"could not set up interrupt handler.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vte_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vte_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vte_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.vte_softc* @device_get_softc(i32 %9)
  store %struct.vte_softc* %10, %struct.vte_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 8
  %14 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %15 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %14, i32 0, i32 7
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_get_nameunit(i32 %16)
  %18 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %15, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %22 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %21, i32 0, i32 10
  %23 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %24 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %23, i32 0, i32 7
  %25 = call i32 @callout_init_mtx(i32* %22, i32* %24, i32 0)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @vte_find_ident(i32 %26)
  %28 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %29 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @pci_enable_busmaster(i32 %30)
  %32 = call i8* @PCIR_BAR(i32 1)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %35 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* @SYS_RES_MEMORY, align 8
  %37 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %38 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %41 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %44 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %43, i32 0, i32 0
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i8* @bus_alloc_resource_any(i32 %39, i64 %42, i32* %44, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %49 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %48, i32 0, i32 8
  store i32* %47, i32** %49, align 8
  %50 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %51 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %50, i32 0, i32 8
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %85

54:                                               ; preds = %1
  %55 = call i8* @PCIR_BAR(i32 0)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %58 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* @SYS_RES_IOPORT, align 8
  %60 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %61 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %64 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %67 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %66, i32 0, i32 0
  %68 = load i32, i32* @RF_ACTIVE, align 4
  %69 = call i8* @bus_alloc_resource_any(i32 %62, i64 %65, i32* %67, i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %72 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %71, i32 0, i32 8
  store i32* %70, i32** %72, align 8
  %73 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %74 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %73, i32 0, i32 8
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %54
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %81 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %80, i32 0, i32 7
  %82 = call i32 @mtx_destroy(i32* %81)
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %2, align 4
  br label %263

84:                                               ; preds = %54
  br label %85

85:                                               ; preds = %84, %1
  %86 = load i64, i64* @bootverbose, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %85
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %91 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SYS_RES_MEMORY, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %100 = load i32, i32* @VTE_MACID, align 4
  %101 = call i32 @CSR_READ_2(%struct.vte_softc* %99, i32 %100)
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %104 = load i32, i32* @VTE_MACID_REV, align 4
  %105 = call i32 @CSR_READ_2(%struct.vte_softc* %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @VTE_MACID_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @VTE_MACID_SHIFT, align 4
  %111 = ashr i32 %109, %110
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @VTE_MACID_REV_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @VTE_MACID_REV_SHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %116)
  br label %118

118:                                              ; preds = %88, %85
  store i32 0, i32* %8, align 4
  %119 = load i32, i32* %3, align 4
  %120 = load i64, i64* @SYS_RES_IRQ, align 8
  %121 = load i32, i32* @RF_SHAREABLE, align 4
  %122 = load i32, i32* @RF_ACTIVE, align 4
  %123 = or i32 %121, %122
  %124 = call i8* @bus_alloc_resource_any(i32 %119, i64 %120, i32* %8, i32 %123)
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %127 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %126, i32 0, i32 3
  store i32* %125, i32** %127, align 8
  %128 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %129 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %118
  %133 = load i32, i32* %3, align 4
  %134 = call i32 (i32, i8*, ...) @device_printf(i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32, i32* @ENXIO, align 4
  store i32 %135, i32* %7, align 4
  br label %255

136:                                              ; preds = %118
  %137 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %138 = call i32 @vte_reset(%struct.vte_softc* %137)
  %139 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %140 = call i32 @vte_dma_alloc(%struct.vte_softc* %139)
  store i32 %140, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %255

143:                                              ; preds = %136
  %144 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %145 = call i32 @vte_sysctl_node(%struct.vte_softc* %144)
  %146 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %147 = call i32 @vte_get_macaddr(%struct.vte_softc* %146)
  %148 = load i32, i32* @IFT_ETHER, align 4
  %149 = call %struct.ifnet* @if_alloc(i32 %148)
  %150 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %151 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %150, i32 0, i32 6
  store %struct.ifnet* %149, %struct.ifnet** %151, align 8
  store %struct.ifnet* %149, %struct.ifnet** %5, align 8
  %152 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %153 = icmp eq %struct.ifnet* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %143
  %155 = load i32, i32* %3, align 4
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %157 = load i32, i32* @ENXIO, align 4
  store i32 %157, i32* %7, align 4
  br label %255

158:                                              ; preds = %143
  %159 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %160 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 9
  store %struct.vte_softc* %159, %struct.vte_softc** %161, align 8
  %162 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @device_get_name(i32 %163)
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @device_get_unit(i32 %165)
  %167 = call i32 @if_initname(%struct.ifnet* %162, i32 %164, i32 %166)
  %168 = load i32, i32* @IFF_BROADCAST, align 4
  %169 = load i32, i32* @IFF_SIMPLEX, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @IFF_MULTICAST, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @vte_ioctl, align 4
  %176 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %177 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %176, i32 0, i32 8
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @vte_start, align 4
  %179 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %180 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @vte_init, align 4
  %182 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %183 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %182, i32 0, i32 6
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @vte_get_counter, align 4
  %185 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %186 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %185, i32 0, i32 5
  store i32 %184, i32* %186, align 8
  %187 = load i64, i64* @VTE_TX_RING_CNT, align 8
  %188 = sub nsw i64 %187, 1
  %189 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %190 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i64 %188, i64* %191, align 8
  %192 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %193 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %192, i32 0, i32 4
  %194 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %195 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %193, i64 %197)
  %199 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %200 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %199, i32 0, i32 4
  %201 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %200)
  %202 = load i32, i32* %3, align 4
  %203 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %204 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %203, i32 0, i32 5
  %205 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %206 = load i32, i32* @vte_mediachange, align 4
  %207 = load i32, i32* @vte_mediastatus, align 4
  %208 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %209 = load i32, i32* @MII_PHY_ANY, align 4
  %210 = load i32, i32* @MII_OFFSET_ANY, align 4
  %211 = call i32 @mii_attach(i32 %202, i32* %204, %struct.ifnet* %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 0)
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %158
  %215 = load i32, i32* %3, align 4
  %216 = call i32 (i32, i8*, ...) @device_printf(i32 %215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %255

217:                                              ; preds = %158
  %218 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %219 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %220 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @ether_ifattach(%struct.ifnet* %218, i32 %221)
  %223 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %224 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %225 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %229 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %232 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  %233 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %234 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %233, i32 0, i32 1
  store i32 4, i32* %234, align 4
  %235 = load i32, i32* %3, align 4
  %236 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %237 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* @INTR_TYPE_NET, align 4
  %240 = load i32, i32* @INTR_MPSAFE, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @vte_intr, align 4
  %243 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %244 = load %struct.vte_softc*, %struct.vte_softc** %4, align 8
  %245 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %244, i32 0, i32 2
  %246 = call i32 @bus_setup_intr(i32 %235, i32* %238, i32 %241, i32* null, i32 %242, %struct.vte_softc* %243, i32* %245)
  store i32 %246, i32* %7, align 4
  %247 = load i32, i32* %7, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %217
  %250 = load i32, i32* %3, align 4
  %251 = call i32 (i32, i8*, ...) @device_printf(i32 %250, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %252 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %253 = call i32 @ether_ifdetach(%struct.ifnet* %252)
  br label %255

254:                                              ; preds = %217
  br label %255

255:                                              ; preds = %254, %249, %214, %154, %142, %132
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32, i32* %3, align 4
  %260 = call i32 @vte_detach(i32 %259)
  br label %261

261:                                              ; preds = %258, %255
  %262 = load i32, i32* %7, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %261, %77
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.vte_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @vte_find_ident(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i64, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @CSR_READ_2(%struct.vte_softc*, i32) #1

declare dso_local i32 @vte_reset(%struct.vte_softc*) #1

declare dso_local i32 @vte_dma_alloc(%struct.vte_softc*) #1

declare dso_local i32 @vte_sysctl_node(%struct.vte_softc*) #1

declare dso_local i32 @vte_get_macaddr(%struct.vte_softc*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.vte_softc*, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @vte_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
