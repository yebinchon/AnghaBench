
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chvgpio_softc {int dummy; } ;
typedef int device_t ;


 int CHVGPIO_LOCK (struct chvgpio_softc*) ;
 int CHVGPIO_PAD_CFG0_GPIOTXSTATE ;
 int CHVGPIO_UNLOCK (struct chvgpio_softc*) ;
 int EINVAL ;
 int chvgpio_read_pad_cfg0 (struct chvgpio_softc*,int) ;
 scalar_t__ chvgpio_valid_pin (struct chvgpio_softc*,int) ;
 int chvgpio_write_pad_cfg0 (struct chvgpio_softc*,int,int) ;
 struct chvgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chvgpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct chvgpio_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);
 if (chvgpio_valid_pin(sc, pin) != 0)
  return (EINVAL);

 CHVGPIO_LOCK(sc);


 val = chvgpio_read_pad_cfg0(sc, pin);
 val = val ^ CHVGPIO_PAD_CFG0_GPIOTXSTATE;
 chvgpio_write_pad_cfg0(sc, pin, val);

 CHVGPIO_UNLOCK(sc);

 return (0);
}
