
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ collsym_t ;


 int add_subst_pri (int ) ;

void
add_subst_collsym(collsym_t *s)
{
 add_subst_pri(s->ref);
}
