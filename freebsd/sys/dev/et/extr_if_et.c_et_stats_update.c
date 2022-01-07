
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_hw_stats {int tx_fragments; int tx_undersize; int tx_oversize; int tx_control; int tx_crcerrs; int tx_jabbers; int tx_drop; int tx_pause_honored; int tx_total_colls; int tx_excess_colls; int tx_late_colls; int tx_multi_colls; int tx_single_colls; int tx_excess_deferred; int tx_deferred; int tx_pause; int tx_bcast; int tx_mcast; int tx_frames; int tx_bytes; int rx_drop; int rx_jabbers; int rx_fragments; int rx_oversize; int rx_runts; int rx_cserrs; int rx_codeerrs; int rx_lenerrs; int rx_alignerrs; int rx_unknown_control; int rx_pause; int rx_control; int rx_bcast; int rx_mcast; int rx_crcerrs; int rx_frames; int rx_bytes; int pkts_1519; int pkts_1024; int pkts_512; int pkts_256; int pkts_128; int pkts_65; int pkts_64; } ;
struct et_softc {struct et_hw_stats sc_stats; } ;


 scalar_t__ CSR_READ_4 (struct et_softc*,int ) ;
 int ET_STAT_PKTS_1024_1518 ;
 int ET_STAT_PKTS_128_255 ;
 int ET_STAT_PKTS_1519_1522 ;
 int ET_STAT_PKTS_256_511 ;
 int ET_STAT_PKTS_512_1023 ;
 int ET_STAT_PKTS_64 ;
 int ET_STAT_PKTS_65_127 ;
 int ET_STAT_RX_ALIGN_ERR ;
 int ET_STAT_RX_BCAST ;
 int ET_STAT_RX_BYTES ;
 int ET_STAT_RX_CODE_ERR ;
 int ET_STAT_RX_CRC_ERR ;
 int ET_STAT_RX_CS_ERR ;
 int ET_STAT_RX_CTL ;
 int ET_STAT_RX_DROP ;
 int ET_STAT_RX_FRAG ;
 int ET_STAT_RX_FRAMES ;
 int ET_STAT_RX_JABBER ;
 int ET_STAT_RX_LEN_ERR ;
 int ET_STAT_RX_MCAST ;
 int ET_STAT_RX_OVERSIZE ;
 int ET_STAT_RX_PAUSE ;
 int ET_STAT_RX_RUNT ;
 int ET_STAT_RX_UNKNOWN_CTL ;
 int ET_STAT_TX_BCAST ;
 int ET_STAT_TX_BYTES ;
 int ET_STAT_TX_CRC_ERR ;
 int ET_STAT_TX_CTL ;
 int ET_STAT_TX_DEFER ;
 int ET_STAT_TX_DROP ;
 int ET_STAT_TX_EXCESS_COL ;
 int ET_STAT_TX_EXCESS_DEFER ;
 int ET_STAT_TX_FRAG ;
 int ET_STAT_TX_FRAMES ;
 int ET_STAT_TX_JABBER ;
 int ET_STAT_TX_LATE_COL ;
 int ET_STAT_TX_MCAST ;
 int ET_STAT_TX_MULTI_COL ;
 int ET_STAT_TX_OVERSIZE ;
 int ET_STAT_TX_PAUSE ;
 int ET_STAT_TX_PAUSE_HONOR ;
 int ET_STAT_TX_SINGLE_COL ;
 int ET_STAT_TX_TOTAL_COL ;
 int ET_STAT_TX_UNDERSIZE ;

