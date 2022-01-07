
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct regnode_fixed_sc {TYPE_1__* param; TYPE_2__* gpio_entry; } ;
struct regnode {int dummy; } ;
struct gpiobus_pin {int pin; int dev; } ;
struct TYPE_4__ {struct gpiobus_pin gpio_pin; } ;
struct TYPE_3__ {int enable_active_high; } ;


 int GPIO_PIN_GET (int ,int ,scalar_t__*) ;
 int REGULATOR_STATUS_ENABLED ;
 struct regnode_fixed_sc* regnode_get_softc (struct regnode*) ;

__attribute__((used)) static int
regnode_fixed_status(struct regnode *regnode, int *status)
{
 struct regnode_fixed_sc *sc;
 struct gpiobus_pin *pin;
 uint32_t val;
 int rv;

 sc = regnode_get_softc(regnode);

 *status = 0;
 if (sc->gpio_entry == ((void*)0)) {
  *status = REGULATOR_STATUS_ENABLED;
  return (0);
 }
 pin = &sc->gpio_entry->gpio_pin;

 rv = GPIO_PIN_GET(pin->dev, pin->pin, &val);
 if (rv == 0) {
  if (!sc->param->enable_active_high ^ (val != 0))
   *status = REGULATOR_STATUS_ENABLED;
 }
 return (rv);
}
