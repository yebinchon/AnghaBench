
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioleds_softc {int sc_dev; } ;
struct gpioled {int leddev; int pin; struct gpioleds_softc* parent_sc; } ;
typedef int phandle_t ;


 int GPIO_PIN_OUTPUT ;
 int OF_getprop_alloc (int ,char*,void**) ;
 int OF_prop_free (char*) ;
 int device_printf (int ,char*,...) ;
 int gpio_pin_get_by_ofw_idx (int ,int ,int ,int *) ;
 int gpio_pin_setflags (int ,int ) ;
 int gpioled_control ;
 int led_create_state (int ,struct gpioled*,char*,int) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static void
gpioleds_attach_led(struct gpioleds_softc *sc, phandle_t node,
    struct gpioled *led)
{
 char *name;
 int state, err;
 char *default_state;

 led->parent_sc = sc;

 state = 0;
 if (OF_getprop_alloc(node, "default-state",
     (void **)&default_state) != -1) {
  if (strcasecmp(default_state, "on") == 0)
   state = 1;
  else if (strcasecmp(default_state, "off") == 0)
   state = 0;
  else if (strcasecmp(default_state, "keep") == 0)
   state = -1;
  else {
   state = -1;
   device_printf(sc->sc_dev,
       "unknown value for default-state in FDT\n");
  }
  OF_prop_free(default_state);
 }

 name = ((void*)0);
 if (OF_getprop_alloc(node, "label", (void **)&name) == -1)
  OF_getprop_alloc(node, "name", (void **)&name);

 if (name == ((void*)0)) {
  device_printf(sc->sc_dev,
      "no name provided for gpio LED, skipping\n");
  return;
 }

 err = gpio_pin_get_by_ofw_idx(sc->sc_dev, node, 0, &led->pin);
 if (err) {
  device_printf(sc->sc_dev, "<%s> failed to map pin\n", name);
  if (name)
   OF_prop_free(name);
  return;
 }
 gpio_pin_setflags(led->pin, GPIO_PIN_OUTPUT);

 led->leddev = led_create_state(gpioled_control, led, name,
     state);

 if (name != ((void*)0))
  OF_prop_free(name);
}
