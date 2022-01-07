
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vr_tx_cnt; } ;
struct vr_softc {scalar_t__ vr_watchdog_timer; int vr_flags; struct ifnet* vr_ifp; TYPE_1__ vr_cdata; } ;
struct ifnet {int if_snd; int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int VR_F_LINK ;
 int VR_LOCK_ASSERT (struct vr_softc*) ;
 scalar_t__ bootverbose ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int vr_init_locked (struct vr_softc*) ;
 int vr_start_locked (struct ifnet*) ;
 int vr_txeof (struct vr_softc*) ;

__attribute__((used)) static void
vr_watchdog(struct vr_softc *sc)
{
 struct ifnet *ifp;

 VR_LOCK_ASSERT(sc);

 if (sc->vr_watchdog_timer == 0 || --sc->vr_watchdog_timer)
  return;

 ifp = sc->vr_ifp;



 vr_txeof(sc);
 if (sc->vr_cdata.vr_tx_cnt == 0)
  return;

 if ((sc->vr_flags & VR_F_LINK) == 0) {
  if (bootverbose)
   if_printf(sc->vr_ifp, "watchdog timeout "
      "(missed link)\n");
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  vr_init_locked(sc);
  return;
 }

 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 if_printf(ifp, "watchdog timeout\n");

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 vr_init_locked(sc);

 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  vr_start_locked(ifp);
}
