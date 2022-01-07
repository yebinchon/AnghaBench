
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct urtw_softc {int sc_gpio_ledpin; scalar_t__ sc_gpio_ledon; } ;


 int DPRINTF (struct urtw_softc*,int ,char*,int) ;
 int URTW_DEBUG_STATE ;
 int URTW_GPIO ;
 int URTW_GPIO_DATA_MAGIC1 ;
 int URTW_GP_ENABLE ;
 int URTW_GP_ENABLE_DATA_MAGIC1 ;
 int URTW_LED_GPIO ;

 int USB_ERR_INVAL ;
 int urtw_write8_m (struct urtw_softc*,int ,int ) ;

__attribute__((used)) static usb_error_t
urtw_led_off(struct urtw_softc *sc, int type)
{
 usb_error_t error;

 if (type == URTW_LED_GPIO) {
  switch (sc->sc_gpio_ledpin) {
  case 128:
   urtw_write8_m(sc, URTW_GPIO, URTW_GPIO_DATA_MAGIC1);
   urtw_write8_m(sc,
       URTW_GP_ENABLE, URTW_GP_ENABLE_DATA_MAGIC1);
   break;
  default:
   DPRINTF(sc, URTW_DEBUG_STATE,
       "unsupported LED PIN type 0x%x",
       sc->sc_gpio_ledpin);
   error = USB_ERR_INVAL;
   goto fail;
  }
 } else {
  DPRINTF(sc, URTW_DEBUG_STATE,
      "unsupported LED type 0x%x", type);
  error = USB_ERR_INVAL;
  goto fail;
 }

 sc->sc_gpio_ledon = 0;

fail:
 return (error);
}
