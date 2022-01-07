
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_gpio_update {int dummy; } ;
struct chipc_gpio_softc {int dev; } ;
typedef int chipc_gpio_pin_mode ;





 int CC_GPIO_UPDATE (struct chipc_gpio_update*,int,int ,int) ;
 int CC_GPIO_VALID_PIN (int) ;
 int EINVAL ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_PRESET_HIGH ;
 int GPIO_PIN_PRESET_LOW ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;
 int GPIO_PIN_PULSATE ;
 int chipc_gpio_check_flags (struct chipc_gpio_softc*,int,int,int*) ;
 int ctrl ;
 int device_printf (int ,char*,int) ;
 int out ;
 int outen ;
 int pulldown ;
 int pullup ;
 int timeroutmask ;

__attribute__((used)) static int
chipc_gpio_pin_update(struct chipc_gpio_softc *sc,
    struct chipc_gpio_update *update, uint32_t pin_num, uint32_t flags)
{
 chipc_gpio_pin_mode mode;
 int error;

 if (!CC_GPIO_VALID_PIN(pin_num))
  return (EINVAL);


 if ((error = chipc_gpio_check_flags(sc, pin_num, flags, &mode)))
  return (error);


 switch (mode) {
 case 130:
  CC_GPIO_UPDATE(update, pin_num, pullup, 0);
  CC_GPIO_UPDATE(update, pin_num, pulldown, 0);
  CC_GPIO_UPDATE(update, pin_num, out, 0);
  CC_GPIO_UPDATE(update, pin_num, outen, 0);
  CC_GPIO_UPDATE(update, pin_num, timeroutmask, 0);
  CC_GPIO_UPDATE(update, pin_num, ctrl, 0);

  if (flags & GPIO_PIN_PULLUP) {
   CC_GPIO_UPDATE(update, pin_num, pullup, 1);
  } else if (flags & GPIO_PIN_PULLDOWN) {
   CC_GPIO_UPDATE(update, pin_num, pulldown, 1);
  }

  return (0);

 case 129:
  CC_GPIO_UPDATE(update, pin_num, pullup, 0);
  CC_GPIO_UPDATE(update, pin_num, pulldown, 0);
  CC_GPIO_UPDATE(update, pin_num, outen, 1);
  CC_GPIO_UPDATE(update, pin_num, timeroutmask, 0);
  CC_GPIO_UPDATE(update, pin_num, ctrl, 0);

  if (flags & GPIO_PIN_PRESET_HIGH) {
   CC_GPIO_UPDATE(update, pin_num, out, 1);
  } else if (flags & GPIO_PIN_PRESET_LOW) {
   CC_GPIO_UPDATE(update, pin_num, out, 0);
  }

  if (flags & GPIO_PIN_PULSATE)
   CC_GPIO_UPDATE(update, pin_num, timeroutmask, 1);

  return (0);

 case 128:
  CC_GPIO_UPDATE(update, pin_num, pullup, 0);
  CC_GPIO_UPDATE(update, pin_num, pulldown, 0);
  CC_GPIO_UPDATE(update, pin_num, out, 0);
  CC_GPIO_UPDATE(update, pin_num, outen, 0);
  CC_GPIO_UPDATE(update, pin_num, timeroutmask, 0);
  CC_GPIO_UPDATE(update, pin_num, ctrl, 1);

  if (flags & GPIO_PIN_OUTPUT)
   CC_GPIO_UPDATE(update, pin_num, outen, 1);

  return (0);
 }

 device_printf(sc->dev, "unknown pin mode %d\n", mode);
 return (EINVAL);
}
