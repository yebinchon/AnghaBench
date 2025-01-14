
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host_port_stats {int pfc_frames_tx_lo; int pfc_frames_tx_hi; int pfc_frames_rx_lo; int pfc_frames_rx_hi; } ;
struct bxe_fw_port_stats_old {int pfc_frames_tx_lo; int pfc_frames_tx_hi; int pfc_frames_rx_lo; int pfc_frames_rx_hi; } ;
struct bxe_eth_stats {int dummy; } ;
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bxe_softc {int num_queues; struct bxe_fw_port_stats_old fw_stats_old; struct bxe_eth_stats eth_stats; TYPE_1__ port; struct bxe_fastpath* fp; } ;
struct bxe_eth_q_stats_old {int dummy; } ;
struct bxe_eth_q_stats {int dummy; } ;
struct bxe_fastpath {struct bxe_eth_q_stats_old eth_q_stats_old; struct bxe_eth_q_stats eth_q_stats; } ;


 struct host_port_stats* BXE_SP (struct bxe_softc*,int ) ;
 scalar_t__ IS_MF (struct bxe_softc*) ;
 int UPDATE_FW_STAT_OLD (int ) ;
 int UPDATE_QSTAT_OLD (int ) ;
 int brb_truncate_discard ;
 int mac_discard ;
 int mac_filter_discard ;
 int mf_tag_discard ;
 int port_stats ;
 int total_broadcast_bytes_received_hi ;
 int total_broadcast_bytes_received_lo ;
 int total_broadcast_bytes_transmitted_hi ;
 int total_broadcast_bytes_transmitted_lo ;
 int total_multicast_bytes_received_hi ;
 int total_multicast_bytes_received_lo ;
 int total_multicast_bytes_transmitted_hi ;
 int total_multicast_bytes_transmitted_lo ;
 int total_tpa_bytes_hi ;
 int total_tpa_bytes_lo ;
 int total_unicast_bytes_received_hi ;
 int total_unicast_bytes_received_lo ;
 int total_unicast_bytes_transmitted_hi ;
 int total_unicast_bytes_transmitted_lo ;

void
bxe_save_statistics(struct bxe_softc *sc)
{
    int i;


    for (i = 0; i < sc->num_queues; i++) {
        struct bxe_fastpath *fp = &sc->fp[i];
        struct bxe_eth_q_stats *qstats = &fp->eth_q_stats;
        struct bxe_eth_q_stats_old *qstats_old = &fp->eth_q_stats_old;

        UPDATE_QSTAT_OLD(total_unicast_bytes_received_hi);
        UPDATE_QSTAT_OLD(total_unicast_bytes_received_lo);
        UPDATE_QSTAT_OLD(total_broadcast_bytes_received_hi);
        UPDATE_QSTAT_OLD(total_broadcast_bytes_received_lo);
        UPDATE_QSTAT_OLD(total_multicast_bytes_received_hi);
        UPDATE_QSTAT_OLD(total_multicast_bytes_received_lo);
        UPDATE_QSTAT_OLD(total_unicast_bytes_transmitted_hi);
        UPDATE_QSTAT_OLD(total_unicast_bytes_transmitted_lo);
        UPDATE_QSTAT_OLD(total_broadcast_bytes_transmitted_hi);
        UPDATE_QSTAT_OLD(total_broadcast_bytes_transmitted_lo);
        UPDATE_QSTAT_OLD(total_multicast_bytes_transmitted_hi);
        UPDATE_QSTAT_OLD(total_multicast_bytes_transmitted_lo);
        UPDATE_QSTAT_OLD(total_tpa_bytes_hi);
        UPDATE_QSTAT_OLD(total_tpa_bytes_lo);
    }


    if (sc->port.pmf) {
        struct bxe_eth_stats *estats = &sc->eth_stats;
        struct bxe_fw_port_stats_old *fwstats = &sc->fw_stats_old;
        struct host_port_stats *pstats = BXE_SP(sc, port_stats);

        fwstats->pfc_frames_rx_hi = pstats->pfc_frames_rx_hi;
        fwstats->pfc_frames_rx_lo = pstats->pfc_frames_rx_lo;
        fwstats->pfc_frames_tx_hi = pstats->pfc_frames_tx_hi;
        fwstats->pfc_frames_tx_lo = pstats->pfc_frames_tx_lo;

        if (IS_MF(sc)) {
            UPDATE_FW_STAT_OLD(mac_filter_discard);
            UPDATE_FW_STAT_OLD(mf_tag_discard);
            UPDATE_FW_STAT_OLD(brb_truncate_discard);
            UPDATE_FW_STAT_OLD(mac_discard);
        }
    }
}
