
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_4__ {int flags; } ;


 int PG_ZERO ;
 int vm_page_free_toq (TYPE_1__*) ;

void
vm_page_free(vm_page_t m)
{

 m->flags &= ~PG_ZERO;
 vm_page_free_toq(m);
}
