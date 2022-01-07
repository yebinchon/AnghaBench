
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period; int mode; } ;


 int MODE_STOP ;
 TYPE_1__* attimer_sc ;
 int set_i8254_freq (int ,int ) ;
 int timer0_last ;
 int timer0_mode ;
 int timer0_period ;

__attribute__((used)) static void
i8254_restore(void)
{

 timer0_period = -2;
 timer0_mode = 0xffff;
 timer0_last = 0xffff;
 if (attimer_sc != ((void*)0))
  set_i8254_freq(attimer_sc->mode, attimer_sc->period);
 else
  set_i8254_freq(MODE_STOP, 0);
}
