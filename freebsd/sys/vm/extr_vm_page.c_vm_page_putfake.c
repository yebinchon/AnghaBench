
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_6__ {int oflags; int flags; } ;


 int KASSERT (int,char*) ;
 int PG_FICTITIOUS ;
 int VPO_UNMANAGED ;
 int fakepg_zone ;
 int uma_zfree (int ,TYPE_1__*) ;
 scalar_t__ vm_page_xbusied (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;

void
vm_page_putfake(vm_page_t m)
{

 KASSERT((m->oflags & VPO_UNMANAGED) != 0, ("managed %p", m));
 KASSERT((m->flags & PG_FICTITIOUS) != 0,
     ("vm_page_putfake: bad page %p", m));
 if (vm_page_xbusied(m))
  vm_page_xunbusy(m);
 uma_zfree(fakepg_zone, m);
}
