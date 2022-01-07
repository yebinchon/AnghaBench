
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct dwc_otg_td {size_t max_packet_count; size_t* channel; int state; int error_stall; int error_any; int errcnt; int hcsplt; scalar_t__ ep_type; int toggle; int did_nak; scalar_t__ tt_scheduled; size_t tt_complete_slot; size_t tt_start_slot; int max_packet_size; int hcchar; scalar_t__ set_toggle; int short_pkt; int got_short; int remainder; int tt_xactpos; } ;
struct dwc_otg_softc {size_t sc_last_frame_num; TYPE_1__* sc_chan_state; } ;
struct TYPE_2__ {int hcint; } ;


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
 int HCINT_DATATGLERR ;
 int HCINT_ERRORS ;
 int HCINT_NYET ;
 int HCINT_RETRY ;
 int HCINT_SOFTWARE_ONLY ;
 int HCINT_STALL ;
 int HCSPLT_COMPSPLT ;
 int HCSPLT_XACTPOS_BEGIN ;
 int HCTSIZ_PID_DATA0 ;
 int HCTSIZ_PID_DATA1 ;
 int HCTSIZ_PID_SHIFT ;
 int HCTSIZ_PKTCNT_SHIFT ;
 int HCTSIZ_XFERSIZE_SHIFT ;
 scalar_t__ UE_INTERRUPT ;
 scalar_t__ UE_ISOCHRONOUS ;
 scalar_t__ dwc_otg_host_channel_alloc (struct dwc_otg_softc*,struct dwc_otg_td*,int ) ;
 int dwc_otg_host_channel_free (struct dwc_otg_softc*,struct dwc_otg_td*) ;
 scalar_t__ dwc_otg_host_data_rx_sub (struct dwc_otg_softc*,struct dwc_otg_td*,size_t) ;
 scalar_t__ dwc_otg_host_rate_check (struct dwc_otg_softc*,struct dwc_otg_td*) ;

__attribute__((used)) static uint8_t
dwc_otg_host_data_rx(struct dwc_otg_softc *sc, struct dwc_otg_td *td)
{
 uint32_t hcint = 0;
 uint32_t hcchar;
 uint8_t delta;
 uint8_t channel;
 uint8_t x;

 for (x = 0; x != td->max_packet_count; x++) {
  channel = td->channel[x];
  if (channel >= DWC_OTG_MAX_CHANNELS)
   continue;
  hcint |= sc->sc_chan_state[channel].hcint;

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
    if (td->ep_type != UE_ISOCHRONOUS) {
     td->error_any = 1;
     goto complete;
    }
   }
  }


  if (dwc_otg_host_data_rx_sub(sc, td, channel))
   goto complete;


  hcint |= sc->sc_chan_state[channel].hcint;

  if (hcint & (HCINT_ERRORS | HCINT_RETRY |
      HCINT_ACK | HCINT_NYET)) {
   if (!(hcint & HCINT_ERRORS))
    td->errcnt = 0;
  }
 }

 switch (td->state) {
 case 131:
  if (td->hcsplt != 0)
   goto receive_spkt;
  else
   goto receive_pkt;

 case 130:
  if (hcint & (HCINT_RETRY | HCINT_ERRORS)) {
   if (td->ep_type == UE_INTERRUPT) {
    if (hcint & HCINT_DATATGLERR) {
     DPRINTF("Retrying packet due to "
         "data toggle error\n");
     td->toggle ^= 1;
     goto receive_pkt;
    }
   } else if (td->ep_type == UE_ISOCHRONOUS) {
    if (td->hcsplt != 0) {
     DPRINTF("Retrying complete split\n");
     goto receive_pkt;
    }
    goto complete;
   }
   td->did_nak = 1;
   td->tt_scheduled = 0;
   if (td->hcsplt != 0)
    goto receive_spkt;
   else
    goto receive_pkt;
  } else if (hcint & HCINT_NYET) {
   if (td->hcsplt != 0) {

    goto receive_pkt;
   } else {

    td->error_any = 1;
    goto complete;
   }
  } else if (hcint & HCINT_ACK) {

   if (!(hcint & HCINT_SOFTWARE_ONLY))
    goto busy;

   if (td->ep_type == UE_ISOCHRONOUS) {

    if (td->tt_xactpos == HCSPLT_XACTPOS_BEGIN) {
     goto complete;
    } else if (td->hcsplt != 0) {
     goto receive_pkt;
    } else {

     goto busy;
    }
   } else {

    if ((td->remainder == 0) || (td->got_short != 0)) {
     if (td->short_pkt)
      goto complete;





    }
    td->tt_scheduled = 0;
    td->did_nak = 0;
    if (td->hcsplt != 0)
     goto receive_spkt;
    else
     goto receive_pkt;
   }
  }
  break;

 case 128:




  if (hcint & (HCINT_RETRY | HCINT_ERRORS)) {
   td->did_nak = 1;
   td->tt_scheduled = 0;
   goto receive_spkt;
  } else if (hcint & HCINT_NYET) {
   td->tt_scheduled = 0;
   goto receive_spkt;
  } else if (hcint & HCINT_ACK) {
   td->did_nak = 0;
   goto receive_pkt;
  }
  break;

 case 129:
  goto receive_pkt;

 default:
  break;
 }
 goto busy;

