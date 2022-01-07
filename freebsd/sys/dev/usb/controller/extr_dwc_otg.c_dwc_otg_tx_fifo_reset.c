
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dwc_otg_softc {int dummy; } ;


 int DOTG_GRSTCTL ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 int GRSTCTL_RXFFLSH ;
 int GRSTCTL_TXFFLSH ;

__attribute__((used)) static void
dwc_otg_tx_fifo_reset(struct dwc_otg_softc *sc, uint32_t value)
{
 uint32_t temp;


 DWC_OTG_WRITE_4(sc, DOTG_GRSTCTL, value);


 for (temp = 0; temp != 16; temp++) {
  value = DWC_OTG_READ_4(sc, DOTG_GRSTCTL);
  if (!(value & (GRSTCTL_TXFFLSH | GRSTCTL_RXFFLSH)))
   break;
 }
}
