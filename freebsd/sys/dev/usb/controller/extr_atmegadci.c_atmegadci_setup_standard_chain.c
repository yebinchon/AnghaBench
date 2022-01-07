
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ control_act; scalar_t__ control_xfr; scalar_t__ isochronous_xfr; scalar_t__ control_hdr; int control_stall; scalar_t__ short_frames_ok; } ;
struct TYPE_5__ {scalar_t__ force_short_xfer; } ;
struct usb_xfer {int endpointno; scalar_t__* frlengths; int nframes; struct atmegadci_td* td_transfer_last; TYPE_3__ flags_int; int * frbuffers; TYPE_2__ flags; TYPE_1__* xroot; struct atmegadci_td** td_start; struct atmegadci_td* td_transfer_cache; struct atmegadci_td* td_transfer_first; int max_frame_size; int sumlen; int address; } ;
struct atmegadci_td {int dummy; } ;
struct atmegadci_std_temp {scalar_t__ offset; int setup_alt_next; int did_stall; scalar_t__ len; int short_pkt; struct atmegadci_td* td; int * func; int * pc; struct atmegadci_td* td_next; int max_frame_size; } ;
struct atmegadci_softc {int dummy; } ;
struct TYPE_4__ {int bus; int udev; } ;


 struct atmegadci_softc* ATMEGA_BUS2SC (int ) ;
 int DPRINTFN (int,char*,int ,int ,int ,int ) ;
 int UE_ADDR ;
 int UE_DIR_IN ;
 int UE_GET_ADDR (int) ;
 int atmegadci_data_rx ;
 int atmegadci_data_tx ;
 int atmegadci_data_tx_sync ;
 int atmegadci_setup_rx ;
 int atmegadci_setup_standard_chain_sub (struct atmegadci_std_temp*) ;
 int usbd_get_speed (int ) ;

__attribute__((used)) static void
atmegadci_setup_standard_chain(struct usb_xfer *xfer)
{
 struct atmegadci_std_temp temp;
 struct atmegadci_softc *sc;
 struct atmegadci_td *td;
 uint32_t x;
 uint8_t ep_no;
 uint8_t need_sync;

 DPRINTFN(9, "addr=%d endpt=%d sumlen=%d speed=%d\n",
     xfer->address, UE_GET_ADDR(xfer->endpointno),
     xfer->sumlen, usbd_get_speed(xfer->xroot->udev));

 temp.max_frame_size = xfer->max_frame_size;

 td = xfer->td_start[0];
 xfer->td_transfer_first = td;
 xfer->td_transfer_cache = td;



 temp.pc = ((void*)0);
 temp.td = ((void*)0);
 temp.td_next = xfer->td_start[0];
 temp.offset = 0;
 temp.setup_alt_next = xfer->flags_int.short_frames_ok ||
     xfer->flags_int.isochronous_xfr;
 temp.did_stall = !xfer->flags_int.control_stall;

 sc = ATMEGA_BUS2SC(xfer->xroot->bus);
 ep_no = (xfer->endpointno & UE_ADDR);



 if (xfer->flags_int.control_xfr) {
  if (xfer->flags_int.control_hdr) {

   temp.func = &atmegadci_setup_rx;
   temp.len = xfer->frlengths[0];
   temp.pc = xfer->frbuffers + 0;
   temp.short_pkt = temp.len ? 1 : 0;

   if (xfer->nframes == 1) {

    if (xfer->flags_int.control_act)
     temp.setup_alt_next = 0;
   }

   atmegadci_setup_standard_chain_sub(&temp);
  }
  x = 1;
 } else {
  x = 0;
 }

 if (x != xfer->nframes) {
  if (xfer->endpointno & UE_DIR_IN) {
   temp.func = &atmegadci_data_tx;
   need_sync = 1;
  } else {
   temp.func = &atmegadci_data_rx;
   need_sync = 0;
  }


  temp.pc = xfer->frbuffers + x;
 } else {
  need_sync = 0;
 }
 while (x != xfer->nframes) {



  temp.len = xfer->frlengths[x];

  x++;

  if (x == xfer->nframes) {
   if (xfer->flags_int.control_xfr) {
    if (xfer->flags_int.control_act) {
     temp.setup_alt_next = 0;
    }
   } else {
    temp.setup_alt_next = 0;
   }
  }
  if (temp.len == 0) {



   temp.short_pkt = 0;

  } else {



   temp.short_pkt = (xfer->flags.force_short_xfer) ? 0 : 1;
  }

  atmegadci_setup_standard_chain_sub(&temp);

  if (xfer->flags_int.isochronous_xfr) {
   temp.offset += temp.len;
  } else {

   temp.pc = xfer->frbuffers + x;
  }
 }

 if (xfer->flags_int.control_xfr) {


  temp.pc = xfer->frbuffers + 0;
  temp.len = 0;
  temp.short_pkt = 0;
  temp.setup_alt_next = 0;


  if (need_sync) {

   temp.func = &atmegadci_data_tx_sync;
   atmegadci_setup_standard_chain_sub(&temp);
  }


  if (!xfer->flags_int.control_act) {





   if (xfer->endpointno & UE_DIR_IN) {
    temp.func = &atmegadci_data_rx;
    need_sync = 0;
   } else {
    temp.func = &atmegadci_data_tx;
    need_sync = 1;
   }

   atmegadci_setup_standard_chain_sub(&temp);
   if (need_sync) {

    temp.func = &atmegadci_data_tx_sync;
    atmegadci_setup_standard_chain_sub(&temp);
   }
  }
 }

 td = temp.td;
 xfer->td_transfer_last = td;
}
