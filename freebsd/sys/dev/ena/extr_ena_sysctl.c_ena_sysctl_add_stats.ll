; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_sysctl.c_ena_sysctl_add_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_sysctl.c_ena_sysctl_add_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.TYPE_4__*, %struct.ena_stats_dev, %struct.ena_hw_stats, %struct.ena_ring*, %struct.ena_ring*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ena_com_stats_admin }
%struct.ena_com_stats_admin = type { i32, i32, i32, i32, i32 }
%struct.ena_stats_dev = type { i32, i32, i32, i32 }
%struct.ena_hw_stats = type { i32, i32, i32, i32, i32 }
%struct.ena_ring = type { %struct.ena_stats_rx, %struct.ena_stats_tx }
%struct.ena_stats_rx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ena_stats_tx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"wd_expired\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Watchdog expiry count\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"interface_up\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Network interface up count\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"interface_down\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Network interface down count\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"admin_q_pause\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Admin queue pauses\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"queue%d\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Queue Name\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"tx_ring\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"TX ring\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Packets sent\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Bytes sent\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"prepare_ctx_err\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"TX buffer preparation failures\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"dma_mapping_err\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"DMA mapping failures\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"doorbells\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Queue doorbells\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"missing_tx_comp\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"TX completions missed\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"bad_req_id\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Bad request id count\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"mbuf_collapses\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"Mbuf collapse count\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"mbuf_collapse_err\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Mbuf collapse failures\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"queue_wakeups\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Queue wakeups\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"queue_stops\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Queue stops\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"llq_buffer_copy\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"Header copies for llq transaction\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"rx_ring\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"RX ring\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Packets received\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Bytes received\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"refil_partial\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"Partial refilled mbufs\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"bad_csum\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"Bad RX checksum\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"mbuf_alloc_fail\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"Failed mbuf allocs\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"mjum_alloc_fail\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"Failed jumbo mbuf allocs\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"DMA mapping errors\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"bad_desc_num\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"Bad descriptor count\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"empty_rx_ring\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"RX descriptors depletion count\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"hw_stats\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Statistics from hardware\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"rx_packets\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"tx_packets\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"Packets transmitted\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"rx_bytes\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"tx_bytes\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"Bytes transmitted\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"rx_drops\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"Receive packet drops\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"admin_stats\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"ENA Admin Queue statistics\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"aborted_cmd\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"Aborted commands\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"sumbitted_cmd\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"Submitted commands\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"completed_cmd\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"Completed commands\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"out_of_space\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"Queue out of space\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"no_completion\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"Commands not completed\00", align 1
@QUEUE_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_sysctl_add_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_sysctl_add_stats(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca %struct.ena_hw_stats*, align 8
  %7 = alloca %struct.ena_stats_dev*, align 8
  %8 = alloca %struct.ena_stats_tx*, align 8
  %9 = alloca %struct.ena_stats_rx*, align 8
  %10 = alloca %struct.ena_com_stats_admin*, align 8
  %11 = alloca %struct.sysctl_ctx_list*, align 8
  %12 = alloca %struct.sysctl_oid*, align 8
  %13 = alloca %struct.sysctl_oid_list*, align 8
  %14 = alloca %struct.sysctl_oid*, align 8
  %15 = alloca %struct.sysctl_oid*, align 8
  %16 = alloca %struct.sysctl_oid*, align 8
  %17 = alloca %struct.sysctl_oid*, align 8
  %18 = alloca %struct.sysctl_oid*, align 8
  %19 = alloca %struct.sysctl_oid_list*, align 8
  %20 = alloca %struct.sysctl_oid_list*, align 8
  %21 = alloca %struct.sysctl_oid_list*, align 8
  %22 = alloca %struct.sysctl_oid_list*, align 8
  %23 = alloca %struct.sysctl_oid_list*, align 8
  %24 = alloca [32 x i8], align 16
  %25 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %26 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %29)
  store %struct.sysctl_ctx_list* %30, %struct.sysctl_ctx_list** %11, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %31)
  store %struct.sysctl_oid* %32, %struct.sysctl_oid** %12, align 8
  %33 = load %struct.sysctl_oid*, %struct.sysctl_oid** %12, align 8
  %34 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %33)
  store %struct.sysctl_oid_list* %34, %struct.sysctl_oid_list** %13, align 8
  %35 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %35, i32 0, i32 5
  %37 = load %struct.ena_ring*, %struct.ena_ring** %36, align 8
  store %struct.ena_ring* %37, %struct.ena_ring** %4, align 8
  %38 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %38, i32 0, i32 4
  %40 = load %struct.ena_ring*, %struct.ena_ring** %39, align 8
  store %struct.ena_ring* %40, %struct.ena_ring** %5, align 8
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %41, i32 0, i32 3
  store %struct.ena_hw_stats* %42, %struct.ena_hw_stats** %6, align 8
  %43 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %43, i32 0, i32 2
  store %struct.ena_stats_dev* %44, %struct.ena_stats_dev** %7, align 8
  %45 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store %struct.ena_com_stats_admin* %49, %struct.ena_com_stats_admin** %10, align 8
  %50 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %51 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %52 = load i32, i32* @OID_AUTO, align 4
  %53 = load i32, i32* @CTLFLAG_RD, align 4
  %54 = load %struct.ena_stats_dev*, %struct.ena_stats_dev** %7, align 8
  %55 = getelementptr inbounds %struct.ena_stats_dev, %struct.ena_stats_dev* %54, i32 0, i32 3
  %56 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %50, %struct.sysctl_oid_list* %51, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %53, i32* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %58 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %59 = load i32, i32* @OID_AUTO, align 4
  %60 = load i32, i32* @CTLFLAG_RD, align 4
  %61 = load %struct.ena_stats_dev*, %struct.ena_stats_dev** %7, align 8
  %62 = getelementptr inbounds %struct.ena_stats_dev, %struct.ena_stats_dev* %61, i32 0, i32 2
  %63 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %57, %struct.sysctl_oid_list* %58, i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %65 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLFLAG_RD, align 4
  %68 = load %struct.ena_stats_dev*, %struct.ena_stats_dev** %7, align 8
  %69 = getelementptr inbounds %struct.ena_stats_dev, %struct.ena_stats_dev* %68, i32 0, i32 1
  %70 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %64, %struct.sysctl_oid_list* %65, i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %71 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %72 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %73 = load i32, i32* @OID_AUTO, align 4
  %74 = load i32, i32* @CTLFLAG_RD, align 4
  %75 = load %struct.ena_stats_dev*, %struct.ena_stats_dev** %7, align 8
  %76 = getelementptr inbounds %struct.ena_stats_dev, %struct.ena_stats_dev* %75, i32 0, i32 0
  %77 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %71, %struct.sysctl_oid_list* %72, i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %74, i32* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %25, align 4
  br label %78

