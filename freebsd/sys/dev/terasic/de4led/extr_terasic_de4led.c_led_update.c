
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terasic_de4led_softc {int dummy; } ;


 int TERASIC_DE4LED_LOCK (struct terasic_de4led_softc*) ;
 int TERASIC_DE4LED_SETLED (struct terasic_de4led_softc*,int,int) ;
 int TERASIC_DE4LED_UNLOCK (struct terasic_de4led_softc*) ;
 int terasic_de4led_update (struct terasic_de4led_softc*) ;

__attribute__((used)) static void
led_update(struct terasic_de4led_softc *sc, int bit, int onoff)
{

 TERASIC_DE4LED_LOCK(sc);
 TERASIC_DE4LED_SETLED(sc, bit, onoff);
 terasic_de4led_update(sc);
 TERASIC_DE4LED_UNLOCK(sc);
}
