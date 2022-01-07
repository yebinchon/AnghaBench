
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct dwc_otg_td {size_t ep_no; int error_any; int tx_bytes; scalar_t__ npkt; scalar_t__ max_packet_size; int offset; int remainder; int short_pkt; int pc; } ;
struct dwc_otg_softc {int sc_last_rx_status; int* sc_in_ctl; TYPE_1__* sc_hw_ep_profile; } ;
struct TYPE_2__ {int max_buffer; } ;


 int DIEPCTL_CNAK ;
 int DIEPCTL_EPENA ;
 int DIEPCTL_EPTYPE_ISOC ;
 int DIEPCTL_EPTYPE_MASK ;
 int DIEPCTL_EPTYPE_SHIFT ;
 int DIEPCTL_SETD0PID ;
 int DIEPCTL_SETD1PID ;
 int DOTG_DFIFO (size_t) ;
 int DOTG_DIEPCTL (size_t) ;
 int DOTG_DIEPTSIZ (size_t) ;
 int DPRINTFN (int,char*,int,size_t,...) ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 scalar_t__ DXEPTSIZ_GET_NPKT (int) ;
 int DXEPTSIZ_SET_MULTI (int) ;
 int DXEPTSIZ_SET_NBYTES (int) ;
 int DXEPTSIZ_SET_NPKT (int) ;
 scalar_t__ GRXSTSRD_CHNUM_GET (int) ;
 int GRXSTSRD_PKTSTS_MASK ;
 int GRXSTSRD_STP_COMPLETE ;
 int GRXSTSRD_STP_DATA ;
 int dwc_otg_common_rx_ack (struct dwc_otg_softc*) ;
 int dwc_otg_write_fifo (struct dwc_otg_softc*,int ,int,int ,int) ;

__attribute__((used)) static uint8_t
dwc_otg_data_tx(struct dwc_otg_softc *sc, struct dwc_otg_td *td)
{
 uint32_t max_buffer;
 uint32_t count;
 uint32_t fifo_left;
 uint32_t mpkt;
 uint32_t temp;
 uint8_t to;

 to = 3;

 max_buffer = sc->sc_hw_ep_profile[td->ep_no].max_buffer;

repeat:


 temp = sc->sc_last_rx_status;

 if ((td->ep_no == 0) && (temp != 0) &&
     (GRXSTSRD_CHNUM_GET(temp) == 0)) {

  if ((temp & GRXSTSRD_PKTSTS_MASK) !=
      GRXSTSRD_STP_DATA &&
      (temp & GRXSTSRD_PKTSTS_MASK) !=
      GRXSTSRD_STP_COMPLETE) {


   dwc_otg_common_rx_ack(sc);
  } else {




   td->error_any = 1;
   return (0);
  }
 }


 if (td->tx_bytes != 0) {

  uint16_t cpkt;


  temp = DWC_OTG_READ_4(sc, DOTG_DIEPTSIZ(td->ep_no));


  cpkt = DXEPTSIZ_GET_NPKT(temp);

  if (cpkt >= td->npkt) {
   fifo_left = 0;
  } else {
   if (max_buffer != 0) {
    fifo_left = (td->npkt - cpkt) *
        td->max_packet_size;

    if (fifo_left > max_buffer)
     fifo_left = max_buffer;
   } else {
    fifo_left = td->max_packet_size;
   }
  }

  count = td->tx_bytes;
  if (count > fifo_left)
   count = fifo_left;

  if (count != 0) {

   dwc_otg_write_fifo(sc, td->pc, td->offset,
       DOTG_DFIFO(td->ep_no), count);

   td->tx_bytes -= count;
   td->remainder -= count;
   td->offset += count;
   td->npkt = cpkt;
  }
  if (td->tx_bytes != 0)
   goto not_complete;


  if (td->remainder == 0) {
   if (td->short_pkt)
    return (0);


  }
 }

 if (!to--)
  goto not_complete;


 temp = DWC_OTG_READ_4(sc, DOTG_DIEPTSIZ(td->ep_no));

 if (DXEPTSIZ_GET_NPKT(temp) != 0) {

  DPRINTFN(5, "busy ep=%d npkt=%d DIEPTSIZ=0x%08x "
      "DIEPCTL=0x%08x\n", td->ep_no,
      DXEPTSIZ_GET_NPKT(temp),
      temp, DWC_OTG_READ_4(sc, DOTG_DIEPCTL(td->ep_no)));

  goto not_complete;
 }

 DPRINTFN(5, "rem=%u ep=%d\n", td->remainder, td->ep_no);


 if ((max_buffer != 0) && ((td->max_packet_size & 3) == 0)) {


  mpkt = max_buffer / td->max_packet_size;

  if (mpkt > 0x3FE)
   mpkt = 0x3FE;

  count = td->remainder;
  if (count > 0x7FFFFF)
   count = 0x7FFFFF - (0x7FFFFF % td->max_packet_size);

  td->npkt = count / td->max_packet_size;
  if (td->npkt > mpkt) {
   td->npkt = mpkt;
   count = td->max_packet_size * mpkt;
  } else if ((count == 0) || (count % td->max_packet_size)) {

   td->npkt++;
   td->short_pkt = 1;
  }
 } else {

  mpkt = 1;
  count = td->max_packet_size;
  if (td->remainder < count) {

   td->short_pkt = 1;
   count = td->remainder;
  }
  td->npkt = 1;
 }
 DWC_OTG_WRITE_4(sc, DOTG_DIEPTSIZ(td->ep_no),
     DXEPTSIZ_SET_MULTI(1) |
     DXEPTSIZ_SET_NPKT(td->npkt) |
     DXEPTSIZ_SET_NBYTES(count));


 td->npkt += mpkt;

 temp = sc->sc_in_ctl[td->ep_no];


 if ((temp & DIEPCTL_EPTYPE_MASK) ==
     (DIEPCTL_EPTYPE_ISOC << DIEPCTL_EPTYPE_SHIFT)) {

  if (temp & DIEPCTL_SETD1PID) {
   temp &= ~DIEPCTL_SETD1PID;
   temp |= DIEPCTL_SETD0PID;
  } else {
   temp &= ~DIEPCTL_SETD0PID;
   temp |= DIEPCTL_SETD1PID;
  }
  sc->sc_in_ctl[td->ep_no] = temp;
 }


 DWC_OTG_WRITE_4(sc, DOTG_DIEPCTL(td->ep_no), temp |
     DIEPCTL_EPENA | DIEPCTL_CNAK);

 td->tx_bytes = count;


 if (td->tx_bytes == 0 &&
     td->remainder == 0) {
  if (td->short_pkt)
   return (0);


 }
 goto repeat;

not_complete:
 return (1);
}
