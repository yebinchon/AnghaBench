
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_defattr; int t_saved_curattr; int t_curattr; } ;
typedef TYPE_1__ teken_t ;
typedef int teken_attr_t ;



void
teken_set_defattr(teken_t *t, const teken_attr_t *a)
{

 t->t_curattr = t->t_saved_curattr = t->t_defattr = *a;
}
