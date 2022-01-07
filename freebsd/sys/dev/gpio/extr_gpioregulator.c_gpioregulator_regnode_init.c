
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regnode {int dummy; } ;
struct gpioregulator_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {int enable_pin_valid; int npins; int * pins; int enable_pin; } ;


 int GPIO_PIN_OUTPUT ;
 int gpio_pin_setflags (int ,int ) ;
 struct gpioregulator_reg_sc* regnode_get_softc (struct regnode*) ;

__attribute__((used)) static int
gpioregulator_regnode_init(struct regnode *regnode)
{
 struct gpioregulator_reg_sc *sc;
 int error, n;

 sc = regnode_get_softc(regnode);

 if (sc->def->enable_pin_valid == 1) {
  error = gpio_pin_setflags(sc->def->enable_pin, GPIO_PIN_OUTPUT);
  if (error != 0)
   return (error);
 }

 for (n = 0; n < sc->def->npins; n++) {
  error = gpio_pin_setflags(sc->def->pins[n], GPIO_PIN_OUTPUT);
  if (error != 0)
   return (error);
 }

 return (0);
}
