
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_10__ {int cdb_len; int cdb; int tag_type; void* tag_num; } ;
struct TYPE_8__ {int targ_lun; int targ_port; int initid; } ;
struct TYPE_9__ {TYPE_2__ nexus; int io_type; TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_4__ scsiio; TYPE_3__ io_hdr; } ;
typedef void* uint32_t ;
struct usb_xfer {int dummy; } ;
struct cfumass_softc {int sc_current_stalled; int sc_queued; TYPE_5__* sc_cbw; int sc_ctl_initid; void* sc_current_transfer_length; void* sc_current_residue; int sc_current_flags; void* sc_current_tag; int sc_current_status; int * sc_ctl_io; } ;
struct TYPE_12__ {int targ_port; int ctl_pool_ref; } ;
struct TYPE_11__ {int bCDBLength; int CBWCB; int dCBWTag; int bCBWLUN; int bCBWFlags; int dCBWDataTransferLength; int dCBWSignature; } ;
struct TYPE_7__ {struct cfumass_softc* ptr; } ;


 void* CBWSIGNATURE ;
 int CFUMASS_DEBUG (struct cfumass_softc*,char*,...) ;
 int CFUMASS_LOCK (struct cfumass_softc*) ;
 int CFUMASS_UNLOCK (struct cfumass_softc*) ;
 int CFUMASS_WARN (struct cfumass_softc*,char*,int,...) ;
 int CTL_IO_SCSI ;
 size_t CTL_PRIV_FRONTEND ;
 int CTL_RETVAL_COMPLETE ;
 int CTL_TAG_UNTAGGED ;
 int KASSERT (int ,char*) ;
 void* UGETDW (int ) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 TYPE_6__ cfumass_port ;
 int cfumass_port_online ;
 int cfumass_quirk (struct cfumass_softc*,int ,int) ;
 union ctl_io* ctl_alloc_io (int ) ;
 int ctl_decode_lun (int ) ;
 int ctl_free_io (union ctl_io*) ;
 int ctl_queue (union ctl_io*) ;
 int ctl_zero_io (union ctl_io*) ;
 int memcpy (int ,int ,int) ;
 int refcount_acquire (int *) ;
 int refcount_release (int *) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct cfumass_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
cfumass_t_command_callback(struct usb_xfer *xfer, usb_error_t usb_error)
{
 struct cfumass_softc *sc;
 uint32_t signature;
 union ctl_io *io;
 int error = 0;

 sc = usbd_xfer_softc(xfer);

 KASSERT(sc->sc_ctl_io == ((void*)0),
     ("sc_ctl_io is %p, should be NULL", sc->sc_ctl_io));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  CFUMASS_DEBUG(sc, "USB_ST_TRANSFERRED");

  signature = UGETDW(sc->sc_cbw->dCBWSignature);
  if (signature != CBWSIGNATURE) {
   CFUMASS_WARN(sc, "wrong dCBWSignature 0x%08x, "
       "should be 0x%08x", signature, CBWSIGNATURE);
   break;
  }

  if (sc->sc_cbw->bCDBLength <= 0 ||
      sc->sc_cbw->bCDBLength > sizeof(sc->sc_cbw->CBWCB)) {
   CFUMASS_WARN(sc, "invalid bCDBLength %d, should be <= %zd",
       sc->sc_cbw->bCDBLength, sizeof(sc->sc_cbw->CBWCB));
   break;
  }

  sc->sc_current_stalled = 0;
  sc->sc_current_status = 0;
  sc->sc_current_tag = UGETDW(sc->sc_cbw->dCBWTag);
  sc->sc_current_transfer_length =
      UGETDW(sc->sc_cbw->dCBWDataTransferLength);
  sc->sc_current_flags = sc->sc_cbw->bCBWFlags;





  sc->sc_current_residue = sc->sc_current_transfer_length;

  if (cfumass_quirk(sc,
      sc->sc_cbw->CBWCB, sc->sc_cbw->bCDBLength) != 0)
   break;

  if (!cfumass_port_online) {
   CFUMASS_DEBUG(sc, "cfumass port is offline; stalling");
   usbd_xfer_set_stall(xfer);
   break;
  }




  CFUMASS_UNLOCK(sc);
  io = ctl_alloc_io(cfumass_port.ctl_pool_ref);
  ctl_zero_io(io);
  io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = sc;
  io->io_hdr.io_type = CTL_IO_SCSI;
  io->io_hdr.nexus.initid = sc->sc_ctl_initid;
  io->io_hdr.nexus.targ_port = cfumass_port.targ_port;
  io->io_hdr.nexus.targ_lun = ctl_decode_lun(sc->sc_cbw->bCBWLUN);
  io->scsiio.tag_num = UGETDW(sc->sc_cbw->dCBWTag);
  io->scsiio.tag_type = CTL_TAG_UNTAGGED;
  io->scsiio.cdb_len = sc->sc_cbw->bCDBLength;
  memcpy(io->scsiio.cdb, sc->sc_cbw->CBWCB, sc->sc_cbw->bCDBLength);
  refcount_acquire(&sc->sc_queued);
  error = ctl_queue(io);
  if (error != CTL_RETVAL_COMPLETE) {
   CFUMASS_WARN(sc,
       "ctl_queue() failed; error %d; stalling", error);
   ctl_free_io(io);
   refcount_release(&sc->sc_queued);
   CFUMASS_LOCK(sc);
   usbd_xfer_set_stall(xfer);
   break;
  }

  CFUMASS_LOCK(sc);
  break;

 case 129:
tr_setup:
  CFUMASS_DEBUG(sc, "USB_ST_SETUP");

  usbd_xfer_set_frame_len(xfer, 0, sizeof(*sc->sc_cbw));
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
