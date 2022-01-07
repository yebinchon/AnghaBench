
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint64_t ;
struct usb_xfer {int dummy; } ;
struct ieee80211com {int ic_ierrors; } ;
struct urtw_softc {int sc_txstatus; struct ieee80211com sc_ic; } ;


 int URTW_ASSERT_LOCKED (struct urtw_softc*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int counter_u64_add (int ,int) ;
 int memcpy (void*,int *,int) ;
 int urtw_txstatus_eof (struct usb_xfer*) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 void* usbd_xfer_get_frame_buffer (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct urtw_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
urtw_bulk_tx_status_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct urtw_softc *sc = usbd_xfer_softc(xfer);
 struct ieee80211com *ic = &sc->sc_ic;
 void *dma_buf = usbd_xfer_get_frame_buffer(xfer, 0);

 URTW_ASSERT_LOCKED(sc);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  urtw_txstatus_eof(xfer);

 case 129:
setup:
  memcpy(dma_buf, &sc->sc_txstatus, sizeof(uint64_t));
  usbd_xfer_set_frame_len(xfer, 0, sizeof(uint64_t));
  usbd_transfer_submit(xfer);
  break;
 default:
  if (error != USB_ERR_CANCELLED) {
   usbd_xfer_set_stall(xfer);
   counter_u64_add(ic->ic_ierrors, 1);
   goto setup;
  }
  break;
 }
}
