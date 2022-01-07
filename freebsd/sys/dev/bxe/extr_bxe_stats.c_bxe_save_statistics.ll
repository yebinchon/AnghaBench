; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_save_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_save_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.bxe_fw_port_stats_old, %struct.bxe_eth_stats, %struct.TYPE_2__, %struct.bxe_fastpath* }
%struct.bxe_fw_port_stats_old = type { i32, i32, i32, i32 }
%struct.bxe_eth_stats = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bxe_fastpath = type { %struct.bxe_eth_q_stats_old, %struct.bxe_eth_q_stats }
%struct.bxe_eth_q_stats_old = type { i32 }
%struct.bxe_eth_q_stats = type { i32 }
%struct.host_port_stats = type { i32, i32, i32, i32 }

@total_unicast_bytes_received_hi = common dso_local global i32 0, align 4
@total_unicast_bytes_received_lo = common dso_local global i32 0, align 4
@total_broadcast_bytes_received_hi = common dso_local global i32 0, align 4
@total_broadcast_bytes_received_lo = common dso_local global i32 0, align 4
@total_multicast_bytes_received_hi = common dso_local global i32 0, align 4
@total_multicast_bytes_received_lo = common dso_local global i32 0, align 4
@total_unicast_bytes_transmitted_hi = common dso_local global i32 0, align 4
@total_unicast_bytes_transmitted_lo = common dso_local global i32 0, align 4
@total_broadcast_bytes_transmitted_hi = common dso_local global i32 0, align 4
@total_broadcast_bytes_transmitted_lo = common dso_local global i32 0, align 4
@total_multicast_bytes_transmitted_hi = common dso_local global i32 0, align 4
@total_multicast_bytes_transmitted_lo = common dso_local global i32 0, align 4
@total_tpa_bytes_hi = common dso_local global i32 0, align 4
@total_tpa_bytes_lo = common dso_local global i32 0, align 4
@port_stats = common dso_local global i32 0, align 4
@mac_filter_discard = common dso_local global i32 0, align 4
@mf_tag_discard = common dso_local global i32 0, align 4
@brb_truncate_discard = common dso_local global i32 0, align 4
@mac_discard = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_save_statistics(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_fastpath*, align 8
  %5 = alloca %struct.bxe_eth_q_stats*, align 8
  %6 = alloca %struct.bxe_eth_q_stats_old*, align 8
  %7 = alloca %struct.bxe_eth_stats*, align 8
  %8 = alloca %struct.bxe_fw_port_stats_old*, align 8
  %9 = alloca %struct.host_port_stats*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %55, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %10
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 4
  %19 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %19, i64 %21
  store %struct.bxe_fastpath* %22, %struct.bxe_fastpath** %4, align 8
  %23 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %24 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %23, i32 0, i32 1
  store %struct.bxe_eth_q_stats* %24, %struct.bxe_eth_q_stats** %5, align 8
  %25 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %26 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %25, i32 0, i32 0
  store %struct.bxe_eth_q_stats_old* %26, %struct.bxe_eth_q_stats_old** %6, align 8
  %27 = load i32, i32* @total_unicast_bytes_received_hi, align 4
  %28 = call i32 @UPDATE_QSTAT_OLD(i32 %27)
  %29 = load i32, i32* @total_unicast_bytes_received_lo, align 4
  %30 = call i32 @UPDATE_QSTAT_OLD(i32 %29)
  %31 = load i32, i32* @total_broadcast_bytes_received_hi, align 4
  %32 = call i32 @UPDATE_QSTAT_OLD(i32 %31)
  %33 = load i32, i32* @total_broadcast_bytes_received_lo, align 4
  %34 = call i32 @UPDATE_QSTAT_OLD(i32 %33)
  %35 = load i32, i32* @total_multicast_bytes_received_hi, align 4
  %36 = call i32 @UPDATE_QSTAT_OLD(i32 %35)
  %37 = load i32, i32* @total_multicast_bytes_received_lo, align 4
  %38 = call i32 @UPDATE_QSTAT_OLD(i32 %37)
  %39 = load i32, i32* @total_unicast_bytes_transmitted_hi, align 4
  %40 = call i32 @UPDATE_QSTAT_OLD(i32 %39)
  %41 = load i32, i32* @total_unicast_bytes_transmitted_lo, align 4
  %42 = call i32 @UPDATE_QSTAT_OLD(i32 %41)
  %43 = load i32, i32* @total_broadcast_bytes_transmitted_hi, align 4
  %44 = call i32 @UPDATE_QSTAT_OLD(i32 %43)
  %45 = load i32, i32* @total_broadcast_bytes_transmitted_lo, align 4
  %46 = call i32 @UPDATE_QSTAT_OLD(i32 %45)
  %47 = load i32, i32* @total_multicast_bytes_transmitted_hi, align 4
  %48 = call i32 @UPDATE_QSTAT_OLD(i32 %47)
  %49 = load i32, i32* @total_multicast_bytes_transmitted_lo, align 4
  %50 = call i32 @UPDATE_QSTAT_OLD(i32 %49)
  %51 = load i32, i32* @total_tpa_bytes_hi, align 4
  %52 = call i32 @UPDATE_QSTAT_OLD(i32 %51)
  %53 = load i32, i32* @total_tpa_bytes_lo, align 4
  %54 = call i32 @UPDATE_QSTAT_OLD(i32 %53)
  br label %55

55:                                               ; preds = %16
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %10

58:                                               ; preds = %10
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %60 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %105

64:                                               ; preds = %58
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %65, i32 0, i32 2
  store %struct.bxe_eth_stats* %66, %struct.bxe_eth_stats** %7, align 8
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %68 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %67, i32 0, i32 1
  store %struct.bxe_fw_port_stats_old* %68, %struct.bxe_fw_port_stats_old** %8, align 8
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %70 = load i32, i32* @port_stats, align 4
  %71 = call %struct.host_port_stats* @BXE_SP(%struct.bxe_softc* %69, i32 %70)
  store %struct.host_port_stats* %71, %struct.host_port_stats** %9, align 8
  %72 = load %struct.host_port_stats*, %struct.host_port_stats** %9, align 8
  %73 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bxe_fw_port_stats_old*, %struct.bxe_fw_port_stats_old** %8, align 8
  %76 = getelementptr inbounds %struct.bxe_fw_port_stats_old, %struct.bxe_fw_port_stats_old* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.host_port_stats*, %struct.host_port_stats** %9, align 8
  %78 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bxe_fw_port_stats_old*, %struct.bxe_fw_port_stats_old** %8, align 8
  %81 = getelementptr inbounds %struct.bxe_fw_port_stats_old, %struct.bxe_fw_port_stats_old* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.host_port_stats*, %struct.host_port_stats** %9, align 8
  %83 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bxe_fw_port_stats_old*, %struct.bxe_fw_port_stats_old** %8, align 8
  %86 = getelementptr inbounds %struct.bxe_fw_port_stats_old, %struct.bxe_fw_port_stats_old* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.host_port_stats*, %struct.host_port_stats** %9, align 8
  %88 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bxe_fw_port_stats_old*, %struct.bxe_fw_port_stats_old** %8, align 8
  %91 = getelementptr inbounds %struct.bxe_fw_port_stats_old, %struct.bxe_fw_port_stats_old* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %93 = call i64 @IS_MF(%struct.bxe_softc* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %64
  %96 = load i32, i32* @mac_filter_discard, align 4
  %97 = call i32 @UPDATE_FW_STAT_OLD(i32 %96)
  %98 = load i32, i32* @mf_tag_discard, align 4
  %99 = call i32 @UPDATE_FW_STAT_OLD(i32 %98)
  %100 = load i32, i32* @brb_truncate_discard, align 4
  %101 = call i32 @UPDATE_FW_STAT_OLD(i32 %100)
  %102 = load i32, i32* @mac_discard, align 4
  %103 = call i32 @UPDATE_FW_STAT_OLD(i32 %102)
  br label %104

104:                                              ; preds = %95, %64
  br label %105

105:                                              ; preds = %104, %58
  ret void
}

declare dso_local i32 @UPDATE_QSTAT_OLD(i32) #1

declare dso_local %struct.host_port_stats* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i64 @IS_MF(%struct.bxe_softc*) #1

declare dso_local i32 @UPDATE_FW_STAT_OLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
