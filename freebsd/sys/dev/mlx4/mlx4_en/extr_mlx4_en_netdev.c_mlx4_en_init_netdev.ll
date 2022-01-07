; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_init_netdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_init_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_dev = type { i32, %struct.TYPE_15__*, %struct.net_device**, i64, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32*, i32* }
%struct.net_device = type { i32, i32, i32, i32, i64, i32, i64, i64, i32*, %struct.TYPE_10__, i32, i32, i32, i32, %struct.mlx4_en_priv* }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i8*, i8*, i32, i32, i32, i32, %struct.mlx4_en_dev*, i64, i64, i64, i32, i8*, i8*, i32, i32, %struct.mlx4_en_port_profile*, %struct.TYPE_11__*, %struct.net_device*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.mlx4_en_port_profile = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Net device allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mlxen\00", align 1
@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i64 0, align 8
@mlx4_en_open = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@mlx4_en_ioctl = common dso_local global i32 0, align 4
@mlx4_en_transmit = common dso_local global i32 0, align 4
@mlx4_en_qflush = common dso_local global i32 0, align 4
@mlx4_en_do_set_rx_mode = common dso_local global i32 0, align 4
@mlx4_en_restart = common dso_local global i32 0, align 4
@mlx4_en_linkstate = common dso_local global i32 0, align 4
@mlx4_en_do_get_stats = common dso_local global i32 0, align 4
@mlx4_en_service_task = common dso_local global i32 0, align 4
@MLX4_EN_MSG_LEVEL = common dso_local global i32 0, align 4
@MAX_TX_RINGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_EN_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to allocate page for rx qps\0A\00", align 1
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_HWCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_HWSTATS = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@vlan_config = common dso_local global i32 0, align 4
@mlx4_en_vlan_rx_add_vid = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_FIRST = common dso_local global i32 0, align 4
@vlan_unconfig = common dso_local global i32 0, align 4
@mlx4_en_vlan_rx_kill_vid = common dso_local global i32 0, align 4
@MLX4_DEV_EVENT_PORT_DOWN = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@IFM_IMASK = common dso_local global i32 0, align 4
@IFM_ETH_FMASK = common dso_local global i32 0, align 4
@mlx4_en_media_change = common dso_local global i32 0, align 4
@mlx4_en_media_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_10G_CX4 = common dso_local global i32 0, align 4
@IFM_40G_CR4 = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@mlx4_en = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Using %d TX rings\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Using %d RX rings\0A\00", align 1
@ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [71 x i8] c"Failed setting port general configurations for port %d, with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Initializing port\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed Initializing port\0A\00", align 1
@STATS_DELAY = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@SERVICE_TASK_DELAY = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_HOST = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG2_ETS_CFG = common dso_local global i32 0, align 4
@MLX4_EN_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@MLX4_EN_TX_MAX_MBUF_FRAGS = common dso_local global i64 0, align 8
@MLX4_EN_TX_MAX_MBUF_SIZE = common dso_local global i32 0, align 4
@MLX4_EN_TX_MAX_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@mlx4_en_dcbnl_ops = common dso_local global i32 0, align 4
@mlx4_en_dcbnl_pfc_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_init_netdev(%struct.mlx4_en_dev* %0, i32 %1, %struct.mlx4_en_port_profile* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_port_profile*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mlx4_en_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_en_dev* %0, %struct.mlx4_en_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_en_port_profile* %2, %struct.mlx4_en_port_profile** %7, align 8
  %15 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mlx4_en_priv* @kzalloc(i32 208, i32 %19)
  store %struct.mlx4_en_priv* %20, %struct.mlx4_en_priv** %9, align 8
  %21 = load i32, i32* @IFT_ETHER, align 4
  %22 = call %struct.net_device* @if_alloc(i32 %21)
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %23, i32 0, i32 30
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  store %struct.net_device* %22, %struct.net_device** %8, align 8
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = icmp eq %struct.net_device* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %29 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %31 = call i32 @kfree(%struct.mlx4_en_priv* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %586

34:                                               ; preds = %3
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 14
  store %struct.mlx4_en_priv* %35, %struct.mlx4_en_priv** %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %39, i32 0, i32 5
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_get_unit(i32 %44)
  %46 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @if_initname(%struct.net_device* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* @ETHERMTU, align 8
  %53 = load %struct.net_device*, %struct.net_device** %8, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @mlx4_en_open, align 4
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 13
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @IFF_BROADCAST, align 4
  %59 = load i32, i32* @IFF_SIMPLEX, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IFF_MULTICAST, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.net_device*, %struct.net_device** %8, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @mlx4_en_ioctl, align 4
  %66 = load %struct.net_device*, %struct.net_device** %8, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @mlx4_en_transmit, align 4
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 11
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @mlx4_en_qflush, align 4
  %72 = load %struct.net_device*, %struct.net_device** %8, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 4
  %74 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.net_device*, %struct.net_device** %8, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 9
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %80, i32 0, i32 0
  store i32 255, i32* %81, align 8
  %82 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %82, i32 0, i32 38
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %85, i32 0, i32 37
  %87 = load i32, i32* @mlx4_en_do_set_rx_mode, align 4
  %88 = call i32 @INIT_WORK(i32* %86, i32 %87)
  %89 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %90 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %89, i32 0, i32 36
  %91 = load i32, i32* @mlx4_en_restart, align 4
  %92 = call i32 @INIT_WORK(i32* %90, i32 %91)
  %93 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %93, i32 0, i32 35
  %95 = load i32, i32* @mlx4_en_linkstate, align 4
  %96 = call i32 @INIT_WORK(i32* %94, i32 %95)
  %97 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %97, i32 0, i32 9
  %99 = load i32, i32* @mlx4_en_do_get_stats, align 4
  %100 = call i32 @INIT_DELAYED_WORK(i32* %98, i32 %99)
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %101, i32 0, i32 8
  %103 = load i32, i32* @mlx4_en_service_task, align 4
  %104 = call i32 @INIT_DELAYED_WORK(i32* %102, i32 %103)
  %105 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %106 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %105, i32 0, i32 34
  %107 = call i32 @callout_init(i32* %106, i32 1)
  %108 = load i32, i32* @MLX4_EN_MSG_LEVEL, align 4
  %109 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %110 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %109, i32 0, i32 31
  store i32 %108, i32* %110, align 8
  %111 = load %struct.net_device*, %struct.net_device** %8, align 8
  %112 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %113 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %112, i32 0, i32 30
  store %struct.net_device* %111, %struct.net_device** %113, align 8
  %114 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %115 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %116 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %115, i32 0, i32 19
  store %struct.mlx4_en_dev* %114, %struct.mlx4_en_dev** %116, align 8
  %117 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %118 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %117, i32 0, i32 5
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %122 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %121, i32 0, i32 29
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %122, align 8
  %123 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %124 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %125 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %124, i32 0, i32 28
  store %struct.mlx4_en_port_profile* %123, %struct.mlx4_en_port_profile** %125, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %128 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %130 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  %131 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %132 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %134, i32 0, i32 17
  store i32 %133, i32* %135, align 8
  %136 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %137 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %141 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %140, i32 0, i32 27
  store i32 %139, i32* %141, align 4
  %142 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %143 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %146 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %145, i32 0, i32 26
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @MAX_TX_RINGS, align 4
  %148 = load i32, i32* @GFP_KERNEL, align 4
  %149 = call i8* @kcalloc(i32 %147, i32 8, i32 %148)
  %150 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %151 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %150, i32 0, i32 25
  store i8* %149, i8** %151, align 8
  %152 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %153 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %152, i32 0, i32 25
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %34
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %12, align 4
  br label %582

159:                                              ; preds = %34
  %160 = load i32, i32* @MAX_TX_RINGS, align 4
  %161 = load i32, i32* @GFP_KERNEL, align 4
  %162 = call i8* @kcalloc(i32 8, i32 %160, i32 %161)
  %163 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %164 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %163, i32 0, i32 24
  store i8* %162, i8** %164, align 8
  %165 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %166 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %165, i32 0, i32 24
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %159
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %12, align 4
  br label %582

172:                                              ; preds = %159
  %173 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %174 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %177 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %176, i32 0, i32 23
  store i32 %175, i32* %177, align 8
  %178 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %179 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %178, i32 0, i32 1
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 64
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 1, i32 0
  %187 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %188 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %190 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %189, i32 0, i32 4
  store i32 -1, i32* %190, align 8
  %191 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %192 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %191, i32 0, i32 22
  store i64 0, i64* %192, align 8
  %193 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %194 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %193, i32 0, i32 21
  store i64 0, i64* %194, align 8
  %195 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %196 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %195, i32 0, i32 20
  store i64 0, i64* %196, align 8
  %197 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %198 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %197, i32 0, i32 1
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %204 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %210 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %209, i32 0, i32 16
  store i32 %208, i32* %210, align 4
  %211 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %212 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %211, i32 0, i32 1
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %218 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %224 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 4
  %225 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %226 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @ILLEGAL_MAC(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %172
  %231 = load i32, i32* @EINVAL, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %12, align 4
  br label %582

233:                                              ; preds = %172
  %234 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %235 = call i32 @mlx4_en_sysctl_conf(%struct.mlx4_en_priv* %234)
  %236 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %237 = call i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv* %236)
  store i32 %237, i32* %12, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  br label %582

241:                                              ; preds = %233
  %242 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %243 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %242, i32 0, i32 1
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %243, align 8
  %245 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %246 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %245, i32 0, i32 15
  %247 = load i32, i32* @MLX4_EN_PAGE_SIZE, align 4
  %248 = load i32, i32* @MLX4_EN_PAGE_SIZE, align 4
  %249 = call i32 @mlx4_alloc_hwq_res(%struct.TYPE_15__* %244, i32* %246, i32 %247, i32 %248)
  store i32 %249, i32* %12, align 4
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %241
  %253 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %254 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %253, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %582

255:                                              ; preds = %241
  %256 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %257 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %256, i32 0, i32 6
  store i32 1, i32* %257, align 8
  %258 = load i32, i32* @IFCAP_HWCSUM, align 4
  %259 = load i32, i32* @IFCAP_HWCSUM_IPV6, align 4
  %260 = or i32 %258, %259
  %261 = load %struct.net_device*, %struct.net_device** %8, align 8
  %262 = getelementptr inbounds %struct.net_device, %struct.net_device* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 4
  %265 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %266 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %267 = or i32 %265, %266
  %268 = load %struct.net_device*, %struct.net_device** %8, align 8
  %269 = getelementptr inbounds %struct.net_device, %struct.net_device* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 4
  %272 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %273 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %274 = or i32 %272, %273
  %275 = load %struct.net_device*, %struct.net_device** %8, align 8
  %276 = getelementptr inbounds %struct.net_device, %struct.net_device* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 4
  %279 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %280 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %281 = or i32 %279, %280
  %282 = load %struct.net_device*, %struct.net_device** %8, align 8
  %283 = getelementptr inbounds %struct.net_device, %struct.net_device* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 4
  %286 = load i32, i32* @IFCAP_LRO, align 4
  %287 = load %struct.net_device*, %struct.net_device** %8, align 8
  %288 = getelementptr inbounds %struct.net_device, %struct.net_device* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  %291 = load i32, i32* @IFCAP_HWSTATS, align 4
  %292 = load %struct.net_device*, %struct.net_device** %8, align 8
  %293 = getelementptr inbounds %struct.net_device, %struct.net_device* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %297 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %310

300:                                              ; preds = %255
  %301 = load i32, i32* @IFCAP_TSO4, align 4
  %302 = load i32, i32* @IFCAP_TSO6, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %305 = or i32 %303, %304
  %306 = load %struct.net_device*, %struct.net_device** %8, align 8
  %307 = getelementptr inbounds %struct.net_device, %struct.net_device* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %300, %255
  %311 = load %struct.net_device*, %struct.net_device** %8, align 8
  %312 = getelementptr inbounds %struct.net_device, %struct.net_device* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.net_device*, %struct.net_device** %8, align 8
  %315 = getelementptr inbounds %struct.net_device, %struct.net_device* %314, i32 0, i32 2
  store i32 %313, i32* %315, align 8
  %316 = load %struct.net_device*, %struct.net_device** %8, align 8
  %317 = getelementptr inbounds %struct.net_device, %struct.net_device* %316, i32 0, i32 3
  store i32 0, i32* %317, align 4
  %318 = load %struct.net_device*, %struct.net_device** %8, align 8
  %319 = getelementptr inbounds %struct.net_device, %struct.net_device* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @IFCAP_TSO4, align 4
  %322 = load i32, i32* @IFCAP_TSO6, align 4
  %323 = or i32 %321, %322
  %324 = and i32 %320, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %310
  %327 = load i32, i32* @CSUM_TSO, align 4
  %328 = load %struct.net_device*, %struct.net_device** %8, align 8
  %329 = getelementptr inbounds %struct.net_device, %struct.net_device* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 4
  br label %332

332:                                              ; preds = %326, %310
  %333 = load %struct.net_device*, %struct.net_device** %8, align 8
  %334 = getelementptr inbounds %struct.net_device, %struct.net_device* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @IFCAP_TXCSUM, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %349

339:                                              ; preds = %332
  %340 = load i32, i32* @CSUM_TCP, align 4
  %341 = load i32, i32* @CSUM_UDP, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* @CSUM_IP, align 4
  %344 = or i32 %342, %343
  %345 = load %struct.net_device*, %struct.net_device** %8, align 8
  %346 = getelementptr inbounds %struct.net_device, %struct.net_device* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = or i32 %347, %344
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %339, %332
  %350 = load %struct.net_device*, %struct.net_device** %8, align 8
  %351 = getelementptr inbounds %struct.net_device, %struct.net_device* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %349
  %357 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %358 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %359 = or i32 %357, %358
  %360 = load %struct.net_device*, %struct.net_device** %8, align 8
  %361 = getelementptr inbounds %struct.net_device, %struct.net_device* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %362, %359
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %356, %349
  %365 = load i32, i32* @vlan_config, align 4
  %366 = load i32, i32* @mlx4_en_vlan_rx_add_vid, align 4
  %367 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %368 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %369 = call i8* @EVENTHANDLER_REGISTER(i32 %365, i32 %366, %struct.mlx4_en_priv* %367, i32 %368)
  %370 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %371 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %370, i32 0, i32 14
  store i8* %369, i8** %371, align 8
  %372 = load i32, i32* @vlan_unconfig, align 4
  %373 = load i32, i32* @mlx4_en_vlan_rx_kill_vid, align 4
  %374 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %375 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %376 = call i8* @EVENTHANDLER_REGISTER(i32 %372, i32 %373, %struct.mlx4_en_priv* %374, i32 %375)
  %377 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %378 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %377, i32 0, i32 13
  store i8* %376, i8** %378, align 8
  %379 = load %struct.net_device*, %struct.net_device** %8, align 8
  %380 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %381 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %380, i32 0, i32 2
  %382 = load %struct.net_device**, %struct.net_device*** %381, align 8
  %383 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %384 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.net_device*, %struct.net_device** %382, i64 %386
  store %struct.net_device* %379, %struct.net_device** %387, align 8
  %388 = load i32, i32* @MLX4_DEV_EVENT_PORT_DOWN, align 4
  %389 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %390 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %389, i32 0, i32 12
  store i32 %388, i32* %390, align 4
  %391 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %392 = call i32 @mlx4_en_set_default_moderation(%struct.mlx4_en_priv* %391)
  store i32 0, i32* %13, align 4
  br label %393

393:                                              ; preds = %411, %364
  %394 = load i32, i32* %13, align 4
  %395 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %397, label %414

397:                                              ; preds = %393
  %398 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %399 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* %13, align 4
  %402 = mul nsw i32 8, %401
  %403 = ashr i32 %400, %402
  %404 = sext i32 %403 to i64
  %405 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %406 = sub nsw i32 %405, 1
  %407 = load i32, i32* %13, align 4
  %408 = sub nsw i32 %406, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i64, i64* %18, i64 %409
  store i64 %404, i64* %410, align 8
  br label %411

411:                                              ; preds = %397
  %412 = load i32, i32* %13, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %13, align 4
  br label %393

414:                                              ; preds = %393
  %415 = load %struct.net_device*, %struct.net_device** %8, align 8
  %416 = call i32 @ether_ifattach(%struct.net_device* %415, i64* %18)
  %417 = load %struct.net_device*, %struct.net_device** %8, align 8
  %418 = load i32, i32* @LINK_STATE_DOWN, align 4
  %419 = call i32 @if_link_state_change(%struct.net_device* %417, i32 %418)
  %420 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %421 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %420, i32 0, i32 11
  %422 = load i32, i32* @IFM_IMASK, align 4
  %423 = load i32, i32* @IFM_ETH_FMASK, align 4
  %424 = or i32 %422, %423
  %425 = load i32, i32* @mlx4_en_media_change, align 4
  %426 = load i32, i32* @mlx4_en_media_status, align 4
  %427 = call i32 @ifmedia_init(i32* %421, i32 %424, i32 %425, i32 %426)
  %428 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %429 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %428, i32 0, i32 11
  %430 = load i32, i32* @IFM_ETHER, align 4
  %431 = load i32, i32* @IFM_FDX, align 4
  %432 = or i32 %430, %431
  %433 = load i32, i32* @IFM_1000_T, align 4
  %434 = or i32 %432, %433
  %435 = call i32 @ifmedia_add(i32* %429, i32 %434, i32 0, i32* null)
  %436 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %437 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %436, i32 0, i32 11
  %438 = load i32, i32* @IFM_ETHER, align 4
  %439 = load i32, i32* @IFM_FDX, align 4
  %440 = or i32 %438, %439
  %441 = load i32, i32* @IFM_10G_SR, align 4
  %442 = or i32 %440, %441
  %443 = call i32 @ifmedia_add(i32* %437, i32 %442, i32 0, i32* null)
  %444 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %445 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %444, i32 0, i32 11
  %446 = load i32, i32* @IFM_ETHER, align 4
  %447 = load i32, i32* @IFM_FDX, align 4
  %448 = or i32 %446, %447
  %449 = load i32, i32* @IFM_10G_CX4, align 4
  %450 = or i32 %448, %449
  %451 = call i32 @ifmedia_add(i32* %445, i32 %450, i32 0, i32* null)
  %452 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %453 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %452, i32 0, i32 11
  %454 = load i32, i32* @IFM_ETHER, align 4
  %455 = load i32, i32* @IFM_FDX, align 4
  %456 = or i32 %454, %455
  %457 = load i32, i32* @IFM_40G_CR4, align 4
  %458 = or i32 %456, %457
  %459 = call i32 @ifmedia_add(i32* %453, i32 %458, i32 0, i32* null)
  %460 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %461 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %460, i32 0, i32 11
  %462 = load i32, i32* @IFM_ETHER, align 4
  %463 = load i32, i32* @IFM_AUTO, align 4
  %464 = or i32 %462, %463
  %465 = call i32 @ifmedia_add(i32* %461, i32 %464, i32 0, i32* null)
  %466 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %467 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %466, i32 0, i32 11
  %468 = load i32, i32* @IFM_ETHER, align 4
  %469 = load i32, i32* @IFM_AUTO, align 4
  %470 = or i32 %468, %469
  %471 = call i32 @ifmedia_set(i32* %467, i32 %470)
  %472 = load %struct.net_device*, %struct.net_device** %8, align 8
  %473 = load i32, i32* @mlx4_en, align 4
  %474 = call i32 @DEBUGNET_SET(%struct.net_device* %472, i32 %473)
  %475 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %476 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %477 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %476, i32 0, i32 5
  %478 = load i32, i32* %477, align 4
  %479 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %475, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %478)
  %480 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %481 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %482 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %481, i32 0, i32 4
  %483 = load i32, i32* %482, align 4
  %484 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %480, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %483)
  %485 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %486 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %485, i32 0, i32 7
  store i32 1, i32* %486, align 4
  %487 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %488 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %489 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %488, i32 0, i32 5
  %490 = load i32, i32* %489, align 4
  %491 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %487, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %490)
  %492 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %493 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %494 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %493, i32 0, i32 4
  %495 = load i32, i32* %494, align 4
  %496 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %492, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %495)
  %497 = load %struct.net_device*, %struct.net_device** %8, align 8
  %498 = getelementptr inbounds %struct.net_device, %struct.net_device* %497, i32 0, i32 4
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @ETH_HLEN, align 8
  %501 = add nsw i64 %499, %500
  %502 = load i64, i64* @VLAN_HLEN, align 8
  %503 = add nsw i64 %501, %502
  %504 = load i64, i64* @ETH_FCS_LEN, align 8
  %505 = add nsw i64 %503, %504
  %506 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %507 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %506, i32 0, i32 10
  store i64 %505, i64* %507, align 8
  %508 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %509 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %508, i32 0, i32 1
  %510 = load %struct.TYPE_15__*, %struct.TYPE_15__** %509, align 8
  %511 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %512 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = sext i32 %513 to i64
  %515 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %516 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %515, i32 0, i32 10
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %519 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %518, i32 0, i32 3
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %522 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %525 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %528 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = call i32 @mlx4_SET_PORT_general(%struct.TYPE_15__* %510, i64 %514, i64 %517, i32 %520, i32 %523, i32 %526, i32 %529)
  store i32 %530, i32* %12, align 4
  %531 = load i32, i32* %12, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %540

