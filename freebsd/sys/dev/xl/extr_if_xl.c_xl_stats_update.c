
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct xl_stats {scalar_t__ xl_tx_late_collision; scalar_t__ xl_tx_single_collision; scalar_t__ xl_tx_multi_collision; scalar_t__ xl_rx_overrun; } ;
struct xl_softc {struct ifnet* xl_ifp; } ;
struct ifnet {int dummy; } ;


 int CSR_READ_1 (struct xl_softc*,scalar_t__) ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 int XL_SEL_WIN (int) ;
 scalar_t__ XL_W4_BADSSD ;
 scalar_t__ XL_W6_CARRIER_LOST ;
 int bzero (char*,int) ;
 int if_inc_counter (struct ifnet*,int ,scalar_t__) ;

__attribute__((used)) static void
xl_stats_update(struct xl_softc *sc)
{
 struct ifnet *ifp = sc->xl_ifp;
 struct xl_stats xl_stats;
 u_int8_t *p;
 int i;

 XL_LOCK_ASSERT(sc);

 bzero((char *)&xl_stats, sizeof(struct xl_stats));

 p = (u_int8_t *)&xl_stats;


 XL_SEL_WIN(6);

 for (i = 0; i < 16; i++)
  *p++ = CSR_READ_1(sc, XL_W6_CARRIER_LOST + i);

 if_inc_counter(ifp, IFCOUNTER_IERRORS, xl_stats.xl_rx_overrun);

 if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
     xl_stats.xl_tx_multi_collision +
     xl_stats.xl_tx_single_collision +
     xl_stats.xl_tx_late_collision);







 XL_SEL_WIN(4);
 CSR_READ_1(sc, XL_W4_BADSSD);
 XL_SEL_WIN(7);
}
