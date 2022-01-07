
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qoriq_gpio_softc {int sc_mem; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_GPDIR ;
 int GPIO_GPODR ;
 int GPIO_LOCK (struct qoriq_gpio_softc*) ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OPENDRAIN ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_UNLOCK (struct qoriq_gpio_softc*) ;
 int VALID_PIN (int) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct qoriq_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
qoriq_gpio_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
{
 struct qoriq_gpio_softc *sc = device_get_softc(dev);
 uint32_t reg;

 if (!VALID_PIN(pin))
  return (EINVAL);

 if ((flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) ==
     (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT))
  return (EINVAL);

 GPIO_LOCK(sc);
 if (flags & GPIO_PIN_INPUT) {
  reg = bus_read_4(sc->sc_mem, GPIO_GPDIR);
  reg &= ~(1 << (31 - pin));
  bus_write_4(sc->sc_mem, GPIO_GPDIR, reg);
 }
 else if (flags & GPIO_PIN_OUTPUT) {
  reg = bus_read_4(sc->sc_mem, GPIO_GPDIR);
  reg |= (1 << (31 - pin));
  bus_write_4(sc->sc_mem, GPIO_GPDIR, reg);
  reg = bus_read_4(sc->sc_mem, GPIO_GPODR);
  if (flags & GPIO_PIN_OPENDRAIN)
   reg |= (1 << (31 - pin));
  else
   reg &= ~(1 << (31 - pin));
  bus_write_4(sc->sc_mem, GPIO_GPODR, reg);
 }
 GPIO_UNLOCK(sc);
 return (0);
}
