
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status_device_mode; } ;
struct dwc_otg_softc {int sc_needsof; int sc_irq_mask; TYPE_1__ sc_flags; } ;


 int DOTG_GINTMSK ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 int GINTMSK_SOFMSK ;

__attribute__((used)) static void
dwc_otg_enable_sof_irq(struct dwc_otg_softc *sc)
{

 if (sc->sc_flags.status_device_mode != 0)
  return;

 sc->sc_needsof = 1;

 if ((sc->sc_irq_mask & GINTMSK_SOFMSK) != 0)
  return;
 sc->sc_irq_mask |= GINTMSK_SOFMSK;
 DWC_OTG_WRITE_4(sc, DOTG_GINTMSK, sc->sc_irq_mask);
}
