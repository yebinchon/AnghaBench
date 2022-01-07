
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_2__ {int dx; int dy; int buttons; } ;
struct g_mouse_softc {int sc_tick; int sc_radius; int sc_curr_y_state; int sc_curr_x_state; int sc_last_x_state; int sc_last_y_state; TYPE_1__ sc_data; int sc_mode; int sc_do_button_update; int sc_do_cursor_update; } ;


 int BUT_0 ;
 int DPRINTF (char*,int,...) ;




 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int ,TYPE_1__*,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct g_mouse_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int*,int *) ;

__attribute__((used)) static void
g_mouse_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct g_mouse_softc *sc = usbd_xfer_softc(xfer);
 int actlen;
 int aframes;
 int dx;
 int dy;
 int radius;

 usbd_xfer_status(xfer, &actlen, ((void*)0), &aframes, ((void*)0));

 DPRINTF("st=%d aframes=%d actlen=%d bytes\n",
     USB_GET_STATE(xfer), aframes, actlen);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if (!(sc->sc_do_cursor_update || sc->sc_do_button_update))
   break;

 case 129:
tr_setup:

   if (sc->sc_do_cursor_update) {
  sc->sc_do_cursor_update = 0;
  sc->sc_tick += 80;
  if ((sc->sc_tick < 0) || (sc->sc_tick > 7999))
   sc->sc_tick = 0;
   }

   if (sc->sc_do_button_update) {
   sc->sc_do_button_update = 0;
   sc->sc_data.buttons ^= BUT_0;
   }

   radius = sc->sc_radius;

  switch (sc->sc_mode) {
  case 131:
   sc->sc_data.buttons = 0;
   break;
  case 130:
   radius = (radius * (8000-sc->sc_tick)) / 8000;
  case 132:

   sc->sc_curr_y_state = 0;
   sc->sc_curr_x_state = 0;
   break;
  case 133:
   if (sc->sc_tick < 2000) {
    sc->sc_curr_x_state = (sc->sc_tick * radius) / 2000;
    sc->sc_curr_y_state = 0;
   } else if (sc->sc_tick < 4000) {
    sc->sc_curr_x_state = radius;
    sc->sc_curr_y_state = -(((sc->sc_tick - 2000) * radius) / 2000);
   } else if (sc->sc_tick < 6000) {
    sc->sc_curr_x_state = radius - (((sc->sc_tick - 4000) * radius) / 2000);
    sc->sc_curr_y_state = -radius;
   } else {
    sc->sc_curr_x_state = 0;
    sc->sc_curr_y_state = -radius + (((sc->sc_tick - 6000) * radius) / 2000);
   }
   break;
  default:
   break;
  }

  dx = sc->sc_curr_x_state - sc->sc_last_x_state;
  dy = sc->sc_curr_y_state - sc->sc_last_y_state;

  if (dx < -63)
    dx = -63;
  else if (dx > 63)
    dx = 63;

  if (dy < -63)
    dy = -63;
  else if (dy > 63)
    dy = 63;

  sc->sc_last_x_state += dx;
  sc->sc_last_y_state += dy;

  sc->sc_data.dx = dx;
  sc->sc_data.dy = dy;

  usbd_xfer_set_frame_data(xfer, 0, &sc->sc_data, sizeof(sc->sc_data));
  usbd_xfer_set_frames(xfer, 1);
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
