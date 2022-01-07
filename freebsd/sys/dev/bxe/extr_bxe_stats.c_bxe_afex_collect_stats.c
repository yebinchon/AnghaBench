
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ pmf; } ;
struct bxe_eth_stats {int mac_discard; int brb_truncate_discard; int mac_filter_discard; } ;
struct bxe_softc {int num_queues; TYPE_2__ port; TYPE_1__* fp; struct bxe_eth_stats eth_stats; } ;
struct bxe_eth_q_stats {int total_transmitted_dropped_packets_error_lo; int total_transmitted_dropped_packets_error_hi; int total_multicast_packets_transmitted_lo; int total_multicast_packets_transmitted_hi; int total_broadcast_packets_transmitted_lo; int total_broadcast_packets_transmitted_hi; int total_unicast_packets_transmitted_lo; int total_unicast_packets_transmitted_hi; int total_multicast_bytes_transmitted_lo; int total_multicast_bytes_transmitted_hi; int total_broadcast_bytes_transmitted_lo; int total_broadcast_bytes_transmitted_hi; int total_unicast_bytes_transmitted_lo; int total_unicast_bytes_transmitted_hi; int no_buff_discard_lo; int no_buff_discard_hi; int etherstatsoverrsizepkts_lo; int etherstatsoverrsizepkts_hi; int total_packets_received_ttl0_discarded_lo; int total_packets_received_ttl0_discarded_hi; int total_packets_received_checksum_discarded_lo; int total_packets_received_checksum_discarded_hi; int total_multicast_packets_received_lo; int total_multicast_packets_received_hi; int total_broadcast_packets_received_lo; int total_broadcast_packets_received_hi; int total_unicast_packets_received_lo; int total_unicast_packets_received_hi; int total_multicast_bytes_received_lo; int total_multicast_bytes_received_hi; int total_broadcast_bytes_received_lo; int total_broadcast_bytes_received_hi; int total_unicast_bytes_received_lo; int total_unicast_bytes_received_hi; } ;
struct afex_stats {int rx_frames_discarded_lo; int rx_frames_discarded_hi; int rx_frames_dropped_lo; int rx_frames_dropped_hi; int tx_frames_dropped_lo; int tx_frames_dropped_hi; int tx_multicast_frames_lo; int tx_multicast_frames_hi; int tx_broadcast_frames_lo; int tx_broadcast_frames_hi; int tx_unicast_frames_lo; int tx_unicast_frames_hi; int tx_multicast_bytes_lo; int tx_multicast_bytes_hi; int tx_broadcast_bytes_lo; int tx_broadcast_bytes_hi; int tx_unicast_bytes_lo; int tx_unicast_bytes_hi; int rx_multicast_frames_lo; int rx_multicast_frames_hi; int rx_broadcast_frames_lo; int rx_broadcast_frames_hi; int rx_unicast_frames_lo; int rx_unicast_frames_hi; int rx_multicast_bytes_lo; int rx_multicast_bytes_hi; int rx_broadcast_bytes_lo; int rx_broadcast_bytes_hi; int rx_unicast_bytes_lo; int rx_unicast_bytes_hi; } ;
struct TYPE_3__ {struct bxe_eth_q_stats eth_q_stats; } ;


 int ADD_64 (int ,int ,int ,int ) ;
 scalar_t__ VICSTATST_UIF_INDEX ;
 int memset (struct afex_stats*,int ,int) ;

