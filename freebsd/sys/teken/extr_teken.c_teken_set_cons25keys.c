
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_stateflags; } ;
typedef TYPE_1__ teken_t ;


 int TS_CONS25KEYS ;

void
teken_set_cons25keys(teken_t *t)
{

 t->t_stateflags |= TS_CONS25KEYS;
}
