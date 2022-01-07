
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct uslcom_softc {int sc_iface_no; int sc_ucom; int sc_udev; int sc_partnum; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; void* bRequest; int bmRequestType; } ;
struct ucom_softc {struct uslcom_softc* sc_parent; } ;
struct thread {int dummy; } ;
typedef int latch ;
typedef scalar_t__ caddr_t ;


 int DPRINTF (char*,...) ;
 int EIO ;
 int ENODEV ;
 int ENOIOCTL ;


 int USETW (int ,int) ;
 int USLCOM_PARTNUM_CP2103 ;
 int USLCOM_PARTNUM_CP2104 ;
 int USLCOM_READ ;
 int USLCOM_READ_LATCH ;
 void* USLCOM_VENDOR_SPECIFIC ;
 int USLCOM_WRITE ;
 int USLCOM_WRITE_LATCH ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int*,int ,int) ;

__attribute__((used)) static int
uslcom_ioctl(struct ucom_softc *ucom, uint32_t cmd, caddr_t data,
    int flag, struct thread *td)
{
 struct uslcom_softc *sc = ucom->sc_parent;
 struct usb_device_request req;
 int error = 0;
 uint8_t latch;

 DPRINTF("cmd=0x%08x\n", cmd);

 switch (cmd) {
 case 129:
  if (sc->sc_partnum < USLCOM_PARTNUM_CP2103) {
   error = ENODEV;
   break;
  }
  req.bmRequestType = USLCOM_READ;
  req.bRequest = USLCOM_VENDOR_SPECIFIC;
  USETW(req.wValue, USLCOM_READ_LATCH);
  USETW(req.wIndex, sc->sc_iface_no);
  USETW(req.wLength, sizeof(latch));

  if (ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
      &req, &latch, 0, 1000)) {
   DPRINTF("Get LATCH failed\n");
   error = EIO;
  }
  *(int *)data = latch;
  break;

 case 128:
  if (sc->sc_partnum < USLCOM_PARTNUM_CP2103)
   error = ENODEV;
  else if ((sc->sc_partnum == USLCOM_PARTNUM_CP2103) ||
      (sc->sc_partnum == USLCOM_PARTNUM_CP2104)) {
   req.bmRequestType = USLCOM_WRITE;
   req.bRequest = USLCOM_VENDOR_SPECIFIC;
   USETW(req.wValue, USLCOM_WRITE_LATCH);
   USETW(req.wIndex, (*(int *)data));
   USETW(req.wLength, 0);

   if (ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
       &req, ((void*)0), 0, 1000)) {
    DPRINTF("Set LATCH failed\n");
    error = EIO;
   }
  } else
   error = ENODEV;
  break;

 default:
  DPRINTF("Unknown IOCTL\n");
  error = ENOIOCTL;
  break;
 }
 return (error);
}