void
bxe_afex_collect_stats(struct bxe_softc *sc,
                       void *void_afex_stats,
                       uint32_t stats_type)
{
    int i;
    struct afex_stats *afex_stats = (struct afex_stats *)void_afex_stats;
    struct bxe_eth_stats *estats = &sc->eth_stats;

    memset(afex_stats, 0, sizeof(struct afex_stats));

    for (i = 0; i < sc->num_queues; i++) {
        struct bxe_eth_q_stats *qstats = &sc->fp[i].eth_q_stats;

        ADD_64(afex_stats->rx_unicast_bytes_hi,
               qstats->total_unicast_bytes_received_hi,
               afex_stats->rx_unicast_bytes_lo,
               qstats->total_unicast_bytes_received_lo);

        ADD_64(afex_stats->rx_broadcast_bytes_hi,
               qstats->total_broadcast_bytes_received_hi,
               afex_stats->rx_broadcast_bytes_lo,
               qstats->total_broadcast_bytes_received_lo);

        ADD_64(afex_stats->rx_multicast_bytes_hi,
               qstats->total_multicast_bytes_received_hi,
               afex_stats->rx_multicast_bytes_lo,
               qstats->total_multicast_bytes_received_lo);

        ADD_64(afex_stats->rx_unicast_frames_hi,
               qstats->total_unicast_packets_received_hi,
               afex_stats->rx_unicast_frames_lo,
               qstats->total_unicast_packets_received_lo);

        ADD_64(afex_stats->rx_broadcast_frames_hi,
               qstats->total_broadcast_packets_received_hi,
               afex_stats->rx_broadcast_frames_lo,
               qstats->total_broadcast_packets_received_lo);

        ADD_64(afex_stats->rx_multicast_frames_hi,
               qstats->total_multicast_packets_received_hi,
               afex_stats->rx_multicast_frames_lo,
               qstats->total_multicast_packets_received_lo);





        ADD_64(afex_stats->rx_frames_discarded_hi,
               qstats->total_packets_received_checksum_discarded_hi,
               afex_stats->rx_frames_discarded_lo,
               qstats->total_packets_received_checksum_discarded_lo);

        ADD_64(afex_stats->rx_frames_discarded_hi,
               qstats->total_packets_received_ttl0_discarded_hi,
               afex_stats->rx_frames_discarded_lo,
               qstats->total_packets_received_ttl0_discarded_lo);

        ADD_64(afex_stats->rx_frames_discarded_hi,
               qstats->etherstatsoverrsizepkts_hi,
               afex_stats->rx_frames_discarded_lo,
               qstats->etherstatsoverrsizepkts_lo);

        ADD_64(afex_stats->rx_frames_dropped_hi,
               qstats->no_buff_discard_hi,
               afex_stats->rx_frames_dropped_lo,
               qstats->no_buff_discard_lo);

        ADD_64(afex_stats->tx_unicast_bytes_hi,
               qstats->total_unicast_bytes_transmitted_hi,
               afex_stats->tx_unicast_bytes_lo,
               qstats->total_unicast_bytes_transmitted_lo);

        ADD_64(afex_stats->tx_broadcast_bytes_hi,
               qstats->total_broadcast_bytes_transmitted_hi,
               afex_stats->tx_broadcast_bytes_lo,
               qstats->total_broadcast_bytes_transmitted_lo);

        ADD_64(afex_stats->tx_multicast_bytes_hi,
               qstats->total_multicast_bytes_transmitted_hi,
               afex_stats->tx_multicast_bytes_lo,
               qstats->total_multicast_bytes_transmitted_lo);

        ADD_64(afex_stats->tx_unicast_frames_hi,
               qstats->total_unicast_packets_transmitted_hi,
               afex_stats->tx_unicast_frames_lo,
               qstats->total_unicast_packets_transmitted_lo);

        ADD_64(afex_stats->tx_broadcast_frames_hi,
               qstats->total_broadcast_packets_transmitted_hi,
               afex_stats->tx_broadcast_frames_lo,
               qstats->total_broadcast_packets_transmitted_lo);

        ADD_64(afex_stats->tx_multicast_frames_hi,
               qstats->total_multicast_packets_transmitted_hi,
               afex_stats->tx_multicast_frames_lo,
               qstats->total_multicast_packets_transmitted_lo);

        ADD_64(afex_stats->tx_frames_dropped_hi,
               qstats->total_transmitted_dropped_packets_error_hi,
               afex_stats->tx_frames_dropped_lo,
               qstats->total_transmitted_dropped_packets_error_lo);
    }






    if ((sc->port.pmf) && (stats_type == VICSTATST_UIF_INDEX)) {
        ADD_64(afex_stats->rx_frames_dropped_hi,
               0,
               afex_stats->rx_frames_dropped_lo,
               estats->mac_filter_discard);
        ADD_64(afex_stats->rx_frames_dropped_hi,
               0,
               afex_stats->rx_frames_dropped_lo,
               estats->brb_truncate_discard);
        ADD_64(afex_stats->rx_frames_discarded_hi,
               0,
               afex_stats->rx_frames_discarded_lo,
               estats->mac_discard);
    }
}
