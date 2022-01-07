
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regnode {int dummy; } ;
struct gpioregulator_reg_sc {TYPE_2__* def; TYPE_1__* param; } ;
struct TYPE_4__ {int enable_pin_valid; int startup_delay_us; int enable_pin; } ;
struct TYPE_3__ {int enable_active_high; } ;


 int gpio_pin_set_active (int ,int) ;
 struct gpioregulator_reg_sc* regnode_get_softc (struct regnode*) ;

__attribute__((used)) static int
gpioregulator_regnode_enable(struct regnode *regnode, bool enable, int *udelay)
{
 struct gpioregulator_reg_sc *sc;
 bool active;
 int error;

 sc = regnode_get_softc(regnode);

 if (sc->def->enable_pin_valid == 1) {
  active = enable;
  if (!sc->param->enable_active_high)
   active = !active;
  error = gpio_pin_set_active(sc->def->enable_pin, active);
  if (error != 0)
   return (error);
 }

 *udelay = sc->def->startup_delay_us;

 return (0);
}
