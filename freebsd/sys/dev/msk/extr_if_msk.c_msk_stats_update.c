
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct msk_softc {int dummy; } ;
struct msk_hw_stats {int tx_underflows; int tx_single_colls; int tx_multi_colls; int tx_excess_colls; int tx_late_colls; int tx_colls; int tx_pkts_1519_max; int tx_pkts_1024_1518; int tx_pkts_512_1023; int tx_pkts_256_511; int tx_pkts_128_255; int tx_pkts_65_127; int tx_pkts_64; int tx_octets; int tx_mcast_frames; int tx_pause_frames; int tx_bcast_frames; int tx_ucast_frames; int rx_fifo_oflows; int rx_pkts_jabbers; int rx_pkts_too_long; int rx_pkts_1519_max; int rx_pkts_1024_1518; int rx_pkts_512_1023; int rx_pkts_256_511; int rx_pkts_128_255; int rx_pkts_65_127; int rx_pkts_64; int rx_runt_errs; int rx_runts; int rx_bad_octets; int rx_good_octets; int rx_crc_errs; int rx_mcast_frames; int rx_pause_frames; int rx_bcast_frames; int rx_ucast_frames; } ;
struct msk_if_softc {int msk_port; struct msk_hw_stats msk_stats; struct msk_softc* msk_softc; struct ifnet* msk_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int GMAC_READ_2 (struct msk_softc*,int ,int ) ;
 int GMAC_WRITE_2 (struct msk_softc*,int ,int ,int) ;
 int GM_PAR_MIB_CLR ;
 int GM_PHY_ADDR ;
 int GM_RXE_FIFO_OV ;
 int GM_RXE_FRAG ;
 int GM_RXF_1023B ;
 int GM_RXF_127B ;
 int GM_RXF_1518B ;
 int GM_RXF_255B ;
 int GM_RXF_511B ;
 int GM_RXF_64B ;
 int GM_RXF_BC_OK ;
 int GM_RXF_FCS_ERR ;
 int GM_RXF_JAB_PKT ;
 int GM_RXF_LNG_ERR ;
 int GM_RXF_MAX_SZ ;
 int GM_RXF_MC_OK ;
 int GM_RXF_MPAUSE ;
 int GM_RXF_SHT ;
 int GM_RXF_SPARE1 ;
 int GM_RXF_SPARE2 ;
 int GM_RXF_SPARE3 ;
 int GM_RXF_UC_OK ;
 int GM_RXO_ERR_LO ;
 int GM_RXO_OK_LO ;
 int GM_TXE_FIFO_UR ;
 int GM_TXF_1023B ;
 int GM_TXF_127B ;
 int GM_TXF_1518B ;
 int GM_TXF_255B ;
 int GM_TXF_511B ;
 int GM_TXF_64B ;
 int GM_TXF_ABO_COL ;
 int GM_TXF_BC_OK ;
 int GM_TXF_COL ;
 int GM_TXF_LAT_COL ;
 int GM_TXF_MAX_SZ ;
 int GM_TXF_MC_OK ;
 int GM_TXF_MPAUSE ;
 int GM_TXF_MUL_COL ;
 int GM_TXF_SNG_COL ;
 int GM_TXF_SPARE1 ;
 int GM_TXF_UC_OK ;
 int GM_TXO_OK_LO ;
 int IFF_DRV_RUNNING ;
 int MSK_IF_LOCK_ASSERT (struct msk_if_softc*) ;
 scalar_t__ MSK_READ_MIB32 (int ,int ) ;
 scalar_t__ MSK_READ_MIB64 (int ,int ) ;

__attribute__((used)) static void
msk_stats_update(struct msk_if_softc *sc_if)
{
 struct msk_softc *sc;
 struct ifnet *ifp;
 struct msk_hw_stats *stats;
 uint16_t gmac;
 uint32_t reg;

 MSK_IF_LOCK_ASSERT(sc_if);

 ifp = sc_if->msk_ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;
 sc = sc_if->msk_softc;
 stats = &sc_if->msk_stats;

 gmac = GMAC_READ_2(sc, sc_if->msk_port, GM_PHY_ADDR);
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_PHY_ADDR, gmac | GM_PAR_MIB_CLR);


 stats->rx_ucast_frames +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_UC_OK);
 stats->rx_bcast_frames +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_BC_OK);
 stats->rx_pause_frames +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_MPAUSE);
 stats->rx_mcast_frames +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_MC_OK);
 stats->rx_crc_errs +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_FCS_ERR);
 reg = MSK_READ_MIB32(sc_if->msk_port, GM_RXF_SPARE1);
 stats->rx_good_octets +=
     MSK_READ_MIB64(sc_if->msk_port, GM_RXO_OK_LO);
 stats->rx_bad_octets +=
     MSK_READ_MIB64(sc_if->msk_port, GM_RXO_ERR_LO);
 stats->rx_runts +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_SHT);
 stats->rx_runt_errs +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXE_FRAG);
 stats->rx_pkts_64 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_64B);
 stats->rx_pkts_65_127 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_127B);
 stats->rx_pkts_128_255 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_255B);
 stats->rx_pkts_256_511 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_511B);
 stats->rx_pkts_512_1023 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_1023B);
 stats->rx_pkts_1024_1518 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_1518B);
 stats->rx_pkts_1519_max +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_MAX_SZ);
 stats->rx_pkts_too_long +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_LNG_ERR);
 stats->rx_pkts_jabbers +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXF_JAB_PKT);
 reg = MSK_READ_MIB32(sc_if->msk_port, GM_RXF_SPARE2);
 stats->rx_fifo_oflows +=
     MSK_READ_MIB32(sc_if->msk_port, GM_RXE_FIFO_OV);
 reg = MSK_READ_MIB32(sc_if->msk_port, GM_RXF_SPARE3);


 stats->tx_ucast_frames +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_UC_OK);
 stats->tx_bcast_frames +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_BC_OK);
 stats->tx_pause_frames +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_MPAUSE);
 stats->tx_mcast_frames +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_MC_OK);
 stats->tx_octets +=
     MSK_READ_MIB64(sc_if->msk_port, GM_TXO_OK_LO);
 stats->tx_pkts_64 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_64B);
 stats->tx_pkts_65_127 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_127B);
 stats->tx_pkts_128_255 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_255B);
 stats->tx_pkts_256_511 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_511B);
 stats->tx_pkts_512_1023 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_1023B);
 stats->tx_pkts_1024_1518 +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_1518B);
 stats->tx_pkts_1519_max +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_MAX_SZ);
 reg = MSK_READ_MIB32(sc_if->msk_port, GM_TXF_SPARE1);
 stats->tx_colls +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_COL);
 stats->tx_late_colls +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_LAT_COL);
 stats->tx_excess_colls +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_ABO_COL);
 stats->tx_multi_colls +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_MUL_COL);
 stats->tx_single_colls +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXF_SNG_COL);
 stats->tx_underflows +=
     MSK_READ_MIB32(sc_if->msk_port, GM_TXE_FIFO_UR);

 gmac &= ~GM_PAR_MIB_CLR;
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_PHY_ADDR, gmac);
}
