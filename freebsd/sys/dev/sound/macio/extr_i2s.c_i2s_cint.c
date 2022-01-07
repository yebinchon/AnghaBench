
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct i2s_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ level; } ;


 size_t HEADPHONE_DETECT ;
 size_t LINEOUT_DETECT ;
 TYPE_1__** gpio_ctrls ;
 int i2s_set_outputs (struct i2s_softc*,int) ;

__attribute__((used)) static void
i2s_cint(struct i2s_softc *sc)
{
 u_int mask = 0;

 if (gpio_ctrls[HEADPHONE_DETECT] &&
     gpio_ctrls[HEADPHONE_DETECT]->level)
  mask |= 1 << 1;

 if (gpio_ctrls[LINEOUT_DETECT] &&
     gpio_ctrls[LINEOUT_DETECT]->level)
  mask |= 1 << 2;

 if (mask == 0)
  mask = 1 << 0;

 i2s_set_outputs(sc, mask);
}
