
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct dwc_otg_softc {TYPE_1__* sc_chan_state; } ;
struct TYPE_2__ {scalar_t__ hcint; } ;


 int DOTG_HCINT (size_t) ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int ) ;

__attribute__((used)) static void
dwc_otg_clear_hcint(struct dwc_otg_softc *sc, uint8_t x)
{
 uint32_t hcint;


 hcint = DWC_OTG_READ_4(sc, DOTG_HCINT(x));
 DWC_OTG_WRITE_4(sc, DOTG_HCINT(x), hcint);


 sc->sc_chan_state[x].hcint = 0;
}
