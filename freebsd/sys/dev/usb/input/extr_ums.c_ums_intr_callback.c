
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
typedef unsigned long uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_4__ {int * fp; } ;
struct TYPE_3__ {unsigned long button; unsigned long dx; unsigned long dy; unsigned long dz; } ;
struct ums_softc {int* sc_temp; int sc_evflags; TYPE_2__ sc_fifo; int sc_callout; struct ums_info* sc_info; TYPE_1__ sc_status; int sc_iid; } ;
struct ums_info {int sc_flags; int sc_iid_w; int sc_iid_x; int sc_iid_y; int sc_iid_z; int sc_iid_t; int sc_buttons; int* sc_iid_btn; int * sc_loc_btn; int sc_loc_t; int sc_loc_z; int sc_loc_y; int sc_loc_x; int sc_loc_w; } ;
typedef unsigned long int32_t ;


 int DPRINTFN (int,char*,...) ;
 unsigned long UMS_BUT (int) ;
 int UMS_FLAG_REVZ ;
 int UMS_FLAG_SBU ;
 int UMS_FLAG_T_AXIS ;
 int UMS_FLAG_W_AXIS ;
 int UMS_FLAG_X_AXIS ;
 int UMS_FLAG_Y_AXIS ;
 int UMS_FLAG_Z_AXIS ;
 size_t UMS_INFO_MAX ;
 int USB_ERR_CANCELLED ;
 size_t USB_FIFO_RX ;
 int USB_GET_STATE (struct usb_xfer*) ;


 unsigned long hid_get_data (int*,int,int *) ;
 int hz ;
 int ums_evdev_push (struct ums_softc*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int ums_put_queue (struct ums_softc*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int ums_put_queue_timeout ;
 int usb_callout_reset (int *,int,int *,struct ums_softc*) ;
 int usb_callout_stop (int *) ;
 int usb_fifo_put_bytes_max (int ) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ums_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ums_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ums_softc *sc = usbd_xfer_softc(xfer);
 struct ums_info *info = &sc->sc_info[0];
 struct usb_page_cache *pc;
 uint8_t *buf = sc->sc_temp;
 int32_t buttons = 0;
 int32_t buttons_found = 0;



 int32_t dw = 0;
 int32_t dx = 0;
 int32_t dy = 0;
 int32_t dz = 0;
 int32_t dt = 0;
 uint8_t i;
 uint8_t id;
 int len;

 usbd_xfer_status(xfer, &len, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(6, "sc=%p actlen=%d\n", sc, len);

  if (len > (int)sizeof(sc->sc_temp)) {
   DPRINTFN(6, "truncating large packet to %zu bytes\n",
       sizeof(sc->sc_temp));
   len = sizeof(sc->sc_temp);
  }
  if (len == 0)
   goto tr_setup;

  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, buf, len);

  DPRINTFN(6, "data = %02x %02x %02x %02x "
      "%02x %02x %02x %02x\n",
      (len > 0) ? buf[0] : 0, (len > 1) ? buf[1] : 0,
      (len > 2) ? buf[2] : 0, (len > 3) ? buf[3] : 0,
      (len > 4) ? buf[4] : 0, (len > 5) ? buf[5] : 0,
      (len > 6) ? buf[6] : 0, (len > 7) ? buf[7] : 0);

  if (sc->sc_iid) {
   id = *buf;

   len--;
   buf++;

  } else {
   id = 0;
   if (sc->sc_info[0].sc_flags & UMS_FLAG_SBU) {
    if ((*buf == 0x14) || (*buf == 0x15)) {
     goto tr_setup;
    }
   }
  }

 repeat:
  if ((info->sc_flags & UMS_FLAG_W_AXIS) &&
      (id == info->sc_iid_w))
   dw += hid_get_data(buf, len, &info->sc_loc_w);

  if ((info->sc_flags & UMS_FLAG_X_AXIS) &&
      (id == info->sc_iid_x))
   dx += hid_get_data(buf, len, &info->sc_loc_x);

  if ((info->sc_flags & UMS_FLAG_Y_AXIS) &&
      (id == info->sc_iid_y))
   dy -= hid_get_data(buf, len, &info->sc_loc_y);

  if ((info->sc_flags & UMS_FLAG_Z_AXIS) &&
      (id == info->sc_iid_z)) {
   int32_t temp;
   temp = hid_get_data(buf, len, &info->sc_loc_z);
   if (info->sc_flags & UMS_FLAG_REVZ)
    temp = -temp;
   dz -= temp;
  }

  if ((info->sc_flags & UMS_FLAG_T_AXIS) &&
      (id == info->sc_iid_t)) {
   dt += hid_get_data(buf, len, &info->sc_loc_t);

   buttons_found |= (1UL << 5) | (1UL << 6);
  }

  for (i = 0; i < info->sc_buttons; i++) {
   uint32_t mask;
   mask = 1UL << UMS_BUT(i);

   if (id != info->sc_iid_btn[i])
    continue;

   if (hid_get_data(buf, len, &info->sc_loc_btn[i]))
    buttons |= mask;

   buttons_found |= mask;
  }

  if (++info != &sc->sc_info[UMS_INFO_MAX])
   goto repeat;





  buttons |= sc->sc_status.button & ~buttons_found;

  if (dx || dy || dz || dt || dw ||
      (buttons != sc->sc_status.button)) {

   DPRINTFN(6, "x:%d y:%d z:%d t:%d w:%d buttons:0x%08x\n",
       dx, dy, dz, dt, dw, buttons);


   if (dt > 0) {
    ums_put_queue(sc, 0, 0, 0, 0, buttons);
    buttons |= 1UL << 6;
   } else if (dt < 0) {
    ums_put_queue(sc, 0, 0, 0, 0, buttons);
    buttons |= 1UL << 5;
   }

   sc->sc_status.button = buttons;
   sc->sc_status.dx += dx;
   sc->sc_status.dy += dy;
   sc->sc_status.dz += dz;
   if ((sc->sc_info[0].sc_flags & UMS_FLAG_SBU) &&
       (dx == 0) && (dy == 0) && (dz == 0) && (dt == 0) &&
       (dw == 0) && (buttons == 0)) {

    usb_callout_reset(&sc->sc_callout, hz / 20,
        &ums_put_queue_timeout, sc);
   } else {

    usb_callout_stop(&sc->sc_callout);

    ums_put_queue(sc, dx, dy, dz, dt, buttons);





   }
  }
 case 129:
tr_setup:

  if (usb_fifo_put_bytes_max(sc->sc_fifo.fp[USB_FIFO_RX]) == 0) {




   break;

  }

  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  break;

 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
