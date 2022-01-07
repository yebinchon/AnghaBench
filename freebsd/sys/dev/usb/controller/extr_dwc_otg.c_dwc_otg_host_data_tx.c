
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct dwc_otg_td {size_t* channel; size_t npkt; int state; int error_stall; int error_any; int errcnt; int hcsplt; int did_nak; scalar_t__ tt_scheduled; scalar_t__ offset; scalar_t__ tx_bytes; scalar_t__ remainder; int toggle; int short_pkt; size_t tt_start_slot; scalar_t__ ep_type; size_t max_packet_count; int max_packet_size; int hcchar; int tt_complete_slot; int pc; scalar_t__ set_toggle; } ;
struct dwc_otg_softc {size_t sc_last_frame_num; TYPE_1__* sc_chan_state; } ;
struct TYPE_2__ {int hcint; } ;


 int DOTG_DFIFO (size_t) ;
 int DOTG_HCCHAR (size_t) ;
 int DOTG_HCSPLT (size_t) ;
 int DOTG_HCTSIZ (size_t) ;
 int DPRINTF (char*,...) ;






 size_t DWC_OTG_MAX_CHANNELS ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 size_t DWC_OTG_TT_SLOT_MAX ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 int HCCHAR_EPDIR_IN ;
 int HCCHAR_ODDFRM ;
 int HCINT_ACK ;
 int HCINT_ERRORS ;
 int HCINT_HCH_DONE_MASK ;
 int HCINT_NYET ;
 int HCINT_RETRY ;
 int HCINT_STALL ;
 int HCSPLT_COMPSPLT ;
 int HCSPLT_XACTLEN_BURST ;
 int HCSPLT_XACTPOS_ALL ;
 int HCSPLT_XACTPOS_MASK ;
 int HCSPLT_XACTPOS_SHIFT ;
 int HCTSIZ_PID_DATA0 ;
 int HCTSIZ_PID_DATA1 ;
 int HCTSIZ_PID_DATA2 ;
 int HCTSIZ_PID_MDATA ;
 int HCTSIZ_PID_SHIFT ;
 int HCTSIZ_PKTCNT_SHIFT ;
 int HCTSIZ_XFERSIZE_SHIFT ;
 scalar_t__ UE_ISOCHRONOUS ;
 scalar_t__ dwc_otg_host_channel_alloc (struct dwc_otg_softc*,struct dwc_otg_td*,int) ;
 int dwc_otg_host_channel_free (struct dwc_otg_softc*,struct dwc_otg_td*) ;
 int dwc_otg_host_dump_rx (struct dwc_otg_softc*,struct dwc_otg_td*) ;
 scalar_t__ dwc_otg_host_rate_check (struct dwc_otg_softc*,struct dwc_otg_td*) ;
 int dwc_otg_write_fifo (struct dwc_otg_softc*,int ,scalar_t__,int ,int) ;

