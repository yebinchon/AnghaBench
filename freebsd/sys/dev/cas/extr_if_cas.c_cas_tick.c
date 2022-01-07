
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ifnet {int dummy; } ;
struct cas_softc {scalar_t__ sc_txfree; int sc_tick_ch; int sc_mii; struct ifnet* sc_ifp; } ;


 int CAS_LOCK_ASSERT (struct cas_softc*,int ) ;
 int CAS_MAC_EXCESS_COLL_CNT ;
 int CAS_MAC_FIRST_COLL_CNT ;
 int CAS_MAC_LATE_COLL_CNT ;
 int CAS_MAC_NORM_COLL_CNT ;
 int CAS_MAC_RX_ALIGN_ERR ;
 int CAS_MAC_RX_CODE_VIOL ;
 int CAS_MAC_RX_CRC_ERR_CNT ;
 int CAS_MAC_RX_LEN_ERR_CNT ;
 scalar_t__ CAS_MAXTXFREE ;
 scalar_t__ CAS_READ_4 (struct cas_softc*,int ) ;
 int CAS_WRITE_4 (struct cas_softc*,int ,int ) ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_OERRORS ;
 int MA_OWNED ;
 int callout_reset (int *,int ,void (*) (void*),struct cas_softc*) ;
 int cas_tint (struct cas_softc*) ;
 int cas_watchdog (struct cas_softc*) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,scalar_t__) ;
 int mii_tick (int ) ;

__attribute__((used)) static void
cas_tick(void *arg)
{
 struct cas_softc *sc = arg;
 struct ifnet *ifp = sc->sc_ifp;
 uint32_t v;

 CAS_LOCK_ASSERT(sc, MA_OWNED);




 if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
     CAS_READ_4(sc, CAS_MAC_NORM_COLL_CNT) +
     CAS_READ_4(sc, CAS_MAC_FIRST_COLL_CNT));
 v = CAS_READ_4(sc, CAS_MAC_EXCESS_COLL_CNT) +
     CAS_READ_4(sc, CAS_MAC_LATE_COLL_CNT);
 if_inc_counter(ifp, IFCOUNTER_COLLISIONS, v);
 if_inc_counter(ifp, IFCOUNTER_OERRORS, v);
 if_inc_counter(ifp, IFCOUNTER_IERRORS,
     CAS_READ_4(sc, CAS_MAC_RX_LEN_ERR_CNT) +
     CAS_READ_4(sc, CAS_MAC_RX_ALIGN_ERR) +
     CAS_READ_4(sc, CAS_MAC_RX_CRC_ERR_CNT) +
     CAS_READ_4(sc, CAS_MAC_RX_CODE_VIOL));




 CAS_WRITE_4(sc, CAS_MAC_NORM_COLL_CNT, 0);
 CAS_WRITE_4(sc, CAS_MAC_FIRST_COLL_CNT, 0);
 CAS_WRITE_4(sc, CAS_MAC_EXCESS_COLL_CNT, 0);
 CAS_WRITE_4(sc, CAS_MAC_LATE_COLL_CNT, 0);
 CAS_WRITE_4(sc, CAS_MAC_RX_LEN_ERR_CNT, 0);
 CAS_WRITE_4(sc, CAS_MAC_RX_ALIGN_ERR, 0);
 CAS_WRITE_4(sc, CAS_MAC_RX_CRC_ERR_CNT, 0);
 CAS_WRITE_4(sc, CAS_MAC_RX_CODE_VIOL, 0);

 mii_tick(sc->sc_mii);

 if (sc->sc_txfree != CAS_MAXTXFREE)
  cas_tint(sc);

 cas_watchdog(sc);

 callout_reset(&sc->sc_tick_ch, hz, cas_tick, sc);
}
