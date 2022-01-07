
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_hw_stats {int tx_broadcast; int tx_multicast; int tx_unicast; int rx_drops; int rx_pause; int tx_pause; int rx_octets; int tx_frames; int tx_deferals; int rx_broadcast; int rx_multicast; int rx_unicast; int rx_len_errors; int rx_fae; int rx_crc_errors; int rx_fifo_overuns; int rx_jumbos; int rx_runts; int rx_late_cols; int rx_extra_bytes; int rx_frame_errors; int tx_retry_errors; int tx_excess_deferals; int tx_carrier_losts; int tx_fifo_underuns; int tx_late_cols; int tx_multi_rexmits; int tx_one_rexmits; int tx_zero_rexmits; int tx_octets; } ;
struct nfe_softc {int nfe_flags; struct nfe_hw_stats nfe_stats; } ;


 int NFE_LOCK_ASSERT (struct nfe_softc*) ;
 int NFE_MIB_V1 ;
 int NFE_MIB_V2 ;
 int NFE_MIB_V3 ;
 scalar_t__ NFE_READ (struct nfe_softc*,int ) ;
 int NFE_RX_BROADCAST ;
 int NFE_RX_CRC_ERROR ;
 int NFE_RX_DROP ;
 int NFE_RX_EXTRA_BYTES ;
 int NFE_RX_FAE ;
 int NFE_RX_FIFO_OVERUN ;
 int NFE_RX_FRAME_ERROR ;
 int NFE_RX_JUMBO ;
 int NFE_RX_LATE_COL ;
 int NFE_RX_LEN_ERROR ;
 int NFE_RX_MULTICAST ;
 int NFE_RX_OCTET ;
 int NFE_RX_PAUSE ;
 int NFE_RX_RUNT ;
 int NFE_RX_UNICAST ;
 int NFE_TX_BROADCAST ;
 int NFE_TX_CARRIER_LOST ;
 int NFE_TX_DEFERAL ;
 int NFE_TX_EXCESS_DEFERRAL ;
 int NFE_TX_FIFO_UNDERUN ;
 int NFE_TX_FRAME ;
 int NFE_TX_LATE_COL ;
 int NFE_TX_MULTICAST ;
 int NFE_TX_MULTI_REXMIT ;
 int NFE_TX_OCTET ;
 int NFE_TX_ONE_REXMIT ;
 int NFE_TX_PAUSE ;
 int NFE_TX_RETRY_ERROR ;
 int NFE_TX_UNICAST ;
 int NFE_TX_ZERO_REXMIT ;

__attribute__((used)) static void
nfe_stats_update(struct nfe_softc *sc)
{
 struct nfe_hw_stats *stats;

 NFE_LOCK_ASSERT(sc);

 if ((sc->nfe_flags & (NFE_MIB_V1 | NFE_MIB_V2 | NFE_MIB_V3)) == 0)
  return;

 stats = &sc->nfe_stats;
 stats->tx_octets += NFE_READ(sc, NFE_TX_OCTET);
 stats->tx_zero_rexmits += NFE_READ(sc, NFE_TX_ZERO_REXMIT);
 stats->tx_one_rexmits += NFE_READ(sc, NFE_TX_ONE_REXMIT);
 stats->tx_multi_rexmits += NFE_READ(sc, NFE_TX_MULTI_REXMIT);
 stats->tx_late_cols += NFE_READ(sc, NFE_TX_LATE_COL);
 stats->tx_fifo_underuns += NFE_READ(sc, NFE_TX_FIFO_UNDERUN);
 stats->tx_carrier_losts += NFE_READ(sc, NFE_TX_CARRIER_LOST);
 stats->tx_excess_deferals += NFE_READ(sc, NFE_TX_EXCESS_DEFERRAL);
 stats->tx_retry_errors += NFE_READ(sc, NFE_TX_RETRY_ERROR);
 stats->rx_frame_errors += NFE_READ(sc, NFE_RX_FRAME_ERROR);
 stats->rx_extra_bytes += NFE_READ(sc, NFE_RX_EXTRA_BYTES);
 stats->rx_late_cols += NFE_READ(sc, NFE_RX_LATE_COL);
 stats->rx_runts += NFE_READ(sc, NFE_RX_RUNT);
 stats->rx_jumbos += NFE_READ(sc, NFE_RX_JUMBO);
 stats->rx_fifo_overuns += NFE_READ(sc, NFE_RX_FIFO_OVERUN);
 stats->rx_crc_errors += NFE_READ(sc, NFE_RX_CRC_ERROR);
 stats->rx_fae += NFE_READ(sc, NFE_RX_FAE);
 stats->rx_len_errors += NFE_READ(sc, NFE_RX_LEN_ERROR);
 stats->rx_unicast += NFE_READ(sc, NFE_RX_UNICAST);
 stats->rx_multicast += NFE_READ(sc, NFE_RX_MULTICAST);
 stats->rx_broadcast += NFE_READ(sc, NFE_RX_BROADCAST);

 if ((sc->nfe_flags & NFE_MIB_V2) != 0) {
  stats->tx_deferals += NFE_READ(sc, NFE_TX_DEFERAL);
  stats->tx_frames += NFE_READ(sc, NFE_TX_FRAME);
  stats->rx_octets += NFE_READ(sc, NFE_RX_OCTET);
  stats->tx_pause += NFE_READ(sc, NFE_TX_PAUSE);
  stats->rx_pause += NFE_READ(sc, NFE_RX_PAUSE);
  stats->rx_drops += NFE_READ(sc, NFE_RX_DROP);
 }

 if ((sc->nfe_flags & NFE_MIB_V3) != 0) {
  stats->tx_unicast += NFE_READ(sc, NFE_TX_UNICAST);
  stats->tx_multicast += NFE_READ(sc, NFE_TX_MULTICAST);
  stats->tx_broadcast += NFE_READ(sc, NFE_TX_BROADCAST);
 }
}
