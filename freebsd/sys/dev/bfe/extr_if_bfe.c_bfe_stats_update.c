
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_long ;
struct ifnet {int dummy; } ;
struct bfe_hw_stats {int rx_control_frames; int rx_pause_frames; int rx_symbol_errs; int rx_align_errs; int rx_crc_errs; int rx_runts; int rx_crc_align_errs; int rx_missed_frames; int rx_frag_frames; int rx_oversize_frames; int rx_jabbers; int rx_pkts_1024_max; int rx_pkts_512_1023; int rx_pkts_256_511; int rx_pkts_128_255; int rx_pkts_65_127; int rx_pkts_64; int rx_mcast_frames; int rx_bcast_frames; int rx_frames; int rx_octets; int rx_good_frames; int rx_good_octets; int tx_pause_frames; int tx_carrier_losts; int tx_deferrals; int tx_late_colls; int tx_excess_colls; int tx_multi_colls; int tx_single_colls; int tx_colls; int tx_underruns; int tx_frag_frames; int tx_oversize_frames; int tx_jabbers; int tx_pkts_1024_max; int tx_pkts_512_1023; int tx_pkts_256_511; int tx_pkts_128_255; int tx_pkts_65_127; int tx_pkts_64; int tx_mcast_frames; int tx_bcast_frames; int tx_frames; int tx_octets; int tx_good_frames; int tx_good_octets; } ;
struct bfe_softc {struct bfe_hw_stats bfe_stats; struct ifnet* bfe_ifp; } ;


 int BFE_LOCK_ASSERT (struct bfe_softc*) ;
 int BFE_MIB_CLR_ON_READ ;
 int BFE_MIB_CNT ;
 int BFE_MIB_CTRL ;
 scalar_t__ BFE_RX_GOOD_O ;
 scalar_t__ BFE_RX_NPAUSE ;
 scalar_t__ BFE_TX_GOOD_O ;
 scalar_t__ BFE_TX_PAUSE ;
 void* CSR_READ_4 (struct bfe_softc*,scalar_t__) ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int ) ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 size_t MIB_RX_1024_MAX ;
 size_t MIB_RX_128_255 ;
 size_t MIB_RX_256_511 ;
 size_t MIB_RX_512_1023 ;
 size_t MIB_RX_64 ;
 size_t MIB_RX_65_127 ;
 size_t MIB_RX_ALIGN ;
 size_t MIB_RX_BCAST ;
 size_t MIB_RX_CRC ;
 size_t MIB_RX_CRCA ;
 size_t MIB_RX_FRAG ;
 size_t MIB_RX_GOOD_O ;
 size_t MIB_RX_GOOD_P ;
 size_t MIB_RX_JABBER ;
 size_t MIB_RX_MCAST ;
 size_t MIB_RX_MISS ;
 size_t MIB_RX_NPAUSE ;
 size_t MIB_RX_O ;
 size_t MIB_RX_OSIZE ;
 size_t MIB_RX_P ;
 size_t MIB_RX_PAUSE ;
 size_t MIB_RX_SYM ;
 size_t MIB_RX_USIZE ;
 size_t MIB_TX_1024_MAX ;
 size_t MIB_TX_128_255 ;
 size_t MIB_TX_256_511 ;
 size_t MIB_TX_512_1023 ;
 size_t MIB_TX_64 ;
 size_t MIB_TX_65_127 ;
 size_t MIB_TX_BCAST ;
 size_t MIB_TX_CLOST ;
 size_t MIB_TX_DEFERED ;
 size_t MIB_TX_ECOLS ;
 size_t MIB_TX_FRAG ;
 size_t MIB_TX_GOOD_O ;
 size_t MIB_TX_GOOD_P ;
 size_t MIB_TX_JABBER ;
 size_t MIB_TX_LCOLS ;
 size_t MIB_TX_MCAST ;
 size_t MIB_TX_MCOLS ;
 size_t MIB_TX_O ;
 size_t MIB_TX_OSIZE ;
 size_t MIB_TX_P ;
 size_t MIB_TX_PAUSE ;
 size_t MIB_TX_SCOLS ;
 size_t MIB_TX_TCOLS ;
 size_t MIB_TX_URUNS ;
 int if_inc_counter (struct ifnet*,int ,scalar_t__) ;

