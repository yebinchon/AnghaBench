
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct nct_softc {TYPE_1__* pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_flags; } ;


 int EINVAL ;
 int GPIO_LOCK (struct nct_softc*) ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_UNLOCK (struct nct_softc*) ;
 int NCT_IS_VALID_PIN (size_t) ;
 struct nct_softc* device_get_softc (int ) ;
 int nct_write_pin (struct nct_softc*,size_t,size_t) ;

__attribute__((used)) static int
nct_gpio_pin_set(device_t dev, uint32_t pin_num, uint32_t pin_value)
{
 struct nct_softc *sc;

 if (!NCT_IS_VALID_PIN(pin_num))
  return (EINVAL);

 sc = device_get_softc(dev);
 GPIO_LOCK(sc);
 if ((sc->pins[pin_num].gp_flags & GPIO_PIN_OUTPUT) == 0) {
  GPIO_UNLOCK(sc);
  return (EINVAL);
 }
 nct_write_pin(sc, pin_num, pin_value);
 GPIO_UNLOCK(sc);

 return (0);
}
