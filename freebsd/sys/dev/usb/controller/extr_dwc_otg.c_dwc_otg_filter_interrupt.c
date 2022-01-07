
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct dwc_otg_softc {int sc_irq_mask; scalar_t__ sc_dev_in_ep_max; scalar_t__ sc_xfer_complete; int sc_bus; } ;


 int DOTG_DIEPINT (scalar_t__) ;
 int DOTG_GINTMSK ;
 int DOTG_GINTSTS ;
 int DWC_OTG_MSK_GINT_THREAD_IRQ ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int GINTSTS_IEPINT ;
 int GINTSTS_NPTXFEMP ;
 int GINTSTS_PTXFEMP ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int dwc_otg_interrupt_poll_locked (struct dwc_otg_softc*) ;

int
dwc_otg_filter_interrupt(void *arg)
{
 struct dwc_otg_softc *sc = arg;
 int retval = FILTER_HANDLED;
 uint32_t status;

 USB_BUS_SPIN_LOCK(&sc->sc_bus);


 status = DWC_OTG_READ_4(sc, DOTG_GINTSTS);


 DWC_OTG_WRITE_4(sc, DOTG_GINTSTS, status & ~DWC_OTG_MSK_GINT_THREAD_IRQ);


 if ((status & DWC_OTG_MSK_GINT_THREAD_IRQ) != 0)
  retval = FILTER_SCHEDULE_THREAD;


 if (status & sc->sc_irq_mask &
     (GINTSTS_PTXFEMP | GINTSTS_NPTXFEMP)) {
  sc->sc_irq_mask &= ~(GINTSTS_PTXFEMP | GINTSTS_NPTXFEMP);
  DWC_OTG_WRITE_4(sc, DOTG_GINTMSK, sc->sc_irq_mask);
 }

 if (status & GINTSTS_IEPINT) {
  uint32_t temp;
  uint8_t x;

  for (x = 0; x != sc->sc_dev_in_ep_max; x++) {
   temp = DWC_OTG_READ_4(sc, DOTG_DIEPINT(x));





   if (temp != 0)
    DWC_OTG_WRITE_4(sc, DOTG_DIEPINT(x), temp);
  }
 }


 dwc_otg_interrupt_poll_locked(sc);

 if (sc->sc_xfer_complete != 0)
  retval = FILTER_SCHEDULE_THREAD;

 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);

 return (retval);
}
