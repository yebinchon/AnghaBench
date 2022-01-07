
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_softc {int sc_led_blink_offdur; int sc_led_blink_ch; int sc_blink_led; } ;


 int BWI_MAC_GPIO_CTRL ;
 int CSR_READ_2 (struct bwi_softc*,int ) ;
 int CSR_WRITE_2 (struct bwi_softc*,int ,int ) ;
 int bwi_led_blink_end ;
 int bwi_led_onoff (int ,int ,int ) ;
 int callout_reset (int *,int ,int ,struct bwi_softc*) ;

__attribute__((used)) static void
bwi_led_blink_next(void *xsc)
{
 struct bwi_softc *sc = xsc;
 uint16_t val;

 val = CSR_READ_2(sc, BWI_MAC_GPIO_CTRL);
 val = bwi_led_onoff(sc->sc_blink_led, val, 0);
 CSR_WRITE_2(sc, BWI_MAC_GPIO_CTRL, val);

 callout_reset(&sc->sc_led_blink_ch, sc->sc_led_blink_offdur,
     bwi_led_blink_end, sc);
}
