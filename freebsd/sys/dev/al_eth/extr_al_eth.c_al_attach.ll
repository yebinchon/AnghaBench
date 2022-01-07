; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i64, i32, i64, i64, i32*, i32*, i32*, i32, i8*, i32, %struct.ifnet*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.al_eth_adapter*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@g_adapters_count = common dso_local global i64 0, align 8
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"napi\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@napi = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Use pseudo-napi mechanism\00", align 1
@ALPINE_INTEGRATED = common dso_local global i64 0, align 8
@AL_ETH_NAME_MAX_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@g_adapters = common dso_local global %struct.al_eth_adapter** null, align 8
@AL_ETH_UDMA_BAR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"could not allocate memory resources for DMA.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AL_ETH_MAC_BAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"could not allocate memory resources for MAC.\0A\00", align 1
@AL_ETH_EC_BAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"could not allocate memory resources for EC.\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@al_mq_start = common dso_local global i32 0, align 4
@al_qflush = common dso_local global i32 0, align 4
@al_ioctl = common dso_local global i32 0, align 4
@al_init = common dso_local global i32 0, align 4
@al_get_counter = common dso_local global i32 0, align 4
@AL_DEFAULT_MTU = common dso_local global i8* null, align 8
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_HWCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_REVID = common dso_local global i32 0, align 4
@AL_ETH_DEFAULT_TX_SW_DESCS = common dso_local global i32 0, align 4
@AL_ETH_DEFAULT_TX_HW_DESCS = common dso_local global i32 0, align 4
@AL_ETH_DEFAULT_RX_DESCS = common dso_local global i8* null, align 8
@AL_ETH_NUM_QUEUES = common dso_local global i8* null, align 8
@AL_ETH_DEFAULT_SMALL_PACKET_LEN = common dso_local global i32 0, align 4
@AL_ETH_DEFAULT_LINK_POLL_INTERVAL = common dso_local global i32 0, align 4
@AL_ETH_DEFAULT_MAX_RX_BUFF_ALLOC_SIZE = common dso_local global i32 0, align 4
@AL_ETH_DEFAULT_FORCE_1000_BASEX = common dso_local global i32 0, align 4
@AL_ETH_MAC_MODE_10GbE_Serial = common dso_local global i64 0, align 8
@IFM_IMASK = common dso_local global i32 0, align 4
@al_media_update = common dso_local global i32 0, align 4
@al_media_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_1000_LX = common dso_local global i32 0, align 4
@IFM_10G_LR = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"AlStatsMtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"AlWdMtx\00", align 1
@AL_ETH_MAC_MODE_RGMII = common dso_local global i64 0, align 8
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @al_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_eth_adapter*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %14, align 4
  store %struct.ifnet* null, %struct.ifnet** %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %9, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %15)
  store %struct.sysctl_ctx_list* %16, %struct.sysctl_ctx_list** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_sysctl_tree(i32 %17)
  %19 = call %struct.sysctl_oid* @SYSCTL_PARENT(i32 %18)
  store %struct.sysctl_oid* %19, %struct.sysctl_oid** %7, align 8
  %20 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %21 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %20)
  store %struct.sysctl_oid_list* %21, %struct.sysctl_oid_list** %5, align 8
  %22 = load i64, i64* @g_adapters_count, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %26 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %27 = load i32, i32* @OID_AUTO, align 4
  %28 = load i32, i32* @CTLFLAG_RW, align 4
  %29 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %25, %struct.sysctl_oid_list* %26, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28, i32* @napi, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %24, %1
  %31 = load i32, i32* %3, align 4
  %32 = call i8* @device_get_softc(i32 %31)
  %33 = bitcast i8* %32 to %struct.al_eth_adapter*
  store %struct.al_eth_adapter* %33, %struct.al_eth_adapter** %4, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* @ALPINE_INTEGRATED, align 8
  %38 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %40, i32 0, i32 33
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AL_ETH_NAME_MAX_LEN, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i8* @device_get_nameunit(i32 %44)
  %46 = call i32 @snprintf(i32 %42, i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %48 = call i32 @AL_RX_LOCK_INIT(%struct.al_eth_adapter* %47)
  %49 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %50 = load %struct.al_eth_adapter**, %struct.al_eth_adapter*** @g_adapters, align 8
  %51 = load i64, i64* @g_adapters_count, align 8
  %52 = getelementptr inbounds %struct.al_eth_adapter*, %struct.al_eth_adapter** %50, i64 %51
  store %struct.al_eth_adapter* %49, %struct.al_eth_adapter** %52, align 8
  %53 = load i32, i32* @AL_ETH_UDMA_BAR, align 4
  %54 = call i32 @PCIR_BAR(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @SYS_RES_MEMORY, align 4
  %57 = load i32, i32* @RF_ACTIVE, align 4
  %58 = call i8* @bus_alloc_resource_any(i32 %55, i32 %56, i32* %11, i32 %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %60, i32 0, i32 4
  store i32* %59, i32** %61, align 8
  %62 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %30
  %67 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %14, align 4
  br label %449

72:                                               ; preds = %30
  %73 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @rman_get_bustag(i32* %75)
  %77 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @rman_get_bushandle(i32* %79)
  %81 = call i8* @al_bus_dma_to_va(i32 %76, i32 %80)
  %82 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %82, i32 0, i32 32
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @AL_ETH_MAC_BAR, align 4
  %85 = call i32 @PCIR_BAR(i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @SYS_RES_MEMORY, align 4
  %88 = load i32, i32* @RF_ACTIVE, align 4
  %89 = call i8* @bus_alloc_resource_any(i32 %86, i32 %87, i32* %12, i32 %88)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %91, i32 0, i32 5
  store i32* %90, i32** %92, align 8
  %93 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %72
  %98 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %99 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %14, align 4
  br label %441

103:                                              ; preds = %72
  %104 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @rman_get_bustag(i32* %106)
  %108 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @rman_get_bushandle(i32* %110)
  %112 = call i8* @al_bus_dma_to_va(i32 %107, i32 %111)
  %113 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %114 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %113, i32 0, i32 31
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @AL_ETH_EC_BAR, align 4
  %116 = call i32 @PCIR_BAR(i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @SYS_RES_MEMORY, align 4
  %119 = load i32, i32* @RF_ACTIVE, align 4
  %120 = call i8* @bus_alloc_resource_any(i32 %117, i32 %118, i32* %13, i32 %119)
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %123 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %122, i32 0, i32 6
  store i32* %121, i32** %123, align 8
  %124 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %125 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %103
  %129 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %130 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @device_printf(i32 %131, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* @ENOMEM, align 4
  store i32 %133, i32* %14, align 4
  br label %433

134:                                              ; preds = %103
  %135 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %136 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @rman_get_bustag(i32* %137)
  %139 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %140 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %139, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @rman_get_bushandle(i32* %141)
  %143 = call i8* @al_bus_dma_to_va(i32 %138, i32 %142)
  %144 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %145 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %144, i32 0, i32 30
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* @IFT_ETHER, align 4
  %147 = call %struct.ifnet* @if_alloc(i32 %146)
  store %struct.ifnet* %147, %struct.ifnet** %8, align 8
  %148 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %149 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %148, i32 0, i32 10
  store %struct.ifnet* %147, %struct.ifnet** %149, align 8
  %150 = load i32, i32* @LINK_STATE_DOWN, align 4
  %151 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %152 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %151, i32 0, i32 10
  %153 = load %struct.ifnet*, %struct.ifnet** %152, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 11
  store i32 %150, i32* %154, align 8
  %155 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %156 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %157 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %156, i32 0, i32 10
  store %struct.al_eth_adapter* %155, %struct.al_eth_adapter** %157, align 8
  %158 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @device_get_name(i32 %159)
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @device_get_unit(i32 %161)
  %163 = call i32 @if_initname(%struct.ifnet* %158, i32 %160, i32 %162)
  %164 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %165 = xor i32 %164, -1
  %166 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %167 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, %165
  store i32 %169, i32* %167, align 8
  %170 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @IFF_BROADCAST, align 4
  %176 = load i32, i32* @IFF_SIMPLEX, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @IFF_MULTICAST, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @IFF_ALLMULTI, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %183 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* @al_mq_start, align 4
  %187 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %188 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %187, i32 0, i32 9
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @al_qflush, align 4
  %190 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %191 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @al_ioctl, align 4
  %193 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %194 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %193, i32 0, i32 7
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* @al_init, align 4
  %196 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %197 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @al_get_counter, align 4
  %199 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %200 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 8
  %201 = load i8*, i8** @AL_DEFAULT_MTU, align 8
  %202 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %203 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %202, i32 0, i32 4
  store i8* %201, i8** %203, align 8
  %204 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %205 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %208 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 8
  %209 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 3
  store i32 0, i32* %210, align 4
  %211 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %212 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %211, i32 0, i32 2
  store i32 0, i32* %212, align 8
  %213 = load i32, i32* @IFCAP_HWCSUM, align 4
  %214 = load i32, i32* @IFCAP_HWCSUM_IPV6, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @IFCAP_TSO, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @IFCAP_LRO, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %221 = or i32 %219, %220
  %222 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %223 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  %226 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %227 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %230 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  %231 = load i64, i64* @g_adapters_count, align 8
  %232 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %233 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %232, i32 0, i32 2
  store i64 %231, i64* %233, align 8
  %234 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %235 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @ALPINE_INTEGRATED, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %248

239:                                              ; preds = %134
  %240 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %241 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 8
  %243 = call i8* @pci_get_device(i32 %242)
  store i8* %243, i8** %9, align 8
  %244 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %245 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = call i8* @pci_get_revid(i32 %246)
  store i8* %247, i8** %10, align 8
  br label %259

248:                                              ; preds = %134
  %249 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %250 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %249, i32 0, i32 29
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @PCIR_DEVICE, align 4
  %253 = call i32 @al_eth_fpga_read_pci_config(i32 %251, i32 %252, i8** %9)
  %254 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %255 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %254, i32 0, i32 29
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @PCIR_REVID, align 4
  %258 = call i32 @al_eth_fpga_read_pci_config(i32 %256, i32 %257, i8** %10)
  br label %259

259:                                              ; preds = %248, %239
  %260 = load i8*, i8** %9, align 8
  %261 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %262 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %261, i32 0, i32 28
  store i8* %260, i8** %262, align 8
  %263 = load i8*, i8** %10, align 8
  %264 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %265 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %264, i32 0, i32 27
  store i8* %263, i8** %265, align 8
  %266 = load i32, i32* @AL_ETH_DEFAULT_TX_SW_DESCS, align 4
  %267 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %268 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %267, i32 0, i32 26
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* @AL_ETH_DEFAULT_TX_HW_DESCS, align 4
  %270 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %271 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %270, i32 0, i32 25
  store i32 %269, i32* %271, align 8
  %272 = load i8*, i8** @AL_ETH_DEFAULT_RX_DESCS, align 8
  %273 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %274 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %273, i32 0, i32 24
  store i8* %272, i8** %274, align 8
  %275 = load i8*, i8** @AL_ETH_DEFAULT_RX_DESCS, align 8
  %276 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %277 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %276, i32 0, i32 23
  store i8* %275, i8** %277, align 8
  %278 = load i8*, i8** @AL_ETH_NUM_QUEUES, align 8
  %279 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %280 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %279, i32 0, i32 22
  store i8* %278, i8** %280, align 8
  %281 = load i8*, i8** @AL_ETH_NUM_QUEUES, align 8
  %282 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %283 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %282, i32 0, i32 21
  store i8* %281, i8** %283, align 8
  %284 = load i32, i32* @AL_ETH_DEFAULT_SMALL_PACKET_LEN, align 4
  %285 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %286 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %285, i32 0, i32 20
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* @AL_ETH_DEFAULT_LINK_POLL_INTERVAL, align 4
  %288 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %289 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %288, i32 0, i32 19
  store i32 %287, i32* %289, align 8
  %290 = load i32, i32* @AL_ETH_DEFAULT_MAX_RX_BUFF_ALLOC_SIZE, align 4
  %291 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %292 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %291, i32 0, i32 18
  store i32 %290, i32* %292, align 4
  %293 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %294 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %295 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %294, i32 0, i32 10
  %296 = load %struct.ifnet*, %struct.ifnet** %295, align 8
  %297 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %296, i32 0, i32 4
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @al_eth_req_rx_buff_size(%struct.al_eth_adapter* %293, i8* %298)
  %300 = load i32, i32* @AL_ETH_DEFAULT_FORCE_1000_BASEX, align 4
  %301 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %302 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %301, i32 0, i32 17
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 0
  store i32 %300, i32* %303, align 8
  %304 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %305 = call i32 @al_eth_board_params_init(%struct.al_eth_adapter* %304)
  store i32 %305, i32* %14, align 4
  %306 = load i32, i32* %14, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %259
  br label %425

309:                                              ; preds = %259
  %310 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %311 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @AL_ETH_MAC_MODE_10GbE_Serial, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %346

315:                                              ; preds = %309
  %316 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %317 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %316, i32 0, i32 16
  %318 = load i32, i32* @IFM_IMASK, align 4
  %319 = load i32, i32* @al_media_update, align 4
  %320 = load i32, i32* @al_media_status, align 4
  %321 = call i32 @ifmedia_init(i32* %317, i32 %318, i32 %319, i32 %320)
  %322 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %323 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %322, i32 0, i32 16
  %324 = load i32, i32* @IFM_ETHER, align 4
  %325 = load i32, i32* @IFM_1000_LX, align 4
  %326 = or i32 %324, %325
  %327 = call i32 @ifmedia_add(i32* %323, i32 %326, i32 0, i32* null)
  %328 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %329 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %328, i32 0, i32 16
  %330 = load i32, i32* @IFM_ETHER, align 4
  %331 = load i32, i32* @IFM_10G_LR, align 4
  %332 = or i32 %330, %331
  %333 = call i32 @ifmedia_add(i32* %329, i32 %332, i32 0, i32* null)
  %334 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %335 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %334, i32 0, i32 16
  %336 = load i32, i32* @IFM_ETHER, align 4
  %337 = load i32, i32* @IFM_AUTO, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @ifmedia_add(i32* %335, i32 %338, i32 0, i32* null)
  %340 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %341 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %340, i32 0, i32 16
  %342 = load i32, i32* @IFM_ETHER, align 4
  %343 = load i32, i32* @IFM_AUTO, align 4
  %344 = or i32 %342, %343
  %345 = call i32 @ifmedia_set(i32* %341, i32 %344)
  br label %346

346:                                              ; preds = %315, %309
  %347 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %348 = call i32 @al_eth_function_reset(%struct.al_eth_adapter* %347)
  %349 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %350 = call i32 @al_eth_hw_init_adapter(%struct.al_eth_adapter* %349)
  store i32 %350, i32* %14, align 4
  %351 = load i32, i32* %14, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %346
  br label %425

354:                                              ; preds = %346
  %355 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %356 = call i32 @al_eth_init_rings(%struct.al_eth_adapter* %355)
  %357 = load i64, i64* @g_adapters_count, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* @g_adapters_count, align 8
  %359 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %360 = call i32 @al_eth_lm_config(%struct.al_eth_adapter* %359)
  %361 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %362 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %361, i32 0, i32 14
  %363 = load i32, i32* @MTX_DEF, align 4
  %364 = call i32 @mtx_init(i32* %362, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %363)
  %365 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %366 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %365, i32 0, i32 12
  %367 = load i32, i32* @MTX_DEF, align 4
  %368 = call i32 @mtx_init(i32* %366, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %367)
  %369 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %370 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %369, i32 0, i32 15
  %371 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %372 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %371, i32 0, i32 14
  %373 = call i32 @callout_init_mtx(i32* %370, i32* %372, i32 0)
  %374 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %375 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %374, i32 0, i32 13
  %376 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %377 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %376, i32 0, i32 12
  %378 = call i32 @callout_init_mtx(i32* %375, i32* %377, i32 0)
  %379 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %380 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %381 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %380, i32 0, i32 11
  %382 = load i32, i32* %381, align 8
  %383 = call i32 @ether_ifattach(%struct.ifnet* %379, i32 %382)
  %384 = load i8*, i8** @AL_DEFAULT_MTU, align 8
  %385 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %386 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %385, i32 0, i32 4
  store i8* %384, i8** %386, align 8
  %387 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %388 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @AL_ETH_MAC_MODE_RGMII, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %423

392:                                              ; preds = %354
  %393 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %394 = call i32 @al_eth_hw_init(%struct.al_eth_adapter* %393)
  %395 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %396 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %395, i32 0, i32 9
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %399 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %398, i32 0, i32 7
  %400 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %401 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %400, i32 0, i32 10
  %402 = load %struct.ifnet*, %struct.ifnet** %401, align 8
  %403 = load i32, i32* @al_media_update, align 4
  %404 = load i32, i32* @al_media_status, align 4
  %405 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %406 = load i32, i32* @MII_OFFSET_ANY, align 4
  %407 = call i32 @mii_attach(i32 %397, i32* %399, %struct.ifnet* %402, i32 %403, i32 %404, i32 %405, i32 0, i32 %406, i32 0)
  store i32 %407, i32* %14, align 4
  %408 = load i32, i32* %14, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %416

410:                                              ; preds = %392
  %411 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %412 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %411, i32 0, i32 9
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @device_printf(i32 %413, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %415 = load i32, i32* %14, align 4
  store i32 %415, i32* %2, align 4
  br label %451

416:                                              ; preds = %392
  %417 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %418 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 8
  %420 = call i8* @device_get_softc(i32 %419)
  %421 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %422 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %421, i32 0, i32 8
  store i8* %420, i8** %422, align 8
  br label %423

423:                                              ; preds = %416, %354
  %424 = load i32, i32* %14, align 4
  store i32 %424, i32* %2, align 4
  br label %451

425:                                              ; preds = %353, %308
  %426 = load i32, i32* %3, align 4
  %427 = load i32, i32* @SYS_RES_MEMORY, align 4
  %428 = load i32, i32* %13, align 4
  %429 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %430 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %429, i32 0, i32 6
  %431 = load i32*, i32** %430, align 8
  %432 = call i32 @bus_release_resource(i32 %426, i32 %427, i32 %428, i32* %431)
  br label %433

433:                                              ; preds = %425, %128
  %434 = load i32, i32* %3, align 4
  %435 = load i32, i32* @SYS_RES_MEMORY, align 4
  %436 = load i32, i32* %12, align 4
  %437 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %438 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %437, i32 0, i32 5
  %439 = load i32*, i32** %438, align 8
  %440 = call i32 @bus_release_resource(i32 %434, i32 %435, i32 %436, i32* %439)
  br label %441

441:                                              ; preds = %433, %97
  %442 = load i32, i32* %3, align 4
  %443 = load i32, i32* @SYS_RES_MEMORY, align 4
  %444 = load i32, i32* %11, align 4
  %445 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %446 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %445, i32 0, i32 4
  %447 = load i32*, i32** %446, align 8
  %448 = call i32 @bus_release_resource(i32 %442, i32 %443, i32 %444, i32* %447)
  br label %449

449:                                              ; preds = %441, %66
  %450 = load i32, i32* %14, align 4
  store i32 %450, i32* %2, align 4
  br label %451

451:                                              ; preds = %449, %423, %410
  %452 = load i32, i32* %2, align 4
  ret i32 %452
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_PARENT(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @AL_RX_LOCK_INIT(%struct.al_eth_adapter*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @al_bus_dma_to_va(i32, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @pci_get_device(i32) #1

declare dso_local i8* @pci_get_revid(i32) #1

declare dso_local i32 @al_eth_fpga_read_pci_config(i32, i32, i8**) #1

declare dso_local i32 @al_eth_req_rx_buff_size(%struct.al_eth_adapter*, i8*) #1

declare dso_local i32 @al_eth_board_params_init(%struct.al_eth_adapter*) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @al_eth_function_reset(%struct.al_eth_adapter*) #1

declare dso_local i32 @al_eth_hw_init_adapter(%struct.al_eth_adapter*) #1

declare dso_local i32 @al_eth_init_rings(%struct.al_eth_adapter*) #1

declare dso_local i32 @al_eth_lm_config(%struct.al_eth_adapter*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @al_eth_hw_init(%struct.al_eth_adapter*) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