533:                                              ; preds = %414
  %534 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %535 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %536 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = load i32, i32* %12, align 4
  %539 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %534, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %537, i32 %538)
  br label %582

540:                                              ; preds = %414
  %541 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %542 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %541, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %543 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %544 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %543, i32 0, i32 1
  %545 = load %struct.TYPE_15__*, %struct.TYPE_15__** %544, align 8
  %546 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %547 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  %550 = call i32 @mlx4_INIT_PORT(%struct.TYPE_15__* %545, i64 %549)
  store i32 %550, i32* %12, align 4
  %551 = load i32, i32* %12, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %556

553:                                              ; preds = %540
  %554 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %555 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %554, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %582

556:                                              ; preds = %540
  %557 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %558 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %561 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %560, i32 0, i32 9
  %562 = load i32, i32* @STATS_DELAY, align 4
  %563 = call i32 @queue_delayed_work(i32 %559, i32* %561, i32 %562)
  %564 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %565 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %564, i32 0, i32 1
  %566 = load %struct.TYPE_15__*, %struct.TYPE_15__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %571 = and i32 %569, %570
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %581

573:                                              ; preds = %556
  %574 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %575 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %578 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %577, i32 0, i32 8
  %579 = load i32, i32* @SERVICE_TASK_DELAY, align 4
  %580 = call i32 @queue_delayed_work(i32 %576, i32* %578, i32 %579)
  br label %581

