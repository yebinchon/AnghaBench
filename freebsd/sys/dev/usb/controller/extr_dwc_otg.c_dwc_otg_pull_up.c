
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int d_pulled_up; scalar_t__ port_powered; } ;
struct dwc_otg_softc {TYPE_1__ sc_flags; } ;


 int DCTL_SFTDISCON ;
 int DOTG_DCTL ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int ) ;

__attribute__((used)) static void
dwc_otg_pull_up(struct dwc_otg_softc *sc)
{
 uint32_t temp;



 if (!sc->sc_flags.d_pulled_up &&
     sc->sc_flags.port_powered) {
  sc->sc_flags.d_pulled_up = 1;

  temp = DWC_OTG_READ_4(sc, DOTG_DCTL);
  temp &= ~DCTL_SFTDISCON;
  DWC_OTG_WRITE_4(sc, DOTG_DCTL, temp);
 }
}
