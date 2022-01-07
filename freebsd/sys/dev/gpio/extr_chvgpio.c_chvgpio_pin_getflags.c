
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chvgpio_softc {int dummy; } ;
typedef int device_t ;


 int CHVGPIO_LOCK (struct chvgpio_softc*) ;
 int CHVGPIO_PAD_CFG0_GPIOCFG_GPI ;
 int CHVGPIO_PAD_CFG0_GPIOCFG_GPIO ;
 int CHVGPIO_PAD_CFG0_GPIOCFG_GPO ;
 int CHVGPIO_UNLOCK (struct chvgpio_softc*) ;
 int EINVAL ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int chvgpio_read_pad_cfg0 (struct chvgpio_softc*,int) ;
 int chvgpio_read_pad_cfg1 (struct chvgpio_softc*,int) ;
 scalar_t__ chvgpio_valid_pin (struct chvgpio_softc*,int) ;
 struct chvgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chvgpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct chvgpio_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);
 if (chvgpio_valid_pin(sc, pin) != 0)
  return (EINVAL);

 *flags = 0;


 CHVGPIO_LOCK(sc);
 val = chvgpio_read_pad_cfg0(sc, pin);

 if (val & CHVGPIO_PAD_CFG0_GPIOCFG_GPIO ||
  val & CHVGPIO_PAD_CFG0_GPIOCFG_GPO)
  *flags |= GPIO_PIN_OUTPUT;

 if (val & CHVGPIO_PAD_CFG0_GPIOCFG_GPIO ||
  val & CHVGPIO_PAD_CFG0_GPIOCFG_GPI)
  *flags |= GPIO_PIN_INPUT;

 val = chvgpio_read_pad_cfg1(sc, pin);

 CHVGPIO_UNLOCK(sc);
 return (0);
}
