
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_5__ {int oflags; } ;


 int PQ_ACTIVE ;
 int VPO_UNMANAGED ;
 int vm_page_mvqueue (TYPE_1__*,int ) ;
 scalar_t__ vm_page_wired (TYPE_1__*) ;

void
vm_page_activate(vm_page_t m)
{

 if ((m->oflags & VPO_UNMANAGED) != 0 || vm_page_wired(m))
  return;
 vm_page_mvqueue(m, PQ_ACTIVE);
}