__attribute__((used)) static uint8_t
dwc_otg_host_data_tx(struct dwc_otg_softc *sc, struct dwc_otg_td *td)
{
 uint32_t count;
 uint32_t hcint;
 uint32_t hcchar;
 uint8_t delta;
 uint8_t channel;
 uint8_t x;

 dwc_otg_host_dump_rx(sc, td);


 channel = td->channel[td->npkt];

 if (channel < DWC_OTG_MAX_CHANNELS) {
  hcint = sc->sc_chan_state[channel].hcint;

  DPRINTF("CH=%d ST=%d HCINT=0x%08x HCCHAR=0x%08x HCTSIZ=0x%08x\n",
      channel, td->state, hcint,
      DWC_OTG_READ_4(sc, DOTG_HCCHAR(channel)),
      DWC_OTG_READ_4(sc, DOTG_HCTSIZ(channel)));

  if (hcint & (HCINT_RETRY |
      HCINT_ACK | HCINT_NYET)) {

  } else if (hcint & HCINT_STALL) {
   DPRINTF("CH=%d STALL\n", channel);
   td->error_stall = 1;
   td->error_any = 1;
   goto complete;
  } else if (hcint & HCINT_ERRORS) {
   DPRINTF("CH=%d ERROR\n", channel);
   td->errcnt++;
   if (td->hcsplt != 0 || td->errcnt >= 3) {
    td->error_any = 1;
    goto complete;
   }
  }

  if (hcint & (HCINT_ERRORS | HCINT_RETRY |
      HCINT_ACK | HCINT_NYET)) {

   if (!(hcint & HCINT_ERRORS))
    td->errcnt = 0;
  }
 } else {
  hcint = 0;
 }

 switch (td->state) {
 case 133:
  goto send_pkt;

 case 131:
  if (hcint & (HCINT_RETRY | HCINT_ERRORS)) {
   td->did_nak = 1;
   td->tt_scheduled = 0;
   goto send_pkt;
  } else if (hcint & (HCINT_ACK | HCINT_NYET)) {
   td->offset += td->tx_bytes;
   td->remainder -= td->tx_bytes;
   td->toggle ^= 1;

   if (hcint & HCINT_NYET)
    td->did_nak = 1;
   else
    td->did_nak = 0;
   td->tt_scheduled = 0;


   if (td->remainder == 0) {
    if (td->short_pkt)
     goto complete;





   }
   goto send_pkt;
  }
  break;

 case 128:
  if (hcint & (HCINT_RETRY | HCINT_ERRORS)) {
   td->did_nak = 1;
   td->tt_scheduled = 0;
   goto send_pkt;
  } else if (hcint & (HCINT_ACK | HCINT_NYET)) {
   td->did_nak = 0;
   goto send_cpkt;
  }
  break;

 case 130:
  if (hcint & HCINT_NYET) {
   goto send_cpkt;
  } else if (hcint & (HCINT_RETRY | HCINT_ERRORS)) {
   td->did_nak = 1;
   td->tt_scheduled = 0;
   goto send_pkt;
  } else if (hcint & HCINT_ACK) {
   td->offset += td->tx_bytes;
   td->remainder -= td->tx_bytes;
   td->toggle ^= 1;
   td->did_nak = 0;
   td->tt_scheduled = 0;


   if (td->remainder == 0) {
    if (td->short_pkt)
     goto complete;


   }
   goto send_pkt;
  }
  break;

 case 129:
  goto send_cpkt;

 case 132:

  if ((hcint & HCINT_HCH_DONE_MASK) == 0)
   break;

  td->offset += td->tx_bytes;
  td->remainder -= td->tx_bytes;
  goto complete;
 default:
  break;
 }
 goto busy;

send_pkt:

 dwc_otg_host_channel_free(sc, td);

 if (td->hcsplt != 0) {
  delta = td->tt_start_slot - sc->sc_last_frame_num - 1;
  if (td->tt_scheduled == 0 || delta < DWC_OTG_TT_SLOT_MAX) {
   td->state = 133;
   goto busy;
  }
  delta = sc->sc_last_frame_num - td->tt_start_slot;
  if (delta > 5) {

   td->tt_scheduled = 0;
   td->state = 133;
   goto busy;
  }
 } else if (dwc_otg_host_rate_check(sc, td)) {
  td->state = 133;
  goto busy;
 }


 if (dwc_otg_host_channel_alloc(sc, td, 1)) {
  td->state = 133;
  goto busy;
 }


 if (td->set_toggle) {
  td->set_toggle = 0;
  td->toggle = 1;
 }

 if (td->ep_type == UE_ISOCHRONOUS) {

  td->state = 132;
  td->hcsplt &= ~HCSPLT_COMPSPLT;
  if (td->hcsplt != 0) {

   count = td->remainder;
   if (count > HCSPLT_XACTLEN_BURST) {
    DPRINTF("TT overflow\n");
    td->error_any = 1;
    goto complete;
   }

   td->hcsplt &= ~HCSPLT_XACTPOS_MASK;
   td->hcsplt |= (HCSPLT_XACTPOS_ALL << HCSPLT_XACTPOS_SHIFT);
  }
 } else if (td->hcsplt != 0) {
  td->hcsplt &= ~HCSPLT_COMPSPLT;

  td->state = 128;
 } else {

  td->state = 131;
 }

 td->tx_bytes = 0;

 for (x = 0; x != td->max_packet_count; x++) {
  uint32_t rem_bytes;

  channel = td->channel[x];


  count = td->max_packet_size;
  rem_bytes = td->remainder - td->tx_bytes;
  if (rem_bytes < count) {

   td->short_pkt = 1;
   count = rem_bytes;
  }
  if (count == rem_bytes) {

   switch (x) {
   case 0:
    DWC_OTG_WRITE_4(sc, DOTG_HCTSIZ(channel),
        (count << HCTSIZ_XFERSIZE_SHIFT) |
        (1 << HCTSIZ_PKTCNT_SHIFT) |
        (td->toggle ? (HCTSIZ_PID_DATA1 << HCTSIZ_PID_SHIFT) :
        (HCTSIZ_PID_DATA0 << HCTSIZ_PID_SHIFT)));
    break;
   case 1:
    DWC_OTG_WRITE_4(sc, DOTG_HCTSIZ(channel),
        (count << HCTSIZ_XFERSIZE_SHIFT) |
        (1 << HCTSIZ_PKTCNT_SHIFT) |
        (HCTSIZ_PID_DATA1 << HCTSIZ_PID_SHIFT));
    break;
   default:
    DWC_OTG_WRITE_4(sc, DOTG_HCTSIZ(channel),
        (count << HCTSIZ_XFERSIZE_SHIFT) |
        (1 << HCTSIZ_PKTCNT_SHIFT) |
        (HCTSIZ_PID_DATA2 << HCTSIZ_PID_SHIFT));
    break;
   }
  } else if (td->ep_type == UE_ISOCHRONOUS &&
      td->max_packet_count > 1) {

   DWC_OTG_WRITE_4(sc, DOTG_HCTSIZ(channel),
       (count << HCTSIZ_XFERSIZE_SHIFT) |
       (1 << HCTSIZ_PKTCNT_SHIFT) |
       (HCTSIZ_PID_MDATA << HCTSIZ_PID_SHIFT));
  } else {


   DWC_OTG_WRITE_4(sc, DOTG_HCTSIZ(channel),
       (count << HCTSIZ_XFERSIZE_SHIFT) |
       (1 << HCTSIZ_PKTCNT_SHIFT) |
       (td->toggle ? (HCTSIZ_PID_DATA1 << HCTSIZ_PID_SHIFT) :
       (HCTSIZ_PID_DATA0 << HCTSIZ_PID_SHIFT)));
  }

  DWC_OTG_WRITE_4(sc, DOTG_HCSPLT(channel), td->hcsplt);

  hcchar = td->hcchar;
  hcchar &= ~HCCHAR_EPDIR_IN;


  if ((sc->sc_last_frame_num & 1) == 0 &&
      td->ep_type == UE_ISOCHRONOUS)
   hcchar |= HCCHAR_ODDFRM;
  else
   hcchar &= ~HCCHAR_ODDFRM;


  DWC_OTG_WRITE_4(sc, DOTG_HCCHAR(channel), hcchar);

  if (count != 0) {

   dwc_otg_write_fifo(sc, td->pc, td->offset +
       td->tx_bytes, DOTG_DFIFO(channel), count);
  }


  td->tx_bytes += count;


  td->npkt = x;


  if (count == rem_bytes)
   break;
 }
 goto busy;

send_cpkt:

 dwc_otg_host_channel_free(sc, td);

 delta = td->tt_complete_slot - sc->sc_last_frame_num - 1;
 if (td->tt_scheduled == 0 || delta < DWC_OTG_TT_SLOT_MAX) {
  td->state = 129;
  goto busy;
 }
 delta = sc->sc_last_frame_num - td->tt_start_slot;
 if (delta > DWC_OTG_TT_SLOT_MAX) {

  if (td->ep_type != UE_ISOCHRONOUS)
   td->error_any = 1;
  goto complete;
 }


 if (dwc_otg_host_channel_alloc(sc, td, 0)) {
  td->state = 129;
  goto busy;
 }

 channel = td->channel[0];

  td->hcsplt |= HCSPLT_COMPSPLT;
 td->state = 130;

 DWC_OTG_WRITE_4(sc, DOTG_HCTSIZ(channel),
     (HCTSIZ_PID_DATA0 << HCTSIZ_PID_SHIFT));

 DWC_OTG_WRITE_4(sc, DOTG_HCSPLT(channel), td->hcsplt);

 hcchar = td->hcchar;
 hcchar &= ~HCCHAR_EPDIR_IN;


 if ((sc->sc_last_frame_num & 1) != 0 &&
     td->ep_type == UE_ISOCHRONOUS)
  hcchar |= HCCHAR_ODDFRM;
 else
  hcchar &= ~HCCHAR_ODDFRM;


 DWC_OTG_WRITE_4(sc, DOTG_HCCHAR(channel), hcchar);


 td->tt_complete_slot = sc->sc_last_frame_num + 1;
busy:
 return (1);

complete:
 dwc_otg_host_channel_free(sc, td);
 return (0);
}
