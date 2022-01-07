
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct usb_fifo {int dummy; } ;
struct usb_device_descriptor {int dummy; } ;
struct ubtbcmfw_softc {int sc_udev; } ;


 int EINVAL ;

 int memcpy (void*,int ,int) ;
 struct ubtbcmfw_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_get_device_descriptor (int ) ;

__attribute__((used)) static int
ubtbcmfw_ioctl(struct usb_fifo *fifo, u_long cmd, void *data,
    int fflags)
{
 struct ubtbcmfw_softc *sc = usb_fifo_softc(fifo);
 int error = 0;

 switch (cmd) {
 case 128:
  memcpy(data, usbd_get_device_descriptor(sc->sc_udev),
   sizeof(struct usb_device_descriptor));
  break;

 default:
  error = EINVAL;
  break;
 }

 return (error);
}
