
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_stateflags; scalar_t__ t_curnum; int * t_nextstate; } ;
typedef TYPE_1__ teken_t ;
typedef int teken_state_t ;


 int TS_FIRSTDIGIT ;

__attribute__((used)) static void
teken_state_switch(teken_t *t, teken_state_t *s)
{

 t->t_nextstate = s;
 t->t_curnum = 0;
 t->t_stateflags |= TS_FIRSTDIGIT;
}
