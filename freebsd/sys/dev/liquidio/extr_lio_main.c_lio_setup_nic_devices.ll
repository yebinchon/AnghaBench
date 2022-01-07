; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_setup_nic_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_setup_nic_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, %struct.lio_if_props, %struct.TYPE_18__ }
%struct.lio_if_props = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%union.octeon_if_cfg = type { i64, [8 x i8] }
%struct.lio = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.TYPE_17__, %struct.ifnet*, %struct.octeon_device* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_14__*, i64, i32, %struct.TYPE_22__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.lio_version = type { i8*, i8*, i8* }
%struct.lio_soft_command = type { i32, %struct.lio_soft_command*, i32, i64, i64, i64, i64 }
%struct.lio_if_cfg_context = type { i64, i32 }
%struct.lio_if_cfg_resp = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32, i64, %struct.TYPE_21__*, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC_INFO = common dso_local global i32 0, align 4
@lio_link_info = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LIO_BASE_MAJOR_VERSION = common dso_local global i32 0, align 4
@LIO_BASE_MINOR_VERSION = common dso_local global i32 0, align 4
@LIO_BASE_MICRO_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"requesting config for interface %d, iqs %d, oqs %d\0A\00", align 1
@LIO_OPCODE_NIC_IF_CFG = common dso_local global i32 0, align 4
@lio_if_cfg_callback = common dso_local global i32 0, align 4
@LIO_IQ_SEND_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"iq/oq config failed status: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"iq/oq config failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Got bad iqueues (%016llX) or oqueues (%016llX) from firmware.\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"interface %d, iqmask %016llx, oqmask %016llx, numiqueues %d, numoqueues %d\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Device allocation failed\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Lio allocation failed\0A\00", align 1
@LIO_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@LIO_MAX_SG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"if%d gmx: %d hw_addr: 0x%llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"I/O queues creation failed\0A\00", align 1
@LIO_IFSTATE_DROQ_OPS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Gather list allocation failed\0A\00", align 1
@lio_hwlro = common dso_local global i64 0, align 8
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@LIO_CMD_LRO_ENABLE = common dso_local global i32 0, align 4
@LIO_LROIPV4 = common dso_local global i32 0, align 4
@LIO_LROIPV6 = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@LIO_CMD_VLAN_FILTER_CTL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"Setup NIC ifidx:%d mac:%02x%02x%02x%02x%02x%02x\0A\00", align 1
@LIO_IFSTATE_REGISTERED = common dso_local global i32 0, align 4
@LIO_CMD_TNL_RX_CSUM_CTL = common dso_local global i32 0, align 4
@LIO_CMD_RXCSUM_ENABLE = common dso_local global i32 0, align 4
@LIO_CMD_TNL_TX_CSUM_CTL = common dso_local global i32 0, align 4
@LIO_CMD_TXCSUM_ENABLE = common dso_local global i32 0, align 4
@LIO_CMD_SET_FNV = common dso_local global i32 0, align 4
@LIO_CMD_FNV_ENABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"NIC ifidx:%d Setup successful\0A\00", align 1
@vlan_config = common dso_local global i32 0, align 4
@lio_vlan_rx_add_vid = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_FIRST = common dso_local global i32 0, align 4
@vlan_unconfig = common dso_local global i32 0, align 4
@lio_vlan_rx_kill_vid = common dso_local global i32 0, align 4
@LIO_DEFAULT_STATS_INTERVAL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"NIC ifidx:%d Setup failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@lio_rss = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_setup_nic_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_setup_nic_devices(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %union.octeon_if_cfg, align 8
  %5 = alloca %struct.lio*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.lio_version*, align 8
  %8 = alloca %struct.lio_soft_command*, align 8
  %9 = alloca %struct.lio_if_cfg_context*, align 8
  %10 = alloca %struct.lio_if_cfg_resp*, align 8
  %11 = alloca %struct.lio_if_props*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.lio* null, %struct.lio** %5, align 8
  store %struct.ifnet* null, %struct.ifnet** %6, align 8
  %26 = load i32, i32* @ETHER_HDR_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %21, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %22, align 8
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = load i32, i32* @LIO_OPCODE_NIC, align 4
  %32 = load i32, i32* @LIO_OPCODE_NIC_INFO, align 4
  %33 = load i32, i32* @lio_link_info, align 4
  %34 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %35 = call i32 @lio_register_dispatch_fn(%struct.octeon_device* %30, i32 %31, i32 %32, i32 %33, %struct.octeon_device* %34)
  store i32 0, i32* %23, align 4
  br label %36

