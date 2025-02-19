
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct amdgpio_softc {TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_flags; } ;


 int AMDGPIO_LOCK (struct amdgpio_softc*) ;
 size_t AMDGPIO_PIN_REGISTER (size_t) ;
 int AMDGPIO_UNLOCK (struct amdgpio_softc*) ;
 size_t BIT (int ) ;
 int EINVAL ;
 unsigned int GPIO_PIN_HIGH ;
 unsigned int GPIO_PIN_LOW ;
 int GPIO_PIN_OUTPUT ;
 int OUTPUT_VALUE_OFF ;
 int PIN_STS_OFF ;
 size_t amdgpio_read_4 (struct amdgpio_softc*,size_t) ;
 int amdgpio_valid_pin (struct amdgpio_softc*,size_t) ;
 struct amdgpio_softc* device_get_softc (int ) ;
 int dprintf (char*,size_t,...) ;

__attribute__((used)) static int
amdgpio_pin_get(device_t dev, uint32_t pin, unsigned int *value)
{
 struct amdgpio_softc *sc;
 uint32_t reg, val;

 sc = device_get_softc(dev);

 dprintf("pin %d\n", pin);
 if (!amdgpio_valid_pin(sc, pin))
  return (EINVAL);

 *value = 0;

 AMDGPIO_LOCK(sc);

 reg = AMDGPIO_PIN_REGISTER(pin);
 val = amdgpio_read_4(sc, reg);

 if ((sc->sc_gpio_pins[pin].gp_flags & GPIO_PIN_OUTPUT) != 0) {
  if (val & BIT(OUTPUT_VALUE_OFF))
   *value = GPIO_PIN_HIGH;
  else
   *value = GPIO_PIN_LOW;
 } else {
  if (val & BIT(PIN_STS_OFF))
   *value = GPIO_PIN_HIGH;
  else
   *value = GPIO_PIN_LOW;
 }

 dprintf("pin %d value 0x%x\n", pin, *value);

 AMDGPIO_UNLOCK(sc);

 return (0);
}
