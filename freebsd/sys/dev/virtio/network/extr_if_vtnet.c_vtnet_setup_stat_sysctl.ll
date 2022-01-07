; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_setup_stat_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_setup_stat_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.vtnet_softc = type { %struct.vtnet_statistics }
%struct.vtnet_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vtnet_rxq_stats = type { i32, i32, i32 }
%struct.vtnet_txq_stats = type { i32, i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mbuf_alloc_failed\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Mbuf cluster allocation failures\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"rx_frame_too_large\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Received frame larger than the mbuf chain\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"rx_enq_replacement_failed\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Enqueuing the replacement receive mbuf failed\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"rx_mergeable_failed\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Mergeable buffers receive failures\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"rx_csum_bad_ethtype\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Received checksum offloaded buffer with unsupported Ethernet type\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"rx_csum_bad_ipproto\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"Received checksum offloaded buffer with incorrect IP protocol\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"rx_csum_bad_offset\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Received checksum offloaded buffer with incorrect offset\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"rx_csum_bad_proto\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"Received checksum offloaded buffer with incorrect protocol\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"rx_csum_failed\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Received buffer checksum offload failed\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"rx_csum_offloaded\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Received buffer checksum offload succeeded\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"rx_task_rescheduled\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"Times the receive interrupt task rescheduled itself\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"tx_csum_bad_ethtype\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"Aborted transmit of checksum offloaded buffer with unknown Ethernet type\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"tx_tso_bad_ethtype\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"Aborted transmit of TSO buffer with unknown Ethernet type\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"tx_tso_not_tcp\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"Aborted transmit of TSO buffer with non TCP protocol\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"tx_defragged\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Transmit mbufs defragged\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"tx_defrag_failed\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"Aborted transmit of buffer because defrag failed\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"tx_csum_offloaded\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"Offloaded checksum of transmitted buffer\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"tx_tso_offloaded\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Segmentation offload of transmitted buffer\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"tx_task_rescheduled\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"Times the transmit interrupt task rescheduled itself\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, %struct.vtnet_softc*)* @vtnet_setup_stat_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_setup_stat_sysctl(%struct.sysctl_ctx_list* %0, %struct.sysctl_oid_list* %1, %struct.vtnet_softc* %2) #0 {
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.vtnet_softc*, align 8
  %7 = alloca %struct.vtnet_statistics*, align 8
  %8 = alloca %struct.vtnet_rxq_stats, align 4
  %9 = alloca %struct.vtnet_txq_stats, align 4
  store %struct.sysctl_ctx_list* %0, %struct.sysctl_ctx_list** %4, align 8
  store %struct.sysctl_oid_list* %1, %struct.sysctl_oid_list** %5, align 8
  store %struct.vtnet_softc* %2, %struct.vtnet_softc** %6, align 8
  %10 = load %struct.vtnet_softc*, %struct.vtnet_softc** %6, align 8
  %11 = call i32 @vtnet_accum_stats(%struct.vtnet_softc* %10, %struct.vtnet_rxq_stats* %8, %struct.vtnet_txq_stats* %9)
  %12 = load %struct.vtnet_softc*, %struct.vtnet_softc** %6, align 8
  %13 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %12, i32 0, i32 0
  store %struct.vtnet_statistics* %13, %struct.vtnet_statistics** %7, align 8
  %14 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %8, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %17 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %8, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %21 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %25 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %9, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %29 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %9, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %33 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.vtnet_txq_stats, %struct.vtnet_txq_stats* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %37 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %39 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RD, align 4
  %42 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %43 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %42, i32 0, i32 18
  %44 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %38, %struct.sysctl_oid_list* %39, i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %41, i32* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %46 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %47 = load i32, i32* @OID_AUTO, align 4
  %48 = load i32, i32* @CTLFLAG_RD, align 4
  %49 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %50 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %49, i32 0, i32 17
  %51 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %45, %struct.sysctl_oid_list* %46, i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %53 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %57 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %56, i32 0, i32 16
  %58 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %52, %struct.sysctl_oid_list* %53, i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %59 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %60 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %61 = load i32, i32* @OID_AUTO, align 4
  %62 = load i32, i32* @CTLFLAG_RD, align 4
  %63 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %64 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %63, i32 0, i32 15
  %65 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %59, %struct.sysctl_oid_list* %60, i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %62, i32* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %66 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %67 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %68 = load i32, i32* @OID_AUTO, align 4
  %69 = load i32, i32* @CTLFLAG_RD, align 4
  %70 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %71 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %70, i32 0, i32 14
  %72 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %66, %struct.sysctl_oid_list* %67, i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %69, i32* %71, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  %73 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %74 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLFLAG_RD, align 4
  %77 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %78 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %77, i32 0, i32 13
  %79 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %73, %struct.sysctl_oid_list* %74, i32 %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %76, i32* %78, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0))
  %80 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %81 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %82 = load i32, i32* @OID_AUTO, align 4
  %83 = load i32, i32* @CTLFLAG_RD, align 4
  %84 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %85 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %84, i32 0, i32 12
  %86 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %80, %struct.sysctl_oid_list* %81, i32 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %83, i32* %85, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0))
  %87 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %88 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %89 = load i32, i32* @OID_AUTO, align 4
  %90 = load i32, i32* @CTLFLAG_RD, align 4
  %91 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %92 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %91, i32 0, i32 11
  %93 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %87, %struct.sysctl_oid_list* %88, i32 %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %90, i32* %92, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0))
  %94 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %95 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %96 = load i32, i32* @OID_AUTO, align 4
  %97 = load i32, i32* @CTLFLAG_RD, align 4
  %98 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %99 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %98, i32 0, i32 10
  %100 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %94, %struct.sysctl_oid_list* %95, i32 %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %97, i32* %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  %101 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %102 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %103 = load i32, i32* @OID_AUTO, align 4
  %104 = load i32, i32* @CTLFLAG_RD, align 4
  %105 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %106 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %105, i32 0, i32 9
  %107 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %101, %struct.sysctl_oid_list* %102, i32 %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %104, i32* %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0))
  %108 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %109 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %110 = load i32, i32* @OID_AUTO, align 4
  %111 = load i32, i32* @CTLFLAG_RD, align 4
  %112 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %113 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %112, i32 0, i32 8
  %114 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %108, %struct.sysctl_oid_list* %109, i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %111, i32* %113, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0))
  %115 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %116 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %117 = load i32, i32* @OID_AUTO, align 4
  %118 = load i32, i32* @CTLFLAG_RD, align 4
  %119 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %120 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %119, i32 0, i32 7
  %121 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %115, %struct.sysctl_oid_list* %116, i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %118, i32* %120, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0))
  %122 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %123 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLFLAG_RD, align 4
  %126 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %127 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %126, i32 0, i32 6
  %128 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %122, %struct.sysctl_oid_list* %123, i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %125, i32* %127, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i64 0, i64 0))
  %129 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %130 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %131 = load i32, i32* @OID_AUTO, align 4
  %132 = load i32, i32* @CTLFLAG_RD, align 4
  %133 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %134 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %133, i32 0, i32 5
  %135 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %129, %struct.sysctl_oid_list* %130, i32 %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i32 %132, i32* %134, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0))
  %136 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %137 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %138 = load i32, i32* @OID_AUTO, align 4
  %139 = load i32, i32* @CTLFLAG_RD, align 4
  %140 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %141 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %140, i32 0, i32 4
  %142 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %136, %struct.sysctl_oid_list* %137, i32 %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32 %139, i32* %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  %143 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %144 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %145 = load i32, i32* @OID_AUTO, align 4
  %146 = load i32, i32* @CTLFLAG_RD, align 4
  %147 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %148 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %147, i32 0, i32 3
  %149 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %143, %struct.sysctl_oid_list* %144, i32 %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %146, i32* %148, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i64 0, i64 0))
  %150 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %151 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %152 = load i32, i32* @OID_AUTO, align 4
  %153 = load i32, i32* @CTLFLAG_RD, align 4
  %154 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %155 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %154, i32 0, i32 2
  %156 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %150, %struct.sysctl_oid_list* %151, i32 %152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i32 %153, i32* %155, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0))
  %157 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %158 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %159 = load i32, i32* @OID_AUTO, align 4
  %160 = load i32, i32* @CTLFLAG_RD, align 4
  %161 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %162 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %161, i32 0, i32 1
  %163 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %157, %struct.sysctl_oid_list* %158, i32 %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i32 %160, i32* %162, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0))
  %164 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %165 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %166 = load i32, i32* @OID_AUTO, align 4
  %167 = load i32, i32* @CTLFLAG_RD, align 4
  %168 = load %struct.vtnet_statistics*, %struct.vtnet_statistics** %7, align 8
  %169 = getelementptr inbounds %struct.vtnet_statistics, %struct.vtnet_statistics* %168, i32 0, i32 0
  %170 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %164, %struct.sysctl_oid_list* %165, i32 %166, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i32 %167, i32* %169, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i64 0, i64 0))
  ret void
}

declare dso_local i32 @vtnet_accum_stats(%struct.vtnet_softc*, %struct.vtnet_rxq_stats*, %struct.vtnet_txq_stats*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