36:                                               ; preds = %570, %1
  %37 = load i32, i32* %23, align 4
  %38 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %573

42:                                               ; preds = %36
  store i32 56, i32* %20, align 4
  store i32 16, i32* %17, align 4
  store i32 24, i32* %18, align 4
  %43 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call %struct.lio_soft_command* @lio_alloc_soft_command(%struct.octeon_device* %43, i32 %44, i32 %45, i32 %46)
  store %struct.lio_soft_command* %47, %struct.lio_soft_command** %8, align 8
  %48 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %49 = icmp eq %struct.lio_soft_command* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %591

52:                                               ; preds = %42
  %53 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %54 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.lio_if_cfg_resp*
  store %struct.lio_if_cfg_resp* %56, %struct.lio_if_cfg_resp** %10, align 8
  %57 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %58 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.lio_if_cfg_context*
  store %struct.lio_if_cfg_context* %60, %struct.lio_if_cfg_context** %9, align 8
  %61 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %62 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.lio_version*
  store %struct.lio_version* %64, %struct.lio_version** %7, align 8
  %65 = load %struct.lio_version*, %struct.lio_version** %7, align 8
  %66 = bitcast %struct.lio_version* %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @LIO_BASE_MAJOR_VERSION, align 4
  %68 = call i8* @htobe16(i32 %67)
  %69 = load %struct.lio_version*, %struct.lio_version** %7, align 8
  %70 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @LIO_BASE_MINOR_VERSION, align 4
  %72 = call i8* @htobe16(i32 %71)
  %73 = load %struct.lio_version*, %struct.lio_version** %7, align 8
  %74 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @LIO_BASE_MICRO_VERSION, align 4
  %76 = call i8* @htobe16(i32 %75)
  %77 = load %struct.lio_version*, %struct.lio_version** %7, align 8
  %78 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  %83 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %13, align 4
  %87 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %15, align 4
  %91 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %16, align 4
  %94 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %95 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %19, align 4
  %97 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 (%struct.octeon_device*, i8*, i32, ...) @lio_dev_dbg(%struct.octeon_device* %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99, i32 %100)
  %102 = load %struct.lio_if_cfg_context*, %struct.lio_if_cfg_context** %9, align 8
  %103 = getelementptr inbounds %struct.lio_if_cfg_context, %struct.lio_if_cfg_context* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %105 = call i32 @lio_get_device_id(%struct.octeon_device* %104)
  %106 = load %struct.lio_if_cfg_context*, %struct.lio_if_cfg_context** %9, align 8
  %107 = getelementptr inbounds %struct.lio_if_cfg_context, %struct.lio_if_cfg_context* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = bitcast %union.octeon_if_cfg* %4 to i64*
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = bitcast %union.octeon_if_cfg* %4 to %struct.TYPE_19__*
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %13, align 4
  %113 = bitcast %union.octeon_if_cfg* %4 to %struct.TYPE_19__*
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %15, align 4
  %116 = bitcast %union.octeon_if_cfg* %4 to %struct.TYPE_19__*
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %16, align 4
  %119 = bitcast %union.octeon_if_cfg* %4 to %struct.TYPE_19__*
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %122 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %124 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %125 = load i32, i32* @LIO_OPCODE_NIC, align 4
  %126 = load i32, i32* @LIO_OPCODE_NIC_IF_CFG, align 4
  %127 = bitcast %union.octeon_if_cfg* %4 to i64*
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @lio_prepare_soft_command(%struct.octeon_device* %123, %struct.lio_soft_command* %124, i32 %125, i32 %126, i32 0, i64 %128, i32 0)
  %130 = load i32, i32* @lio_if_cfg_callback, align 4
  %131 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %132 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %134 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %135 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %134, i32 0, i32 1
  store %struct.lio_soft_command* %133, %struct.lio_soft_command** %135, align 8
  %136 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %137 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %136, i32 0, i32 0
  store i32 3000, i32* %137, align 8
  %138 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %139 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %140 = call i32 @lio_send_soft_command(%struct.octeon_device* %138, %struct.lio_soft_command* %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* @LIO_IQ_SEND_FAILED, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %52
  %145 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %145, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  br label %574

148:                                              ; preds = %52
  %149 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %150 = load %struct.lio_if_cfg_context*, %struct.lio_if_cfg_context** %9, align 8
  %151 = getelementptr inbounds %struct.lio_if_cfg_context, %struct.lio_if_cfg_context* %150, i32 0, i32 0
  %152 = call i32 @lio_sleep_cond(%struct.octeon_device* %149, i64* %151)
  %153 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %154 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %148
  %159 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %160 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %574

161:                                              ; preds = %148
  %162 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %163 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %162, i32 0, i32 1
  %164 = bitcast %struct.TYPE_25__* %163 to i64*
  %165 = call i32 @lio_swap_8B_data(i64* %164, i32 0)
  %166 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %167 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @bitcount64(i64 %169)
  store i32 %170, i32* %12, align 4
  %171 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %172 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @bitcount64(i64 %174)
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %161
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %194, label %181

181:                                              ; preds = %178, %161
  %182 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %183 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %184 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @LIO_CAST64(i64 %186)
  %188 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %189 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @LIO_CAST64(i64 %191)
  %193 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %182, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %187, i32 %192)
  br label %574

