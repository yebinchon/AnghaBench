
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int ta_bgcolor; } ;
struct TYPE_5__ {unsigned int ta_bgcolor; } ;
struct TYPE_7__ {TYPE_2__ t_curattr; TYPE_1__ t_defattr; } ;
typedef TYPE_3__ teken_t ;


 unsigned int* cons25_colors ;

__attribute__((used)) static void
teken_subr_cons25_set_default_background(teken_t *t, unsigned int c)
{

 t->t_defattr.ta_bgcolor = cons25_colors[c % 8] | (c & 8);
 t->t_curattr.ta_bgcolor = cons25_colors[c % 8] | (c & 8);
}
