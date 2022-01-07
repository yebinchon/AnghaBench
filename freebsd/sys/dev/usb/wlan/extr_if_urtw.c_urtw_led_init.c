
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint32_t ;
struct urtw_softc {int sc_gpio_ledpin; int sc_strategy; int sc_psr; } ;




 int URTW_EPROM_CID_MASK ;



 int URTW_EPROM_SWREV ;
 int URTW_HW_LED ;
 int URTW_LED_PIN_GPIO0 ;
 int URTW_PSR ;
 int URTW_SW_LED_MODE0 ;
 int URTW_SW_LED_MODE1 ;
 int URTW_SW_LED_MODE3 ;
 scalar_t__ urtw_eprom_read32 (struct urtw_softc*,int ,int*) ;
 int urtw_read8_m (struct urtw_softc*,int ,int *) ;

__attribute__((used)) static usb_error_t
urtw_led_init(struct urtw_softc *sc)
{
 uint32_t rev;
 usb_error_t error;

 urtw_read8_m(sc, URTW_PSR, &sc->sc_psr);
 error = urtw_eprom_read32(sc, URTW_EPROM_SWREV, &rev);
 if (error != 0)
  goto fail;

 switch (rev & URTW_EPROM_CID_MASK) {
 case 132:
  sc->sc_strategy = URTW_SW_LED_MODE1;
  break;
 case 128:
  sc->sc_strategy = URTW_SW_LED_MODE3;
  break;
 case 131:
  sc->sc_strategy = URTW_HW_LED;
  break;
 case 130:
 case 129:
 default:
  sc->sc_strategy = URTW_SW_LED_MODE0;
  break;
 }

 sc->sc_gpio_ledpin = URTW_LED_PIN_GPIO0;

fail:
 return (error);
}
