
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {scalar_t__ sc_gpio_blinkstate; scalar_t__ sc_gpio_blinktime; int sc_gpio_ledstate; int sc_gpio_ledon; int sc_led_ch; scalar_t__ sc_gpio_ledinprogress; } ;


 int DPRINTF (struct urtw_softc*,int ,char*,int) ;
 int URTW_DEBUG_STATE ;
 int URTW_LED_BLINK_CM3 ;

 int URTW_LED_BLINK_SLOWLY ;
 int URTW_LED_GPIO ;
 scalar_t__ URTW_LED_OFF ;
 scalar_t__ URTW_LED_ON ;
 int USB_ERR_INVAL ;
 int hz ;
 int urtw_led_ch ;
 int urtw_led_off (struct urtw_softc*,int ) ;
 int urtw_led_on (struct urtw_softc*,int ) ;
 int usb_callout_reset (int *,int ,int ,struct urtw_softc*) ;

__attribute__((used)) static usb_error_t
urtw_led_blink(struct urtw_softc *sc)
{
 uint8_t ing = 0;
 usb_error_t error;

 if (sc->sc_gpio_blinkstate == URTW_LED_ON)
  error = urtw_led_on(sc, URTW_LED_GPIO);
 else
  error = urtw_led_off(sc, URTW_LED_GPIO);
 sc->sc_gpio_blinktime--;
 if (sc->sc_gpio_blinktime == 0)
  ing = 1;
 else {
  if (sc->sc_gpio_ledstate != 128 &&
      sc->sc_gpio_ledstate != URTW_LED_BLINK_SLOWLY &&
      sc->sc_gpio_ledstate != URTW_LED_BLINK_CM3)
   ing = 1;
 }
 if (ing == 1) {
  if (sc->sc_gpio_ledstate == URTW_LED_ON &&
      sc->sc_gpio_ledon == 0)
   error = urtw_led_on(sc, URTW_LED_GPIO);
  else if (sc->sc_gpio_ledstate == URTW_LED_OFF &&
      sc->sc_gpio_ledon == 1)
   error = urtw_led_off(sc, URTW_LED_GPIO);

  sc->sc_gpio_blinktime = 0;
  sc->sc_gpio_ledinprogress = 0;
  return (0);
 }

 sc->sc_gpio_blinkstate = (sc->sc_gpio_blinkstate != URTW_LED_ON) ?
     URTW_LED_ON : URTW_LED_OFF;

 switch (sc->sc_gpio_ledstate) {
 case 128:
  usb_callout_reset(&sc->sc_led_ch, hz, urtw_led_ch, sc);
  break;
 default:
  DPRINTF(sc, URTW_DEBUG_STATE,
      "unknown LED status 0x%x",
      sc->sc_gpio_ledstate);
  return (USB_ERR_INVAL);
 }
 return (0);
}
