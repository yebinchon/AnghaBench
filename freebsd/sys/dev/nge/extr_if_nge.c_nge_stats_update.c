
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_stats {int rx_pkts_errs; int rx_crc_errs; int rx_fifo_oflows; int rx_align_errs; int rx_sym_errs; int rx_pkts_jumbos; int rx_len_errs; int rx_unctl_frames; int rx_pause; int tx_pause; int tx_seq_errs; } ;
struct nge_softc {struct nge_stats nge_stats; struct ifnet* nge_ifp; } ;
struct ifnet {int dummy; } ;


 int CSR_READ_4 (struct nge_softc*,int ) ;
 int IFCOUNTER_IERRORS ;
 int NGE_LOCK_ASSERT (struct nge_softc*) ;
 int NGE_MIB_RXBADOPCODE ;
 int NGE_MIB_RXERRALIGN ;
 int NGE_MIB_RXERRFCS ;
 int NGE_MIB_RXERRGIANT ;
 int NGE_MIB_RXERRMISSEDPKT ;
 int NGE_MIB_RXERRPKT ;
 int NGE_MIB_RXERRRANGLEN ;
 int NGE_MIB_RXERRSYM ;
 int NGE_MIB_RXPAUSEPKTS ;
 int NGE_MIB_TXERRSQE ;
 int NGE_MIB_TXPAUSEPKTS ;
 int if_inc_counter (struct ifnet*,int ,int) ;

__attribute__((used)) static void
nge_stats_update(struct nge_softc *sc)
{
 struct ifnet *ifp;
 struct nge_stats now, *stats, *nstats;

 NGE_LOCK_ASSERT(sc);

 ifp = sc->nge_ifp;
 stats = &now;
 stats->rx_pkts_errs =
     CSR_READ_4(sc, NGE_MIB_RXERRPKT) & 0xFFFF;
 stats->rx_crc_errs =
     CSR_READ_4(sc, NGE_MIB_RXERRFCS) & 0xFFFF;
 stats->rx_fifo_oflows =
     CSR_READ_4(sc, NGE_MIB_RXERRMISSEDPKT) & 0xFFFF;
 stats->rx_align_errs =
     CSR_READ_4(sc, NGE_MIB_RXERRALIGN) & 0xFFFF;
 stats->rx_sym_errs =
     CSR_READ_4(sc, NGE_MIB_RXERRSYM) & 0xFFFF;
 stats->rx_pkts_jumbos =
     CSR_READ_4(sc, NGE_MIB_RXERRGIANT) & 0xFFFF;
 stats->rx_len_errs =
     CSR_READ_4(sc, NGE_MIB_RXERRRANGLEN) & 0xFFFF;
 stats->rx_unctl_frames =
     CSR_READ_4(sc, NGE_MIB_RXBADOPCODE) & 0xFFFF;
 stats->rx_pause =
     CSR_READ_4(sc, NGE_MIB_RXPAUSEPKTS) & 0xFFFF;
 stats->tx_pause =
     CSR_READ_4(sc, NGE_MIB_TXPAUSEPKTS) & 0xFFFF;
 stats->tx_seq_errs =
     CSR_READ_4(sc, NGE_MIB_TXERRSQE) & 0xFF;




 if_inc_counter(ifp, IFCOUNTER_IERRORS,
     stats->rx_pkts_errs + stats->rx_crc_errs +
     stats->rx_fifo_oflows + stats->rx_sym_errs);

 nstats = &sc->nge_stats;
 nstats->rx_pkts_errs += stats->rx_pkts_errs;
 nstats->rx_crc_errs += stats->rx_crc_errs;
 nstats->rx_fifo_oflows += stats->rx_fifo_oflows;
 nstats->rx_align_errs += stats->rx_align_errs;
 nstats->rx_sym_errs += stats->rx_sym_errs;
 nstats->rx_pkts_jumbos += stats->rx_pkts_jumbos;
 nstats->rx_len_errs += stats->rx_len_errs;
 nstats->rx_unctl_frames += stats->rx_unctl_frames;
 nstats->rx_pause += stats->rx_pause;
 nstats->tx_pause += stats->tx_pause;
 nstats->tx_seq_errs += stats->tx_seq_errs;
}