__attribute__((used)) static void
bfe_stats_update(struct bfe_softc *sc)
{
 struct bfe_hw_stats *stats;
 struct ifnet *ifp;
 uint32_t mib[BFE_MIB_CNT];
 uint32_t reg, *val;

 BFE_LOCK_ASSERT(sc);

 val = mib;
 CSR_WRITE_4(sc, BFE_MIB_CTRL, BFE_MIB_CLR_ON_READ);
 for (reg = BFE_TX_GOOD_O; reg <= BFE_TX_PAUSE; reg += 4)
  *val++ = CSR_READ_4(sc, reg);
 for (reg = BFE_RX_GOOD_O; reg <= BFE_RX_NPAUSE; reg += 4)
  *val++ = CSR_READ_4(sc, reg);

 ifp = sc->bfe_ifp;
 stats = &sc->bfe_stats;

 stats->tx_good_octets += mib[MIB_TX_GOOD_O];
 stats->tx_good_frames += mib[MIB_TX_GOOD_P];
 stats->tx_octets += mib[MIB_TX_O];
 stats->tx_frames += mib[MIB_TX_P];
 stats->tx_bcast_frames += mib[MIB_TX_BCAST];
 stats->tx_mcast_frames += mib[MIB_TX_MCAST];
 stats->tx_pkts_64 += mib[MIB_TX_64];
 stats->tx_pkts_65_127 += mib[MIB_TX_65_127];
 stats->tx_pkts_128_255 += mib[MIB_TX_128_255];
 stats->tx_pkts_256_511 += mib[MIB_TX_256_511];
 stats->tx_pkts_512_1023 += mib[MIB_TX_512_1023];
 stats->tx_pkts_1024_max += mib[MIB_TX_1024_MAX];
 stats->tx_jabbers += mib[MIB_TX_JABBER];
 stats->tx_oversize_frames += mib[MIB_TX_OSIZE];
 stats->tx_frag_frames += mib[MIB_TX_FRAG];
 stats->tx_underruns += mib[MIB_TX_URUNS];
 stats->tx_colls += mib[MIB_TX_TCOLS];
 stats->tx_single_colls += mib[MIB_TX_SCOLS];
 stats->tx_multi_colls += mib[MIB_TX_MCOLS];
 stats->tx_excess_colls += mib[MIB_TX_ECOLS];
 stats->tx_late_colls += mib[MIB_TX_LCOLS];
 stats->tx_deferrals += mib[MIB_TX_DEFERED];
 stats->tx_carrier_losts += mib[MIB_TX_CLOST];
 stats->tx_pause_frames += mib[MIB_TX_PAUSE];

 stats->rx_good_octets += mib[MIB_RX_GOOD_O];
 stats->rx_good_frames += mib[MIB_RX_GOOD_P];
 stats->rx_octets += mib[MIB_RX_O];
 stats->rx_frames += mib[MIB_RX_P];
 stats->rx_bcast_frames += mib[MIB_RX_BCAST];
 stats->rx_mcast_frames += mib[MIB_RX_MCAST];
 stats->rx_pkts_64 += mib[MIB_RX_64];
 stats->rx_pkts_65_127 += mib[MIB_RX_65_127];
 stats->rx_pkts_128_255 += mib[MIB_RX_128_255];
 stats->rx_pkts_256_511 += mib[MIB_RX_256_511];
 stats->rx_pkts_512_1023 += mib[MIB_RX_512_1023];
 stats->rx_pkts_1024_max += mib[MIB_RX_1024_MAX];
 stats->rx_jabbers += mib[MIB_RX_JABBER];
 stats->rx_oversize_frames += mib[MIB_RX_OSIZE];
 stats->rx_frag_frames += mib[MIB_RX_FRAG];
 stats->rx_missed_frames += mib[MIB_RX_MISS];
 stats->rx_crc_align_errs += mib[MIB_RX_CRCA];
 stats->rx_runts += mib[MIB_RX_USIZE];
 stats->rx_crc_errs += mib[MIB_RX_CRC];
 stats->rx_align_errs += mib[MIB_RX_ALIGN];
 stats->rx_symbol_errs += mib[MIB_RX_SYM];
 stats->rx_pause_frames += mib[MIB_RX_PAUSE];
 stats->rx_control_frames += mib[MIB_RX_NPAUSE];


 if_inc_counter(ifp, IFCOUNTER_OPACKETS, (u_long)mib[MIB_TX_GOOD_P]);
 if_inc_counter(ifp, IFCOUNTER_COLLISIONS, (u_long)mib[MIB_TX_TCOLS]);
 if_inc_counter(ifp, IFCOUNTER_OERRORS, (u_long)mib[MIB_TX_URUNS] +
     (u_long)mib[MIB_TX_ECOLS] +
     (u_long)mib[MIB_TX_DEFERED] +
     (u_long)mib[MIB_TX_CLOST]);

 if_inc_counter(ifp, IFCOUNTER_IPACKETS, (u_long)mib[MIB_RX_GOOD_P]);

 if_inc_counter(ifp, IFCOUNTER_IERRORS, mib[MIB_RX_JABBER] +
     mib[MIB_RX_MISS] +
     mib[MIB_RX_CRCA] +
     mib[MIB_RX_USIZE] +
     mib[MIB_RX_CRC] +
     mib[MIB_RX_ALIGN] +
     mib[MIB_RX_SYM]);
}
