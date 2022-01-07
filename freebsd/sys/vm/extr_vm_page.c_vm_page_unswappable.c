
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_7__ {int oflags; } ;


 int KASSERT (int,char*) ;
 int PQ_UNSWAPPABLE ;
 int VPO_UNMANAGED ;
 int vm_page_assert_locked (TYPE_1__*) ;
 int vm_page_dequeue (TYPE_1__*) ;
 int vm_page_enqueue (TYPE_1__*,int ) ;
 int vm_page_wired (TYPE_1__*) ;

void
vm_page_unswappable(vm_page_t m)
{

 vm_page_assert_locked(m);
 KASSERT(!vm_page_wired(m) && (m->oflags & VPO_UNMANAGED) == 0,
     ("page %p already unswappable", m));

 vm_page_dequeue(m);
 vm_page_enqueue(m, PQ_UNSWAPPABLE);
}
