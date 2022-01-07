
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct dwc_otg_td {size_t ep_no; scalar_t__ remainder; int error_any; scalar_t__ max_packet_size; int short_pkt; int offset; int pc; } ;
struct dwc_otg_softc {int sc_last_rx_status; int* sc_out_ctl; } ;


 int DIEPCTL_EPTYPE_ISOC ;
 int DIEPCTL_EPTYPE_MASK ;
 int DIEPCTL_EPTYPE_SHIFT ;
 int DIEPCTL_SETD0PID ;
 int DIEPCTL_SETD1PID ;
 int DOEPCTL_CNAK ;
 int DOEPCTL_EPENA ;
 int DOTG_DOEPCTL (size_t) ;
 int DOTG_DOEPTSIZ (size_t) ;
 int DPRINTFN (int,char*) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 int DXEPTSIZ_SET_MULTI (int) ;
 int DXEPTSIZ_SET_NBYTES (int) ;
 int DXEPTSIZ_SET_NPKT (int) ;
 scalar_t__ GRXSTSRD_BCNT_GET (int) ;
 size_t GRXSTSRD_CHNUM_GET (int) ;
 int GRXSTSRD_OUT_DATA ;
 int GRXSTSRD_PKTSTS_MASK ;
 int GRXSTSRD_STP_COMPLETE ;
 int GRXSTSRD_STP_DATA ;
 int dwc_otg_common_rx_ack (struct dwc_otg_softc*) ;
 int dwc_otg_read_fifo (struct dwc_otg_softc*,int ,int ,scalar_t__) ;

__attribute__((used)) static uint8_t
dwc_otg_data_rx(struct dwc_otg_softc *sc, struct dwc_otg_td *td)
{
 uint32_t temp;
 uint16_t count;
 uint8_t got_short;

 got_short = 0;


 if (sc->sc_last_rx_status == 0)
  goto not_complete;

 if (GRXSTSRD_CHNUM_GET(sc->sc_last_rx_status) != td->ep_no)
  goto not_complete;


 if ((sc->sc_last_rx_status & GRXSTSRD_PKTSTS_MASK) ==
     GRXSTSRD_STP_DATA ||
     (sc->sc_last_rx_status & GRXSTSRD_PKTSTS_MASK) ==
     GRXSTSRD_STP_COMPLETE) {
  if (td->remainder == 0) {




   DPRINTFN(5, "faking complete\n");
   return (0);
  }



  td->error_any = 1;
  return (0);
 }

 if ((sc->sc_last_rx_status & GRXSTSRD_PKTSTS_MASK) !=
     GRXSTSRD_OUT_DATA) {

  dwc_otg_common_rx_ack(sc);
  goto not_complete;
 }


 count = GRXSTSRD_BCNT_GET(sc->sc_last_rx_status);


 if (count != td->max_packet_size) {
  if (count < td->max_packet_size) {

   td->short_pkt = 1;
   got_short = 1;
  } else {

   td->error_any = 1;


   dwc_otg_common_rx_ack(sc);
   return (0);
  }
 }

 if (count > td->remainder) {

  td->error_any = 1;


  dwc_otg_common_rx_ack(sc);
  return (0);
 }


 dwc_otg_read_fifo(sc, td->pc, td->offset, count);

 td->remainder -= count;
 td->offset += count;


 dwc_otg_common_rx_ack(sc);

 temp = sc->sc_out_ctl[td->ep_no];


 if ((temp & DIEPCTL_EPTYPE_MASK) ==
     (DIEPCTL_EPTYPE_ISOC << DIEPCTL_EPTYPE_SHIFT)) {

  if (temp & DIEPCTL_SETD1PID) {
   temp &= ~DIEPCTL_SETD1PID;
   temp |= DIEPCTL_SETD0PID;
  } else {
   temp &= ~DIEPCTL_SETD0PID;
   temp |= DIEPCTL_SETD1PID;
  }
  sc->sc_out_ctl[td->ep_no] = temp;
 }


 if ((td->remainder == 0) || got_short) {
  if (td->short_pkt) {

   return (0);
  }

 }

not_complete:


 if (td->ep_no == 0) {
  DWC_OTG_WRITE_4(sc, DOTG_DOEPTSIZ(0),
      DXEPTSIZ_SET_MULTI(3) |
      DXEPTSIZ_SET_NPKT(1) |
      DXEPTSIZ_SET_NBYTES(td->max_packet_size));
 } else {

  DWC_OTG_WRITE_4(sc, DOTG_DOEPTSIZ(td->ep_no),
      DXEPTSIZ_SET_MULTI(1) |
      DXEPTSIZ_SET_NPKT(4) |
      DXEPTSIZ_SET_NBYTES(4 *
          ((td->max_packet_size + 3) & ~3)));
 }
 temp = sc->sc_out_ctl[td->ep_no];
 DWC_OTG_WRITE_4(sc, DOTG_DOEPCTL(td->ep_no), temp |
     DOEPCTL_EPENA | DOEPCTL_CNAK);

 return (1);
}
