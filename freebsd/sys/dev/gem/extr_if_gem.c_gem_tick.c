
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ifnet {int dummy; } ;
struct gem_softc {int sc_tick_ch; int sc_mii; struct ifnet* sc_ifp; } ;


 scalar_t__ EJUSTRETURN ;
 scalar_t__ GEM_BANK1_READ_4 (struct gem_softc*,int ) ;
 int GEM_BANK1_WRITE_4 (struct gem_softc*,int ,int ) ;
 int GEM_LOCK_ASSERT (struct gem_softc*,int ) ;
 int GEM_MAC_EXCESS_COLL_CNT ;
 int GEM_MAC_FIRST_COLL_CNT ;
 int GEM_MAC_LATE_COLL_CNT ;
 int GEM_MAC_NORM_COLL_CNT ;
 int GEM_MAC_RX_ALIGN_ERR ;
 int GEM_MAC_RX_CODE_VIOL ;
 int GEM_MAC_RX_CRC_ERR_CNT ;
 int GEM_MAC_RX_LEN_ERR_CNT ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_OERRORS ;
 int MA_OWNED ;
 int callout_reset (int *,int ,void (*) (void*),struct gem_softc*) ;
 scalar_t__ gem_watchdog (struct gem_softc*) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,scalar_t__) ;
 int mii_tick (int ) ;

__attribute__((used)) static void
gem_tick(void *arg)
{
 struct gem_softc *sc = arg;
 struct ifnet *ifp = sc->sc_ifp;
 uint32_t v;

 GEM_LOCK_ASSERT(sc, MA_OWNED);




 if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
     GEM_BANK1_READ_4(sc, GEM_MAC_NORM_COLL_CNT) +
     GEM_BANK1_READ_4(sc, GEM_MAC_FIRST_COLL_CNT));
 v = GEM_BANK1_READ_4(sc, GEM_MAC_EXCESS_COLL_CNT) +
     GEM_BANK1_READ_4(sc, GEM_MAC_LATE_COLL_CNT);
 if_inc_counter(ifp, IFCOUNTER_COLLISIONS, v);
 if_inc_counter(ifp, IFCOUNTER_OERRORS, v);
 if_inc_counter(ifp, IFCOUNTER_IERRORS,
     GEM_BANK1_READ_4(sc, GEM_MAC_RX_LEN_ERR_CNT) +
     GEM_BANK1_READ_4(sc, GEM_MAC_RX_ALIGN_ERR) +
     GEM_BANK1_READ_4(sc, GEM_MAC_RX_CRC_ERR_CNT) +
     GEM_BANK1_READ_4(sc, GEM_MAC_RX_CODE_VIOL));




 GEM_BANK1_WRITE_4(sc, GEM_MAC_NORM_COLL_CNT, 0);
 GEM_BANK1_WRITE_4(sc, GEM_MAC_FIRST_COLL_CNT, 0);
 GEM_BANK1_WRITE_4(sc, GEM_MAC_EXCESS_COLL_CNT, 0);
 GEM_BANK1_WRITE_4(sc, GEM_MAC_LATE_COLL_CNT, 0);
 GEM_BANK1_WRITE_4(sc, GEM_MAC_RX_LEN_ERR_CNT, 0);
 GEM_BANK1_WRITE_4(sc, GEM_MAC_RX_ALIGN_ERR, 0);
 GEM_BANK1_WRITE_4(sc, GEM_MAC_RX_CRC_ERR_CNT, 0);
 GEM_BANK1_WRITE_4(sc, GEM_MAC_RX_CODE_VIOL, 0);

 mii_tick(sc->sc_mii);

 if (gem_watchdog(sc) == EJUSTRETURN)
  return;

 callout_reset(&sc->sc_tick_ch, hz, gem_tick, sc);
}
