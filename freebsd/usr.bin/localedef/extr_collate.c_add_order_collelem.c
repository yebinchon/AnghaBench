
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ref; } ;
typedef TYPE_1__ collelem_t ;


 int add_order_pri (int ) ;
 size_t curr_weight ;

void
add_order_collelem(collelem_t *e)
{
 add_order_pri(e->ref[curr_weight]);
}
