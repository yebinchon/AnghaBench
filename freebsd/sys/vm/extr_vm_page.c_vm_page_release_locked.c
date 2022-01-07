
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_12__ {int oflags; scalar_t__ dirty; TYPE_10__* object; } ;
struct TYPE_11__ {scalar_t__ ref_count; } ;


 int KASSERT (int,char*) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_10__*) ;
 int VPO_UNMANAGED ;
 int VPR_TRYFREE ;
 int pmap_page_is_mapped (TYPE_1__*) ;
 int vm_page_busied (TYPE_1__*) ;
 int vm_page_free (TYPE_1__*) ;
 int vm_page_lock (TYPE_1__*) ;
 int vm_page_release_toq (TYPE_1__*,int) ;
 int vm_page_unlock (TYPE_1__*) ;
 scalar_t__ vm_page_unwire_noq (TYPE_1__*) ;

void
vm_page_release_locked(vm_page_t m, int flags)
{

 VM_OBJECT_ASSERT_WLOCKED(m->object);
 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("vm_page_release_locked: page %p is unmanaged", m));

 if (vm_page_unwire_noq(m)) {
  if ((flags & VPR_TRYFREE) != 0 &&
      (m->object->ref_count == 0 || !pmap_page_is_mapped(m)) &&
      m->dirty == 0 && !vm_page_busied(m)) {
   vm_page_free(m);
  } else {
   vm_page_lock(m);
   vm_page_release_toq(m, flags);
   vm_page_unlock(m);
  }
 }
}
