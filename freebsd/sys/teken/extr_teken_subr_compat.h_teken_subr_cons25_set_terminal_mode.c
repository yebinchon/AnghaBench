
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_stateflags; } ;
typedef TYPE_1__ teken_t ;


 int TS_CONS25 ;

__attribute__((used)) static void
teken_subr_cons25_set_terminal_mode(teken_t *t, unsigned int mode)
{

 switch (mode) {
 case 0:
  t->t_stateflags &= ~TS_CONS25;
  break;
 case 1:
  t->t_stateflags |= TS_CONS25;
  break;
 default:
  break;
 }
}
