
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glc_softc {int sc_dev; int sc_bus; int sc_mtx; } ;


 int MA_OWNED ;
 int lv1_net_stop_rx_dma (int ,int ,int ) ;
 int lv1_net_stop_tx_dma (int ,int ,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
glc_stop(void *xsc)
{
 struct glc_softc *sc = xsc;

 mtx_assert(&sc->sc_mtx, MA_OWNED);

 lv1_net_stop_tx_dma(sc->sc_bus, sc->sc_dev, 0);
 lv1_net_stop_rx_dma(sc->sc_bus, sc->sc_dev, 0);
}
