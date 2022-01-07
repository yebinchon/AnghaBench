
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct bxe_eth_stats {int tx_stat_dot3statsexcessivecollisions_hi; int tx_stat_dot3statslatecollisions_hi; int tx_stat_etherstatscollisions_hi; int total_multicast_packets_received_hi; int tx_stat_dot3statsinternalmactransmiterrors_hi; int rx_stat_dot3statscarriersenseerrors_hi; int no_buff_discard_hi; int rx_stat_dot3statsalignmenterrors_hi; int rx_stat_dot3statsfcserrors_hi; int brb_truncate_hi; int brb_drop_hi; int etherstatsoverrsizepkts_hi; int rx_stat_etherstatsundersizepkts_hi; int total_bytes_transmitted_hi; int total_bytes_received_hi; int total_broadcast_packets_transmitted_hi; int total_multicast_packets_transmitted_hi; int total_unicast_packets_transmitted_hi; int total_broadcast_packets_received_hi; int total_unicast_packets_received_hi; } ;
struct bxe_softc {struct bxe_eth_stats eth_stats; } ;
typedef int ift_counter ;
typedef int if_t ;
 scalar_t__ bxe_hilo (int *) ;
 scalar_t__ if_get_counter_default (int ,int) ;
 struct bxe_softc* if_getsoftc (int ) ;

uint64_t
bxe_get_counter(if_t ifp, ift_counter cnt)
{
 struct bxe_softc *sc;
 struct bxe_eth_stats *estats;

 sc = if_getsoftc(ifp);
 estats = &sc->eth_stats;

 switch (cnt) {
 case 131:
  return (bxe_hilo(&estats->total_unicast_packets_received_hi) +
      bxe_hilo(&estats->total_multicast_packets_received_hi) +
      bxe_hilo(&estats->total_broadcast_packets_received_hi));
 case 128:
  return (bxe_hilo(&estats->total_unicast_packets_transmitted_hi) +
      bxe_hilo(&estats->total_multicast_packets_transmitted_hi) +
      bxe_hilo(&estats->total_broadcast_packets_transmitted_hi));
 case 134:
  return (bxe_hilo(&estats->total_bytes_received_hi));
 case 130:
  return (bxe_hilo(&estats->total_bytes_transmitted_hi));
 case 133:
  return (bxe_hilo(&estats->rx_stat_etherstatsundersizepkts_hi) +
      bxe_hilo(&estats->etherstatsoverrsizepkts_hi) +
      bxe_hilo(&estats->brb_drop_hi) +
      bxe_hilo(&estats->brb_truncate_hi) +
      bxe_hilo(&estats->rx_stat_dot3statsfcserrors_hi) +
      bxe_hilo(&estats->rx_stat_dot3statsalignmenterrors_hi) +
      bxe_hilo(&estats->no_buff_discard_hi));
 case 129:
  return (bxe_hilo(&estats->rx_stat_dot3statscarriersenseerrors_hi) +
      bxe_hilo(&estats->tx_stat_dot3statsinternalmactransmiterrors_hi));
 case 132:
  return (bxe_hilo(&estats->total_multicast_packets_received_hi));
 case 135:
  return (bxe_hilo(&estats->tx_stat_etherstatscollisions_hi) +
      bxe_hilo(&estats->tx_stat_dot3statslatecollisions_hi) +
      bxe_hilo(&estats->tx_stat_dot3statsexcessivecollisions_hi));
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
