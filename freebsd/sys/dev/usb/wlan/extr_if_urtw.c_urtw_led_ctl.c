
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct urtw_softc {int sc_strategy; } ;


 int DPRINTF (struct urtw_softc*,int ,char*,int) ;
 int URTW_DEBUG_STATE ;




 int USB_ERR_INVAL ;
 int urtw_led_mode0 (struct urtw_softc*,int) ;
 int urtw_led_mode1 (struct urtw_softc*,int) ;
 int urtw_led_mode2 (struct urtw_softc*,int) ;
 int urtw_led_mode3 (struct urtw_softc*,int) ;

__attribute__((used)) static usb_error_t
urtw_led_ctl(struct urtw_softc *sc, int mode)
{
 usb_error_t error = 0;

 switch (sc->sc_strategy) {
 case 131:
  error = urtw_led_mode0(sc, mode);
  break;
 case 130:
  error = urtw_led_mode1(sc, mode);
  break;
 case 129:
  error = urtw_led_mode2(sc, mode);
  break;
 case 128:
  error = urtw_led_mode3(sc, mode);
  break;
 default:
  DPRINTF(sc, URTW_DEBUG_STATE,
      "unsupported LED mode %d\n", sc->sc_strategy);
  error = USB_ERR_INVAL;
  break;
 }

 return (error);
}