__attribute__((used)) static void
et_stats_update(struct et_softc *sc)
{
 struct et_hw_stats *stats;

 stats = &sc->sc_stats;
 stats->pkts_64 += CSR_READ_4(sc, ET_STAT_PKTS_64);
 stats->pkts_65 += CSR_READ_4(sc, ET_STAT_PKTS_65_127);
 stats->pkts_128 += CSR_READ_4(sc, ET_STAT_PKTS_128_255);
 stats->pkts_256 += CSR_READ_4(sc, ET_STAT_PKTS_256_511);
 stats->pkts_512 += CSR_READ_4(sc, ET_STAT_PKTS_512_1023);
 stats->pkts_1024 += CSR_READ_4(sc, ET_STAT_PKTS_1024_1518);
 stats->pkts_1519 += CSR_READ_4(sc, ET_STAT_PKTS_1519_1522);

 stats->rx_bytes += CSR_READ_4(sc, ET_STAT_RX_BYTES);
 stats->rx_frames += CSR_READ_4(sc, ET_STAT_RX_FRAMES);
 stats->rx_crcerrs += CSR_READ_4(sc, ET_STAT_RX_CRC_ERR);
 stats->rx_mcast += CSR_READ_4(sc, ET_STAT_RX_MCAST);
 stats->rx_bcast += CSR_READ_4(sc, ET_STAT_RX_BCAST);
 stats->rx_control += CSR_READ_4(sc, ET_STAT_RX_CTL);
 stats->rx_pause += CSR_READ_4(sc, ET_STAT_RX_PAUSE);
 stats->rx_unknown_control += CSR_READ_4(sc, ET_STAT_RX_UNKNOWN_CTL);
 stats->rx_alignerrs += CSR_READ_4(sc, ET_STAT_RX_ALIGN_ERR);
 stats->rx_lenerrs += CSR_READ_4(sc, ET_STAT_RX_LEN_ERR);
 stats->rx_codeerrs += CSR_READ_4(sc, ET_STAT_RX_CODE_ERR);
 stats->rx_cserrs += CSR_READ_4(sc, ET_STAT_RX_CS_ERR);
 stats->rx_runts += CSR_READ_4(sc, ET_STAT_RX_RUNT);
 stats->rx_oversize += CSR_READ_4(sc, ET_STAT_RX_OVERSIZE);
 stats->rx_fragments += CSR_READ_4(sc, ET_STAT_RX_FRAG);
 stats->rx_jabbers += CSR_READ_4(sc, ET_STAT_RX_JABBER);
 stats->rx_drop += CSR_READ_4(sc, ET_STAT_RX_DROP);

 stats->tx_bytes += CSR_READ_4(sc, ET_STAT_TX_BYTES);
 stats->tx_frames += CSR_READ_4(sc, ET_STAT_TX_FRAMES);
 stats->tx_mcast += CSR_READ_4(sc, ET_STAT_TX_MCAST);
 stats->tx_bcast += CSR_READ_4(sc, ET_STAT_TX_BCAST);
 stats->tx_pause += CSR_READ_4(sc, ET_STAT_TX_PAUSE);
 stats->tx_deferred += CSR_READ_4(sc, ET_STAT_TX_DEFER);
 stats->tx_excess_deferred += CSR_READ_4(sc, ET_STAT_TX_EXCESS_DEFER);
 stats->tx_single_colls += CSR_READ_4(sc, ET_STAT_TX_SINGLE_COL);
 stats->tx_multi_colls += CSR_READ_4(sc, ET_STAT_TX_MULTI_COL);
 stats->tx_late_colls += CSR_READ_4(sc, ET_STAT_TX_LATE_COL);
 stats->tx_excess_colls += CSR_READ_4(sc, ET_STAT_TX_EXCESS_COL);
 stats->tx_total_colls += CSR_READ_4(sc, ET_STAT_TX_TOTAL_COL);
 stats->tx_pause_honored += CSR_READ_4(sc, ET_STAT_TX_PAUSE_HONOR);
 stats->tx_drop += CSR_READ_4(sc, ET_STAT_TX_DROP);
 stats->tx_jabbers += CSR_READ_4(sc, ET_STAT_TX_JABBER);
 stats->tx_crcerrs += CSR_READ_4(sc, ET_STAT_TX_CRC_ERR);
 stats->tx_control += CSR_READ_4(sc, ET_STAT_TX_CTL);
 stats->tx_oversize += CSR_READ_4(sc, ET_STAT_TX_OVERSIZE);
 stats->tx_undersize += CSR_READ_4(sc, ET_STAT_TX_UNDERSIZE);
 stats->tx_fragments += CSR_READ_4(sc, ET_STAT_TX_FRAG);
}
