
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_15__ {int flags; int oflags; int aflags; scalar_t__ queue; scalar_t__ ref_count; scalar_t__ valid; int * object; } ;


 int KASSERT (int,char*) ;
 int PAGE_SIZE ;
 int PGA_EXECUTABLE ;
 int PGA_WRITEABLE ;
 int PG_FICTITIOUS ;
 int PG_PCPU_CACHE ;
 int PG_ZERO ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 scalar_t__ PMAP_HAS_DMAP ;
 scalar_t__ PQ_NONE ;
 int VM_CNT_INC (int ) ;
 scalar_t__ VM_MEMATTR_DEFAULT ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int VPO_UNMANAGED ;
 scalar_t__ VPRC_OBJREF ;
 int atomic_thread_fence_acq () ;
 int panic (char*,TYPE_1__*) ;
 scalar_t__ pmap_page_get_memattr (TYPE_1__*) ;
 int pmap_page_is_mapped (TYPE_1__*) ;
 int pmap_page_set_memattr (TYPE_1__*,scalar_t__) ;
 int v_tfree ;
 int vm_page_dequeue_deferred_free (TYPE_1__*) ;
 int vm_page_object_remove (TYPE_1__*) ;
 scalar_t__ vm_page_sbusied (TYPE_1__*) ;
 int vm_page_undirty (TYPE_1__*) ;
 scalar_t__ vm_page_xbusied (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;
 scalar_t__ vm_reserv_free_page (TYPE_1__*) ;

bool
vm_page_free_prep(vm_page_t m)
{





 atomic_thread_fence_acq();
 if ((m->oflags & VPO_UNMANAGED) == 0) {
  KASSERT(!pmap_page_is_mapped(m),
      ("vm_page_free_prep: freeing mapped page %p", m));
  KASSERT((m->aflags & (PGA_EXECUTABLE | PGA_WRITEABLE)) == 0,
      ("vm_page_free_prep: mapping flags set in page %p", m));
 } else {
  KASSERT(m->queue == PQ_NONE,
      ("vm_page_free_prep: unmanaged page %p is queued", m));
 }
 VM_CNT_INC(v_tfree);

 if (vm_page_sbusied(m))
  panic("vm_page_free_prep: freeing shared busy page %p", m);

 if (m->object != ((void*)0)) {
  vm_page_object_remove(m);





  KASSERT((m->flags & PG_FICTITIOUS) != 0 ||
      m->ref_count == VPRC_OBJREF,
      ("vm_page_free_prep: page %p has unexpected ref_count %u",
      m, m->ref_count));
  m->object = ((void*)0);
  m->ref_count -= VPRC_OBJREF;
 }

 if (vm_page_xbusied(m))
  vm_page_xunbusy(m);





 if ((m->flags & PG_FICTITIOUS) != 0) {
  KASSERT(m->ref_count == 1,
      ("fictitious page %p is referenced", m));
  KASSERT(m->queue == PQ_NONE,
      ("fictitious page %p is queued", m));
  return (0);
 }






 if ((m->oflags & VPO_UNMANAGED) == 0)
  vm_page_dequeue_deferred_free(m);

 m->valid = 0;
 vm_page_undirty(m);

 if (m->ref_count != 0)
  panic("vm_page_free_prep: page %p has references", m);




 if (pmap_page_get_memattr(m) != VM_MEMATTR_DEFAULT)
  pmap_page_set_memattr(m, VM_MEMATTR_DEFAULT);
 return (1);
}