78:                                               ; preds = %268, %1
  %79 = load i32, i32* %25, align 4
  %80 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %275

84:                                               ; preds = %78
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %86 = load i32, i32* %25, align 4
  %87 = call i32 @snprintf(i8* %85, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  %88 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %89 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %92 = load i32, i32* @CTLFLAG_RD, align 4
  %93 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %88, %struct.sysctl_oid_list* %89, i32 %90, i8* %91, i32 %92, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store %struct.sysctl_oid* %93, %struct.sysctl_oid** %14, align 8
  %94 = load %struct.sysctl_oid*, %struct.sysctl_oid** %14, align 8
  %95 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %94)
  store %struct.sysctl_oid_list* %95, %struct.sysctl_oid_list** %19, align 8
  %96 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %97 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %19, align 8
  %98 = load i32, i32* @OID_AUTO, align 4
  %99 = load i32, i32* @CTLFLAG_RD, align 4
  %100 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %96, %struct.sysctl_oid_list* %97, i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %99, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store %struct.sysctl_oid* %100, %struct.sysctl_oid** %15, align 8
  %101 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %102 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %101)
  store %struct.sysctl_oid_list* %102, %struct.sysctl_oid_list** %20, align 8
  %103 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %104 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %103, i32 0, i32 1
  store %struct.ena_stats_tx* %104, %struct.ena_stats_tx** %8, align 8
  %105 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %106 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %107 = load i32, i32* @OID_AUTO, align 4
  %108 = load i32, i32* @CTLFLAG_RD, align 4
  %109 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %110 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %109, i32 0, i32 11
  %111 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %105, %struct.sysctl_oid_list* %106, i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %108, i32* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %112 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %113 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %114 = load i32, i32* @OID_AUTO, align 4
  %115 = load i32, i32* @CTLFLAG_RD, align 4
  %116 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %117 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %116, i32 0, i32 10
  %118 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %112, %struct.sysctl_oid_list* %113, i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %115, i32* %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %119 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %120 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %121 = load i32, i32* @OID_AUTO, align 4
  %122 = load i32, i32* @CTLFLAG_RD, align 4
  %123 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %124 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %123, i32 0, i32 9
  %125 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %119, %struct.sysctl_oid_list* %120, i32 %121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %122, i32* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %126 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %127 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %128 = load i32, i32* @OID_AUTO, align 4
  %129 = load i32, i32* @CTLFLAG_RD, align 4
  %130 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %131 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %130, i32 0, i32 8
  %132 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %126, %struct.sysctl_oid_list* %127, i32 %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %129, i32* %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %133 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %134 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %135 = load i32, i32* @OID_AUTO, align 4
  %136 = load i32, i32* @CTLFLAG_RD, align 4
  %137 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %138 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %137, i32 0, i32 7
  %139 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %133, %struct.sysctl_oid_list* %134, i32 %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %136, i32* %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  %140 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %141 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %142 = load i32, i32* @OID_AUTO, align 4
  %143 = load i32, i32* @CTLFLAG_RD, align 4
  %144 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %145 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %144, i32 0, i32 6
  %146 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %140, %struct.sysctl_oid_list* %141, i32 %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 %143, i32* %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  %147 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %148 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %149 = load i32, i32* @OID_AUTO, align 4
  %150 = load i32, i32* @CTLFLAG_RD, align 4
  %151 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %152 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %151, i32 0, i32 5
  %153 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %147, %struct.sysctl_oid_list* %148, i32 %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32 %150, i32* %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  %154 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %155 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %156 = load i32, i32* @OID_AUTO, align 4
  %157 = load i32, i32* @CTLFLAG_RD, align 4
  %158 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %159 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %158, i32 0, i32 4
  %160 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %154, %struct.sysctl_oid_list* %155, i32 %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i32 %157, i32* %159, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  %161 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %162 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %163 = load i32, i32* @OID_AUTO, align 4
  %164 = load i32, i32* @CTLFLAG_RD, align 4
  %165 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %166 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %165, i32 0, i32 3
  %167 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %161, %struct.sysctl_oid_list* %162, i32 %163, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 %164, i32* %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0))
  %168 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %169 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %170 = load i32, i32* @OID_AUTO, align 4
  %171 = load i32, i32* @CTLFLAG_RD, align 4
  %172 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %173 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %172, i32 0, i32 2
  %174 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %168, %struct.sysctl_oid_list* %169, i32 %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32 %171, i32* %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0))
  %175 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %176 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %177 = load i32, i32* @OID_AUTO, align 4
  %178 = load i32, i32* @CTLFLAG_RD, align 4
  %179 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %180 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %179, i32 0, i32 1
  %181 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %175, %struct.sysctl_oid_list* %176, i32 %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 %178, i32* %180, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  %182 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %183 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %20, align 8
  %184 = load i32, i32* @OID_AUTO, align 4
  %185 = load i32, i32* @CTLFLAG_RD, align 4
  %186 = load %struct.ena_stats_tx*, %struct.ena_stats_tx** %8, align 8
  %187 = getelementptr inbounds %struct.ena_stats_tx, %struct.ena_stats_tx* %186, i32 0, i32 0
  %188 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %182, %struct.sysctl_oid_list* %183, i32 %184, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 %185, i32* %187, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0))
  %189 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %190 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %19, align 8
  %191 = load i32, i32* @OID_AUTO, align 4
  %192 = load i32, i32* @CTLFLAG_RD, align 4
  %193 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %189, %struct.sysctl_oid_list* %190, i32 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i32 %192, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0))
  store %struct.sysctl_oid* %193, %struct.sysctl_oid** %16, align 8
  %194 = load %struct.sysctl_oid*, %struct.sysctl_oid** %16, align 8
  %195 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %194)
  store %struct.sysctl_oid_list* %195, %struct.sysctl_oid_list** %21, align 8
  %196 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %197 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %196, i32 0, i32 0
  store %struct.ena_stats_rx* %197, %struct.ena_stats_rx** %9, align 8
  %198 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %199 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %21, align 8
  %200 = load i32, i32* @OID_AUTO, align 4
  %201 = load i32, i32* @CTLFLAG_RD, align 4
  %202 = load %struct.ena_stats_rx*, %struct.ena_stats_rx** %9, align 8
  %203 = getelementptr inbounds %struct.ena_stats_rx, %struct.ena_stats_rx* %202, i32 0, i32 9
  %204 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %198, %struct.sysctl_oid_list* %199, i32 %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %201, i32* %203, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  %205 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %206 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %21, align 8
  %207 = load i32, i32* @OID_AUTO, align 4
  %208 = load i32, i32* @CTLFLAG_RD, align 4
  %209 = load %struct.ena_stats_rx*, %struct.ena_stats_rx** %9, align 8
  %210 = getelementptr inbounds %struct.ena_stats_rx, %struct.ena_stats_rx* %209, i32 0, i32 8
  %211 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %205, %struct.sysctl_oid_list* %206, i32 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %208, i32* %210, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0))
  %212 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %213 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %21, align 8
  %214 = load i32, i32* @OID_AUTO, align 4
  %215 = load i32, i32* @CTLFLAG_RD, align 4
  %216 = load %struct.ena_stats_rx*, %struct.ena_stats_rx** %9, align 8
  %217 = getelementptr inbounds %struct.ena_stats_rx, %struct.ena_stats_rx* %216, i32 0, i32 7
  %218 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %212, %struct.sysctl_oid_list* %213, i32 %214, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 %215, i32* %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0))
  %219 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %220 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %21, align 8
  %221 = load i32, i32* @OID_AUTO, align 4
  %222 = load i32, i32* @CTLFLAG_RD, align 4
  %223 = load %struct.ena_stats_rx*, %struct.ena_stats_rx** %9, align 8
  %224 = getelementptr inbounds %struct.ena_stats_rx, %struct.ena_stats_rx* %223, i32 0, i32 6
  %225 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %219, %struct.sysctl_oid_list* %220, i32 %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i32 %222, i32* %224, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0))
  %226 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %227 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %21, align 8
  %228 = load i32, i32* @OID_AUTO, align 4
  %229 = load i32, i32* @CTLFLAG_RD, align 4
  %230 = load %struct.ena_stats_rx*, %struct.ena_stats_rx** %9, align 8
  %231 = getelementptr inbounds %struct.ena_stats_rx, %struct.ena_stats_rx* %230, i32 0, i32 5
  %232 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %226, %struct.sysctl_oid_list* %227, i32 %228, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i32 %229, i32* %231, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0))
  %233 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %234 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %21, align 8
  %235 = load i32, i32* @OID_AUTO, align 4
  %236 = load i32, i32* @CTLFLAG_RD, align 4
  %237 = load %struct.ena_stats_rx*, %struct.ena_stats_rx** %9, align 8
  %238 = getelementptr inbounds %struct.ena_stats_rx, %struct.ena_stats_rx* %237, i32 0, i32 4
  %239 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %233, %struct.sysctl_oid_list* %234, i32 %235, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i32 %236, i32* %238, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0))
  %240 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %241 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %21, align 8
  %242 = load i32, i32* @OID_AUTO, align 4
  %243 = load i32, i32* @CTLFLAG_RD, align 4
  %244 = load %struct.ena_stats_rx*, %struct.ena_stats_rx** %9, align 8
  %245 = getelementptr inbounds %struct.ena_stats_rx, %struct.ena_stats_rx* %244, i32 0, i32 3
  %246 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %240, %struct.sysctl_oid_list* %241, i32 %242, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %243, i32* %245, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i64 0, i64 0))
  %247 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %248 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %21, align 8
  %249 = load i32, i32* @OID_AUTO, align 4
  %250 = load i32, i32* @CTLFLAG_RD, align 4
  %251 = load %struct.ena_stats_rx*, %struct.ena_stats_rx** %9, align 8
  %252 = getelementptr inbounds %struct.ena_stats_rx, %struct.ena_stats_rx* %251, i32 0, i32 2
  %253 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %247, %struct.sysctl_oid_list* %248, i32 %249, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i32 %250, i32* %252, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0))
  %254 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %255 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %21, align 8
  %256 = load i32, i32* @OID_AUTO, align 4
  %257 = load i32, i32* @CTLFLAG_RD, align 4
  %258 = load %struct.ena_stats_rx*, %struct.ena_stats_rx** %9, align 8
  %259 = getelementptr inbounds %struct.ena_stats_rx, %struct.ena_stats_rx* %258, i32 0, i32 1
  %260 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %254, %struct.sysctl_oid_list* %255, i32 %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32 %257, i32* %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  %261 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %262 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %21, align 8
  %263 = load i32, i32* @OID_AUTO, align 4
  %264 = load i32, i32* @CTLFLAG_RD, align 4
  %265 = load %struct.ena_stats_rx*, %struct.ena_stats_rx** %9, align 8
  %266 = getelementptr inbounds %struct.ena_stats_rx, %struct.ena_stats_rx* %265, i32 0, i32 0
  %267 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %261, %struct.sysctl_oid_list* %262, i32 %263, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i32 %264, i32* %266, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i64 0, i64 0))
  br label %268

