
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bytgpio_softc {int dummy; } ;
typedef int device_t ;


 int BYGPIO_PIN_REGISTER (struct bytgpio_softc*,int,int ) ;
 int BYTGPIO_LOCK (struct bytgpio_softc*) ;
 int BYTGPIO_PAD_VAL ;
 int BYTGPIO_PAD_VAL_LEVEL ;
 int BYTGPIO_UNLOCK (struct bytgpio_softc*) ;
 int EINVAL ;
 unsigned int GPIO_PIN_LOW ;
 int bytgpio_pad_is_gpio (struct bytgpio_softc*,int) ;
 int bytgpio_read_4 (struct bytgpio_softc*,int) ;
 scalar_t__ bytgpio_valid_pin (struct bytgpio_softc*,int) ;
 int bytgpio_write_4 (struct bytgpio_softc*,int,int) ;
 struct bytgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bytgpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct bytgpio_softc *sc;
 uint32_t reg, val;

 sc = device_get_softc(dev);
 if (bytgpio_valid_pin(sc, pin) != 0)
  return (EINVAL);

 if (!bytgpio_pad_is_gpio(sc, pin))
  return (EINVAL);

 BYTGPIO_LOCK(sc);
 reg = BYGPIO_PIN_REGISTER(sc, pin, BYTGPIO_PAD_VAL);
 val = bytgpio_read_4(sc, reg);
 if (value == GPIO_PIN_LOW)
  val = val & ~BYTGPIO_PAD_VAL_LEVEL;
 else
  val = val | BYTGPIO_PAD_VAL_LEVEL;
 bytgpio_write_4(sc, reg, val);
 BYTGPIO_UNLOCK(sc);

 return (0);
}
