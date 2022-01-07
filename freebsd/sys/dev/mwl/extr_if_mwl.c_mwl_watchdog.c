
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mst_watchdog; } ;
struct TYPE_3__ {int ic_oerrors; } ;
struct mwl_softc {scalar_t__ sc_tx_timer; TYPE_2__ sc_stats; TYPE_1__ sc_ic; int * sc_txq; int sc_dev; int sc_mh; int sc_invalid; scalar_t__ sc_running; int sc_watchdog; } ;


 int callout_reset (int *,int ,void (*) (void*),struct mwl_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 scalar_t__ mwl_hal_setkeepalive (int ) ;
 int mwl_reset (struct mwl_softc*) ;
 int mwl_txq_dump (int *) ;

__attribute__((used)) static void
mwl_watchdog(void *arg)
{
 struct mwl_softc *sc = arg;

 callout_reset(&sc->sc_watchdog, hz, mwl_watchdog, sc);
 if (sc->sc_tx_timer == 0 || --sc->sc_tx_timer > 0)
  return;

 if (sc->sc_running && !sc->sc_invalid) {
  if (mwl_hal_setkeepalive(sc->sc_mh))
   device_printf(sc->sc_dev,
       "transmit timeout (firmware hung?)\n");
  else
   device_printf(sc->sc_dev,
       "transmit timeout\n");




  counter_u64_add(sc->sc_ic.ic_oerrors, 1);
  sc->sc_stats.mst_watchdog++;
 }
}
