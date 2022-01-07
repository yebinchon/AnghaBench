
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {scalar_t__ sc_led_blink; } ;



__attribute__((used)) static void
upgt_set_led_blink(void *arg)
{
 struct upgt_softc *sc = arg;


 sc->sc_led_blink = 0;
}
