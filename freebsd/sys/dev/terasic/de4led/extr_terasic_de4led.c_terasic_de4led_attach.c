
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terasic_de4led_softc {int tdl_unit; int tdl_dev; void** tdl_leds; } ;


 int TERASIC_DE4LED_CLEARBAR (struct terasic_de4led_softc*) ;
 int TERASIC_DE4LED_LOCK (struct terasic_de4led_softc*) ;
 int TERASIC_DE4LED_LOCK_INIT (struct terasic_de4led_softc*) ;
 int TERASIC_DE4LED_UNLOCK (struct terasic_de4led_softc*) ;
 int device_get_name (int ) ;
 int led_0 ;
 int led_1 ;
 int led_2 ;
 int led_3 ;
 int led_4 ;
 int led_5 ;
 int led_6 ;
 int led_7 ;
 void* led_create (int ,struct terasic_de4led_softc*,char*) ;
 int led_set (char*,char const*) ;
 scalar_t__ resource_string_value (int ,int ,char*,char const**) ;
 int terasic_de4led_update (struct terasic_de4led_softc*) ;

void
terasic_de4led_attach(struct terasic_de4led_softc *sc)
{
 const char *cmd;

 TERASIC_DE4LED_LOCK_INIT(sc);




 TERASIC_DE4LED_LOCK(sc);
 TERASIC_DE4LED_CLEARBAR(sc);
 terasic_de4led_update(sc);
 TERASIC_DE4LED_UNLOCK(sc);




 sc->tdl_leds[0] = led_create(led_0, sc, "de4led_0");
 sc->tdl_leds[1] = led_create(led_1, sc, "de4led_1");
 sc->tdl_leds[2] = led_create(led_2, sc, "de4led_2");
 sc->tdl_leds[3] = led_create(led_3, sc, "de4led_3");
 sc->tdl_leds[4] = led_create(led_4, sc, "de4led_4");
 sc->tdl_leds[5] = led_create(led_5, sc, "de4led_5");
 sc->tdl_leds[6] = led_create(led_6, sc, "de4led_6");
 sc->tdl_leds[7] = led_create(led_7, sc, "de4led_7");

 if (resource_string_value(device_get_name(sc->tdl_dev),
     sc->tdl_unit, "de4led_0_cmd", &cmd) == 0)
  led_set("de4led_0", cmd);
 if (resource_string_value(device_get_name(sc->tdl_dev),
     sc->tdl_unit, "de4led_1_cmd", &cmd) == 0)
  led_set("de4led_1", cmd);
 if (resource_string_value(device_get_name(sc->tdl_dev),
     sc->tdl_unit, "de4led_2_cmd", &cmd) == 0)
  led_set("de4led_2", cmd);
 if (resource_string_value(device_get_name(sc->tdl_dev),
     sc->tdl_unit, "de4led_3_cmd", &cmd) == 0)
  led_set("de4led_3", cmd);
 if (resource_string_value(device_get_name(sc->tdl_dev),
     sc->tdl_unit, "de4led_4_cmd", &cmd) == 0)
  led_set("de4led_4", cmd);
 if (resource_string_value(device_get_name(sc->tdl_dev),
     sc->tdl_unit, "de4led_5_cmd", &cmd) == 0)
  led_set("de4led_5", cmd);
 if (resource_string_value(device_get_name(sc->tdl_dev),
     sc->tdl_unit, "de4led_6_cmd", &cmd) == 0)
  led_set("de4led_6", cmd);
 if (resource_string_value(device_get_name(sc->tdl_dev),
     sc->tdl_unit, "de4led_7_cmd", &cmd) == 0)
  led_set("de4led_7", cmd);
}