194:                                              ; preds = %178
  %195 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %196 = load i32, i32* %23, align 4
  %197 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %198 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @LIO_CAST64(i64 %200)
  %202 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %203 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @LIO_CAST64(i64 %205)
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = call i32 (%struct.octeon_device*, i8*, i32, ...) @lio_dev_dbg(%struct.octeon_device* %195, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i32 %196, i32 %201, i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* @IFT_ETHER, align 4
  %211 = call %struct.ifnet* @if_alloc(i32 %210)
  store %struct.ifnet* %211, %struct.ifnet** %6, align 8
  %212 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %213 = icmp eq %struct.ifnet* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %194
  %215 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %216 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %215, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %574

217:                                              ; preds = %194
  %218 = load i32, i32* @M_DEVBUF, align 4
  %219 = load i32, i32* @M_NOWAIT, align 4
  %220 = load i32, i32* @M_ZERO, align 4
  %221 = or i32 %219, %220
  %222 = call %struct.lio* @malloc(i32 112, i32 %218, i32 %221)
  store %struct.lio* %222, %struct.lio** %5, align 8
  %223 = load %struct.lio*, %struct.lio** %5, align 8
  %224 = icmp eq %struct.lio* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %217
  %226 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %227 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %226, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %574

228:                                              ; preds = %217
  %229 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %230 = load %struct.lio*, %struct.lio** %5, align 8
  %231 = call i32 @if_setsoftc(%struct.ifnet* %229, %struct.lio* %230)
  %232 = load i32, i32* @LIO_MAX_FRAME_SIZE, align 4
  %233 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %234 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* @LIO_MAX_SG, align 4
  %236 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @PAGE_SIZE, align 4
  %239 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %240 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %19, align 4
  %242 = load %struct.lio*, %struct.lio** %5, align 8
  %243 = getelementptr inbounds %struct.lio, %struct.lio* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %245 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %244, i32 0, i32 2
  store %struct.lio_if_props* %245, %struct.lio_if_props** %11, align 8
  %246 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %247 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.lio_if_props*, %struct.lio_if_props** %11, align 8
  %252 = getelementptr inbounds %struct.lio_if_props, %struct.lio_if_props* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 8
  %253 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %254 = load %struct.lio_if_props*, %struct.lio_if_props** %11, align 8
  %255 = getelementptr inbounds %struct.lio_if_props, %struct.lio_if_props* %254, i32 0, i32 0
  store %struct.ifnet* %253, %struct.ifnet** %255, align 8
  %256 = load i32, i32* %13, align 4
  %257 = load %struct.lio*, %struct.lio** %5, align 8
  %258 = getelementptr inbounds %struct.lio, %struct.lio* %257, i32 0, i32 10
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  store i32 %256, i32* %259, align 8
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.lio*, %struct.lio** %5, align 8
  %262 = getelementptr inbounds %struct.lio, %struct.lio* %261, i32 0, i32 10
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  store i32 %260, i32* %263, align 4
  store i32 0, i32* %24, align 4
  br label %264

264:                                              ; preds = %287, %228
  %265 = load i32, i32* %24, align 4
  %266 = load i32, i32* %13, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %290

268:                                              ; preds = %264
  %269 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %270 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 4
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %272, align 8
  %274 = load i32, i32* %24, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.lio*, %struct.lio** %5, align 8
  %280 = getelementptr inbounds %struct.lio, %struct.lio* %279, i32 0, i32 10
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %281, align 8
  %283 = load i32, i32* %24, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 1
  store i32 %278, i32* %286, align 4
  br label %287

287:                                              ; preds = %268
  %288 = load i32, i32* %24, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %24, align 4
  br label %264

290:                                              ; preds = %264
  store i32 0, i32* %24, align 4
  br label %291

291:                                              ; preds = %314, %290
  %292 = load i32, i32* %24, align 4
  %293 = load i32, i32* %12, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %317

295:                                              ; preds = %291
  %296 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %297 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %299, align 8
  %301 = load i32, i32* %24, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.lio*, %struct.lio** %5, align 8
  %307 = getelementptr inbounds %struct.lio, %struct.lio* %306, i32 0, i32 10
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 3
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %308, align 8
  %310 = load i32, i32* %24, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 1
  store i32 %305, i32* %313, align 4
  br label %314

314:                                              ; preds = %295
  %315 = load i32, i32* %24, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %24, align 4
  br label %291

317:                                              ; preds = %291
  %318 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %319 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.lio*, %struct.lio** %5, align 8
  %324 = getelementptr inbounds %struct.lio, %struct.lio* %323, i32 0, i32 10
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 4
  store i64 %322, i64* %325, align 8
  %326 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %327 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.lio*, %struct.lio** %5, align 8
  %332 = getelementptr inbounds %struct.lio, %struct.lio* %331, i32 0, i32 10
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i32 0, i32 5
  store i32 %330, i32* %333, align 8
  %334 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %10, align 8
  %335 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.lio*, %struct.lio** %5, align 8
  %341 = getelementptr inbounds %struct.lio, %struct.lio* %340, i32 0, i32 10
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 6
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 0
  store i32 %339, i32* %343, align 4
  %344 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %345 = load %struct.lio*, %struct.lio** %5, align 8
  %346 = getelementptr inbounds %struct.lio, %struct.lio* %345, i32 0, i32 12
  store %struct.octeon_device* %344, %struct.octeon_device** %346, align 8
  %347 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %348 = load %struct.lio*, %struct.lio** %5, align 8
  %349 = getelementptr inbounds %struct.lio, %struct.lio* %348, i32 0, i32 11
  store %struct.ifnet* %347, %struct.ifnet** %349, align 8
  %350 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %351 = load i32, i32* %23, align 4
  %352 = load %struct.lio*, %struct.lio** %5, align 8
  %353 = getelementptr inbounds %struct.lio, %struct.lio* %352, i32 0, i32 10
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.lio*, %struct.lio** %5, align 8
  %357 = getelementptr inbounds %struct.lio, %struct.lio* %356, i32 0, i32 10
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 4
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @LIO_CAST64(i64 %359)
  %361 = call i32 (%struct.octeon_device*, i8*, i32, ...) @lio_dev_dbg(%struct.octeon_device* %350, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %351, i32 %355, i32 %360)
  %362 = load %struct.lio*, %struct.lio** %5, align 8
  %363 = call i32 @lio_init_ifnet(%struct.lio* %362)
  %364 = load %struct.lio*, %struct.lio** %5, align 8
  %365 = getelementptr inbounds %struct.lio, %struct.lio* %364, i32 0, i32 10
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 4
  %367 = call i32 @lio_swap_8B_data(i64* %366, i32 1)
  store i32 0, i32* %24, align 4
  br label %368

368:                                              ; preds = %384, %317
  %369 = load i32, i32* %24, align 4
  %370 = icmp slt i32 %369, 6
  br i1 %370, label %371, label %387

371:                                              ; preds = %368
  %372 = load %struct.lio*, %struct.lio** %5, align 8
  %373 = getelementptr inbounds %struct.lio, %struct.lio* %372, i32 0, i32 10
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 4
  %375 = bitcast i64* %374 to i32*
  %376 = getelementptr inbounds i32, i32* %375, i64 2
  %377 = load i32, i32* %24, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %24, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %29, i64 %382
  store i32 %380, i32* %383, align 4
  br label %384

384:                                              ; preds = %371
  %385 = load i32, i32* %24, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %24, align 4
  br label %368

387:                                              ; preds = %368
  %388 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %389 = call i32 @ether_ifattach(%struct.ifnet* %388, i32* %29)
  %390 = load %struct.lio*, %struct.lio** %5, align 8
  %391 = getelementptr inbounds %struct.lio, %struct.lio* %390, i32 0, i32 10
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 3
  %393 = load %struct.TYPE_14__*, %struct.TYPE_14__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i64 0
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.lio*, %struct.lio** %5, align 8
  %399 = getelementptr inbounds %struct.lio, %struct.lio* %398, i32 0, i32 8
  store i32 %397, i32* %399, align 4
  %400 = load %struct.lio*, %struct.lio** %5, align 8
  %401 = getelementptr inbounds %struct.lio, %struct.lio* %400, i32 0, i32 10
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 2
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i64 0
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.lio*, %struct.lio** %5, align 8
  %409 = getelementptr inbounds %struct.lio, %struct.lio* %408, i32 0, i32 6
  store i32 %407, i32* %409, align 4
  %410 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %411 = load i32, i32* %23, align 4
  %412 = load %struct.lio*, %struct.lio** %5, align 8
  %413 = getelementptr inbounds %struct.lio, %struct.lio* %412, i32 0, i32 10
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.lio*, %struct.lio** %5, align 8
  %417 = getelementptr inbounds %struct.lio, %struct.lio* %416, i32 0, i32 10
  %418 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = call i64 @lio_setup_io_queues(%struct.octeon_device* %410, i32 %411, i32 %415, i32 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %387
  %423 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %424 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %423, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %574

425:                                              ; preds = %387
  %426 = load %struct.lio*, %struct.lio** %5, align 8
  %427 = load i32, i32* @LIO_IFSTATE_DROQ_OPS, align 4
  %428 = call i32 @lio_ifstate_set(%struct.lio* %426, i32 %427)
  %429 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %430 = load %struct.lio*, %struct.lio** %5, align 8
  %431 = getelementptr inbounds %struct.lio, %struct.lio* %430, i32 0, i32 8
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @lio_get_tx_qsize(%struct.octeon_device* %429, i32 %432)
  %434 = load %struct.lio*, %struct.lio** %5, align 8
  %435 = getelementptr inbounds %struct.lio, %struct.lio* %434, i32 0, i32 9
  store i32 %433, i32* %435, align 8
  %436 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %437 = load %struct.lio*, %struct.lio** %5, align 8
  %438 = getelementptr inbounds %struct.lio, %struct.lio* %437, i32 0, i32 6
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @lio_get_rx_qsize(%struct.octeon_device* %436, i32 %439)
  %441 = load %struct.lio*, %struct.lio** %5, align 8
  %442 = getelementptr inbounds %struct.lio, %struct.lio* %441, i32 0, i32 7
  store i32 %440, i32* %442, align 8
  %443 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %444 = load %struct.lio*, %struct.lio** %5, align 8
  %445 = load i32, i32* %12, align 4
  %446 = call i64 @lio_setup_glists(%struct.octeon_device* %443, %struct.lio* %444, i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %425
  %449 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %450 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %449, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %574

451:                                              ; preds = %425
  %452 = load i64, i64* @lio_hwlro, align 8
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %454, label %460

454:                                              ; preds = %451
  %455 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %456 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %457 = call i64 @lio_tcp_lro_init(%struct.octeon_device* %455, %struct.ifnet* %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %454
  br label %574

460:                                              ; preds = %454, %451
  %461 = load i64, i64* @lio_hwlro, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %488

463:                                              ; preds = %460
  %464 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %465 = call i32 @if_getcapenable(%struct.ifnet* %464)
  %466 = load i32, i32* @IFCAP_LRO, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %488

469:                                              ; preds = %463
  %470 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %471 = call i32 @if_getcapenable(%struct.ifnet* %470)
  %472 = load i32, i32* @IFCAP_RXCSUM, align 4
  %473 = and i32 %471, %472
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %488

475:                                              ; preds = %469
  %476 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %477 = call i32 @if_getcapenable(%struct.ifnet* %476)
  %478 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %488

481:                                              ; preds = %475
  %482 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %483 = load i32, i32* @LIO_CMD_LRO_ENABLE, align 4
  %484 = load i32, i32* @LIO_LROIPV4, align 4
  %485 = load i32, i32* @LIO_LROIPV6, align 4
  %486 = or i32 %484, %485
  %487 = call i32 @lio_set_feature(%struct.ifnet* %482, i32 %483, i32 %486)
  br label %488

488:                                              ; preds = %481, %475, %469, %463, %460
  %489 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %490 = call i32 @if_getcapenable(%struct.ifnet* %489)
  %491 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %498

494:                                              ; preds = %488
  %495 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %496 = load i32, i32* @LIO_CMD_VLAN_FILTER_CTL, align 4
  %497 = call i32 @lio_set_feature(%struct.ifnet* %495, i32 %496, i32 1)
  br label %502

498:                                              ; preds = %488
  %499 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %500 = load i32, i32* @LIO_CMD_VLAN_FILTER_CTL, align 4
  %501 = call i32 @lio_set_feature(%struct.ifnet* %499, i32 %500, i32 0)
  br label %502

502:                                              ; preds = %498, %494
  %503 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %504 = call i64 @lio_setup_rx_oom_poll_fn(%struct.ifnet* %503)
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %507

506:                                              ; preds = %502
  br label %574

507:                                              ; preds = %502
  %508 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %509 = load i32, i32* %23, align 4
  %510 = getelementptr inbounds i32, i32* %29, i64 0
  %511 = load i32, i32* %510, align 16
  %512 = getelementptr inbounds i32, i32* %29, i64 1
  %513 = load i32, i32* %512, align 4
  %514 = getelementptr inbounds i32, i32* %29, i64 2
  %515 = load i32, i32* %514, align 8
  %516 = getelementptr inbounds i32, i32* %29, i64 3
  %517 = load i32, i32* %516, align 4
  %518 = getelementptr inbounds i32, i32* %29, i64 4
  %519 = load i32, i32* %518, align 16
  %520 = getelementptr inbounds i32, i32* %29, i64 5
  %521 = load i32, i32* %520, align 4
  %522 = call i32 (%struct.octeon_device*, i8*, i32, ...) @lio_dev_dbg(%struct.octeon_device* %508, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %509, i32 %511, i32 %513, i32 %515, i32 %517, i32 %519, i32 %521)
  %523 = load %struct.lio*, %struct.lio** %5, align 8
  %524 = getelementptr inbounds %struct.lio, %struct.lio* %523, i32 0, i32 5
  %525 = load i32, i32* %524, align 8
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %524, align 8
  %527 = load %struct.lio*, %struct.lio** %5, align 8
  %528 = load i32, i32* @LIO_IFSTATE_REGISTERED, align 4
  %529 = call i32 @lio_ifstate_set(%struct.lio* %527, i32 %528)
  %530 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %531 = load i32, i32* @LIO_CMD_TNL_RX_CSUM_CTL, align 4
  %532 = load i32, i32* @LIO_CMD_RXCSUM_ENABLE, align 4
  %533 = call i32 @lio_set_rxcsum_command(%struct.ifnet* %530, i32 %531, i32 %532)
  %534 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %535 = load i32, i32* @LIO_CMD_TNL_TX_CSUM_CTL, align 4
  %536 = load i32, i32* @LIO_CMD_TXCSUM_ENABLE, align 4
  %537 = call i32 @lio_set_feature(%struct.ifnet* %534, i32 %535, i32 %536)
  %538 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %539 = load i32, i32* @LIO_CMD_SET_FNV, align 4
  %540 = load i32, i32* @LIO_CMD_FNV_ENABLE, align 4
  %541 = call i32 @lio_set_feature(%struct.ifnet* %538, i32 %539, i32 %540)
  %542 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %543 = load i32, i32* %23, align 4
  %544 = call i32 (%struct.octeon_device*, i8*, i32, ...) @lio_dev_dbg(%struct.octeon_device* %542, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %543)
  %545 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %546 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %547 = call i32 @lio_free_soft_command(%struct.octeon_device* %545, %struct.lio_soft_command* %546)
  %548 = load i32, i32* @vlan_config, align 4
  %549 = load i32, i32* @lio_vlan_rx_add_vid, align 4
  %550 = load %struct.lio*, %struct.lio** %5, align 8
  %551 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %552 = call i8* @EVENTHANDLER_REGISTER(i32 %548, i32 %549, %struct.lio* %550, i32 %551)
  %553 = load %struct.lio*, %struct.lio** %5, align 8
  %554 = getelementptr inbounds %struct.lio, %struct.lio* %553, i32 0, i32 4
  store i8* %552, i8** %554, align 8
  %555 = load i32, i32* @vlan_unconfig, align 4
  %556 = load i32, i32* @lio_vlan_rx_kill_vid, align 4
  %557 = load %struct.lio*, %struct.lio** %5, align 8
  %558 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %559 = call i8* @EVENTHANDLER_REGISTER(i32 %555, i32 %556, %struct.lio* %557, i32 %558)
  %560 = load %struct.lio*, %struct.lio** %5, align 8
  %561 = getelementptr inbounds %struct.lio, %struct.lio* %560, i32 0, i32 3
  store i8* %559, i8** %561, align 8
  %562 = load %struct.lio*, %struct.lio** %5, align 8
  %563 = getelementptr inbounds %struct.lio, %struct.lio* %562, i32 0, i32 2
  %564 = call i32 @callout_init(i32* %563, i32 0)
  %565 = load i32, i32* @LIO_DEFAULT_STATS_INTERVAL, align 4
  %566 = load %struct.lio*, %struct.lio** %5, align 8
  %567 = getelementptr inbounds %struct.lio, %struct.lio* %566, i32 0, i32 1
  store i32 %565, i32* %567, align 4
  %568 = load %struct.lio*, %struct.lio** %5, align 8
  %569 = call i32 @lio_add_hw_stats(%struct.lio* %568)
  br label %570

570:                                              ; preds = %507
  %571 = load i32, i32* %23, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %23, align 4
  br label %36

573:                                              ; preds = %36
  store i32 0, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %591

574:                                              ; preds = %506, %459, %448, %422, %225, %214, %181, %158, %144
  %575 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %576 = load %struct.lio_soft_command*, %struct.lio_soft_command** %8, align 8
  %577 = call i32 @lio_free_soft_command(%struct.octeon_device* %575, %struct.lio_soft_command* %576)
  br label %578

578:                                              ; preds = %582, %574
  %579 = load i32, i32* %23, align 4
  %580 = add nsw i32 %579, -1
  store i32 %580, i32* %23, align 4
  %581 = icmp ne i32 %579, 0
  br i1 %581, label %582, label %589

582:                                              ; preds = %578
  %583 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %584 = load i32, i32* %23, align 4
  %585 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %583, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %584)
  %586 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %587 = load i32, i32* %23, align 4
  %588 = call i32 @lio_destroy_nic_device(%struct.octeon_device* %586, i32 %587)
  br label %578

589:                                              ; preds = %578
  %590 = load i32, i32* @ENODEV, align 4
  store i32 %590, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %591

591:                                              ; preds = %589, %573, %50
  %592 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %592)
  %593 = load i32, i32* %2, align 4
  ret i32 %593
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lio_register_dispatch_fn(%struct.octeon_device*, i32, i32, i32, %struct.octeon_device*) #2

declare dso_local %struct.lio_soft_command* @lio_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #2

declare dso_local i8* @htobe16(i32) #2

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i32, ...) #2

declare dso_local i32 @lio_get_device_id(%struct.octeon_device*) #2

declare dso_local i32 @lio_prepare_soft_command(%struct.octeon_device*, %struct.lio_soft_command*, i32, i32, i32, i64, i32) #2

declare dso_local i32 @lio_send_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #2

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, ...) #2

