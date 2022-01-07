
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc_otg_softc {int sc_current_rx_bytes; scalar_t__ sc_last_rx_status; int sc_bounce_buffer; int sc_current_rx_fifo; int sc_io_hdl; int sc_io_tag; int sc_irq_mask; } ;


 int DOTG_GINTMSK ;
 int DPRINTFN (int,char*) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int ) ;
 int GINTMSK_RXFLVLMSK ;
 int bus_space_read_region_4 (int ,int ,int ,int ,int) ;

__attribute__((used)) static void
dwc_otg_common_rx_ack(struct dwc_otg_softc *sc)
{
 DPRINTFN(5, "RX status clear\n");


 sc->sc_irq_mask |= GINTMSK_RXFLVLMSK;
 DWC_OTG_WRITE_4(sc, DOTG_GINTMSK, sc->sc_irq_mask);

 if (sc->sc_current_rx_bytes != 0) {

  bus_space_read_region_4(sc->sc_io_tag, sc->sc_io_hdl,
      sc->sc_current_rx_fifo, sc->sc_bounce_buffer,
      sc->sc_current_rx_bytes / 4);

  sc->sc_current_rx_bytes = 0;
 }

 sc->sc_last_rx_status = 0;
}
