
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct rum_softc {int sc_dev; } ;


 int RT2573_MCU_CODE_BASE ;
 int RT2573_MCU_RUN ;
 int UGETDW (int const*) ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 int device_printf (int ,char*,...) ;
 int hz ;
 scalar_t__ rum_do_mcu_request (struct rum_softc*,int ) ;
 int rum_pause (struct rum_softc*,int) ;
 scalar_t__ rum_write (struct rum_softc*,int,int ) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static void
rum_load_microcode(struct rum_softc *sc, const uint8_t *ucode, size_t size)
{
 uint16_t reg = RT2573_MCU_CODE_BASE;
 usb_error_t err;


 for (; size >= 4; reg += 4, ucode += 4, size -= 4) {
  err = rum_write(sc, reg, UGETDW(ucode));
  if (err) {

   device_printf(sc->sc_dev, "Firmware load "
       "failure! (ignored)\n");
   break;
  }
 }

 err = rum_do_mcu_request(sc, RT2573_MCU_RUN);
 if (err != USB_ERR_NORMAL_COMPLETION) {
  device_printf(sc->sc_dev, "could not run firmware: %s\n",
      usbd_errstr(err));
 }


 rum_pause(sc, hz / 8);
}
