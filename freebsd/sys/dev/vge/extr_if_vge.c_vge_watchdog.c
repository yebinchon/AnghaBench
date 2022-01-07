
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {scalar_t__ vge_timer; struct ifnet* vge_ifp; int vge_watchdog; } ;
struct ifnet {int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int VGE_LOCK_ASSERT (struct vge_softc*) ;
 int VGE_RX_DESC_CNT ;
 int callout_reset (int *,int ,void (*) (void*),struct vge_softc*) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int vge_init_locked (struct vge_softc*) ;
 int vge_rxeof (struct vge_softc*,int ) ;
 int vge_stats_update (struct vge_softc*) ;
 int vge_txeof (struct vge_softc*) ;

__attribute__((used)) static void
vge_watchdog(void *arg)
{
 struct vge_softc *sc;
 struct ifnet *ifp;

 sc = arg;
 VGE_LOCK_ASSERT(sc);
 vge_stats_update(sc);
 callout_reset(&sc->vge_watchdog, hz, vge_watchdog, sc);
 if (sc->vge_timer == 0 || --sc->vge_timer > 0)
  return;

 ifp = sc->vge_ifp;
 if_printf(ifp, "watchdog timeout\n");
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

 vge_txeof(sc);
 vge_rxeof(sc, VGE_RX_DESC_CNT);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 vge_init_locked(sc);
}
