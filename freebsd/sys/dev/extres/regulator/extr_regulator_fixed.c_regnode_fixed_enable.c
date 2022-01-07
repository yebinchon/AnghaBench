
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regnode_fixed_sc {TYPE_2__* param; TYPE_1__* gpio_entry; } ;
struct regnode {int dummy; } ;
struct gpiobus_pin {int pin; int dev; } ;
typedef int device_t ;
struct TYPE_4__ {int enable_delay; int enable_active_high; } ;
struct TYPE_3__ {int enable_cnt; scalar_t__ always_on; struct gpiobus_pin gpio_pin; } ;


 int GPIO_PIN_SET (int ,int ,int) ;
 int KASSERT (int,char*) ;
 int device_printf (int ,char*,int ) ;
 int regnode_get_device (struct regnode*) ;
 struct regnode_fixed_sc* regnode_get_softc (struct regnode*) ;

__attribute__((used)) static int
regnode_fixed_enable(struct regnode *regnode, bool enable, int *udelay)
{
 device_t dev;
 struct regnode_fixed_sc *sc;
 struct gpiobus_pin *pin;
 int rv;

 sc = regnode_get_softc(regnode);
 dev = regnode_get_device(regnode);

 *udelay = 0;
 if (sc->gpio_entry == ((void*)0))
  return (0);
 pin = &sc->gpio_entry->gpio_pin;
 if (enable) {
  sc->gpio_entry->enable_cnt++;
  if (sc->gpio_entry->enable_cnt > 1)
   return (0);
 } else {
  KASSERT(sc->gpio_entry->enable_cnt > 0,
      ("Invalid enable count"));
  sc->gpio_entry->enable_cnt--;
  if (sc->gpio_entry->enable_cnt >= 1)
   return (0);
 }
 if (sc->gpio_entry->always_on && !enable)
  return (0);
 if (!sc->param->enable_active_high)
  enable = !enable;
 rv = GPIO_PIN_SET(pin->dev, pin->pin, enable);
 if (rv != 0) {
  device_printf(dev, "Cannot set GPIO pin: %d\n", pin->pin);
  return (rv);
 }
 *udelay = sc->param->enable_delay;
 return (0);
}
