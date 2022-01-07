
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ugold_softc {int sc_num_sensors; int* sc_valid; int * sc_calib; int * sc_sensor; } ;
typedef int buf ;


 int DPRINTF (char*,int,...) ;
 int MIN (int,int) ;


 size_t UGOLD_INNER ;
 int UGOLD_MAX_SENSORS ;
 size_t UGOLD_OUTER ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int memset (int*,int ,int) ;
 int ugold_ds75_temp (int,int) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ugold_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ugold_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ugold_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint8_t buf[8];
 int temp;
 int len;

 usbd_xfer_status(xfer, &len, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  memset(buf, 0, sizeof(buf));

  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, buf, MIN(len, sizeof(buf)));

  switch (buf[0]) {
  case 130:
   if (sc->sc_num_sensors)
    break;

   sc->sc_num_sensors = MIN(buf[1], UGOLD_MAX_SENSORS) ;

   DPRINTF("%d sensor%s type ds75/12bit (temperature)\n",
       sc->sc_num_sensors, (sc->sc_num_sensors == 1) ? "" : "s");
   break;
  case 131:
   switch (buf[1]) {
   case 4:
    temp = ugold_ds75_temp(buf[4], buf[5]);
    sc->sc_sensor[UGOLD_OUTER] = temp + sc->sc_calib[UGOLD_OUTER];
    sc->sc_valid[UGOLD_OUTER] = 1;

   case 2:
    temp = ugold_ds75_temp(buf[2], buf[3]);
    sc->sc_sensor[UGOLD_INNER] = temp + sc->sc_calib[UGOLD_INNER];
    sc->sc_valid[UGOLD_INNER] = 1;
    break;
   default:
    DPRINTF("invalid data length (%d bytes)\n", buf[1]);
   }
   break;
  default:
   DPRINTF("unknown command 0x%02x\n", buf[0]);
   break;
  }

 case 129:
tr_setup:
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
