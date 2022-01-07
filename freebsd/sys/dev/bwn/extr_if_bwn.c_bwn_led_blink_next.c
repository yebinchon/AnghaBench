
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_softc {int sc_led_blink_offdur; int sc_led_blink_ch; int sc_blink_led; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 int BWN_GPIO_CONTROL ;
 int BWN_READ_2 (struct bwn_mac*,int ) ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int ) ;
 int bwn_led_blink_end ;
 int bwn_led_onoff (int ,int ,int ) ;
 int callout_reset (int *,int ,int ,struct bwn_mac*) ;

__attribute__((used)) static void
bwn_led_blink_next(void *arg)
{
 struct bwn_mac *mac = arg;
 struct bwn_softc *sc = mac->mac_sc;
 uint16_t val;

 val = BWN_READ_2(mac, BWN_GPIO_CONTROL);
 val = bwn_led_onoff(sc->sc_blink_led, val, 0);
 BWN_WRITE_2(mac, BWN_GPIO_CONTROL, val);

 callout_reset(&sc->sc_led_blink_ch, sc->sc_led_blink_offdur,
     bwn_led_blink_end, mac);
}
