; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_drv_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_drv_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_2__*, %struct.bxe_eth_stats }
%struct.TYPE_2__ = type { %struct.bxe_eth_q_stats_old, %struct.bxe_eth_q_stats }
%struct.bxe_eth_q_stats_old = type { i32 }
%struct.bxe_eth_q_stats = type { i32 }
%struct.bxe_eth_stats = type { i32 }

@rx_calls = common dso_local global i32 0, align 4
@rx_pkts = common dso_local global i32 0, align 4
@rx_tpa_pkts = common dso_local global i32 0, align 4
@rx_erroneous_jumbo_sge_pkts = common dso_local global i32 0, align 4
@rx_bxe_service_rxsgl = common dso_local global i32 0, align 4
@rx_jumbo_sge_pkts = common dso_local global i32 0, align 4
@rx_soft_errors = common dso_local global i32 0, align 4
@rx_hw_csum_errors = common dso_local global i32 0, align 4
@rx_ofld_frames_csum_ip = common dso_local global i32 0, align 4
@rx_ofld_frames_csum_tcp_udp = common dso_local global i32 0, align 4
@rx_budget_reached = common dso_local global i32 0, align 4
@tx_pkts = common dso_local global i32 0, align 4
@tx_soft_errors = common dso_local global i32 0, align 4
@tx_ofld_frames_csum_ip = common dso_local global i32 0, align 4
@tx_ofld_frames_csum_tcp = common dso_local global i32 0, align 4
@tx_ofld_frames_csum_udp = common dso_local global i32 0, align 4
@tx_ofld_frames_lso = common dso_local global i32 0, align 4
@tx_ofld_frames_lso_hdr_splits = common dso_local global i32 0, align 4
@tx_encap_failures = common dso_local global i32 0, align 4
@tx_hw_queue_full = common dso_local global i32 0, align 4
@tx_hw_max_queue_depth = common dso_local global i32 0, align 4
@tx_dma_mapping_failure = common dso_local global i32 0, align 4
@tx_max_drbr_queue_depth = common dso_local global i32 0, align 4
@tx_window_violation_std = common dso_local global i32 0, align 4
@tx_window_violation_tso = common dso_local global i32 0, align 4
@tx_chain_lost_mbuf = common dso_local global i32 0, align 4
@tx_frames_deferred = common dso_local global i32 0, align 4
@tx_queue_xoff = common dso_local global i32 0, align 4
@mbuf_defrag_attempts = common dso_local global i32 0, align 4
@mbuf_defrag_failures = common dso_local global i32 0, align 4
@mbuf_rx_bd_alloc_failed = common dso_local global i32 0, align 4
@mbuf_rx_bd_mapping_failed = common dso_local global i32 0, align 4
@mbuf_rx_tpa_alloc_failed = common dso_local global i32 0, align 4
@mbuf_rx_tpa_mapping_failed = common dso_local global i32 0, align 4
@mbuf_rx_sge_alloc_failed = common dso_local global i32 0, align 4
@mbuf_rx_sge_mapping_failed = common dso_local global i32 0, align 4
@mbuf_alloc_tx = common dso_local global i32 0, align 4
@mbuf_alloc_rx = common dso_local global i32 0, align 4
@mbuf_alloc_sge = common dso_local global i32 0, align 4
@mbuf_alloc_tpa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_drv_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_drv_stats_update(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_eth_stats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_eth_q_stats*, align 8
  %6 = alloca %struct.bxe_eth_q_stats_old*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 2
  store %struct.bxe_eth_stats* %8, %struct.bxe_eth_stats** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %110, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %113

15:                                               ; preds = %9
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.bxe_eth_q_stats* %22, %struct.bxe_eth_q_stats** %5, align 8
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.bxe_eth_q_stats_old* %29, %struct.bxe_eth_q_stats_old** %6, align 8
  %30 = load i32, i32* @rx_calls, align 4
  %31 = call i32 @UPDATE_ESTAT_QSTAT(i32 %30)
  %32 = load i32, i32* @rx_pkts, align 4
  %33 = call i32 @UPDATE_ESTAT_QSTAT(i32 %32)
  %34 = load i32, i32* @rx_tpa_pkts, align 4
  %35 = call i32 @UPDATE_ESTAT_QSTAT(i32 %34)
  %36 = load i32, i32* @rx_erroneous_jumbo_sge_pkts, align 4
  %37 = call i32 @UPDATE_ESTAT_QSTAT(i32 %36)
  %38 = load i32, i32* @rx_bxe_service_rxsgl, align 4
  %39 = call i32 @UPDATE_ESTAT_QSTAT(i32 %38)
  %40 = load i32, i32* @rx_jumbo_sge_pkts, align 4
  %41 = call i32 @UPDATE_ESTAT_QSTAT(i32 %40)
  %42 = load i32, i32* @rx_soft_errors, align 4
  %43 = call i32 @UPDATE_ESTAT_QSTAT(i32 %42)
  %44 = load i32, i32* @rx_hw_csum_errors, align 4
  %45 = call i32 @UPDATE_ESTAT_QSTAT(i32 %44)
  %46 = load i32, i32* @rx_ofld_frames_csum_ip, align 4
  %47 = call i32 @UPDATE_ESTAT_QSTAT(i32 %46)
  %48 = load i32, i32* @rx_ofld_frames_csum_tcp_udp, align 4
  %49 = call i32 @UPDATE_ESTAT_QSTAT(i32 %48)
  %50 = load i32, i32* @rx_budget_reached, align 4
  %51 = call i32 @UPDATE_ESTAT_QSTAT(i32 %50)
  %52 = load i32, i32* @tx_pkts, align 4
  %53 = call i32 @UPDATE_ESTAT_QSTAT(i32 %52)
  %54 = load i32, i32* @tx_soft_errors, align 4
  %55 = call i32 @UPDATE_ESTAT_QSTAT(i32 %54)
  %56 = load i32, i32* @tx_ofld_frames_csum_ip, align 4
  %57 = call i32 @UPDATE_ESTAT_QSTAT(i32 %56)
  %58 = load i32, i32* @tx_ofld_frames_csum_tcp, align 4
  %59 = call i32 @UPDATE_ESTAT_QSTAT(i32 %58)
  %60 = load i32, i32* @tx_ofld_frames_csum_udp, align 4
  %61 = call i32 @UPDATE_ESTAT_QSTAT(i32 %60)
  %62 = load i32, i32* @tx_ofld_frames_lso, align 4
  %63 = call i32 @UPDATE_ESTAT_QSTAT(i32 %62)
  %64 = load i32, i32* @tx_ofld_frames_lso_hdr_splits, align 4
  %65 = call i32 @UPDATE_ESTAT_QSTAT(i32 %64)
  %66 = load i32, i32* @tx_encap_failures, align 4
  %67 = call i32 @UPDATE_ESTAT_QSTAT(i32 %66)
  %68 = load i32, i32* @tx_hw_queue_full, align 4
  %69 = call i32 @UPDATE_ESTAT_QSTAT(i32 %68)
  %70 = load i32, i32* @tx_hw_max_queue_depth, align 4
  %71 = call i32 @UPDATE_ESTAT_QSTAT(i32 %70)
  %72 = load i32, i32* @tx_dma_mapping_failure, align 4
  %73 = call i32 @UPDATE_ESTAT_QSTAT(i32 %72)
  %74 = load i32, i32* @tx_max_drbr_queue_depth, align 4
  %75 = call i32 @UPDATE_ESTAT_QSTAT(i32 %74)
  %76 = load i32, i32* @tx_window_violation_std, align 4
  %77 = call i32 @UPDATE_ESTAT_QSTAT(i32 %76)
  %78 = load i32, i32* @tx_window_violation_tso, align 4
  %79 = call i32 @UPDATE_ESTAT_QSTAT(i32 %78)
  %80 = load i32, i32* @tx_chain_lost_mbuf, align 4
  %81 = call i32 @UPDATE_ESTAT_QSTAT(i32 %80)
  %82 = load i32, i32* @tx_frames_deferred, align 4
  %83 = call i32 @UPDATE_ESTAT_QSTAT(i32 %82)
  %84 = load i32, i32* @tx_queue_xoff, align 4
  %85 = call i32 @UPDATE_ESTAT_QSTAT(i32 %84)
  %86 = load i32, i32* @mbuf_defrag_attempts, align 4
  %87 = call i32 @UPDATE_ESTAT_QSTAT(i32 %86)
  %88 = load i32, i32* @mbuf_defrag_failures, align 4
  %89 = call i32 @UPDATE_ESTAT_QSTAT(i32 %88)
  %90 = load i32, i32* @mbuf_rx_bd_alloc_failed, align 4
  %91 = call i32 @UPDATE_ESTAT_QSTAT(i32 %90)
  %92 = load i32, i32* @mbuf_rx_bd_mapping_failed, align 4
  %93 = call i32 @UPDATE_ESTAT_QSTAT(i32 %92)
  %94 = load i32, i32* @mbuf_rx_tpa_alloc_failed, align 4
  %95 = call i32 @UPDATE_ESTAT_QSTAT(i32 %94)
  %96 = load i32, i32* @mbuf_rx_tpa_mapping_failed, align 4
  %97 = call i32 @UPDATE_ESTAT_QSTAT(i32 %96)
  %98 = load i32, i32* @mbuf_rx_sge_alloc_failed, align 4
  %99 = call i32 @UPDATE_ESTAT_QSTAT(i32 %98)
  %100 = load i32, i32* @mbuf_rx_sge_mapping_failed, align 4
  %101 = call i32 @UPDATE_ESTAT_QSTAT(i32 %100)
  %102 = load i32, i32* @mbuf_alloc_tx, align 4
  %103 = call i32 @UPDATE_ESTAT_QSTAT(i32 %102)
  %104 = load i32, i32* @mbuf_alloc_rx, align 4
  %105 = call i32 @UPDATE_ESTAT_QSTAT(i32 %104)
  %106 = load i32, i32* @mbuf_alloc_sge, align 4
  %107 = call i32 @UPDATE_ESTAT_QSTAT(i32 %106)
  %108 = load i32, i32* @mbuf_alloc_tpa, align 4
  %109 = call i32 @UPDATE_ESTAT_QSTAT(i32 %108)
  br label %110

110:                                              ; preds = %15
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %9

113:                                              ; preds = %9
  ret void
}

declare dso_local i32 @UPDATE_ESTAT_QSTAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
