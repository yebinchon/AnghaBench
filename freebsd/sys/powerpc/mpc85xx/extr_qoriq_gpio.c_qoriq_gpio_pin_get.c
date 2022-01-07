
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qoriq_gpio_softc {int sc_mem; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_GPDAT ;
 int VALID_PIN (int) ;
 int bus_read_4 (int ,int ) ;
 struct qoriq_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
qoriq_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *value)
{
 struct qoriq_gpio_softc *sc = device_get_softc(dev);

 if (!VALID_PIN(pin))
  return (EINVAL);

 *value = (bus_read_4(sc->sc_mem, GPIO_GPDAT) >> (31 - pin)) & 1;

 return (0);
}
