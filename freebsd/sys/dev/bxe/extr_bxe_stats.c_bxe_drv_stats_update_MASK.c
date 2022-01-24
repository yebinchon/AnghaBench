#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bxe_eth_stats {int dummy; } ;
struct bxe_softc {int num_queues; TYPE_1__* fp; struct bxe_eth_stats eth_stats; } ;
struct bxe_eth_q_stats_old {int dummy; } ;
struct bxe_eth_q_stats {int dummy; } ;
struct TYPE_2__ {struct bxe_eth_q_stats_old eth_q_stats_old; struct bxe_eth_q_stats eth_q_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbuf_alloc_rx ; 
 int /*<<< orphan*/  mbuf_alloc_sge ; 
 int /*<<< orphan*/  mbuf_alloc_tpa ; 
 int /*<<< orphan*/  mbuf_alloc_tx ; 
 int /*<<< orphan*/  mbuf_defrag_attempts ; 
 int /*<<< orphan*/  mbuf_defrag_failures ; 
 int /*<<< orphan*/  mbuf_rx_bd_alloc_failed ; 
 int /*<<< orphan*/  mbuf_rx_bd_mapping_failed ; 
 int /*<<< orphan*/  mbuf_rx_sge_alloc_failed ; 
 int /*<<< orphan*/  mbuf_rx_sge_mapping_failed ; 
 int /*<<< orphan*/  mbuf_rx_tpa_alloc_failed ; 
 int /*<<< orphan*/  mbuf_rx_tpa_mapping_failed ; 
 int /*<<< orphan*/  rx_budget_reached ; 
 int /*<<< orphan*/  rx_bxe_service_rxsgl ; 
 int /*<<< orphan*/  rx_calls ; 
 int /*<<< orphan*/  rx_erroneous_jumbo_sge_pkts ; 
 int /*<<< orphan*/  rx_hw_csum_errors ; 
 int /*<<< orphan*/  rx_jumbo_sge_pkts ; 
 int /*<<< orphan*/  rx_ofld_frames_csum_ip ; 
 int /*<<< orphan*/  rx_ofld_frames_csum_tcp_udp ; 
 int /*<<< orphan*/  rx_pkts ; 
 int /*<<< orphan*/  rx_soft_errors ; 
 int /*<<< orphan*/  rx_tpa_pkts ; 
 int /*<<< orphan*/  tx_chain_lost_mbuf ; 
 int /*<<< orphan*/  tx_dma_mapping_failure ; 
 int /*<<< orphan*/  tx_encap_failures ; 
 int /*<<< orphan*/  tx_frames_deferred ; 
 int /*<<< orphan*/  tx_hw_max_queue_depth ; 
 int /*<<< orphan*/  tx_hw_queue_full ; 
 int /*<<< orphan*/  tx_max_drbr_queue_depth ; 
 int /*<<< orphan*/  tx_ofld_frames_csum_ip ; 
 int /*<<< orphan*/  tx_ofld_frames_csum_tcp ; 
 int /*<<< orphan*/  tx_ofld_frames_csum_udp ; 
 int /*<<< orphan*/  tx_ofld_frames_lso ; 
 int /*<<< orphan*/  tx_ofld_frames_lso_hdr_splits ; 
 int /*<<< orphan*/  tx_pkts ; 
 int /*<<< orphan*/  tx_queue_xoff ; 
 int /*<<< orphan*/  tx_soft_errors ; 
 int /*<<< orphan*/  tx_window_violation_std ; 
 int /*<<< orphan*/  tx_window_violation_tso ; 

__attribute__((used)) static void
FUNC1(struct bxe_softc *sc)
{
    struct bxe_eth_stats *estats = &sc->eth_stats;
    int i;

    for (i = 0; i < sc->num_queues; i++) {
        struct bxe_eth_q_stats *qstats = &sc->fp[i].eth_q_stats;
        struct bxe_eth_q_stats_old *qstats_old = &sc->fp[i].eth_q_stats_old;

        FUNC0(rx_calls);
        FUNC0(rx_pkts);
        FUNC0(rx_tpa_pkts);
        FUNC0(rx_erroneous_jumbo_sge_pkts);
        FUNC0(rx_bxe_service_rxsgl);
        FUNC0(rx_jumbo_sge_pkts);
        FUNC0(rx_soft_errors);
        FUNC0(rx_hw_csum_errors);
        FUNC0(rx_ofld_frames_csum_ip);
        FUNC0(rx_ofld_frames_csum_tcp_udp);
        FUNC0(rx_budget_reached);
        FUNC0(tx_pkts);
        FUNC0(tx_soft_errors);
        FUNC0(tx_ofld_frames_csum_ip);
        FUNC0(tx_ofld_frames_csum_tcp);
        FUNC0(tx_ofld_frames_csum_udp);
        FUNC0(tx_ofld_frames_lso);
        FUNC0(tx_ofld_frames_lso_hdr_splits);
        FUNC0(tx_encap_failures);
        FUNC0(tx_hw_queue_full);
        FUNC0(tx_hw_max_queue_depth);
        FUNC0(tx_dma_mapping_failure);
        FUNC0(tx_max_drbr_queue_depth);
        FUNC0(tx_window_violation_std);
        FUNC0(tx_window_violation_tso);
        //UPDATE_ESTAT_QSTAT(tx_unsupported_tso_request_ipv6);
        //UPDATE_ESTAT_QSTAT(tx_unsupported_tso_request_not_tcp);
        FUNC0(tx_chain_lost_mbuf);
        FUNC0(tx_frames_deferred);
        FUNC0(tx_queue_xoff);

        /* mbuf driver statistics */
        FUNC0(mbuf_defrag_attempts);
        FUNC0(mbuf_defrag_failures);
        FUNC0(mbuf_rx_bd_alloc_failed);
        FUNC0(mbuf_rx_bd_mapping_failed);
        FUNC0(mbuf_rx_tpa_alloc_failed);
        FUNC0(mbuf_rx_tpa_mapping_failed);
        FUNC0(mbuf_rx_sge_alloc_failed);
        FUNC0(mbuf_rx_sge_mapping_failed);

        /* track the number of allocated mbufs */
        FUNC0(mbuf_alloc_tx);
        FUNC0(mbuf_alloc_rx);
        FUNC0(mbuf_alloc_sge);
        FUNC0(mbuf_alloc_tpa);
    }
}