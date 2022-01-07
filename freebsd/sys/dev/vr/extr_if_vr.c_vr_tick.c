
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_restart; } ;
struct vr_softc {int vr_flags; int vr_stat_callout; int vr_dev; int vr_miibus; TYPE_2__* vr_ifp; TYPE_1__ vr_stat; } ;
struct mii_data {int dummy; } ;
struct TYPE_4__ {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int VR_F_LINK ;
 int VR_F_RESTART ;
 int VR_LOCK_ASSERT (struct vr_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct vr_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int vr_init_locked (struct vr_softc*) ;
 int vr_miibus_statchg (int ) ;
 int vr_watchdog (struct vr_softc*) ;

__attribute__((used)) static void
vr_tick(void *xsc)
{
 struct vr_softc *sc;
 struct mii_data *mii;

 sc = (struct vr_softc *)xsc;

 VR_LOCK_ASSERT(sc);

 if ((sc->vr_flags & VR_F_RESTART) != 0) {
  device_printf(sc->vr_dev, "restarting\n");
  sc->vr_stat.num_restart++;
  sc->vr_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  vr_init_locked(sc);
  sc->vr_flags &= ~VR_F_RESTART;
 }

 mii = device_get_softc(sc->vr_miibus);
 mii_tick(mii);
 if ((sc->vr_flags & VR_F_LINK) == 0)
  vr_miibus_statchg(sc->vr_dev);
 vr_watchdog(sc);
 callout_reset(&sc->vr_stat_callout, hz, vr_tick, sc);
}
