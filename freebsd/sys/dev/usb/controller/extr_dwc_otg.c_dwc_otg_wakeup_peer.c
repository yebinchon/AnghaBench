
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int bus_mtx; } ;
struct TYPE_3__ {scalar_t__ status_device_mode; int status_suspend; } ;
struct dwc_otg_softc {int sc_hprt_val; TYPE_2__ sc_bus; TYPE_1__ sc_flags; } ;


 int DCTL_RMTWKUPSIG ;
 int DOTG_DCTL ;
 int DOTG_HPRT ;
 int DOTG_PCGCCTL ;
 int DPRINTFN (int,char*) ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 int HPRT_PRTRES ;
 int HPRT_PRTSUSP ;
 int dwc_otg_resume_irq (struct dwc_otg_softc*) ;
 int hz ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static void
dwc_otg_wakeup_peer(struct dwc_otg_softc *sc)
{
 if (!sc->sc_flags.status_suspend)
  return;

 DPRINTFN(5, "Remote wakeup\n");

 if (sc->sc_flags.status_device_mode) {
  uint32_t temp;


  temp = DWC_OTG_READ_4(sc, DOTG_DCTL);
  temp |= DCTL_RMTWKUPSIG;
  DWC_OTG_WRITE_4(sc, DOTG_DCTL, temp);


  usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 125);

  temp &= ~DCTL_RMTWKUPSIG;
  DWC_OTG_WRITE_4(sc, DOTG_DCTL, temp);
 } else {

  DWC_OTG_WRITE_4(sc, DOTG_PCGCCTL, 0);


  usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 100);


  sc->sc_hprt_val |= HPRT_PRTRES;
  DWC_OTG_WRITE_4(sc, DOTG_HPRT, sc->sc_hprt_val);


  usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 10);


  sc->sc_hprt_val &= ~(HPRT_PRTSUSP | HPRT_PRTRES);
  DWC_OTG_WRITE_4(sc, DOTG_HPRT, sc->sc_hprt_val);


  usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 250);
 }


 dwc_otg_resume_irq(sc);
}
