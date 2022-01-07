
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct dwc_otg_td {int short_pkt; int got_short; int error_any; int toggle; int offset; int remainder; int pc; int tt_scheduled; int max_packet_size; int tt_xactpos; int ep_type; scalar_t__ state; } ;
struct dwc_otg_softc {int sc_last_rx_status; TYPE_1__* sc_chan_state; } ;
struct TYPE_2__ {int hcint; } ;


 int DPRINTF (char*,...) ;
 scalar_t__ DWC_OTG_MAX_CHANNELS ;
 int GRXSTSRD_BCNT_GET (int) ;
 scalar_t__ GRXSTSRD_CHNUM_GET (int) ;
 int GRXSTSRD_DPID_DATA0 ;
 int GRXSTSRD_DPID_MASK ;
 int GRXSTSRD_PKTSTS_MASK ;

 int HCINT_SOFTWARE_ONLY ;
 int HCSPLT_XACTPOS_BEGIN ;
 int HCSPLT_XACTPOS_MIDDLE ;
 int UE_ISOCHRONOUS ;
 int dwc_otg_common_rx_ack (struct dwc_otg_softc*) ;
 int dwc_otg_read_fifo (struct dwc_otg_softc*,int ,int ,int ) ;

__attribute__((used)) static uint8_t
dwc_otg_host_data_rx_sub(struct dwc_otg_softc *sc, struct dwc_otg_td *td,
    uint8_t channel)
{
 uint32_t count;


 if (sc->sc_last_rx_status == 0)
  goto busy;

 if (channel >= DWC_OTG_MAX_CHANNELS)
  goto busy;

 if (GRXSTSRD_CHNUM_GET(sc->sc_last_rx_status) != channel)
  goto busy;

 switch (sc->sc_last_rx_status & GRXSTSRD_PKTSTS_MASK) {
 case 128:

  DPRINTF("DATA ST=%d STATUS=0x%08x\n",
      (int)td->state, (int)sc->sc_last_rx_status);

  if (sc->sc_chan_state[channel].hcint & HCINT_SOFTWARE_ONLY) {




   DPRINTF("Data already received\n");
   break;
  }


  count = GRXSTSRD_BCNT_GET(sc->sc_last_rx_status);


  if (td->ep_type == UE_ISOCHRONOUS) {
   if ((sc->sc_last_rx_status & GRXSTSRD_DPID_MASK) !=
       GRXSTSRD_DPID_DATA0) {

    td->tt_xactpos = HCSPLT_XACTPOS_MIDDLE;
   } else {

    td->tt_xactpos = HCSPLT_XACTPOS_BEGIN;

    if (count != td->remainder) {

     td->short_pkt = 1;
     td->got_short = 1;
    }
   }
  } else {

   if (count != td->max_packet_size) {
    if (count < td->max_packet_size) {

     td->short_pkt = 1;
     td->got_short = 1;
    } else {

     td->error_any = 1;


     dwc_otg_common_rx_ack(sc);
     goto complete;
    }
   }
   td->toggle ^= 1;
   td->tt_scheduled = 0;
  }


  if (count > td->remainder) {

   td->error_any = 1;


   dwc_otg_common_rx_ack(sc);
   goto complete;
  }


  dwc_otg_read_fifo(sc, td->pc, td->offset, count);

  td->remainder -= count;
  td->offset += count;
  sc->sc_chan_state[channel].hcint |= HCINT_SOFTWARE_ONLY;
  break;
 default:
  break;
 }

 dwc_otg_common_rx_ack(sc);
busy:
 return (0);
complete:
 return (1);
}
