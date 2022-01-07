
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct regnode {int dummy; } ;
struct gpioregulator_reg_sc {TYPE_2__* def; } ;
struct TYPE_4__ {int npins; int nstates; TYPE_1__* states; int * pins; } ;
struct TYPE_3__ {int mask; int val; } ;


 int EIO ;
 int gpio_pin_is_active (int ,int*) ;
 struct gpioregulator_reg_sc* regnode_get_softc (struct regnode*) ;

__attribute__((used)) static int
gpioregulator_regnode_get_voltage(struct regnode *regnode, int *uvolt)
{
 struct gpioregulator_reg_sc *sc;
 uint32_t mask;
 int error, n;
 bool active;

 sc = regnode_get_softc(regnode);
 mask = 0;

 for (n = 0; n < sc->def->npins; n++) {
  error = gpio_pin_is_active(sc->def->pins[n], &active);
  if (error != 0)
   return (error);
  mask |= (active << n);
 }

 for (n = 0; n < sc->def->nstates; n++) {
  if (sc->def->states[n].mask == mask) {
   *uvolt = sc->def->states[n].val;
   return (0);
  }
 }

 return (EIO);
}
