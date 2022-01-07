
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int change_suspend; scalar_t__ status_device_mode; scalar_t__ status_suspend; } ;
struct dwc_otg_softc {int sc_irq_mask; TYPE_1__ sc_flags; } ;


 int DOTG_GINTMSK ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int ) ;
 int GINTMSK_USBSUSPMSK ;
 int GINTMSK_WKUPINTMSK ;
 int dwc_otg_root_intr (struct dwc_otg_softc*) ;

__attribute__((used)) static void
dwc_otg_resume_irq(struct dwc_otg_softc *sc)
{
 if (sc->sc_flags.status_suspend) {

  sc->sc_flags.status_suspend = 0;
  sc->sc_flags.change_suspend = 1;

  if (sc->sc_flags.status_device_mode) {




   sc->sc_irq_mask &= ~GINTMSK_WKUPINTMSK;
   sc->sc_irq_mask |= GINTMSK_USBSUSPMSK;
   DWC_OTG_WRITE_4(sc, DOTG_GINTMSK, sc->sc_irq_mask);
  }


  dwc_otg_root_intr(sc);
 }
}
