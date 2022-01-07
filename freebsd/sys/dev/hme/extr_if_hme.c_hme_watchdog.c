
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ifnet {int if_drv_flags; } ;
struct hme_softc {scalar_t__ sc_wdog_timer; int sc_flags; int sc_dev; struct ifnet* sc_ifp; } ;


 int CTR1 (int ,char*,int ) ;
 int EJUSTRETURN ;
 int HME_LINK ;
 int HME_LOCK_ASSERT (struct hme_softc*,int ) ;
 int HME_SEBI_STAT ;
 scalar_t__ HME_SEB_READ_4 (struct hme_softc*,int ) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int KTR_HME ;
 int MA_OWNED ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 int hme_init_locked (struct hme_softc*) ;
 int hme_start_locked (struct ifnet*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;

__attribute__((used)) static int
hme_watchdog(struct hme_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;

 HME_LOCK_ASSERT(sc, MA_OWNED);






 if (sc->sc_wdog_timer == 0 || --sc->sc_wdog_timer != 0)
  return (0);

 if ((sc->sc_flags & HME_LINK) != 0)
  device_printf(sc->sc_dev, "device timeout\n");
 else if (bootverbose)
  device_printf(sc->sc_dev, "device timeout (no link)\n");
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 hme_init_locked(sc);
 hme_start_locked(ifp);
 return (EJUSTRETURN);
}
