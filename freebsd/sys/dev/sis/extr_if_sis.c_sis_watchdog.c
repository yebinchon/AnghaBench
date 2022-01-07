
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sis_softc {scalar_t__ sis_watchdog_timer; TYPE_1__* sis_ifp; int sis_dev; } ;
struct TYPE_3__ {int if_snd; int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int SIS_LOCK_ASSERT (struct sis_softc*) ;
 int device_printf (int ,char*) ;
 int if_inc_counter (TYPE_1__*,int ,int) ;
 int sis_initl (struct sis_softc*) ;
 int sis_startl (TYPE_1__*) ;

__attribute__((used)) static void
sis_watchdog(struct sis_softc *sc)
{

 SIS_LOCK_ASSERT(sc);

 if (sc->sis_watchdog_timer == 0 || --sc->sis_watchdog_timer >0)
  return;

 device_printf(sc->sis_dev, "watchdog timeout\n");
 if_inc_counter(sc->sis_ifp, IFCOUNTER_OERRORS, 1);

 sc->sis_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 sis_initl(sc);

 if (!IFQ_DRV_IS_EMPTY(&sc->sis_ifp->if_snd))
  sis_startl(sc->sis_ifp);
}
