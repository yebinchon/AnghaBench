; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_add_stats_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_add_stats_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.ix_rx_queue*, %struct.ix_tx_queue*, i32 }
%struct.TYPE_2__ = type { %struct.ixgbevf_hw_stats }
%struct.ixgbevf_hw_stats = type { i32, i32, i32, i32, i32 }
%struct.ix_rx_queue = type { i32, %struct.rx_ring }
%struct.rx_ring = type { i32, i32, i32 }
%struct.ix_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"watchdog_events\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Watchdog timeouts\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"link_irq\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Link MSI-X IRQ Handled\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"queue%d\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Queue Name\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"tso_tx\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"TSO Packets\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"tx_packets\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"TX Packets\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"irqs\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"IRQs on queue\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"rx_packets\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"RX packets\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"rx_bytes\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"RX bytes\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"rx_discarded\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Discarded RX packets\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"VF Statistics (read from HW registers)\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"good_pkts_rcvd\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Good Packets Received\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"good_octets_rcvd\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Good Octets Received\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"mcast_pkts_rcvd\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Multicast Packets Received\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"good_pkts_txd\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Good Packets Transmitted\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"good_octets_txd\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Good Octets Transmitted\00", align 1
@QUEUE_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixv_add_stats_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_add_stats_sysctls(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ix_tx_queue*, align 8
  %5 = alloca %struct.ix_rx_queue*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid_list*, align 8
  %9 = alloca %struct.ixgbevf_hw_stats*, align 8
  %10 = alloca %struct.sysctl_oid*, align 8
  %11 = alloca %struct.sysctl_oid*, align 8
  %12 = alloca %struct.sysctl_oid_list*, align 8
  %13 = alloca %struct.sysctl_oid_list*, align 8
  %14 = alloca [32 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.tx_ring*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.rx_ring*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %3, align 4
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 6
  %24 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %23, align 8
  store %struct.ix_tx_queue* %24, %struct.ix_tx_queue** %4, align 8
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 5
  %27 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %26, align 8
  store %struct.ix_rx_queue* %27, %struct.ix_rx_queue** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %28)
  store %struct.sysctl_ctx_list* %29, %struct.sysctl_ctx_list** %6, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %30)
  store %struct.sysctl_oid* %31, %struct.sysctl_oid** %7, align 8
  %32 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %33 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %32)
  store %struct.sysctl_oid_list* %33, %struct.sysctl_oid_list** %8, align 8
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.ixgbevf_hw_stats* %36, %struct.ixgbevf_hw_stats** %9, align 8
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %38 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load i32, i32* @CTLFLAG_RD, align 4
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 3
  %43 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %37, %struct.sysctl_oid_list* %38, i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %40, i32* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %45 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = load i32, i32* @CTLFLAG_RD, align 4
  %48 = load %struct.adapter*, %struct.adapter** %2, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 2
  %50 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %44, %struct.sysctl_oid_list* %45, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %85, %1
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.adapter*, %struct.adapter** %2, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %51
  %58 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %4, align 8
  %59 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %58, i32 0, i32 0
  store %struct.tx_ring* %59, %struct.tx_ring** %16, align 8
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @snprintf(i8* %60, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %64 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %67 = load i32, i32* @CTLFLAG_RD, align 4
  %68 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %63, %struct.sysctl_oid_list* %64, i32 %65, i8* %66, i32 %67, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store %struct.sysctl_oid* %68, %struct.sysctl_oid** %11, align 8
  %69 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %70 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %69)
  store %struct.sysctl_oid_list* %70, %struct.sysctl_oid_list** %13, align 8
  %71 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %72 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %73 = load i32, i32* @OID_AUTO, align 4
  %74 = load i32, i32* @CTLFLAG_RD, align 4
  %75 = load %struct.tx_ring*, %struct.tx_ring** %16, align 8
  %76 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %75, i32 0, i32 1
  %77 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %71, %struct.sysctl_oid_list* %72, i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %74, i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %78 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %79 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = load %struct.tx_ring*, %struct.tx_ring** %16, align 8
  %83 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %82, i32 0, i32 0
  %84 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %78, %struct.sysctl_oid_list* %79, i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %81, i32* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %85

85:                                               ; preds = %57
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  %88 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %4, align 8
  %89 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %88, i32 1
  store %struct.ix_tx_queue* %89, %struct.ix_tx_queue** %4, align 8
  br label %51

90:                                               ; preds = %51
  store i32 0, i32* %17, align 4
  br label %91

91:                                               ; preds = %139, %90
  %92 = load i32, i32* %17, align 4
  %93 = load %struct.adapter*, %struct.adapter** %2, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %144

