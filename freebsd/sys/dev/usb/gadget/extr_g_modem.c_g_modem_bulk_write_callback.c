
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct g_modem_softc {int sc_throughput; int sc_tx_interval; int sc_pattern_len; int* sc_data_buf; int* sc_pattern; int sc_data_len; int sc_tx_busy; int sc_mode; int * sc_xfer; } ;


 int DPRINTF (char*,int,...) ;
 int G_MODEM_BUFSIZE ;
 size_t G_MODEM_BULK_RD ;
 int G_MODEM_MODE_LOOP ;
 int G_MODEM_MODE_PATTERN ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usbd_errstr (int ) ;
 int usbd_transfer_start (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int ,int*,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 int usbd_xfer_set_interval (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct g_modem_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int*,int *) ;

__attribute__((used)) static void
g_modem_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct g_modem_softc *sc = usbd_xfer_softc(xfer);
 int actlen;
 int aframes;
 int mod;
 int x;
 int max;

 usbd_xfer_status(xfer, &actlen, ((void*)0), &aframes, ((void*)0));

 DPRINTF("st=%d aframes=%d actlen=%d bytes\n",
     USB_GET_STATE(xfer), aframes, actlen);

 switch (USB_GET_STATE(xfer)) {
 case 128:

  sc->sc_tx_busy = 0;
  sc->sc_throughput += actlen;

  if (sc->sc_mode == G_MODEM_MODE_LOOP) {

   usbd_transfer_start(sc->sc_xfer[G_MODEM_BULK_RD]);
   break;
  } else if ((sc->sc_mode == G_MODEM_MODE_PATTERN) && (sc->sc_tx_interval != 0)) {

   break;
  }
 case 129:
tr_setup:
  if (sc->sc_mode == G_MODEM_MODE_PATTERN) {

   mod = sc->sc_pattern_len;
   max = sc->sc_tx_interval ? mod : G_MODEM_BUFSIZE;

   if (mod == 0) {
    for (x = 0; x != max; x++)
     sc->sc_data_buf[x] = x % 255;
   } else {
    for (x = 0; x != max; x++)
     sc->sc_data_buf[x] = sc->sc_pattern[x % mod];
   }

   usbd_xfer_set_frame_data(xfer, 0, sc->sc_data_buf, max);
   usbd_xfer_set_interval(xfer, 0);
   usbd_xfer_set_frames(xfer, 1);
   usbd_transfer_submit(xfer);

  } else if (sc->sc_mode == G_MODEM_MODE_LOOP) {

   if (sc->sc_tx_busy == 0)
    break;

   x = sc->sc_tx_interval;

   if (x < 0)
    x = 0;
   else if (x > 256)
    x = 256;

   usbd_xfer_set_frame_data(xfer, 0, sc->sc_data_buf, sc->sc_data_len);
   usbd_xfer_set_interval(xfer, x);
   usbd_xfer_set_frames(xfer, 1);
   usbd_transfer_submit(xfer);
  } else {
   sc->sc_tx_busy = 0;
  }
  break;

 default:
  DPRINTF("error=%s\n", usbd_errstr(error));

  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
