
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_softc {scalar_t__ sge_timer; int sge_flags; struct ifnet* sge_ifp; int sge_dev; } ;
struct ifnet {int if_snd; int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int SGE_FLAG_LINK ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int sge_init_locked (struct sge_softc*) ;
 int sge_start_locked (struct ifnet*) ;

__attribute__((used)) static void
sge_watchdog(struct sge_softc *sc)
{
 struct ifnet *ifp;

 SGE_LOCK_ASSERT(sc);
 if (sc->sge_timer == 0 || --sc->sge_timer > 0)
  return;

 ifp = sc->sge_ifp;
 if ((sc->sge_flags & SGE_FLAG_LINK) == 0) {
  if (1 || bootverbose)
   device_printf(sc->sge_dev,
       "watchdog timeout (lost link)\n");
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  sge_init_locked(sc);
  return;
 }
 device_printf(sc->sge_dev, "watchdog timeout\n");
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 sge_init_locked(sc);
 if (!IFQ_DRV_IS_EMPTY(&sc->sge_ifp->if_snd))
  sge_start_locked(ifp);
}
