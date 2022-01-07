
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int dummy; } ;
struct mbuf {int m_len; int m_data; } ;
struct ether_header {int dummy; } ;
struct TYPE_3__ {int ue_udev; } ;
struct cdce_softc {int sc_flags; struct mbuf** sc_rx_buf; TYPE_1__ sc_ue; } ;


 int CDCE_FLAG_ZAURUS ;
 int CDCE_FRAMES_MAX ;
 int DPRINTF (char*,int,...) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;
 int USB_MODE_HOST ;


 int cdce_free_queue (struct mbuf**,int ) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* uether_newbuf () ;
 int uether_rxflush (TYPE_1__*) ;
 int uether_rxmbuf (TYPE_1__*,struct mbuf*,int) ;
 int usbd_errstr (int ) ;
 int usbd_get_mode (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_frame_len (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int,int ,int ) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct cdce_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int*,int *) ;

__attribute__((used)) static void
cdce_bulk_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct cdce_softc *sc = usbd_xfer_softc(xfer);
 struct mbuf *m;
 uint8_t x;
 int actlen;
 int aframes;
 int len;

 usbd_xfer_status(xfer, &actlen, ((void*)0), &aframes, ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  DPRINTF("received %u bytes in %u frames\n", actlen, aframes);

  for (x = 0; x != aframes; x++) {

   m = sc->sc_rx_buf[x];
   sc->sc_rx_buf[x] = ((void*)0);
   len = usbd_xfer_frame_len(xfer, x);


   if ((sc->sc_flags & CDCE_FLAG_ZAURUS) && len >= 14)
    len -= 4;

   if (len < (int)sizeof(struct ether_header)) {
    m_freem(m);
    continue;
   }

   uether_rxmbuf(&sc->sc_ue, m, len);
  }


 case 129:




  for (x = 0; x != 1; x++) {
   if (sc->sc_rx_buf[x] == ((void*)0)) {
    m = uether_newbuf();
    if (m == ((void*)0))
     goto tr_stall;
    sc->sc_rx_buf[x] = m;
   } else {
    m = sc->sc_rx_buf[x];
   }

   usbd_xfer_set_frame_data(xfer, x, m->m_data, m->m_len);
  }

  usbd_xfer_set_frames(xfer, x);
  usbd_transfer_submit(xfer);

  uether_rxflush(&sc->sc_ue);
  break;

 default:
  DPRINTF("error = %s\n",
      usbd_errstr(error));

  if (error != USB_ERR_CANCELLED) {
tr_stall:
   if (usbd_get_mode(sc->sc_ue.ue_udev) == USB_MODE_HOST) {

    usbd_xfer_set_stall(xfer);
    usbd_xfer_set_frames(xfer, 0);
    usbd_transfer_submit(xfer);
   }
   break;
  }


  cdce_free_queue(sc->sc_rx_buf, CDCE_FRAMES_MAX);
  break;
 }
}
