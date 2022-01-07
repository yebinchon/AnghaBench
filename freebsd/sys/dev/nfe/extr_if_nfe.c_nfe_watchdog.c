
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ queued; } ;
struct nfe_softc {scalar_t__ nfe_watchdog_timer; int nfe_force_tx; int rxtxctl; TYPE_1__ txq; } ;
typedef int if_t ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int NFE_RXTX_CTL ;
 int NFE_RXTX_KICKTX ;
 int NFE_WRITE (struct nfe_softc*,int ,int) ;
 struct nfe_softc* if_getsoftc (int ) ;
 int if_inc_counter (int ,int ,int) ;
 int if_printf (int ,char*) ;
 int if_sendq_empty (int ) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 int nfe_init_locked (struct nfe_softc*) ;
 int nfe_start_locked (int ) ;
 int nfe_txeof (struct nfe_softc*) ;

__attribute__((used)) static void
nfe_watchdog(if_t ifp)
{
 struct nfe_softc *sc = if_getsoftc(ifp);

 if (sc->nfe_watchdog_timer == 0 || --sc->nfe_watchdog_timer)
  return;


 nfe_txeof(sc);
 if (sc->txq.queued == 0) {
  if_printf(ifp, "watchdog timeout (missed Tx interrupts) "
      "-- recovering\n");
  if (!if_sendq_empty(ifp))
   nfe_start_locked(ifp);
  return;
 }

 sc->nfe_force_tx++;
 if (sc->nfe_force_tx <= 3) {




  NFE_WRITE(sc, NFE_RXTX_CTL, NFE_RXTX_KICKTX | sc->rxtxctl);
  return;
 }
 sc->nfe_force_tx = 0;

 if_printf(ifp, "watchdog timeout\n");

 if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 nfe_init_locked(sc);
}
