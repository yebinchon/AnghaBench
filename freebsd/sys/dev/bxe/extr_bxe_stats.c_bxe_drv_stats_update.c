
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_eth_stats {int dummy; } ;
struct bxe_softc {int num_queues; TYPE_1__* fp; struct bxe_eth_stats eth_stats; } ;
struct bxe_eth_q_stats_old {int dummy; } ;
struct bxe_eth_q_stats {int dummy; } ;
struct TYPE_2__ {struct bxe_eth_q_stats_old eth_q_stats_old; struct bxe_eth_q_stats eth_q_stats; } ;


 int UPDATE_ESTAT_QSTAT (int ) ;
 int mbuf_alloc_rx ;
 int mbuf_alloc_sge ;
 int mbuf_alloc_tpa ;
 int mbuf_alloc_tx ;
 int mbuf_defrag_attempts ;
 int mbuf_defrag_failures ;
 int mbuf_rx_bd_alloc_failed ;
 int mbuf_rx_bd_mapping_failed ;
 int mbuf_rx_sge_alloc_failed ;
 int mbuf_rx_sge_mapping_failed ;
 int mbuf_rx_tpa_alloc_failed ;
 int mbuf_rx_tpa_mapping_failed ;
 int rx_budget_reached ;
 int rx_bxe_service_rxsgl ;
 int rx_calls ;
 int rx_erroneous_jumbo_sge_pkts ;
 int rx_hw_csum_errors ;
 int rx_jumbo_sge_pkts ;
 int rx_ofld_frames_csum_ip ;
 int rx_ofld_frames_csum_tcp_udp ;
 int rx_pkts ;
 int rx_soft_errors ;
 int rx_tpa_pkts ;
 int tx_chain_lost_mbuf ;
 int tx_dma_mapping_failure ;
 int tx_encap_failures ;
 int tx_frames_deferred ;
 int tx_hw_max_queue_depth ;
 int tx_hw_queue_full ;
 int tx_max_drbr_queue_depth ;
 int tx_ofld_frames_csum_ip ;
 int tx_ofld_frames_csum_tcp ;
 int tx_ofld_frames_csum_udp ;
 int tx_ofld_frames_lso ;
 int tx_ofld_frames_lso_hdr_splits ;
 int tx_pkts ;
 int tx_queue_xoff ;
 int tx_soft_errors ;
 int tx_window_violation_std ;
 int tx_window_violation_tso ;

__attribute__((used)) static void
bxe_drv_stats_update(struct bxe_softc *sc)
{
    struct bxe_eth_stats *estats = &sc->eth_stats;
    int i;

    for (i = 0; i < sc->num_queues; i++) {
        struct bxe_eth_q_stats *qstats = &sc->fp[i].eth_q_stats;
        struct bxe_eth_q_stats_old *qstats_old = &sc->fp[i].eth_q_stats_old;

        UPDATE_ESTAT_QSTAT(rx_calls);
        UPDATE_ESTAT_QSTAT(rx_pkts);
        UPDATE_ESTAT_QSTAT(rx_tpa_pkts);
        UPDATE_ESTAT_QSTAT(rx_erroneous_jumbo_sge_pkts);
        UPDATE_ESTAT_QSTAT(rx_bxe_service_rxsgl);
        UPDATE_ESTAT_QSTAT(rx_jumbo_sge_pkts);
        UPDATE_ESTAT_QSTAT(rx_soft_errors);
        UPDATE_ESTAT_QSTAT(rx_hw_csum_errors);
        UPDATE_ESTAT_QSTAT(rx_ofld_frames_csum_ip);
        UPDATE_ESTAT_QSTAT(rx_ofld_frames_csum_tcp_udp);
        UPDATE_ESTAT_QSTAT(rx_budget_reached);
        UPDATE_ESTAT_QSTAT(tx_pkts);
        UPDATE_ESTAT_QSTAT(tx_soft_errors);
        UPDATE_ESTAT_QSTAT(tx_ofld_frames_csum_ip);
        UPDATE_ESTAT_QSTAT(tx_ofld_frames_csum_tcp);
        UPDATE_ESTAT_QSTAT(tx_ofld_frames_csum_udp);
        UPDATE_ESTAT_QSTAT(tx_ofld_frames_lso);
        UPDATE_ESTAT_QSTAT(tx_ofld_frames_lso_hdr_splits);
        UPDATE_ESTAT_QSTAT(tx_encap_failures);
        UPDATE_ESTAT_QSTAT(tx_hw_queue_full);
        UPDATE_ESTAT_QSTAT(tx_hw_max_queue_depth);
        UPDATE_ESTAT_QSTAT(tx_dma_mapping_failure);
        UPDATE_ESTAT_QSTAT(tx_max_drbr_queue_depth);
        UPDATE_ESTAT_QSTAT(tx_window_violation_std);
        UPDATE_ESTAT_QSTAT(tx_window_violation_tso);


        UPDATE_ESTAT_QSTAT(tx_chain_lost_mbuf);
        UPDATE_ESTAT_QSTAT(tx_frames_deferred);
        UPDATE_ESTAT_QSTAT(tx_queue_xoff);


        UPDATE_ESTAT_QSTAT(mbuf_defrag_attempts);
        UPDATE_ESTAT_QSTAT(mbuf_defrag_failures);
        UPDATE_ESTAT_QSTAT(mbuf_rx_bd_alloc_failed);
        UPDATE_ESTAT_QSTAT(mbuf_rx_bd_mapping_failed);
        UPDATE_ESTAT_QSTAT(mbuf_rx_tpa_alloc_failed);
        UPDATE_ESTAT_QSTAT(mbuf_rx_tpa_mapping_failed);
        UPDATE_ESTAT_QSTAT(mbuf_rx_sge_alloc_failed);
        UPDATE_ESTAT_QSTAT(mbuf_rx_sge_mapping_failed);


        UPDATE_ESTAT_QSTAT(mbuf_alloc_tx);
        UPDATE_ESTAT_QSTAT(mbuf_alloc_rx);
        UPDATE_ESTAT_QSTAT(mbuf_alloc_sge);
        UPDATE_ESTAT_QSTAT(mbuf_alloc_tpa);
    }
}
