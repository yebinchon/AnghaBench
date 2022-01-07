
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_softc {scalar_t__ watchdog_timer; int dev; int ifp; } ;
typedef int if_t ;


 int FXP_LOCK_ASSERT (struct fxp_softc*,int ) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 int device_printf (int ,char*) ;
 int fxp_init_body (struct fxp_softc*,int) ;
 int if_inc_counter (int ,int ,int) ;
 int if_setdrvflagbits (int ,int ,int ) ;

__attribute__((used)) static void
fxp_watchdog(struct fxp_softc *sc)
{
 if_t ifp = sc->ifp;

 FXP_LOCK_ASSERT(sc, MA_OWNED);

 if (sc->watchdog_timer == 0 || --sc->watchdog_timer)
  return;

 device_printf(sc->dev, "device timeout\n");
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

 if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
 fxp_init_body(sc, 1);
}
