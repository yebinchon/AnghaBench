; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_storm_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_storm_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i64, %struct.bxe_fw_port_stats_old, %struct.TYPE_8__, %struct.TYPE_12__*, %struct.bxe_fastpath*, %struct.bxe_eth_stats_old, %struct.bxe_eth_stats, %struct.host_func_stats }
%struct.bxe_fw_port_stats_old = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.xstorm_per_queue_stats, %struct.ustorm_per_queue_stats, %struct.tstorm_per_queue_stats }
%struct.xstorm_per_queue_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.ustorm_per_queue_stats = type { i32 }
%struct.tstorm_per_queue_stats = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.tstorm_per_pf_stats }
%struct.tstorm_per_pf_stats = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.tstorm_per_port_stats }
%struct.tstorm_per_port_stats = type { i32 }
%struct.bxe_fastpath = type { %struct.bxe_eth_q_stats_old, %struct.bxe_eth_q_stats, %struct.xstorm_per_queue_stats, %struct.ustorm_per_queue_stats, %struct.tstorm_per_queue_stats }
%struct.bxe_eth_q_stats_old = type { i32 }
%struct.bxe_eth_q_stats = type { i32, i64, i32, i64, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.bxe_eth_stats_old = type { i32 }
%struct.bxe_eth_stats = type { i32, i64, i32, i64, i64, i64 }
%struct.host_func_stats = type { i64, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@DBG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"queue[%d]: ucast_sent 0x%x bcast_sent 0x%x mcast_sent 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"---------------\0A\00", align 1
@total_broadcast_bytes_received = common dso_local global i32 0, align 4
@total_multicast_bytes_received = common dso_local global i32 0, align 4
@total_unicast_bytes_received = common dso_local global i32 0, align 4
@rcv_ucast_pkts = common dso_local global i32 0, align 4
@total_unicast_packets_received = common dso_local global i32 0, align 4
@rcv_mcast_pkts = common dso_local global i32 0, align 4
@total_multicast_packets_received = common dso_local global i32 0, align 4
@rcv_bcast_pkts = common dso_local global i32 0, align 4
@total_broadcast_packets_received = common dso_local global i32 0, align 4
@pkts_too_big_discard = common dso_local global i32 0, align 4
@etherstatsoverrsizepkts = common dso_local global i32 0, align 4
@no_buff_discard = common dso_local global i32 0, align 4
@ucast_no_buff_pkts = common dso_local global i32 0, align 4
@mcast_no_buff_pkts = common dso_local global i32 0, align 4
@bcast_no_buff_pkts = common dso_local global i32 0, align 4
@total_broadcast_bytes_transmitted = common dso_local global i32 0, align 4
@total_multicast_bytes_transmitted = common dso_local global i32 0, align 4
@total_unicast_bytes_transmitted = common dso_local global i32 0, align 4
@ucast_pkts_sent = common dso_local global i32 0, align 4
@total_unicast_packets_transmitted = common dso_local global i32 0, align 4
@mcast_pkts_sent = common dso_local global i32 0, align 4
@total_multicast_packets_transmitted = common dso_local global i32 0, align 4
@bcast_pkts_sent = common dso_local global i32 0, align 4
@total_broadcast_packets_transmitted = common dso_local global i32 0, align 4
@checksum_discard = common dso_local global i32 0, align 4
@total_packets_received_checksum_discarded = common dso_local global i32 0, align 4
@ttl0_discard = common dso_local global i32 0, align 4
@total_packets_received_ttl0_discarded = common dso_local global i32 0, align 4
@error_drop_pkts = common dso_local global i32 0, align 4
@total_transmitted_dropped_packets_error = common dso_local global i32 0, align 4
@coalesced_events = common dso_local global i32 0, align 4
@total_tpa_aggregations = common dso_local global i32 0, align 4
@coalesced_pkts = common dso_local global i32 0, align 4
@total_tpa_aggregated_frames = common dso_local global i32 0, align 4
@total_tpa_bytes = common dso_local global i32 0, align 4
@total_bytes_received = common dso_local global i32 0, align 4
@total_bytes_transmitted = common dso_local global i32 0, align 4
@valid_bytes_received = common dso_local global i32 0, align 4
@rx_stat_dot3statsframestoolong = common dso_local global i32 0, align 4
@mac_filter_discard = common dso_local global i32 0, align 4
@mf_tag_discard = common dso_local global i32 0, align 4
@brb_truncate_discard = common dso_local global i32 0, align 4
@mac_discard = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_storm_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_storm_stats_update(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.tstorm_per_port_stats*, align 8
  %5 = alloca %struct.tstorm_per_pf_stats*, align 8
  %6 = alloca %struct.host_func_stats*, align 8
  %7 = alloca %struct.bxe_eth_stats*, align 8
  %8 = alloca %struct.bxe_eth_stats_old*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bxe_fastpath*, align 8
  %11 = alloca %struct.tstorm_per_queue_stats*, align 8
  %12 = alloca %struct.tstorm_per_queue_stats*, align 8
  %13 = alloca %struct.ustorm_per_queue_stats*, align 8
  %14 = alloca %struct.ustorm_per_queue_stats*, align 8
  %15 = alloca %struct.xstorm_per_queue_stats*, align 8
  %16 = alloca %struct.xstorm_per_queue_stats*, align 8
  %17 = alloca %struct.bxe_eth_q_stats*, align 8
  %18 = alloca %struct.bxe_eth_q_stats_old*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.bxe_fw_port_stats_old*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %21, i32 0, i32 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store %struct.tstorm_per_port_stats* %25, %struct.tstorm_per_port_stats** %4, align 8
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %27 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %26, i32 0, i32 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store %struct.tstorm_per_pf_stats* %30, %struct.tstorm_per_pf_stats** %5, align 8
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %31, i32 0, i32 8
  store %struct.host_func_stats* %32, %struct.host_func_stats** %6, align 8
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %33, i32 0, i32 7
  store %struct.bxe_eth_stats* %34, %struct.bxe_eth_stats** %7, align 8
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %35, i32 0, i32 6
  store %struct.bxe_eth_stats_old* %36, %struct.bxe_eth_stats_old** %8, align 8
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = call i64 @IS_PF(%struct.bxe_softc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %1
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %42 = call i64 @bxe_storm_stats_validate_counters(%struct.bxe_softc* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %400

47:                                               ; preds = %40, %1
  %48 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %49 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %51 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %312, %47
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %55 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %315

58:                                               ; preds = %52
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %60 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %59, i32 0, i32 5
  %61 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %61, i64 %63
  store %struct.bxe_fastpath* %64, %struct.bxe_fastpath** %10, align 8
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %66 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %65, i32 0, i32 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store %struct.tstorm_per_queue_stats* %73, %struct.tstorm_per_queue_stats** %11, align 8
  %74 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %10, align 8
  %75 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %74, i32 0, i32 4
  store %struct.tstorm_per_queue_stats* %75, %struct.tstorm_per_queue_stats** %12, align 8
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %77 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %76, i32 0, i32 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  store %struct.ustorm_per_queue_stats* %84, %struct.ustorm_per_queue_stats** %13, align 8
  %85 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %10, align 8
  %86 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %85, i32 0, i32 3
  store %struct.ustorm_per_queue_stats* %86, %struct.ustorm_per_queue_stats** %14, align 8
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %88 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %87, i32 0, i32 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store %struct.xstorm_per_queue_stats* %95, %struct.xstorm_per_queue_stats** %15, align 8
  %96 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %10, align 8
  %97 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %96, i32 0, i32 2
  store %struct.xstorm_per_queue_stats* %97, %struct.xstorm_per_queue_stats** %16, align 8
  %98 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %10, align 8
  %99 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %98, i32 0, i32 1
  store %struct.bxe_eth_q_stats* %99, %struct.bxe_eth_q_stats** %17, align 8
  %100 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %10, align 8
  %101 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %100, i32 0, i32 0
  store %struct.bxe_eth_q_stats_old* %101, %struct.bxe_eth_q_stats_old** %18, align 8
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %103 = load i32, i32* @DBG_STATS, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %15, align 8
  %106 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %15, align 8
  %109 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %15, align 8
  %112 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %102, i32 %103, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %107, i32 %110, i32 %113)
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %116 = load i32, i32* @DBG_STATS, align 4
  %117 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %115, i32 %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %11, align 8
  %119 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @total_broadcast_bytes_received, align 4
  %122 = call i32 @UPDATE_QSTAT(i32 %120, i32 %121)
  %123 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %11, align 8
  %124 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @total_multicast_bytes_received, align 4
  %127 = call i32 @UPDATE_QSTAT(i32 %125, i32 %126)
  %128 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %11, align 8
  %129 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @total_unicast_bytes_received, align 4
  %132 = call i32 @UPDATE_QSTAT(i32 %130, i32 %131)
  %133 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %134 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %133, i32 0, i32 17
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %137 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %136, i32 0, i32 10
  store i64 %135, i64* %137, align 8
  %138 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %139 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %138, i32 0, i32 16
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %142 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %141, i32 0, i32 8
  store i64 %140, i64* %142, align 8
  %143 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %144 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %143, i32 0, i32 10
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %147 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %146, i32 0, i32 15
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %150 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %153 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %152, i32 0, i32 14
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @ADD_64(i64 %145, i32 %148, i64 %151, i32 %154)
  %156 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %157 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %156, i32 0, i32 10
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %160 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %159, i32 0, i32 13
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %163 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %162, i32 0, i32 8
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %166 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %165, i32 0, i32 12
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ADD_64(i64 %158, i32 %161, i64 %164, i32 %167)
  %169 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %170 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %169, i32 0, i32 10
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %173 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %172, i32 0, i32 11
  store i64 %171, i64* %173, align 8
  %174 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %175 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %174, i32 0, i32 8
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %178 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %177, i32 0, i32 9
  store i64 %176, i64* %178, align 8
  %179 = load i32, i32* @rcv_ucast_pkts, align 4
  %180 = load i32, i32* @total_unicast_packets_received, align 4
  %181 = call i32 @UPDATE_EXTEND_TSTAT(i32 %179, i32 %180)
  %182 = load i32, i32* @rcv_mcast_pkts, align 4
  %183 = load i32, i32* @total_multicast_packets_received, align 4
  %184 = call i32 @UPDATE_EXTEND_TSTAT(i32 %182, i32 %183)
  %185 = load i32, i32* @rcv_bcast_pkts, align 4
  %186 = load i32, i32* @total_broadcast_packets_received, align 4
  %187 = call i32 @UPDATE_EXTEND_TSTAT(i32 %185, i32 %186)
  %188 = load i32, i32* @pkts_too_big_discard, align 4
  %189 = load i32, i32* @etherstatsoverrsizepkts, align 4
  %190 = call i32 @UPDATE_EXTEND_E_TSTAT(i32 %188, i32 %189, i32 32)
  %191 = load i32, i32* @no_buff_discard, align 4
  %192 = load i32, i32* @no_buff_discard, align 4
  %193 = call i32 @UPDATE_EXTEND_E_TSTAT(i32 %191, i32 %192, i32 16)
  %194 = load i32, i32* @ucast_no_buff_pkts, align 4
  %195 = load i32, i32* @total_unicast_packets_received, align 4
  %196 = call i32 @SUB_EXTEND_USTAT(i32 %194, i32 %195)
  %197 = load i32, i32* @mcast_no_buff_pkts, align 4
  %198 = load i32, i32* @total_multicast_packets_received, align 4
  %199 = call i32 @SUB_EXTEND_USTAT(i32 %197, i32 %198)
  %200 = load i32, i32* @bcast_no_buff_pkts, align 4
  %201 = load i32, i32* @total_broadcast_packets_received, align 4
  %202 = call i32 @SUB_EXTEND_USTAT(i32 %200, i32 %201)
  %203 = load i32, i32* @ucast_no_buff_pkts, align 4
  %204 = load i32, i32* @no_buff_discard, align 4
  %205 = call i32 @UPDATE_EXTEND_E_USTAT(i32 %203, i32 %204)
  %206 = load i32, i32* @mcast_no_buff_pkts, align 4
  %207 = load i32, i32* @no_buff_discard, align 4
  %208 = call i32 @UPDATE_EXTEND_E_USTAT(i32 %206, i32 %207)
  %209 = load i32, i32* @bcast_no_buff_pkts, align 4
  %210 = load i32, i32* @no_buff_discard, align 4
  %211 = call i32 @UPDATE_EXTEND_E_USTAT(i32 %209, i32 %210)
  %212 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %15, align 8
  %213 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @total_broadcast_bytes_transmitted, align 4
  %216 = call i32 @UPDATE_QSTAT(i32 %214, i32 %215)
  %217 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %15, align 8
  %218 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @total_multicast_bytes_transmitted, align 4
  %221 = call i32 @UPDATE_QSTAT(i32 %219, i32 %220)
  %222 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %15, align 8
  %223 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @total_unicast_bytes_transmitted, align 4
  %226 = call i32 @UPDATE_QSTAT(i32 %224, i32 %225)
  %227 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %228 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %227, i32 0, i32 7
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %231 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %230, i32 0, i32 3
  store i64 %229, i64* %231, align 8
  %232 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %233 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %232, i32 0, i32 6
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %236 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %235, i32 0, i32 1
  store i64 %234, i64* %236, align 8
  %237 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %238 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %241 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %244 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %247 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @ADD_64(i64 %239, i32 %242, i64 %245, i32 %248)
  %250 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %251 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %254 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %257 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %17, align 8
  %260 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @ADD_64(i64 %252, i32 %255, i64 %258, i32 %261)
  %263 = load i32, i32* @ucast_pkts_sent, align 4
  %264 = load i32, i32* @total_unicast_packets_transmitted, align 4
  %265 = call i32 @UPDATE_EXTEND_XSTAT(i32 %263, i32 %264)
  %266 = load i32, i32* @mcast_pkts_sent, align 4
  %267 = load i32, i32* @total_multicast_packets_transmitted, align 4
  %268 = call i32 @UPDATE_EXTEND_XSTAT(i32 %266, i32 %267)
  %269 = load i32, i32* @bcast_pkts_sent, align 4
  %270 = load i32, i32* @total_broadcast_packets_transmitted, align 4
  %271 = call i32 @UPDATE_EXTEND_XSTAT(i32 %269, i32 %270)
  %272 = load i32, i32* @checksum_discard, align 4
  %273 = load i32, i32* @total_packets_received_checksum_discarded, align 4
  %274 = call i32 @UPDATE_EXTEND_TSTAT(i32 %272, i32 %273)
  %275 = load i32, i32* @ttl0_discard, align 4
  %276 = load i32, i32* @total_packets_received_ttl0_discarded, align 4
  %277 = call i32 @UPDATE_EXTEND_TSTAT(i32 %275, i32 %276)
  %278 = load i32, i32* @error_drop_pkts, align 4
  %279 = load i32, i32* @total_transmitted_dropped_packets_error, align 4
  %280 = call i32 @UPDATE_EXTEND_XSTAT(i32 %278, i32 %279)
  %281 = load i32, i32* @coalesced_events, align 4
  %282 = load i32, i32* @total_tpa_aggregations, align 4
  %283 = call i32 @UPDATE_EXTEND_E_USTAT(i32 %281, i32 %282)
  %284 = load i32, i32* @coalesced_pkts, align 4
  %285 = load i32, i32* @total_tpa_aggregated_frames, align 4
  %286 = call i32 @UPDATE_EXTEND_E_USTAT(i32 %284, i32 %285)
  %287 = load %struct.ustorm_per_queue_stats*, %struct.ustorm_per_queue_stats** %13, align 8
  %288 = getelementptr inbounds %struct.ustorm_per_queue_stats, %struct.ustorm_per_queue_stats* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @total_tpa_bytes, align 4
  %291 = call i32 @UPDATE_QSTAT(i32 %289, i32 %290)
  %292 = load i32, i32* @total_tpa_bytes, align 4
  %293 = call i32 @UPDATE_ESTAT_QSTAT_64(i32 %292)
  %294 = load i32, i32* @total_bytes_received, align 4
  %295 = call i32 @UPDATE_FSTAT_QSTAT(i32 %294)
  %296 = load i32, i32* @total_bytes_transmitted, align 4
  %297 = call i32 @UPDATE_FSTAT_QSTAT(i32 %296)
  %298 = load i32, i32* @total_unicast_packets_received, align 4
  %299 = call i32 @UPDATE_FSTAT_QSTAT(i32 %298)
  %300 = load i32, i32* @total_multicast_packets_received, align 4
  %301 = call i32 @UPDATE_FSTAT_QSTAT(i32 %300)
  %302 = load i32, i32* @total_broadcast_packets_received, align 4
  %303 = call i32 @UPDATE_FSTAT_QSTAT(i32 %302)
  %304 = load i32, i32* @total_unicast_packets_transmitted, align 4
  %305 = call i32 @UPDATE_FSTAT_QSTAT(i32 %304)
  %306 = load i32, i32* @total_multicast_packets_transmitted, align 4
  %307 = call i32 @UPDATE_FSTAT_QSTAT(i32 %306)
  %308 = load i32, i32* @total_broadcast_packets_transmitted, align 4
  %309 = call i32 @UPDATE_FSTAT_QSTAT(i32 %308)
  %310 = load i32, i32* @valid_bytes_received, align 4
  %311 = call i32 @UPDATE_FSTAT_QSTAT(i32 %310)
  br label %312

312:                                              ; preds = %58
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %9, align 4
  br label %52

315:                                              ; preds = %52
  %316 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %317 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %320 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %323 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %322, i32 0, i32 4
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %326 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @ADD_64(i64 %318, i32 %321, i64 %324, i32 %327)
  %329 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %330 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %329, i32 0, i32 5
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.tstorm_per_pf_stats*, %struct.tstorm_per_pf_stats** %5, align 8
  %333 = getelementptr inbounds %struct.tstorm_per_pf_stats, %struct.tstorm_per_pf_stats* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %337 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %336, i32 0, i32 4
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.tstorm_per_pf_stats*, %struct.tstorm_per_pf_stats** %5, align 8
  %340 = getelementptr inbounds %struct.tstorm_per_pf_stats, %struct.tstorm_per_pf_stats* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @ADD_64_LE(i64 %331, i32 %335, i64 %338, i32 %342)
  %344 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %345 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.tstorm_per_pf_stats*, %struct.tstorm_per_pf_stats** %5, align 8
  %348 = getelementptr inbounds %struct.tstorm_per_pf_stats, %struct.tstorm_per_pf_stats* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %352 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.tstorm_per_pf_stats*, %struct.tstorm_per_pf_stats** %5, align 8
  %355 = getelementptr inbounds %struct.tstorm_per_pf_stats, %struct.tstorm_per_pf_stats* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @ADD_64_LE(i64 %346, i32 %350, i64 %353, i32 %357)
  %359 = load i32, i32* @etherstatsoverrsizepkts, align 4
  %360 = load i32, i32* @rx_stat_dot3statsframestoolong, align 4
  %361 = call i32 @UPDATE_ESTAT(i32 %359, i32 %360)
  %362 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %363 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %362, i32 0, i32 3
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %366 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %369 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %372 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @ADD_64(i64 %364, i32 %367, i64 %370, i32 %373)
  %375 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %376 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %391

380:                                              ; preds = %315
  %381 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %382 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %381, i32 0, i32 2
  store %struct.bxe_fw_port_stats_old* %382, %struct.bxe_fw_port_stats_old** %20, align 8
  %383 = load i32, i32* @mac_filter_discard, align 4
  %384 = call i32 @UPDATE_FW_STAT(i32 %383)
  %385 = load i32, i32* @mf_tag_discard, align 4
  %386 = call i32 @UPDATE_FW_STAT(i32 %385)
  %387 = load i32, i32* @brb_truncate_discard, align 4
  %388 = call i32 @UPDATE_FW_STAT(i32 %387)
  %389 = load i32, i32* @mac_discard, align 4
  %390 = call i32 @UPDATE_FW_STAT(i32 %389)
  br label %391

391:                                              ; preds = %380, %315
  %392 = load %struct.host_func_stats*, %struct.host_func_stats** %6, align 8
  %393 = getelementptr inbounds %struct.host_func_stats, %struct.host_func_stats* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %394, 1
  store i64 %395, i64* %393, align 8
  %396 = load %struct.host_func_stats*, %struct.host_func_stats** %6, align 8
  %397 = getelementptr inbounds %struct.host_func_stats, %struct.host_func_stats* %396, i32 0, i32 1
  store i64 %395, i64* %397, align 8
  %398 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %399 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %398, i32 0, i32 1
  store i64 0, i64* %399, align 8
  store i32 0, i32* %2, align 4
  br label %400

400:                                              ; preds = %391, %44
  %401 = load i32, i32* %2, align 4
  ret i32 %401
}

declare dso_local i64 @IS_PF(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_storm_stats_validate_counters(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @UPDATE_QSTAT(i32, i32) #1

declare dso_local i32 @ADD_64(i64, i32, i64, i32) #1

declare dso_local i32 @UPDATE_EXTEND_TSTAT(i32, i32) #1

declare dso_local i32 @UPDATE_EXTEND_E_TSTAT(i32, i32, i32) #1

declare dso_local i32 @SUB_EXTEND_USTAT(i32, i32) #1

declare dso_local i32 @UPDATE_EXTEND_E_USTAT(i32, i32) #1

declare dso_local i32 @UPDATE_EXTEND_XSTAT(i32, i32) #1

declare dso_local i32 @UPDATE_ESTAT_QSTAT_64(i32) #1

declare dso_local i32 @UPDATE_FSTAT_QSTAT(i32) #1

declare dso_local i32 @ADD_64_LE(i64, i32, i64, i32) #1

declare dso_local i32 @UPDATE_ESTAT(i32, i32) #1

declare dso_local i32 @UPDATE_FW_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
