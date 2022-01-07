
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct hme_softc {int sc_tick_ch; int sc_mii; struct ifnet* sc_ifp; } ;


 scalar_t__ EJUSTRETURN ;
 int HME_LOCK_ASSERT (struct hme_softc*,int ) ;
 int HME_MACI_EXCNT ;
 int HME_MACI_FCCNT ;
 int HME_MACI_LTCNT ;
 int HME_MACI_NCCNT ;
 scalar_t__ HME_MAC_READ_4 (struct hme_softc*,int ) ;
 int HME_MAC_WRITE_4 (struct hme_softc*,int ,int ) ;
 int IFCOUNTER_COLLISIONS ;
 int MA_OWNED ;
 int callout_reset (int *,int ,void (*) (void*),struct hme_softc*) ;
 scalar_t__ hme_watchdog (struct hme_softc*) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,scalar_t__) ;
 int mii_tick (int ) ;

__attribute__((used)) static void
hme_tick(void *arg)
{
 struct hme_softc *sc = arg;
 struct ifnet *ifp;

 HME_LOCK_ASSERT(sc, MA_OWNED);

 ifp = sc->sc_ifp;



 if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
  HME_MAC_READ_4(sc, HME_MACI_NCCNT) +
  HME_MAC_READ_4(sc, HME_MACI_FCCNT) +
  HME_MAC_READ_4(sc, HME_MACI_EXCNT) +
  HME_MAC_READ_4(sc, HME_MACI_LTCNT));




 HME_MAC_WRITE_4(sc, HME_MACI_NCCNT, 0);
 HME_MAC_WRITE_4(sc, HME_MACI_FCCNT, 0);
 HME_MAC_WRITE_4(sc, HME_MACI_EXCNT, 0);
 HME_MAC_WRITE_4(sc, HME_MACI_LTCNT, 0);

 mii_tick(sc->sc_mii);

 if (hme_watchdog(sc) == EJUSTRETURN)
  return;

 callout_reset(&sc->sc_tick_ch, hz, hme_tick, sc);
}
