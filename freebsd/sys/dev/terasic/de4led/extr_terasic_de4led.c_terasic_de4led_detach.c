
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terasic_de4led_softc {int ** tdl_leds; } ;


 int TERASIC_DE4LED_CLEARBAR (struct terasic_de4led_softc*) ;
 int TERASIC_DE4LED_LOCK (struct terasic_de4led_softc*) ;
 int TERASIC_DE4LED_LOCK_DESTROY (struct terasic_de4led_softc*) ;
 int TERASIC_DE4LED_UNLOCK (struct terasic_de4led_softc*) ;
 int led_destroy (int *) ;
 int terasic_de4led_update (struct terasic_de4led_softc*) ;

void
terasic_de4led_detach(struct terasic_de4led_softc *sc)
{
 int i;

 for (i = 0; i < 8; i++) {
  led_destroy(sc->tdl_leds[i]);
  sc->tdl_leds[i] = ((void*)0);
 }
 TERASIC_DE4LED_LOCK(sc);
 TERASIC_DE4LED_CLEARBAR(sc);
 terasic_de4led_update(sc);
 TERASIC_DE4LED_UNLOCK(sc);
 TERASIC_DE4LED_LOCK_DESTROY(sc);
}
