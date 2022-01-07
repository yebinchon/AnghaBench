
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ste_softc {int dummy; } ;


 int CSR_READ_1 (struct ste_softc*,int ) ;
 int CSR_READ_2 (struct ste_softc*,int ) ;
 int STE_LOCK_ASSERT (struct ste_softc*) ;
 int STE_STAT_CARRIER_ERR ;
 int STE_STAT_LATE_COLLS ;
 int STE_STAT_MULTI_COLLS ;
 int STE_STAT_RX_BCAST ;
 int STE_STAT_RX_FRAMES ;
 int STE_STAT_RX_LOST ;
 int STE_STAT_RX_MCAST ;
 int STE_STAT_RX_OCTETS_HI ;
 int STE_STAT_RX_OCTETS_LO ;
 int STE_STAT_SINGLE_COLLS ;
 int STE_STAT_TX_ABORT ;
 int STE_STAT_TX_BCAST ;
 int STE_STAT_TX_DEFER ;
 int STE_STAT_TX_EXDEFER ;
 int STE_STAT_TX_FRAMES ;
 int STE_STAT_TX_MCAST ;
 int STE_STAT_TX_OCTETS_HI ;
 int STE_STAT_TX_OCTETS_LO ;

__attribute__((used)) static void
ste_stats_clear(struct ste_softc *sc)
{

 STE_LOCK_ASSERT(sc);


 CSR_READ_2(sc, STE_STAT_RX_OCTETS_LO);
 CSR_READ_2(sc, STE_STAT_RX_OCTETS_HI);
 CSR_READ_2(sc, STE_STAT_RX_FRAMES);
 CSR_READ_1(sc, STE_STAT_RX_BCAST);
 CSR_READ_1(sc, STE_STAT_RX_MCAST);
 CSR_READ_1(sc, STE_STAT_RX_LOST);

 CSR_READ_2(sc, STE_STAT_TX_OCTETS_LO);
 CSR_READ_2(sc, STE_STAT_TX_OCTETS_HI);
 CSR_READ_2(sc, STE_STAT_TX_FRAMES);
 CSR_READ_1(sc, STE_STAT_TX_BCAST);
 CSR_READ_1(sc, STE_STAT_TX_MCAST);
 CSR_READ_1(sc, STE_STAT_CARRIER_ERR);
 CSR_READ_1(sc, STE_STAT_SINGLE_COLLS);
 CSR_READ_1(sc, STE_STAT_MULTI_COLLS);
 CSR_READ_1(sc, STE_STAT_LATE_COLLS);
 CSR_READ_1(sc, STE_STAT_TX_DEFER);
 CSR_READ_1(sc, STE_STAT_TX_EXDEFER);
 CSR_READ_1(sc, STE_STAT_TX_ABORT);
}
