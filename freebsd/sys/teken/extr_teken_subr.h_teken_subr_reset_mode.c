
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_stateflags; } ;
typedef TYPE_1__ teken_t ;


 int TS_INSERT ;
 int teken_printf (char*,unsigned int) ;

__attribute__((used)) static void
teken_subr_reset_mode(teken_t *t, unsigned int cmd)
{

 switch (cmd) {
 case 4:
  t->t_stateflags &= ~TS_INSERT;
  break;
 default:
  teken_printf("Unknown reset mode: %u\n", cmd);
 }
}
