
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_softc {int ti_dev; TYPE_1__* ti_ifp; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int device_printf (int ,char*) ;
 scalar_t__ ti_gibinit (struct ti_softc*) ;
 int ti_stop (struct ti_softc*) ;

__attribute__((used)) static void
ti_init_locked(void *xsc)
{
 struct ti_softc *sc = xsc;

 if (sc->ti_ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;


 ti_stop(sc);


 if (ti_gibinit(sc)) {
  device_printf(sc->ti_dev, "initialization failure\n");
  return;
 }
}
