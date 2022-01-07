
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct g_audio_softc {int sc_throughput; int ** sc_data_buf; struct usb_xfer** sc_xfer; int ** sc_data_len; } ;
typedef int int16_t ;


 int DPRINTF (char*,int,...) ;
 int G_AUDIO_BUFSIZE ;
 int G_AUDIO_FRAMES ;
 size_t G_AUDIO_ISOC0_RD ;
 size_t G_AUDIO_ISOC0_WR ;
 size_t G_AUDIO_ISOC1_WR ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usbd_errstr (int ) ;
 int usbd_transfer_start (struct usb_xfer*) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_frame_len (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int,int *,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct g_audio_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int*,int *) ;

__attribute__((used)) static void
g_audio_isoc_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct g_audio_softc *sc = usbd_xfer_softc(xfer);
 int actlen;
 int aframes;
 int nr = (xfer == sc->sc_xfer[G_AUDIO_ISOC0_RD]) ? 0 : 1;
 int16_t *ptr;
 int i;

 usbd_xfer_status(xfer, &actlen, ((void*)0), &aframes, ((void*)0));

 DPRINTF("st=%d aframes=%d actlen=%d bytes\n",
     USB_GET_STATE(xfer), aframes, actlen);

 switch (USB_GET_STATE(xfer)) {
 case 128:

  sc->sc_throughput += actlen;

  for (i = 0; i != G_AUDIO_FRAMES; i++) {
   sc->sc_data_len[nr][i] = usbd_xfer_frame_len(xfer, i);
  }

  usbd_transfer_start(sc->sc_xfer[G_AUDIO_ISOC0_WR]);
  usbd_transfer_start(sc->sc_xfer[G_AUDIO_ISOC1_WR]);

  break;

 case 129:
tr_setup:
  ptr = sc->sc_data_buf[nr];

  for (i = 0; i != G_AUDIO_FRAMES; i++) {

   usbd_xfer_set_frame_data(xfer, i, ptr,
       G_AUDIO_BUFSIZE / G_AUDIO_FRAMES);

   ptr += (G_AUDIO_BUFSIZE / G_AUDIO_FRAMES) / 2;
  }

  usbd_transfer_submit(xfer);
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
