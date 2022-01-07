
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwn_softc {int sc_gpio; int sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 int GPIO_PIN_CONFIG_32 (int ,int ,size_t,int*) ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_TRISTATE ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,int ,int) ;
 size_t nitems (int*) ;

int
bwn_gpio_control(struct bwn_mac *mac, uint32_t pins)
{
 struct bwn_softc *sc;
 uint32_t flags[32];
 int error;

 sc = mac->mac_sc;


 for (size_t pin = 0; pin < nitems(flags); pin++) {
  uint32_t pinbit = (1 << pin);

  if (pins & pinbit) {

   flags[pin] = GPIO_PIN_OUTPUT|GPIO_PIN_TRISTATE;
  } else {

   flags[pin] = 0;
  }
 }


 error = GPIO_PIN_CONFIG_32(sc->sc_gpio, 0, nitems(flags), flags);
 if (error) {
  device_printf(sc->sc_dev, "error configuring %s pin flags: "
      "%d\n", device_get_nameunit(sc->sc_gpio), error);
  return (error);
 }

 return (0);
}