receive_pkt:

 dwc_otg_host_channel_free(sc, td);

   if (td->hcsplt != 0) {
  delta = td->tt_complete_slot - sc->sc_last_frame_num - 1;
  if (td->tt_scheduled == 0 || delta < DWC_OTG_TT_SLOT_MAX) {
   if (td->ep_type != UE_ISOCHRONOUS) {
    td->state = 129;
    goto busy;
   }
  }
  delta = sc->sc_last_frame_num - td->tt_start_slot;
  if (delta > DWC_OTG_TT_SLOT_MAX) {
   if (td->ep_type != UE_ISOCHRONOUS) {

    td->error_any = 1;
   }
   goto complete;
  }

  td->hcsplt |= HCSPLT_COMPSPLT;
 } else if (dwc_otg_host_rate_check(sc, td)) {
  td->state = 129;
  goto busy;
 }


 if (dwc_otg_host_channel_alloc(sc, td, 0)) {
  td->state = 129;
  goto busy;
 }


 if (td->set_toggle) {
  td->set_toggle = 0;
  td->toggle = 1;
 }

 td->state = 130;

 for (x = 0; x != td->max_packet_count; x++) {
    channel = td->channel[x];


  DWC_OTG_WRITE_4(sc, DOTG_HCTSIZ(channel),
      (td->max_packet_size << HCTSIZ_XFERSIZE_SHIFT) |
      (1 << HCTSIZ_PKTCNT_SHIFT) |
      (td->toggle ? (HCTSIZ_PID_DATA1 << HCTSIZ_PID_SHIFT) :
      (HCTSIZ_PID_DATA0 << HCTSIZ_PID_SHIFT)));

  DWC_OTG_WRITE_4(sc, DOTG_HCSPLT(channel), td->hcsplt);

  hcchar = td->hcchar;
  hcchar |= HCCHAR_EPDIR_IN;

  if (td->ep_type == UE_ISOCHRONOUS) {
   if (td->hcsplt != 0) {

    if (sc->sc_last_frame_num & 1)
     hcchar &= ~HCCHAR_ODDFRM;
    else
     hcchar |= HCCHAR_ODDFRM;
   } else {

    if (sc->sc_last_frame_num & 1)
     hcchar |= HCCHAR_ODDFRM;
    else
     hcchar &= ~HCCHAR_ODDFRM;
   }
  } else {
   hcchar &= ~HCCHAR_ODDFRM;
  }


  DWC_OTG_WRITE_4(sc, DOTG_HCCHAR(channel), hcchar);
 }

 td->tt_complete_slot = sc->sc_last_frame_num + 1;

 goto busy;

receive_spkt:

 dwc_otg_host_channel_free(sc, td);

 delta = td->tt_start_slot - sc->sc_last_frame_num - 1;
 if (td->tt_scheduled == 0 || delta < DWC_OTG_TT_SLOT_MAX) {
  td->state = 131;
  goto busy;
 }
 delta = sc->sc_last_frame_num - td->tt_start_slot;
 if (delta > 5) {

  td->tt_scheduled = 0;
  td->state = 131;
  goto busy;
 }


 if (dwc_otg_host_channel_alloc(sc, td, 0)) {
  td->state = 131;
  goto busy;
 }

 channel = td->channel[0];

 td->hcsplt &= ~HCSPLT_COMPSPLT;
 td->state = 128;


 DWC_OTG_WRITE_4(sc, DOTG_HCTSIZ(channel),
     (HCTSIZ_PID_DATA0 << HCTSIZ_PID_SHIFT));

 DWC_OTG_WRITE_4(sc, DOTG_HCSPLT(channel), td->hcsplt);


 if ((sc->sc_last_frame_num & 1) == 0 &&
     td->ep_type == UE_ISOCHRONOUS)
  td->hcchar |= HCCHAR_ODDFRM;
 else
  td->hcchar &= ~HCCHAR_ODDFRM;

 hcchar = td->hcchar;
 hcchar |= HCCHAR_EPDIR_IN;


 td->tt_complete_slot = sc->sc_last_frame_num + 1;


 DWC_OTG_WRITE_4(sc, DOTG_HCCHAR(channel), hcchar);
busy:
 return (1);

complete:
 dwc_otg_host_channel_free(sc, td);
 return (0);
}
