; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_type = type { i32, i64, i32* }
%struct.ifnet = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.rl_softc* }
%struct.TYPE_3__ = type { i32 }
%struct.rl_softc = type { i32, i32, i64, i32, i32*, i32**, i32, %struct.ifnet*, i32, i32, i32, i32, i64, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dev.rl.%d.twister_enable\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"twister_enable\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"dev.rl.%d.prefer_iomap\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"couldn't map ports/memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@RL_8139_CFG0 = common dso_local global i32 0, align 4
@RL_8139_CFG1 = common dso_local global i32 0, align 4
@RL_8139_CFG3 = common dso_local global i32 0, align 4
@RL_8139_CFG4 = common dso_local global i32 0, align 4
@RL_8139_CFG5 = common dso_local global i32 0, align 4
@RL_EECMD_READ_6BIT = common dso_local global i32 0, align 4
@RL_EECMD_READ_8BIT = common dso_local global i32 0, align 4
@RL_EE_EADDR = common dso_local global i32 0, align 4
@RL_EE_PCI_DID = common dso_local global i32 0, align 4
@rl_devs = common dso_local global %struct.rl_type* null, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"unknown device ID: %x assuming 8139\0A\00", align 1
@RL_8139 = common dso_local global i64 0, align 8
@RL_IDR0 = common dso_local global i64 0, align 8
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@rl_ifmedia_upd = common dso_local global i32 0, align 4
@rl_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@ETHERMTU = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@rl_ioctl = common dso_local global i32 0, align 4
@rl_start = common dso_local global i32 0, align 4
@rl_init = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@RL_TXCFG = common dso_local global i32 0, align 4
@RL_TXCFG_HWREV = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@rl_intr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@RL_PHYAD_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.rl_softc*, align 8
  %8 = alloca %struct.rl_type*, align 8
  %9 = alloca %struct.sysctl_ctx_list*, align 8
  %10 = alloca %struct.sysctl_oid_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [32 x i8], align 16
  store i32 %0, i32* %2, align 4
  %21 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %3, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %19, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call %struct.rl_softc* @device_get_softc(i32 %25)
  store %struct.rl_softc* %26, %struct.rl_softc** %7, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @device_get_unit(i32 %27)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %31 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %33 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %35 = load i32, i32* %18, align 4
  %36 = call i32 @snprintf(i8* %34, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %38 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %39 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %38, i32 0, i32 0
  %40 = call i32 @TUNABLE_INT_FETCH(i8* %37, i32* %39)
  %41 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %42 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %43)
  store %struct.sysctl_ctx_list* %44, %struct.sysctl_ctx_list** %9, align 8
  %45 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %46 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @device_get_sysctl_tree(i32 %47)
  %49 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %48)
  store %struct.sysctl_oid_list* %49, %struct.sysctl_oid_list** %10, align 8
  %50 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %51 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %52 = load i32, i32* @OID_AUTO, align 4
  %53 = load i32, i32* @CTLFLAG_RD, align 4
  %54 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %55 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %54, i32 0, i32 0
  %56 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %50, %struct.sysctl_oid_list* %51, i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32* %55, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %58 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %57, i32 0, i32 19
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @device_get_nameunit(i32 %59)
  %61 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %62 = load i32, i32* @MTX_DEF, align 4
  %63 = call i32 @mtx_init(i32* %58, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %65 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %64, i32 0, i32 20
  %66 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %67 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %66, i32 0, i32 19
  %68 = call i32 @callout_init_mtx(i32* %65, i32* %67, i32 0)
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @pci_enable_busmaster(i32 %69)
  store i32 1, i32* %17, align 4
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @snprintf(i8* %71, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %75 = call i32 @TUNABLE_INT_FETCH(i8* %74, i32* %17)
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %1
  %79 = call i8* @PCIR_BAR(i32 0)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %82 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @SYS_RES_IOPORT, align 4
  %84 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %85 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %84, i32 0, i32 18
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %2, align 4
  %87 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %88 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %87, i32 0, i32 18
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %91 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %90, i32 0, i32 1
  %92 = load i32, i32* @RF_ACTIVE, align 4
  %93 = call i8* @bus_alloc_resource_any(i32 %86, i32 %89, i32* %91, i32 %92)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %96 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %95, i32 0, i32 15
  store i32* %94, i32** %96, align 8
  br label %97

97:                                               ; preds = %78, %1
  %98 = load i32, i32* %17, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %102 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %101, i32 0, i32 15
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %124

105:                                              ; preds = %100, %97
  %106 = call i8* @PCIR_BAR(i32 1)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %109 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @SYS_RES_MEMORY, align 4
  %111 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %112 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %111, i32 0, i32 18
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %2, align 4
  %114 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %115 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %114, i32 0, i32 18
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %118 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %117, i32 0, i32 1
  %119 = load i32, i32* @RF_ACTIVE, align 4
  %120 = call i8* @bus_alloc_resource_any(i32 %113, i32 %116, i32* %118, i32 %119)
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %123 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %122, i32 0, i32 15
  store i32* %121, i32** %123, align 8
  br label %124

124:                                              ; preds = %105, %100
  %125 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %126 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %125, i32 0, i32 15
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* %2, align 4
  %131 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* @ENXIO, align 4
  store i32 %132, i32* %11, align 4
  br label %445

133:                                              ; preds = %124
  %134 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %135 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %134, i32 0, i32 15
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @rman_get_bustag(i32* %136)
  %138 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %139 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %138, i32 0, i32 17
  store i32 %137, i32* %139, align 4
  %140 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %141 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %140, i32 0, i32 15
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @rman_get_bushandle(i32* %142)
  %144 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %145 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %144, i32 0, i32 16
  store i32 %143, i32* %145, align 8
  store i32 0, i32* %16, align 4
  %146 = load i32, i32* %2, align 4
  %147 = load i32, i32* @SYS_RES_IRQ, align 4
  %148 = load i32, i32* @RF_SHAREABLE, align 4
  %149 = load i32, i32* @RF_ACTIVE, align 4
  %150 = or i32 %148, %149
  %151 = call i8* @bus_alloc_resource_any(i32 %146, i32 %147, i32* %16, i32 %150)
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %154 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %153, i32 0, i32 5
  %155 = load i32**, i32*** %154, align 8
  %156 = getelementptr inbounds i32*, i32** %155, i64 0
  store i32* %152, i32** %156, align 8
  %157 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %158 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %157, i32 0, i32 5
  %159 = load i32**, i32*** %158, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 0
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %133
  %164 = load i32, i32* %2, align 4
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %166 = load i32, i32* @ENXIO, align 4
  store i32 %166, i32* %11, align 4
  br label %445

167:                                              ; preds = %133
  %168 = load i32, i32* @RL_8139_CFG0, align 4
  %169 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %170 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %169, i32 0, i32 14
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @RL_8139_CFG1, align 4
  %172 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %173 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %172, i32 0, i32 13
  store i32 %171, i32* %173, align 8
  %174 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %175 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %174, i32 0, i32 12
  store i64 0, i64* %175, align 8
  %176 = load i32, i32* @RL_8139_CFG3, align 4
  %177 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %178 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %177, i32 0, i32 11
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @RL_8139_CFG4, align 4
  %180 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %181 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %180, i32 0, i32 10
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @RL_8139_CFG5, align 4
  %183 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %184 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %183, i32 0, i32 9
  store i32 %182, i32* %184, align 4
  %185 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %186 = call i32 @RL_LOCK(%struct.rl_softc* %185)
  %187 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %188 = call i32 @rl_reset(%struct.rl_softc* %187)
  %189 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %190 = call i32 @RL_UNLOCK(%struct.rl_softc* %189)
  %191 = load i32, i32* @RL_EECMD_READ_6BIT, align 4
  %192 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %193 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %192, i32 0, i32 8
  store i32 %191, i32* %193, align 8
  %194 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %195 = call i32 @rl_read_eeprom(%struct.rl_softc* %194, i32* %19, i32 0, i32 1, i32 0)
  %196 = load i32, i32* %19, align 4
  %197 = icmp ne i32 %196, 33065
  br i1 %197, label %198, label %202

198:                                              ; preds = %167
  %199 = load i32, i32* @RL_EECMD_READ_8BIT, align 4
  %200 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %201 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %200, i32 0, i32 8
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %198, %167
  %203 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %204 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %205 = load i32, i32* @RL_EE_EADDR, align 4
  %206 = call i32 @rl_read_eeprom(%struct.rl_softc* %203, i32* %204, i32 %205, i32 3, i32 0)
  store i32 0, i32* %13, align 4
  br label %207

207:                                              ; preds = %231, %202
  %208 = load i32, i32* %13, align 4
  %209 = icmp slt i32 %208, 3
  br i1 %209, label %210, label %234

210:                                              ; preds = %207
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 255
  %216 = load i32, i32* %13, align 4
  %217 = mul nsw i32 %216, 2
  %218 = add nsw i32 %217, 0
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %24, i64 %219
  store i32 %215, i32* %220, align 4
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = ashr i32 %224, 8
  %226 = load i32, i32* %13, align 4
  %227 = mul nsw i32 %226, 2
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %24, i64 %229
  store i32 %225, i32* %230, align 4
  br label %231

231:                                              ; preds = %210
  %232 = load i32, i32* %13, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %13, align 4
  br label %207

234:                                              ; preds = %207
  %235 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %236 = load i32, i32* @RL_EE_PCI_DID, align 4
  %237 = call i32 @rl_read_eeprom(%struct.rl_softc* %235, i32* %19, i32 %236, i32 1, i32 0)
  %238 = load %struct.rl_type*, %struct.rl_type** @rl_devs, align 8
  store %struct.rl_type* %238, %struct.rl_type** %8, align 8
  %239 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %240 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %239, i32 0, i32 2
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %258, %234
  %242 = load %struct.rl_type*, %struct.rl_type** %8, align 8
  %243 = getelementptr inbounds %struct.rl_type, %struct.rl_type* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %261

246:                                              ; preds = %241
  %247 = load i32, i32* %19, align 4
  %248 = load %struct.rl_type*, %struct.rl_type** %8, align 8
  %249 = getelementptr inbounds %struct.rl_type, %struct.rl_type* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %247, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %246
  %253 = load %struct.rl_type*, %struct.rl_type** %8, align 8
  %254 = getelementptr inbounds %struct.rl_type, %struct.rl_type* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %257 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %256, i32 0, i32 2
  store i64 %255, i64* %257, align 8
  br label %261

258:                                              ; preds = %246
  %259 = load %struct.rl_type*, %struct.rl_type** %8, align 8
  %260 = getelementptr inbounds %struct.rl_type, %struct.rl_type* %259, i32 1
  store %struct.rl_type* %260, %struct.rl_type** %8, align 8
  br label %241

261:                                              ; preds = %252, %241
  %262 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %263 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %291

266:                                              ; preds = %261
  %267 = load i32, i32* %2, align 4
  %268 = load i32, i32* %19, align 4
  %269 = call i32 (i32, i8*, ...) @device_printf(i32 %267, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %268)
  %270 = load i64, i64* @RL_8139, align 8
  %271 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %272 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %271, i32 0, i32 2
  store i64 %270, i64* %272, align 8
  store i32 0, i32* %13, align 4
  br label %273

273:                                              ; preds = %287, %266
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %273
  %278 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %279 = load i64, i64* @RL_IDR0, align 8
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %279, %281
  %283 = call i32 @CSR_READ_1(%struct.rl_softc* %278, i64 %282)
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %24, i64 %285
  store i32 %283, i32* %286, align 4
  br label %287

287:                                              ; preds = %277
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %13, align 4
  br label %273

290:                                              ; preds = %273
  br label %291

291:                                              ; preds = %290, %261
  %292 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %293 = call i32 @rl_dma_alloc(%struct.rl_softc* %292)
  store i32 %293, i32* %11, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  br label %445

296:                                              ; preds = %291
  %297 = load i32, i32* @IFT_ETHER, align 4
  %298 = call %struct.ifnet* @if_alloc(i32 %297)
  %299 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %300 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %299, i32 0, i32 7
  store %struct.ifnet* %298, %struct.ifnet** %300, align 8
  store %struct.ifnet* %298, %struct.ifnet** %6, align 8
  %301 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %302 = icmp eq %struct.ifnet* %301, null
  br i1 %302, label %303, label %307

303:                                              ; preds = %296
  %304 = load i32, i32* %2, align 4
  %305 = call i32 (i32, i8*, ...) @device_printf(i32 %304, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %306 = load i32, i32* @ENOSPC, align 4
  store i32 %306, i32* %11, align 4
  br label %445

307:                                              ; preds = %296
  %308 = load i32, i32* @MII_PHY_ANY, align 4
  store i32 %308, i32* %14, align 4
  %309 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %310 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @RL_8139, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %307
  store i32 0, i32* %14, align 4
  br label %315

315:                                              ; preds = %314, %307
  %316 = load i32, i32* %2, align 4
  %317 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %318 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %317, i32 0, i32 6
  %319 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %320 = load i32, i32* @rl_ifmedia_upd, align 4
  %321 = load i32, i32* @rl_ifmedia_sts, align 4
  %322 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %323 = load i32, i32* %14, align 4
  %324 = load i32, i32* @MII_OFFSET_ANY, align 4
  %325 = call i32 @mii_attach(i32 %316, i32* %318, %struct.ifnet* %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324, i32 0)
  store i32 %325, i32* %11, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %315
  %329 = load i32, i32* %2, align 4
  %330 = call i32 (i32, i8*, ...) @device_printf(i32 %329, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %445

331:                                              ; preds = %315
  %332 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %333 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %334 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %333, i32 0, i32 8
  store %struct.rl_softc* %332, %struct.rl_softc** %334, align 8
  %335 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %336 = load i32, i32* %2, align 4
  %337 = call i32 @device_get_name(i32 %336)
  %338 = load i32, i32* %2, align 4
  %339 = call i32 @device_get_unit(i32 %338)
  %340 = call i32 @if_initname(%struct.ifnet* %335, i32 %337, i32 %339)
  %341 = load i32, i32* @ETHERMTU, align 4
  %342 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %343 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %342, i32 0, i32 7
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* @IFF_BROADCAST, align 4
  %345 = load i32, i32* @IFF_SIMPLEX, align 4
  %346 = or i32 %344, %345
  %347 = load i32, i32* @IFF_MULTICAST, align 4
  %348 = or i32 %346, %347
  %349 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %350 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %349, i32 0, i32 0
  store i32 %348, i32* %350, align 8
  %351 = load i32, i32* @rl_ioctl, align 4
  %352 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %353 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %352, i32 0, i32 6
  store i32 %351, i32* %353, align 8
  %354 = load i32, i32* @rl_start, align 4
  %355 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %356 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %355, i32 0, i32 5
  store i32 %354, i32* %356, align 4
  %357 = load i32, i32* @rl_init, align 4
  %358 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %359 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %358, i32 0, i32 4
  store i32 %357, i32* %359, align 8
  %360 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %361 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %362 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %361, i32 0, i32 1
  store i32 %360, i32* %362, align 4
  %363 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %364 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @RL_8139, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %392

368:                                              ; preds = %331
  %369 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %370 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @PCIY_PMG, align 4
  %373 = call i64 @pci_find_cap(i32 %371, i32 %372, i32* %15)
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %392

375:                                              ; preds = %368
  %376 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %377 = load i32, i32* @RL_TXCFG, align 4
  %378 = call i32 @CSR_READ_4(%struct.rl_softc* %376, i32 %377)
  %379 = load i32, i32* @RL_TXCFG_HWREV, align 4
  %380 = and i32 %378, %379
  store i32 %380, i32* %12, align 4
  %381 = load i32, i32* %12, align 4
  switch i32 %381, label %390 [
    i32 130, label %382
    i32 131, label %382
    i32 129, label %382
    i32 128, label %382
    i32 132, label %382
    i32 133, label %382
  ]

382:                                              ; preds = %375, %375, %375, %375, %375, %375
  %383 = load i32, i32* @IFCAP_WOL, align 4
  %384 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %385 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = or i32 %386, %383
  store i32 %387, i32* %385, align 4
  %388 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %389 = call i32 @rl_clrwol(%struct.rl_softc* %388)
  br label %391

390:                                              ; preds = %375
  br label %391

391:                                              ; preds = %390, %382
  br label %392

392:                                              ; preds = %391, %368, %331
  %393 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %394 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %397 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %396, i32 0, i32 2
  store i32 %395, i32* %397, align 8
  %398 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %399 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %400 = or i32 %398, %399
  %401 = xor i32 %400, -1
  %402 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %403 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = and i32 %404, %401
  store i32 %405, i32* %403, align 8
  %406 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %407 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %406, i32 0, i32 3
  %408 = load i32, i32* @ifqmaxlen, align 4
  %409 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %407, i32 %408)
  %410 = load i32, i32* @ifqmaxlen, align 4
  %411 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %412 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 0
  store i32 %410, i32* %413, align 4
  %414 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %415 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %414, i32 0, i32 3
  %416 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %415)
  %417 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %418 = call i32 @ether_ifattach(%struct.ifnet* %417, i32* %24)
  %419 = load i32, i32* %2, align 4
  %420 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %421 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %420, i32 0, i32 5
  %422 = load i32**, i32*** %421, align 8
  %423 = getelementptr inbounds i32*, i32** %422, i64 0
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* @INTR_TYPE_NET, align 4
  %426 = load i32, i32* @INTR_MPSAFE, align 4
  %427 = or i32 %425, %426
  %428 = load i32, i32* @rl_intr, align 4
  %429 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %430 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %431 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %430, i32 0, i32 4
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 0
  %434 = call i32 @bus_setup_intr(i32 %419, i32* %424, i32 %427, i32* null, i32 %428, %struct.rl_softc* %429, i32* %433)
  store i32 %434, i32* %11, align 4
  %435 = load i32, i32* %11, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %444

437:                                              ; preds = %392
  %438 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %439 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 8
  %441 = call i32 (i32, i8*, ...) @device_printf(i32 %440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %442 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %443 = call i32 @ether_ifdetach(%struct.ifnet* %442)
  br label %444

444:                                              ; preds = %437, %392
  br label %445

445:                                              ; preds = %444, %328, %303, %295, %163, %129
  %446 = load i32, i32* %11, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load i32, i32* %2, align 4
  %450 = call i32 @rl_detach(i32 %449)
  br label %451

451:                                              ; preds = %448, %445
  %452 = load i32, i32* %11, align 4
  %453 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %453)
  ret i32 %452
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.rl_softc* @device_get_softc(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #2

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #2

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #2

declare dso_local i32 @device_get_sysctl_tree(i32) #2

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i8* @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @rman_get_bustag(i32*) #2

declare dso_local i32 @rman_get_bushandle(i32*) #2

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #2

declare dso_local i32 @rl_reset(%struct.rl_softc*) #2

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #2

declare dso_local i32 @rl_read_eeprom(%struct.rl_softc*, i32*, i32, i32, i32) #2

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i64) #2

declare dso_local i32 @rl_dma_alloc(%struct.rl_softc*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #2

declare dso_local i32 @CSR_READ_4(%struct.rl_softc*, i32) #2

declare dso_local i32 @rl_clrwol(%struct.rl_softc*) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.rl_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @rl_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