581:                                              ; preds = %573, %556
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %586

582:                                              ; preds = %553, %533, %252, %240, %230, %169, %156
  %583 = load %struct.net_device*, %struct.net_device** %8, align 8
  %584 = call i32 @mlx4_en_destroy_netdev(%struct.net_device* %583)
  %585 = load i32, i32* %12, align 4
  store i32 %585, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %586

586:                                              ; preds = %582, %581, %27
  %587 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %587)
  %588 = load i32, i32* %4, align 4
  ret i32 %588
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mlx4_en_priv* @kzalloc(i32, i32) #2

declare dso_local %struct.net_device* @if_alloc(i32) #2

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #2

declare dso_local i32 @kfree(%struct.mlx4_en_priv*) #2

declare dso_local i32 @if_initname(%struct.net_device*, i8*, i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @callout_init(i32*, i32) #2

declare dso_local i8* @kcalloc(i32, i32, i32) #2

declare dso_local i64 @ILLEGAL_MAC(i32) #2

declare dso_local i32 @mlx4_en_sysctl_conf(%struct.mlx4_en_priv*) #2

declare dso_local i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv*) #2

declare dso_local i32 @mlx4_alloc_hwq_res(%struct.TYPE_15__*, i32*, i32, i32) #2

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.mlx4_en_priv*, i32) #2

declare dso_local i32 @mlx4_en_set_default_moderation(%struct.mlx4_en_priv*) #2

declare dso_local i32 @ether_ifattach(%struct.net_device*, i64*) #2

declare dso_local i32 @if_link_state_change(%struct.net_device*, i32) #2

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #2

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #2

declare dso_local i32 @ifmedia_set(i32*, i32) #2

declare dso_local i32 @DEBUGNET_SET(%struct.net_device*, i32) #2

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*, ...) #2

declare dso_local i32 @mlx4_SET_PORT_general(%struct.TYPE_15__*, i64, i64, i32, i32, i32, i32) #2

declare dso_local i32 @mlx4_INIT_PORT(%struct.TYPE_15__*, i64) #2

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #2

declare dso_local i32 @mlx4_en_destroy_netdev(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
