
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terasic_de4led_softc {int tdl_bits; int tdl_res; } ;


 int TERASIC_DE4LED_LOCK_ASSERT (struct terasic_de4led_softc*) ;
 int TERASIC_DE4LED_OFF_LED ;
 int bus_write_1 (int ,int ,int ) ;

__attribute__((used)) static void
terasic_de4led_update(struct terasic_de4led_softc *sc)
{

 TERASIC_DE4LED_LOCK_ASSERT(sc);

 bus_write_1(sc->tdl_res, TERASIC_DE4LED_OFF_LED, sc->tdl_bits);
}
