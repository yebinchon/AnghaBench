
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct g_keyboard_softc {int sc_state; TYPE_1__* sc_data; int sc_mode; } ;
struct TYPE_3__ {void** keycode; } ;


 int DPRINTF (char*,int,...) ;
 int G_KEYBOARD_MAX_STRLEN ;
 int G_KEYBOARD_MODE_PATTERN ;
 int G_KEYBOARD_MODE_SILENT ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 void* g_keyboard_get_keycode (struct g_keyboard_softc*,int ) ;
 int memset (TYPE_1__**,int ,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int,TYPE_1__*,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct g_keyboard_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int*,int *) ;

__attribute__((used)) static void
g_keyboard_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct g_keyboard_softc *sc = usbd_xfer_softc(xfer);
 int actlen;
 int aframes;

 usbd_xfer_status(xfer, &actlen, ((void*)0), &aframes, ((void*)0));

 DPRINTF("st=%d aframes=%d actlen=%d bytes\n",
     USB_GET_STATE(xfer), aframes, actlen);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  break;

 case 129:
tr_setup:
  if (sc->sc_mode == G_KEYBOARD_MODE_SILENT) {
   memset(&sc->sc_data, 0, sizeof(sc->sc_data));
   usbd_xfer_set_frame_data(xfer, 0, &sc->sc_data[0], sizeof(sc->sc_data[0]));
   usbd_xfer_set_frame_data(xfer, 1, &sc->sc_data[1], sizeof(sc->sc_data[1]));
   usbd_xfer_set_frames(xfer, 2);
   usbd_transfer_submit(xfer);

  } else if (sc->sc_mode == G_KEYBOARD_MODE_PATTERN) {

   memset(&sc->sc_data, 0, sizeof(sc->sc_data));

   if ((sc->sc_state < 0) || (sc->sc_state >= G_KEYBOARD_MAX_STRLEN))
    sc->sc_state = 0;

   switch (sc->sc_state % 6) {
   case 0:
    sc->sc_data[0].keycode[0] =
        g_keyboard_get_keycode(sc, sc->sc_state + 0);
   case 1:
    sc->sc_data[0].keycode[1] =
        g_keyboard_get_keycode(sc, sc->sc_state + 1);
   case 2:
    sc->sc_data[0].keycode[2] =
        g_keyboard_get_keycode(sc, sc->sc_state + 2);
   case 3:
    sc->sc_data[0].keycode[3] =
        g_keyboard_get_keycode(sc, sc->sc_state + 3);
   case 4:
    sc->sc_data[0].keycode[4] =
        g_keyboard_get_keycode(sc, sc->sc_state + 4);
   default:
    sc->sc_data[0].keycode[5] =
        g_keyboard_get_keycode(sc, sc->sc_state + 5);
   }

   sc->sc_state++;

   usbd_xfer_set_frame_data(xfer, 0, &sc->sc_data[0], sizeof(sc->sc_data[0]));
   usbd_xfer_set_frame_data(xfer, 1, &sc->sc_data[1], sizeof(sc->sc_data[1]));
   usbd_xfer_set_frames(xfer, 2);
   usbd_transfer_submit(xfer);
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