97:                                               ; preds = %91
  %98 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %5, align 8
  %99 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %98, i32 0, i32 1
  store %struct.rx_ring* %99, %struct.rx_ring** %18, align 8
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @snprintf(i8* %100, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %104 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %105 = load i32, i32* @OID_AUTO, align 4
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %107 = load i32, i32* @CTLFLAG_RD, align 4
  %108 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %103, %struct.sysctl_oid_list* %104, i32 %105, i8* %106, i32 %107, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store %struct.sysctl_oid* %108, %struct.sysctl_oid** %11, align 8
  %109 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %110 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %109)
  store %struct.sysctl_oid_list* %110, %struct.sysctl_oid_list** %13, align 8
  %111 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %112 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %113 = load i32, i32* @OID_AUTO, align 4
  %114 = load i32, i32* @CTLFLAG_RD, align 4
  %115 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %5, align 8
  %116 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %115, i32 0, i32 0
  %117 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %111, %struct.sysctl_oid_list* %112, i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %114, i32* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %118 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %119 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %120 = load i32, i32* @OID_AUTO, align 4
  %121 = load i32, i32* @CTLFLAG_RD, align 4
  %122 = load %struct.rx_ring*, %struct.rx_ring** %18, align 8
  %123 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %122, i32 0, i32 2
  %124 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %118, %struct.sysctl_oid_list* %119, i32 %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %121, i32* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %125 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %126 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %127 = load i32, i32* @OID_AUTO, align 4
  %128 = load i32, i32* @CTLFLAG_RD, align 4
  %129 = load %struct.rx_ring*, %struct.rx_ring** %18, align 8
  %130 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %129, i32 0, i32 1
  %131 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %125, %struct.sysctl_oid_list* %126, i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %128, i32* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %132 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %133 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %13, align 8
  %134 = load i32, i32* @OID_AUTO, align 4
  %135 = load i32, i32* @CTLFLAG_RD, align 4
  %136 = load %struct.rx_ring*, %struct.rx_ring** %18, align 8
  %137 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %136, i32 0, i32 0
  %138 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %132, %struct.sysctl_oid_list* %133, i32 %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %135, i32* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %139

139:                                              ; preds = %97
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  %142 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %5, align 8
  %143 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %142, i32 1
  store %struct.ix_rx_queue* %143, %struct.ix_rx_queue** %5, align 8
  br label %91

144:                                              ; preds = %91
  %145 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %146 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %147 = load i32, i32* @OID_AUTO, align 4
  %148 = load i32, i32* @CTLFLAG_RD, align 4
  %149 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %145, %struct.sysctl_oid_list* %146, i32 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %148, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0))
  store %struct.sysctl_oid* %149, %struct.sysctl_oid** %10, align 8
  %150 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %151 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %150)
  store %struct.sysctl_oid_list* %151, %struct.sysctl_oid_list** %12, align 8
  %152 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %153 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %154 = load i32, i32* @OID_AUTO, align 4
  %155 = load i32, i32* @CTLFLAG_RD, align 4
  %156 = load %struct.ixgbevf_hw_stats*, %struct.ixgbevf_hw_stats** %9, align 8
  %157 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %156, i32 0, i32 4
  %158 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %152, %struct.sysctl_oid_list* %153, i32 %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %155, i32* %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %159 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %160 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %161 = load i32, i32* @OID_AUTO, align 4
  %162 = load i32, i32* @CTLFLAG_RD, align 4
  %163 = load %struct.ixgbevf_hw_stats*, %struct.ixgbevf_hw_stats** %9, align 8
  %164 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %163, i32 0, i32 3
  %165 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %159, %struct.sysctl_oid_list* %160, i32 %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %162, i32* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  %166 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %167 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %168 = load i32, i32* @OID_AUTO, align 4
  %169 = load i32, i32* @CTLFLAG_RD, align 4
  %170 = load %struct.ixgbevf_hw_stats*, %struct.ixgbevf_hw_stats** %9, align 8
  %171 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %170, i32 0, i32 2
  %172 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %166, %struct.sysctl_oid_list* %167, i32 %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 %169, i32* %171, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  %173 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %174 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %175 = load i32, i32* @OID_AUTO, align 4
  %176 = load i32, i32* @CTLFLAG_RD, align 4
  %177 = load %struct.ixgbevf_hw_stats*, %struct.ixgbevf_hw_stats** %9, align 8
  %178 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %177, i32 0, i32 1
  %179 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %173, %struct.sysctl_oid_list* %174, i32 %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 %176, i32* %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0))
  %180 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %181 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %12, align 8
  %182 = load i32, i32* @OID_AUTO, align 4
  %183 = load i32, i32* @CTLFLAG_RD, align 4
  %184 = load %struct.ixgbevf_hw_stats*, %struct.ixgbevf_hw_stats** %9, align 8
  %185 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %184, i32 0, i32 0
  %186 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %180, %struct.sysctl_oid_list* %181, i32 %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i32 %183, i32* %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
