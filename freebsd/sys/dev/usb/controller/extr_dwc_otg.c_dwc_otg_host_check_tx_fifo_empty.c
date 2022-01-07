
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct dwc_otg_td {scalar_t__ ep_type; } ;
struct dwc_otg_softc {int sc_irq_mask; } ;


 int DOTG_GINTMSK ;
 int DOTG_GINTSTS ;
 int DPRINTF (char*) ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 int GINTMSK_NPTXFEMPMSK ;
 int GINTMSK_PTXFEMPMSK ;
 int GINTSTS_NPTXFEMP ;
 int GINTSTS_PTXFEMP ;
 scalar_t__ UE_ISOCHRONOUS ;

__attribute__((used)) static uint8_t
dwc_otg_host_check_tx_fifo_empty(struct dwc_otg_softc *sc, struct dwc_otg_td *td)
{
 uint32_t temp;

 temp = DWC_OTG_READ_4(sc, DOTG_GINTSTS);

 if (td->ep_type == UE_ISOCHRONOUS) {





  if (!(temp & GINTSTS_PTXFEMP)) {
   DPRINTF("Periodic TX FIFO is not empty\n");
   if (!(sc->sc_irq_mask & GINTMSK_PTXFEMPMSK)) {
    sc->sc_irq_mask |= GINTMSK_PTXFEMPMSK;
    DWC_OTG_WRITE_4(sc, DOTG_GINTMSK, sc->sc_irq_mask);
   }
   return (1);
  }
 } else {
  if (!(temp & GINTSTS_NPTXFEMP)) {
   DPRINTF("Non-periodic TX FIFO is not empty\n");
   if (!(sc->sc_irq_mask & GINTMSK_NPTXFEMPMSK)) {
    sc->sc_irq_mask |= GINTMSK_NPTXFEMPMSK;
    DWC_OTG_WRITE_4(sc, DOTG_GINTMSK, sc->sc_irq_mask);
   }
   return (1);
  }
 }
 return (0);
}
