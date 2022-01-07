
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qoriq_gpio_softc {int sc_mem; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_GPDAT ;
 int GPIO_LOCK (struct qoriq_gpio_softc*) ;
 int GPIO_UNLOCK (struct qoriq_gpio_softc*) ;
 int VALID_PIN (int) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct qoriq_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
qoriq_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct qoriq_gpio_softc *sc = device_get_softc(dev);
 uint32_t val;

 if (!VALID_PIN(pin))
  return (EINVAL);

 GPIO_LOCK(sc);

 val = bus_read_4(sc->sc_mem, GPIO_GPDAT);
 val ^= (1 << (31 - pin));
 bus_write_4(sc->sc_mem, GPIO_GPDAT, val);

 GPIO_UNLOCK(sc);

 return (0);
}
