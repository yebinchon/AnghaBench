
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct glc_softc {size_t sc_next_rxdma_slot; scalar_t__ sc_wdog_timer; int sc_self; int sc_tick_ch; TYPE_1__* sc_rxsoft; int sc_dev; int sc_bus; int sc_mtx; } ;
struct TYPE_2__ {int rxs_desc; } ;


 int MA_OWNED ;
 int callout_reset (int *,int ,void (*) (void*),struct glc_softc*) ;
 int device_printf (int ,char*) ;
 int glc_init_locked (struct glc_softc*) ;
 int hz ;
 int lv1_net_start_rx_dma (int ,int ,int ,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
glc_tick(void *xsc)
{
 struct glc_softc *sc = xsc;

 mtx_assert(&sc->sc_mtx, MA_OWNED);






 lv1_net_start_rx_dma(sc->sc_bus, sc->sc_dev,
     sc->sc_rxsoft[sc->sc_next_rxdma_slot].rxs_desc, 0);

 if (sc->sc_wdog_timer == 0 || --sc->sc_wdog_timer != 0) {
  callout_reset(&sc->sc_tick_ch, hz, glc_tick, sc);
  return;
 }


 device_printf(sc->sc_self, "device timeout\n");

 glc_init_locked(sc);
}
