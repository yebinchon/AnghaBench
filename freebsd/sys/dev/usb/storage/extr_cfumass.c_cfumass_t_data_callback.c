
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_2__ {int ext_data_filled; int kern_data_resid; int kern_sg_entries; int kern_data_len; int kern_rel_offset; scalar_t__ kern_data_ptr; int (* be_move_done ) (union ctl_io*) ;} ;
union ctl_io {TYPE_1__ scsiio; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct ctl_sg_entry {int len; scalar_t__ addr; } ;
struct cfumass_softc {int sc_current_residue; int sc_current_transfer_length; union ctl_io* sc_ctl_io; } ;


 int CFUMASS_DEBUG (struct cfumass_softc*,char*,...) ;
 int KASSERT (int,char*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int min (int,int) ;
 int stub1 (union ctl_io*) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int ,int *,int) ;
 struct cfumass_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int*,int *,int *) ;

__attribute__((used)) static void
cfumass_t_data_callback(struct usb_xfer *xfer, usb_error_t usb_error)
{
 struct cfumass_softc *sc = usbd_xfer_softc(xfer);
 union ctl_io *io = sc->sc_ctl_io;
 uint32_t max_bulk;
 struct ctl_sg_entry sg_entry, *sglist;
 int actlen, sumlen, sg_count;

 switch (USB_GET_STATE(xfer)) {
 case 128:
  CFUMASS_DEBUG(sc, "USB_ST_TRANSFERRED");

  usbd_xfer_status(xfer, &actlen, &sumlen, ((void*)0), ((void*)0));
  sc->sc_current_residue -= actlen;
  io->scsiio.ext_data_filled += actlen;
  io->scsiio.kern_data_resid -= actlen;
  if (actlen < sumlen ||
      sc->sc_current_residue == 0 ||
      io->scsiio.kern_data_resid == 0) {
   sc->sc_ctl_io = ((void*)0);
   io->scsiio.be_move_done(io);
   break;
  }


 case 129:
tr_setup:
  CFUMASS_DEBUG(sc, "USB_ST_SETUP");

  if (io->scsiio.kern_sg_entries > 0) {
   sglist = (struct ctl_sg_entry *)io->scsiio.kern_data_ptr;
   sg_count = io->scsiio.kern_sg_entries;
  } else {
   sglist = &sg_entry;
   sglist->addr = io->scsiio.kern_data_ptr;
   sglist->len = io->scsiio.kern_data_len;
   sg_count = 1;
  }

  sumlen = io->scsiio.ext_data_filled -
      io->scsiio.kern_rel_offset;
  while (sumlen >= sglist->len && sg_count > 0) {
   sumlen -= sglist->len;
   sglist++;
   sg_count--;
  }
  KASSERT(sg_count > 0, ("Run out of S/G list entries"));

  max_bulk = usbd_xfer_max_len(xfer);
  actlen = min(sglist->len - sumlen, max_bulk);
  actlen = min(actlen, sc->sc_current_transfer_length -
      io->scsiio.ext_data_filled);
  CFUMASS_DEBUG(sc, "requested %d, done %d, max_bulk %d, "
      "segment %zd => transfer %d",
      sc->sc_current_transfer_length, io->scsiio.ext_data_filled,
      max_bulk, sglist->len - sumlen, actlen);

  usbd_xfer_set_frame_data(xfer, 0,
      (uint8_t *)sglist->addr + sumlen, actlen);
  usbd_transfer_submit(xfer);
  break;

 default:
  if (usb_error == USB_ERR_CANCELLED) {
   CFUMASS_DEBUG(sc, "USB_ERR_CANCELLED");
   break;
  }
  CFUMASS_DEBUG(sc, "USB_ST_ERROR: %s", usbd_errstr(usb_error));
  goto tr_setup;
 }
}
