
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ collsym_t ;


 int RESOLVED ;
 int T_COLLSYM ;
 int nextpri ;
 int set_pri (int ,int ,int ) ;
 int start_order (int ) ;

void
end_order_collsym(collsym_t *sym)
{
 start_order(T_COLLSYM);


 set_pri(sym->ref, nextpri, RESOLVED);
 nextpri++;
}
