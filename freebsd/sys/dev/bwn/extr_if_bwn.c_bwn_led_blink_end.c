
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_softc {scalar_t__ sc_led_blinking; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;



__attribute__((used)) static void
bwn_led_blink_end(void *arg)
{
 struct bwn_mac *mac = arg;
 struct bwn_softc *sc = mac->mac_sc;

 sc->sc_led_blinking = 0;
}
