; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_add_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_add_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Driver_Version\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@qlnx_ver_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Driver Version\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"STORMFW_Version\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"STORM Firmware Version\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"MFW_Version\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Management Firmware Version\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"personality\00", align 1
@.str.7 = private unnamed_addr constant [157 x i8] c"\09personality = 0 => Ethernet Only\0A\09personality = 3 => Ethernet and RoCE\0A\09personality = 4 => Ethernet and iWARP\0A\09personality = 6 => Default in Shared Memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"Debug Level\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"dp_level\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"DP Level\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"dbg_trace_lro_cnt\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Trace LRO Counts\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"dbg_trace_tso_pkt_len\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Trace TSO packet lengths\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"dp_module\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"DP Module\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"err_inject\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Error Inject\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"storm_stats_enable\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Enable Storm Statistics Gathering\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"storm_stats_index\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"Enable Storm Statistics Gathering Current Index\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"grcdump_taken\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"idle_chk_taken\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"rx_coalesce_usecs\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"tx_coalesce_usecs\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"trigger_dump\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@qlnx_trigger_dump_sysctl = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"set_rx_coalesce_usecs\00", align 1
@qlnx_set_rx_coalesce = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [42 x i8] c"rx interrupt coalesce period microseconds\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"set_tx_coalesce_usecs\00", align 1
@qlnx_set_tx_coalesce = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [42 x i8] c"tx interrupt coalesce period microseconds\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"rx_pkt_threshold\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"No. of Rx Pkts to process at a time\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"rx_jumbo_buf_eq_mtu\00", align 1
@.str.37 = private unnamed_addr constant [98 x i8] c"== 0 => Rx Jumbo buffers are capped to 4Kbytes\0Aotherwise Rx Jumbo buffers are set to >= MTU size\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"err_illegal_intr\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"err_fp_null\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"err_get_proto_invalid_type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @qlnx_add_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_add_sysctls(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 20
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %9)
  store %struct.sysctl_ctx_list* %10, %struct.sysctl_ctx_list** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_sysctl_tree(i32 %11)
  %13 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %12)
  store %struct.sysctl_oid_list* %13, %struct.sysctl_oid_list** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = call i32 @qlnx_add_fp_stats_sysctls(%struct.TYPE_7__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = call i32 @qlnx_add_sp_stats_sysctls(%struct.TYPE_7__* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = call i64 @qlnx_vf_device(%struct.TYPE_7__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = call i32 @qlnx_add_hw_stats_sysctls(%struct.TYPE_7__* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %26 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %27 = load i32, i32* @OID_AUTO, align 4
  %28 = load i32, i32* @CTLFLAG_RD, align 4
  %29 = load i32, i32* @qlnx_ver_str, align 4
  %30 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %25, %struct.sysctl_oid_list* %26, i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %32 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLFLAG_RD, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 19
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %31, %struct.sysctl_oid_list* %32, i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %37, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %40 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = load i32, i32* @CTLFLAG_RD, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 18
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %39, %struct.sysctl_oid_list* %40, i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %45, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %48 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %49 = load i32, i32* @OID_AUTO, align 4
  %50 = load i32, i32* @CTLFLAG_RD, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %47, %struct.sysctl_oid_list* %48, i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %50, i32* %52, i32 %55, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.7, i64 0, i64 0))
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %60 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %61 = load i32, i32* @OID_AUTO, align 4
  %62 = load i32, i32* @CTLFLAG_RW, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %59, %struct.sysctl_oid_list* %60, i32 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %62, i32* %64, i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 4
  %71 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %72 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %73 = load i32, i32* @OID_AUTO, align 4
  %74 = load i32, i32* @CTLFLAG_RW, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %71, %struct.sysctl_oid_list* %72, i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %74, i32* %76, i32 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  store i32 0, i32* %82, align 4
  %83 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %84 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %85 = load i32, i32* @OID_AUTO, align 4
  %86 = load i32, i32* @CTLFLAG_RW, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %83, %struct.sysctl_oid_list* %84, i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %86, i32* %88, i32 %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 4
  store i32 0, i32* %94, align 4
  %95 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %96 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %97 = load i32, i32* @OID_AUTO, align 4
  %98 = load i32, i32* @CTLFLAG_RW, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %95, %struct.sysctl_oid_list* %96, i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %98, i32* %100, i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 5
  store i32 0, i32* %106, align 4
  %107 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %108 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %109 = load i32, i32* @OID_AUTO, align 4
  %110 = load i32, i32* @CTLFLAG_RW, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %107, %struct.sysctl_oid_list* %108, i32 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %110, i32* %112, i32 %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 6
  store i32 0, i32* %118, align 4
  %119 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %120 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %121 = load i32, i32* @OID_AUTO, align 4
  %122 = load i32, i32* @CTLFLAG_RW, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 6
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %119, %struct.sysctl_oid_list* %120, i32 %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %122, i32* %124, i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 7
  store i32 0, i32* %130, align 4
  %131 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %132 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %133 = load i32, i32* @OID_AUTO, align 4
  %134 = load i32, i32* @CTLFLAG_RW, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 7
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %131, %struct.sysctl_oid_list* %132, i32 %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 %134, i32* %136, i32 %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0))
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 8
  store i32 0, i32* %142, align 4
  %143 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %144 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %145 = load i32, i32* @OID_AUTO, align 4
  %146 = load i32, i32* @CTLFLAG_RD, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %143, %struct.sysctl_oid_list* %144, i32 %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %146, i32* %148, i32 %151, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0))
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 9
  store i32 0, i32* %154, align 4
  %155 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %156 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %157 = load i32, i32* @OID_AUTO, align 4
  %158 = load i32, i32* @CTLFLAG_RD, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 9
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %155, %struct.sysctl_oid_list* %156, i32 %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %158, i32* %160, i32 %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 10
  store i32 0, i32* %166, align 4
  %167 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %168 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %169 = load i32, i32* @OID_AUTO, align 4
  %170 = load i32, i32* @CTLFLAG_RD, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 10
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 10
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %167, %struct.sysctl_oid_list* %168, i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32 %170, i32* %172, i32 %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %177 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %178 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %179 = load i32, i32* @OID_AUTO, align 4
  %180 = load i32, i32* @CTLFLAG_RD, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 11
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 11
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %177, %struct.sysctl_oid_list* %178, i32 %179, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 %180, i32* %182, i32 %185, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  %187 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %188 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %189 = load i32, i32* @OID_AUTO, align 4
  %190 = load i32, i32* @CTLFLAG_RD, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 12
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 12
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %187, %struct.sysctl_oid_list* %188, i32 %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i32 %190, i32* %192, i32 %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %197 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %198 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %199 = load i32, i32* @OID_AUTO, align 4
  %200 = load i32, i32* @CTLTYPE_INT, align 4
  %201 = load i32, i32* @CTLFLAG_RW, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %204 = bitcast %struct.TYPE_7__* %203 to i8*
  %205 = load i32, i32* @qlnx_trigger_dump_sysctl, align 4
  %206 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %197, %struct.sysctl_oid_list* %198, i32 %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32 %202, i8* %204, i32 0, i32 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  %207 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %208 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %209 = load i32, i32* @OID_AUTO, align 4
  %210 = load i32, i32* @CTLTYPE_INT, align 4
  %211 = load i32, i32* @CTLFLAG_RW, align 4
  %212 = or i32 %210, %211
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %214 = bitcast %struct.TYPE_7__* %213 to i8*
  %215 = load i32, i32* @qlnx_set_rx_coalesce, align 4
  %216 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %207, %struct.sysctl_oid_list* %208, i32 %209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 %212, i8* %214, i32 0, i32 %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0))
  %217 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %218 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %219 = load i32, i32* @OID_AUTO, align 4
  %220 = load i32, i32* @CTLTYPE_INT, align 4
  %221 = load i32, i32* @CTLFLAG_RW, align 4
  %222 = or i32 %220, %221
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %224 = bitcast %struct.TYPE_7__* %223 to i8*
  %225 = load i32, i32* @qlnx_set_tx_coalesce, align 4
  %226 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %217, %struct.sysctl_oid_list* %218, i32 %219, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i32 %222, i8* %224, i32 0, i32 %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i64 0, i64 0))
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 13
  store i32 128, i32* %228, align 4
  %229 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %230 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %231 = load i32, i32* @OID_AUTO, align 4
  %232 = load i32, i32* @CTLFLAG_RW, align 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 13
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 13
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %229, %struct.sysctl_oid_list* %230, i32 %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i32 %232, i32* %234, i32 %237, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0))
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 14
  store i32 0, i32* %240, align 4
  %241 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %242 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %243 = load i32, i32* @OID_AUTO, align 4
  %244 = load i32, i32* @CTLFLAG_RW, align 4
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 14
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 14
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %241, %struct.sysctl_oid_list* %242, i32 %243, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i32 %244, i32* %246, i32 %249, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.37, i64 0, i64 0))
  %251 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %252 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %253 = load i32, i32* @OID_AUTO, align 4
  %254 = load i32, i32* @CTLFLAG_RD, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 17
  %257 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %251, %struct.sysctl_oid_list* %252, i32 %253, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i32 %254, i32* %256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  %258 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %259 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %260 = load i32, i32* @OID_AUTO, align 4
  %261 = load i32, i32* @CTLFLAG_RD, align 4
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 16
  %264 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %258, %struct.sysctl_oid_list* %259, i32 %260, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i32 %261, i32* %263, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0))
  %265 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %266 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %267 = load i32, i32* @OID_AUTO, align 4
  %268 = load i32, i32* @CTLFLAG_RD, align 4
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 15
  %271 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %265, %struct.sysctl_oid_list* %266, i32 %267, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i32 %268, i32* %270, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @qlnx_add_fp_stats_sysctls(%struct.TYPE_7__*) #1

declare dso_local i32 @qlnx_add_sp_stats_sysctls(%struct.TYPE_7__*) #1

declare dso_local i64 @qlnx_vf_device(%struct.TYPE_7__*) #1

declare dso_local i32 @qlnx_add_hw_stats_sysctls(%struct.TYPE_7__*) #1

declare dso_local i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