declare dso_local i32 @lio_sleep_cond(%struct.octeon_device*, i64*) #2

declare dso_local i32 @lio_swap_8B_data(i64*, i32) #2

declare dso_local i32 @bitcount64(i64) #2

declare dso_local i32 @LIO_CAST64(i64) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local %struct.lio* @malloc(i32, i32, i32) #2

declare dso_local i32 @if_setsoftc(%struct.ifnet*, %struct.lio*) #2

declare dso_local i32 @lio_init_ifnet(%struct.lio*) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i64 @lio_setup_io_queues(%struct.octeon_device*, i32, i32, i32) #2

declare dso_local i32 @lio_ifstate_set(%struct.lio*, i32) #2

declare dso_local i32 @lio_get_tx_qsize(%struct.octeon_device*, i32) #2

declare dso_local i32 @lio_get_rx_qsize(%struct.octeon_device*, i32) #2

declare dso_local i64 @lio_setup_glists(%struct.octeon_device*, %struct.lio*, i32) #2

declare dso_local i64 @lio_tcp_lro_init(%struct.octeon_device*, %struct.ifnet*) #2

declare dso_local i32 @if_getcapenable(%struct.ifnet*) #2

declare dso_local i32 @lio_set_feature(%struct.ifnet*, i32, i32) #2

declare dso_local i64 @lio_setup_rx_oom_poll_fn(%struct.ifnet*) #2

declare dso_local i32 @lio_set_rxcsum_command(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @lio_free_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #2

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.lio*, i32) #2

declare dso_local i32 @callout_init(i32*, i32) #2

declare dso_local i32 @lio_add_hw_stats(%struct.lio*) #2

declare dso_local i32 @lio_destroy_nic_device(%struct.octeon_device*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
