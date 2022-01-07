; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.bfe_softc* }
%struct.TYPE_3__ = type { i32 }
%struct.bfe_softc = type { i32, i32*, i32, i32, i32, %struct.ifnet*, i32*, i32, i32, i32 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"couldn't map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to allocate DMA resources\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_bfe_stats = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Statistics\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"failed to if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@bfe_ioctl = common dso_local global i32 0, align 4
@bfe_start = common dso_local global i32 0, align 4
@bfe_init = common dso_local global i32 0, align 4
@BFE_TX_QLEN = common dso_local global i32 0, align 4
@bfe_ifmedia_upd = common dso_local global i32 0, align 4
@bfe_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@bfe_intr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bfe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.bfe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.ifnet* null, %struct.ifnet** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.bfe_softc* @device_get_softc(i32 %7)
  store %struct.bfe_softc* %8, %struct.bfe_softc** %4, align 8
  %9 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %9, i32 0, i32 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @device_get_nameunit(i32 %11)
  %13 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %14 = load i32, i32* @MTX_DEF, align 4
  %15 = call i32 @mtx_init(i32* %10, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %17 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %16, i32 0, i32 9
  %18 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %19 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %18, i32 0, i32 8
  %20 = call i32 @callout_init_mtx(i32* %17, i32* %19, i32 0)
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @pci_enable_busmaster(i32 %24)
  %26 = call i32 @PCIR_BAR(i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SYS_RES_MEMORY, align 4
  %29 = load i32, i32* @RF_ACTIVE, align 4
  %30 = call i8* @bus_alloc_resource_any(i32 %27, i32 %28, i32* %6, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %32, i32 0, i32 6
  store i32* %31, i32** %33, align 8
  %34 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %35 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %5, align 4
  br label %189

42:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load i32, i32* @RF_SHAREABLE, align 4
  %46 = load i32, i32* @RF_ACTIVE, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @bus_alloc_resource_any(i32 %43, i32 %44, i32* %6, i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %51 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %53 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %5, align 4
  br label %189

60:                                               ; preds = %42
  %61 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %62 = call i64 @bfe_dma_alloc(%struct.bfe_softc* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %5, align 4
  br label %189

68:                                               ; preds = %60
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @device_get_sysctl_ctx(i32 %69)
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @device_get_sysctl_tree(i32 %71)
  %73 = call i32 @SYSCTL_CHILDREN(i32 %72)
  %74 = load i32, i32* @OID_AUTO, align 4
  %75 = load i32, i32* @CTLTYPE_INT, align 4
  %76 = load i32, i32* @CTLFLAG_RW, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %79 = load i32, i32* @sysctl_bfe_stats, align 4
  %80 = call i32 @SYSCTL_ADD_PROC(i32 %70, i32 %73, i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %77, %struct.bfe_softc* %78, i32 0, i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* @IFT_ETHER, align 4
  %82 = call %struct.ifnet* @if_alloc(i32 %81)
  %83 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %84 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %83, i32 0, i32 5
  store %struct.ifnet* %82, %struct.ifnet** %84, align 8
  store %struct.ifnet* %82, %struct.ifnet** %3, align 8
  %85 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %86 = icmp eq %struct.ifnet* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %68
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i32, i32* @ENOSPC, align 4
  store i32 %90, i32* %5, align 4
  br label %189

91:                                               ; preds = %68
  %92 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %93 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 8
  store %struct.bfe_softc* %92, %struct.bfe_softc** %94, align 8
  %95 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @device_get_name(i32 %96)
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @device_get_unit(i32 %98)
  %100 = call i32 @if_initname(%struct.ifnet* %95, i32 %97, i32 %99)
  %101 = load i32, i32* @IFF_BROADCAST, align 4
  %102 = load i32, i32* @IFF_SIMPLEX, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @IFF_MULTICAST, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %107 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @bfe_ioctl, align 4
  %109 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @bfe_start, align 4
  %112 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %113 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @bfe_init, align 4
  %115 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 4
  %119 = load i32, i32* @BFE_TX_QLEN, align 4
  %120 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %118, i32 %119)
  %121 = load i32, i32* @BFE_TX_QLEN, align 4
  %122 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %126 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %125, i32 0, i32 4
  %127 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %126)
  %128 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %129 = call i32 @bfe_get_config(%struct.bfe_softc* %128)
  %130 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %131 = call i32 @BFE_LOCK(%struct.bfe_softc* %130)
  %132 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %133 = call i32 @bfe_chip_reset(%struct.bfe_softc* %132)
  %134 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %135 = call i32 @BFE_UNLOCK(%struct.bfe_softc* %134)
  %136 = load i32, i32* %2, align 4
  %137 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %138 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %137, i32 0, i32 4
  %139 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %140 = load i32, i32* @bfe_ifmedia_upd, align 4
  %141 = load i32, i32* @bfe_ifmedia_sts, align 4
  %142 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %143 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %144 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MII_OFFSET_ANY, align 4
  %147 = call i32 @mii_attach(i32 %136, i32* %138, %struct.ifnet* %139, i32 %140, i32 %141, i32 %142, i32 %145, i32 %146, i32 0)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %91
  %151 = load i32, i32* %2, align 4
  %152 = call i32 @device_printf(i32 %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %189

153:                                              ; preds = %91
  %154 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %155 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %156 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ether_ifattach(%struct.ifnet* %154, i32 %157)
  %159 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %160 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %159, i32 0, i32 1
  store i32 4, i32* %160, align 4
  %161 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %162 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %167 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %168 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load i32, i32* %2, align 4
  %172 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %173 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* @INTR_TYPE_NET, align 4
  %176 = load i32, i32* @INTR_MPSAFE, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @bfe_intr, align 4
  %179 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %180 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %181 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %180, i32 0, i32 0
  %182 = call i32 @bus_setup_intr(i32 %171, i32* %174, i32 %177, i32* null, i32 %178, %struct.bfe_softc* %179, i32* %181)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %153
  %186 = load i32, i32* %2, align 4
  %187 = call i32 @device_printf(i32 %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %189

188:                                              ; preds = %153
  br label %189

189:                                              ; preds = %188, %185, %150, %87, %64, %56, %38
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %2, align 4
  %194 = call i32 @bfe_detach(i32 %193)
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local %struct.bfe_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bfe_dma_alloc(%struct.bfe_softc*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.bfe_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #1

declare dso_local i32 @bfe_get_config(%struct.bfe_softc*) #1

declare dso_local i32 @BFE_LOCK(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_chip_reset(%struct.bfe_softc*) #1

declare dso_local i32 @BFE_UNLOCK(%struct.bfe_softc*) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.bfe_softc*, i32*) #1

declare dso_local i32 @bfe_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
