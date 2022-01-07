
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct urtw_softc {int sc_gpio_ledstate; int sc_gpio_ledinprogress; int sc_gpio_blinktime; int sc_gpio_blinkstate; int sc_mtx; int sc_led_ch; int sc_gpio_ledon; } ;


 int DPRINTF (struct urtw_softc*,int ,char*,int) ;
 int URTW_DEBUG_STATE ;




 int URTW_LED_GPIO ;
 int const URTW_LED_OFF ;


 int USB_ERR_INVAL ;
 int hz ;
 int urtw_led_ch ;
 int urtw_led_off (struct urtw_softc*,int ) ;
 int urtw_led_on (struct urtw_softc*,int ) ;
 int usb_callout_reset (int *,int ,int ,struct urtw_softc*) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_led_mode0(struct urtw_softc *sc, int mode)
{

 switch (mode) {
 case 131:
  sc->sc_gpio_ledstate = 128;
  break;
 case 130:
  if (sc->sc_gpio_ledinprogress == 1)
   return (0);

  sc->sc_gpio_ledstate = 133;
  sc->sc_gpio_blinktime = 2;
  break;
 case 132:
  sc->sc_gpio_ledstate = 129;
  break;
 default:
  DPRINTF(sc, URTW_DEBUG_STATE,
      "unsupported LED mode 0x%x", mode);
  return (USB_ERR_INVAL);
 }

 switch (sc->sc_gpio_ledstate) {
 case 129:
  if (sc->sc_gpio_ledinprogress != 0)
   break;
  urtw_led_on(sc, URTW_LED_GPIO);
  break;
 case 133:
  if (sc->sc_gpio_ledinprogress != 0)
   break;
  sc->sc_gpio_ledinprogress = 1;
  sc->sc_gpio_blinkstate = (sc->sc_gpio_ledon != 0) ?
   URTW_LED_OFF : 129;
  usb_callout_reset(&sc->sc_led_ch, hz, urtw_led_ch, sc);
  break;
 case 128:
  urtw_led_on(sc, URTW_LED_GPIO);
  usb_pause_mtx(&sc->sc_mtx, 100);
  urtw_led_off(sc, URTW_LED_GPIO);
  break;
 default:
  DPRINTF(sc, URTW_DEBUG_STATE,
      "unknown LED status 0x%x", sc->sc_gpio_ledstate);
  return (USB_ERR_INVAL);
 }
 return (0);
}
