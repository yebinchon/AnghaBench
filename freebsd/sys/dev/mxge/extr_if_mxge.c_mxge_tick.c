
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ u_long ;
struct TYPE_6__ {int watchdog_countdown; int dying; int co_hdl; int watchdog_task; int tq; int dev; TYPE_1__* ifp; } ;
typedef TYPE_2__ mxge_softc_t ;
struct TYPE_5__ {int if_drv_flags; } ;


 int ENXIO ;
 int IFF_DRV_RUNNING ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIR_COMMAND ;
 int callout_reset (int *,int,void (*) (void*),TYPE_2__*) ;
 int mxge_ticks ;
 int mxge_watchdog (TYPE_2__*) ;
 int pci_read_config (int ,int ,int) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
mxge_tick(void *arg)
{
 mxge_softc_t *sc = arg;
 u_long pkts = 0;
 int err = 0;
 int running, ticks;
 uint16_t cmd;

 ticks = mxge_ticks;
 running = sc->ifp->if_drv_flags & IFF_DRV_RUNNING;
 if (running) {
  if (!sc->watchdog_countdown) {
   err = mxge_watchdog(sc);
   sc->watchdog_countdown = 4;
  }
  sc->watchdog_countdown--;
 }
 if (pkts == 0) {

  cmd = pci_read_config(sc->dev, PCIR_COMMAND, 2);
  if ((cmd & PCIM_CMD_BUSMASTEREN) == 0) {
   sc->dying = 2;
   taskqueue_enqueue(sc->tq, &sc->watchdog_task);
   err = ENXIO;
  }

  ticks *= 4;
 }

 if (err == 0)
  callout_reset(&sc->co_hdl, ticks, mxge_tick, sc);

}
