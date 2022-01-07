
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int nwqs; int timer; int * wq; } ;
typedef TYPE_1__* POCE_SOFTC ;


 scalar_t__ IS_BE (TYPE_1__*) ;
 scalar_t__ IS_SH (TYPE_1__*) ;
 int callout_reset (int *,int ,void (*) (void*),TYPE_1__*) ;
 int hz ;
 int oce_detect_hw_error (TYPE_1__*) ;
 int oce_eqd_set_periodic (TYPE_1__*) ;
 int oce_mac_addr_set (TYPE_1__*) ;
 int oce_refresh_nic_stats (TYPE_1__*) ;
 int oce_refresh_queue_stats (TYPE_1__*) ;
 int oce_tx_restart (TYPE_1__*,int ) ;

__attribute__((used)) static void
oce_local_timer(void *arg)
{
 POCE_SOFTC sc = arg;
 int i = 0;

 oce_detect_hw_error(sc);
 oce_refresh_nic_stats(sc);
 oce_refresh_queue_stats(sc);
 oce_mac_addr_set(sc);


 for (i = 0; i < sc->nwqs; i++)
  oce_tx_restart(sc, sc->wq[i]);


 if (IS_BE(sc) || IS_SH(sc))
  oce_eqd_set_periodic(sc);

 callout_reset(&sc->timer, hz, oce_local_timer, sc);
}