268:                                              ; preds = %84
  %269 = load i32, i32* %25, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %25, align 4
  %271 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %272 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %271, i32 1
  store %struct.ena_ring* %272, %struct.ena_ring** %4, align 8
  %273 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %274 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %273, i32 1
  store %struct.ena_ring* %274, %struct.ena_ring** %5, align 8
  br label %78

275:                                              ; preds = %78
  %276 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %277 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %278 = load i32, i32* @OID_AUTO, align 4
  %279 = load i32, i32* @CTLFLAG_RD, align 4
  %280 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %276, %struct.sysctl_oid_list* %277, i32 %278, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i32 %279, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0))
  store %struct.sysctl_oid* %280, %struct.sysctl_oid** %17, align 8
  %281 = load %struct.sysctl_oid*, %struct.sysctl_oid** %17, align 8
  %282 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %281)
  store %struct.sysctl_oid_list* %282, %struct.sysctl_oid_list** %22, align 8
  %283 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %284 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %22, align 8
  %285 = load i32, i32* @OID_AUTO, align 4
  %286 = load i32, i32* @CTLFLAG_RD, align 4
  %287 = load %struct.ena_hw_stats*, %struct.ena_hw_stats** %6, align 8
  %288 = getelementptr inbounds %struct.ena_hw_stats, %struct.ena_hw_stats* %287, i32 0, i32 4
  %289 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %283, %struct.sysctl_oid_list* %284, i32 %285, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i32 %286, i32* %288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  %290 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %291 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %22, align 8
  %292 = load i32, i32* @OID_AUTO, align 4
  %293 = load i32, i32* @CTLFLAG_RD, align 4
  %294 = load %struct.ena_hw_stats*, %struct.ena_hw_stats** %6, align 8
  %295 = getelementptr inbounds %struct.ena_hw_stats, %struct.ena_hw_stats* %294, i32 0, i32 3
  %296 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %290, %struct.sysctl_oid_list* %291, i32 %292, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i32 %293, i32* %295, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0))
  %297 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %298 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %22, align 8
  %299 = load i32, i32* @OID_AUTO, align 4
  %300 = load i32, i32* @CTLFLAG_RD, align 4
  %301 = load %struct.ena_hw_stats*, %struct.ena_hw_stats** %6, align 8
  %302 = getelementptr inbounds %struct.ena_hw_stats, %struct.ena_hw_stats* %301, i32 0, i32 2
  %303 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %297, %struct.sysctl_oid_list* %298, i32 %299, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0), i32 %300, i32* %302, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0))
  %304 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %305 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %22, align 8
  %306 = load i32, i32* @OID_AUTO, align 4
  %307 = load i32, i32* @CTLFLAG_RD, align 4
  %308 = load %struct.ena_hw_stats*, %struct.ena_hw_stats** %6, align 8
  %309 = getelementptr inbounds %struct.ena_hw_stats, %struct.ena_hw_stats* %308, i32 0, i32 1
  %310 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %304, %struct.sysctl_oid_list* %305, i32 %306, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), i32 %307, i32* %309, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0))
  %311 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %312 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %22, align 8
  %313 = load i32, i32* @OID_AUTO, align 4
  %314 = load i32, i32* @CTLFLAG_RD, align 4
  %315 = load %struct.ena_hw_stats*, %struct.ena_hw_stats** %6, align 8
  %316 = getelementptr inbounds %struct.ena_hw_stats, %struct.ena_hw_stats* %315, i32 0, i32 0
  %317 = call i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list* %311, %struct.sysctl_oid_list* %312, i32 %313, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i32 %314, i32* %316, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0))
  %318 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %319 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %320 = load i32, i32* @OID_AUTO, align 4
  %321 = load i32, i32* @CTLFLAG_RD, align 4
  %322 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %318, %struct.sysctl_oid_list* %319, i32 %320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i32 %321, i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i64 0, i64 0))
  store %struct.sysctl_oid* %322, %struct.sysctl_oid** %18, align 8
  %323 = load %struct.sysctl_oid*, %struct.sysctl_oid** %18, align 8
  %324 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %323)
  store %struct.sysctl_oid_list* %324, %struct.sysctl_oid_list** %23, align 8
  %325 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %326 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %23, align 8
  %327 = load i32, i32* @OID_AUTO, align 4
  %328 = load i32, i32* @CTLFLAG_RD, align 4
  %329 = load %struct.ena_com_stats_admin*, %struct.ena_com_stats_admin** %10, align 8
  %330 = getelementptr inbounds %struct.ena_com_stats_admin, %struct.ena_com_stats_admin* %329, i32 0, i32 4
  %331 = call i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list* %325, %struct.sysctl_oid_list* %326, i32 %327, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i32 %328, i32* %330, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0))
  %332 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %333 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %23, align 8
  %334 = load i32, i32* @OID_AUTO, align 4
  %335 = load i32, i32* @CTLFLAG_RD, align 4
  %336 = load %struct.ena_com_stats_admin*, %struct.ena_com_stats_admin** %10, align 8
  %337 = getelementptr inbounds %struct.ena_com_stats_admin, %struct.ena_com_stats_admin* %336, i32 0, i32 3
  %338 = call i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list* %332, %struct.sysctl_oid_list* %333, i32 %334, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i64 0, i64 0), i32 %335, i32* %337, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i64 0, i64 0))
  %339 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %340 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %23, align 8
  %341 = load i32, i32* @OID_AUTO, align 4
  %342 = load i32, i32* @CTLFLAG_RD, align 4
  %343 = load %struct.ena_com_stats_admin*, %struct.ena_com_stats_admin** %10, align 8
  %344 = getelementptr inbounds %struct.ena_com_stats_admin, %struct.ena_com_stats_admin* %343, i32 0, i32 2
  %345 = call i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list* %339, %struct.sysctl_oid_list* %340, i32 %341, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i64 0, i64 0), i32 %342, i32* %344, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i64 0, i64 0))
  %346 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %347 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %23, align 8
  %348 = load i32, i32* @OID_AUTO, align 4
  %349 = load i32, i32* @CTLFLAG_RD, align 4
  %350 = load %struct.ena_com_stats_admin*, %struct.ena_com_stats_admin** %10, align 8
  %351 = getelementptr inbounds %struct.ena_com_stats_admin, %struct.ena_com_stats_admin* %350, i32 0, i32 1
  %352 = call i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list* %346, %struct.sysctl_oid_list* %347, i32 %348, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i64 0, i64 0), i32 %349, i32* %351, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0))
  %353 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %11, align 8
  %354 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %23, align 8
  %355 = load i32, i32* @OID_AUTO, align 4
  %356 = load i32, i32* @CTLFLAG_RD, align 4
  %357 = load %struct.ena_com_stats_admin*, %struct.ena_com_stats_admin** %10, align 8
  %358 = getelementptr inbounds %struct.ena_com_stats_admin, %struct.ena_com_stats_admin* %357, i32 0, i32 0
  %359 = call i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list* %353, %struct.sysctl_oid_list* %354, i32 %355, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i64 0, i64 0), i32 %356, i32* %358, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_COUNTER_U64(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
