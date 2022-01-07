
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_12__ {scalar_t__ dirty; int object; } ;


 int MADV_DONTNEED ;
 int MADV_FREE ;
 int MADV_WILLNEED ;
 int PGA_REFERENCED ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 scalar_t__ pmap_is_modified (TYPE_1__*) ;
 int vm_page_activate (TYPE_1__*) ;
 int vm_page_aflag_clear (TYPE_1__*,int ) ;
 int vm_page_assert_locked (TYPE_1__*) ;
 int vm_page_deactivate_noreuse (TYPE_1__*) ;
 int vm_page_dirty (TYPE_1__*) ;
 int vm_page_in_laundry (TYPE_1__*) ;
 int vm_page_launder (TYPE_1__*) ;
 int vm_page_undirty (TYPE_1__*) ;

void
vm_page_advise(vm_page_t m, int advice)
{

 vm_page_assert_locked(m);
 VM_OBJECT_ASSERT_WLOCKED(m->object);
 if (advice == MADV_FREE)






  vm_page_undirty(m);
 else if (advice != MADV_DONTNEED) {
  if (advice == MADV_WILLNEED)
   vm_page_activate(m);
  return;
 }





 vm_page_aflag_clear(m, PGA_REFERENCED);

 if (advice != MADV_FREE && m->dirty == 0 && pmap_is_modified(m))
  vm_page_dirty(m);







 if (m->dirty == 0)
  vm_page_deactivate_noreuse(m);
 else if (!vm_page_in_laundry(m))
  vm_page_launder(m);
}
