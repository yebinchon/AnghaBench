
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rl_softc {scalar_t__ rl_watchdog_timer; TYPE_1__* rl_ifp; int rl_dev; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int device_printf (int ,char*) ;
 int if_inc_counter (TYPE_1__*,int ,int) ;
 int rl_init_locked (struct rl_softc*) ;
 int rl_rxeof (struct rl_softc*) ;
 int rl_txeof (struct rl_softc*) ;

__attribute__((used)) static void
rl_watchdog(struct rl_softc *sc)
{

 RL_LOCK_ASSERT(sc);

 if (sc->rl_watchdog_timer == 0 || --sc->rl_watchdog_timer >0)
  return;

 device_printf(sc->rl_dev, "watchdog timeout\n");
 if_inc_counter(sc->rl_ifp, IFCOUNTER_OERRORS, 1);

 rl_txeof(sc);
 rl_rxeof(sc);
 sc->rl_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 rl_init_locked(sc);
}
