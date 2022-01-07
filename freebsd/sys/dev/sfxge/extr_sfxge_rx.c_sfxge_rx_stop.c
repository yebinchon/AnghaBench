
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int rxq_count; int enp; scalar_t__ rx_buffer_size; scalar_t__ rx_prefix_size; } ;


 int efx_mac_filter_default_rxq_clear (int ) ;
 int efx_rx_fini (int ) ;
 int sfxge_rx_qstop (struct sfxge_softc*,int) ;

void
sfxge_rx_stop(struct sfxge_softc *sc)
{
 int index;

 efx_mac_filter_default_rxq_clear(sc->enp);


 index = sc->rxq_count;
 while (--index >= 0)
  sfxge_rx_qstop(sc, index);

 sc->rx_prefix_size = 0;
 sc->rx_buffer_size = 0;

 efx_rx_fini(sc->enp);
}
