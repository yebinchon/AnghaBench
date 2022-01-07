
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regnode {int dummy; } ;
struct gpioregulator_state {int val; int mask; } ;
struct gpioregulator_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {int nstates; int npins; int startup_delay_us; int * pins; struct gpioregulator_state* states; } ;


 int EINVAL ;
 int gpio_pin_set_active (int ,int) ;
 struct gpioregulator_reg_sc* regnode_get_softc (struct regnode*) ;

__attribute__((used)) static int
gpioregulator_regnode_set_voltage(struct regnode *regnode, int min_uvolt,
    int max_uvolt, int *udelay)
{
 struct gpioregulator_reg_sc *sc;
 const struct gpioregulator_state *state;
 int error, n;

 sc = regnode_get_softc(regnode);
 state = ((void*)0);

 for (n = 0; n < sc->def->nstates; n++) {
  if (sc->def->states[n].val >= min_uvolt &&
      sc->def->states[n].val <= max_uvolt) {
   state = &sc->def->states[n];
   break;
  }
 }
 if (state == ((void*)0))
  return (EINVAL);

 for (n = 0; n < sc->def->npins; n++) {
  error = gpio_pin_set_active(sc->def->pins[n],
      (state->mask >> n) & 1);
  if (error != 0)
   return (error);
 }

 *udelay = sc->def->startup_delay_us;

 return (0);
}
