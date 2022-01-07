
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct dwc_otg_td {scalar_t__ ep_no; } ;
struct dwc_otg_softc {int sc_last_rx_status; } ;


 int DOTG_DIEPTSIZ (scalar_t__) ;
 int DPRINTFN (int,char*,...) ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 scalar_t__ DXEPTSIZ_GET_NPKT (int) ;
 scalar_t__ GRXSTSRD_CHNUM_GET (int) ;
 int GRXSTSRD_PKTSTS_MASK ;
 int GRXSTSRD_STP_COMPLETE ;
 int GRXSTSRD_STP_DATA ;
 int dwc_otg_common_rx_ack (struct dwc_otg_softc*) ;

__attribute__((used)) static uint8_t
dwc_otg_data_tx_sync(struct dwc_otg_softc *sc, struct dwc_otg_td *td)
{
 uint32_t temp;




 temp = DWC_OTG_READ_4(sc, DOTG_DIEPTSIZ(td->ep_no));


 if (DXEPTSIZ_GET_NPKT(temp) != 0) {
  DPRINTFN(5, "busy ep=%d\n", td->ep_no);
  goto not_complete;
 }
 return (0);

not_complete:



 temp = sc->sc_last_rx_status;

 if ((td->ep_no == 0) && (temp != 0) &&
     (GRXSTSRD_CHNUM_GET(temp) == 0)) {

  if ((temp & GRXSTSRD_PKTSTS_MASK) ==
      GRXSTSRD_STP_DATA ||
      (temp & GRXSTSRD_PKTSTS_MASK) ==
      GRXSTSRD_STP_COMPLETE) {
   DPRINTFN(5, "faking complete\n");



   return (0);
  } else {

   dwc_otg_common_rx_ack(sc);
  }
 }
 return (1);
}
