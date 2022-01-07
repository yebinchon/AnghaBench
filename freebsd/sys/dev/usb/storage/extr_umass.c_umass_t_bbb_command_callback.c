
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
typedef union ccb {int dummy; } ccb ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_5__ {int bCDBLength; int CBWCDB; int bCBWLUN; int bCBWFlags; int dCBWDataTransferLength; int dCBWTag; int dCBWSignature; } ;
struct TYPE_4__ {int cmd_len; int cmd_data; int lun; int dir; int data_len; union ccb* ccb; } ;
struct umass_softc {TYPE_2__ cbw; TYPE_1__ sc_transfer; int sc_status_try; } ;


 int CBWFLAGS_IN ;
 int CBWFLAGS_OUT ;
 int CBWSIGNATURE ;
 int DIF (int ,int ) ;
 int DIR_IN ;
 int DIR_OUT ;
 int DPRINTF (struct umass_softc*,int ,char*) ;
 int UDMASS_BBB ;
 int UGETDW (int ) ;
 int UMASS_T_BBB_DATA_READ ;
 int UMASS_T_BBB_DATA_WRITE ;
 int UMASS_T_BBB_STATUS ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USETDW (int ,int ) ;
 int memcpy (int,int ,int) ;
 int memset (int,int ,int ) ;
 int umass_bbb_dump_cbw (struct umass_softc*,TYPE_2__*) ;
 int umass_tr_error (struct usb_xfer*,int ) ;
 int umass_transfer_start (struct umass_softc*,int ) ;
 int usbd_copy_in (struct usb_page_cache*,int ,TYPE_2__*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 struct umass_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
umass_t_bbb_command_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct umass_softc *sc = usbd_xfer_softc(xfer);
 union ccb *ccb = sc->sc_transfer.ccb;
 struct usb_page_cache *pc;
 uint32_t tag;

 switch (USB_GET_STATE(xfer)) {
 case 128:
  umass_transfer_start
      (sc, ((sc->sc_transfer.dir == DIR_IN) ? UMASS_T_BBB_DATA_READ :
      (sc->sc_transfer.dir == DIR_OUT) ? UMASS_T_BBB_DATA_WRITE :
      UMASS_T_BBB_STATUS));
  return;

 case 129:

  sc->sc_status_try = 0;

  if (ccb) {





   tag = UGETDW(sc->cbw.dCBWTag) + 1;

   USETDW(sc->cbw.dCBWSignature, CBWSIGNATURE);
   USETDW(sc->cbw.dCBWTag, tag);
   USETDW(sc->cbw.dCBWDataTransferLength, sc->sc_transfer.data_len);
   sc->cbw.bCBWFlags = ((sc->sc_transfer.dir == DIR_IN) ?
       CBWFLAGS_IN : CBWFLAGS_OUT);
   sc->cbw.bCBWLUN = sc->sc_transfer.lun;

   if (sc->sc_transfer.cmd_len > sizeof(sc->cbw.CBWCDB)) {
    sc->sc_transfer.cmd_len = sizeof(sc->cbw.CBWCDB);
    DPRINTF(sc, UDMASS_BBB, "Truncating long command!\n");
   }
   sc->cbw.bCDBLength = sc->sc_transfer.cmd_len;


   memcpy(sc->cbw.CBWCDB, sc->sc_transfer.cmd_data,
       sc->sc_transfer.cmd_len);


   memset(sc->cbw.CBWCDB +
       sc->sc_transfer.cmd_len, 0,
       sizeof(sc->cbw.CBWCDB) -
       sc->sc_transfer.cmd_len);

   DIF(UDMASS_BBB, umass_bbb_dump_cbw(sc, &sc->cbw));

   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_in(pc, 0, &sc->cbw, sizeof(sc->cbw));
   usbd_xfer_set_frame_len(xfer, 0, sizeof(sc->cbw));

   usbd_transfer_submit(xfer);
  }
  return;

 default:
  umass_tr_error(xfer, error);
  return;
 }
}
