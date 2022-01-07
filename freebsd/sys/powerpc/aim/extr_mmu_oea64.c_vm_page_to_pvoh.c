
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct pvo_head {int dummy; } ;
struct TYPE_5__ {struct pvo_head mdpg_pvoh; } ;
struct TYPE_6__ {TYPE_1__ md; } ;


 int MA_OWNED ;
 int PV_LOCKPTR (int ) ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int mtx_assert (int ,int ) ;

__attribute__((used)) static struct pvo_head *
vm_page_to_pvoh(vm_page_t m)
{

 mtx_assert(PV_LOCKPTR(VM_PAGE_TO_PHYS(m)), MA_OWNED);
 return (&m->md.mdpg_pvoh);
}
