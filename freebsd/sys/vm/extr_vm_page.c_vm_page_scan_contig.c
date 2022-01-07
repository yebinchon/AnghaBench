
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef TYPE_2__* vm_object_t ;
typedef int u_long ;
struct mtx {int dummy; } ;
struct TYPE_18__ {scalar_t__ type; scalar_t__ memattr; } ;
struct TYPE_17__ {int flags; int ref_count; int oflags; int order; TYPE_2__* object; } ;


 int KASSERT (int,char*) ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 scalar_t__ OBJT_VNODE ;
 int PG_FICTITIOUS ;
 int PG_MARKER ;
 scalar_t__ PQ_NONE ;
 scalar_t__ VM_MEMATTR_DEFAULT ;
 int VM_NFREEORDER ;
 int VM_OBJECT_RLOCK (TYPE_2__*) ;
 int VM_OBJECT_RUNLOCK (TYPE_2__*) ;
 int VM_OBJECT_TRYRLOCK (TYPE_2__*) ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int VPO_SWAPINPROG ;
 int VPO_SWAPSLEEP ;
 int VPO_UNMANAGED ;
 int VPSC_NORESERV ;
 int VPSC_NOSUPER ;
 int atop (scalar_t__) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 scalar_t__ pmap_page_get_memattr (TYPE_1__*) ;
 int powerof2 (int) ;
 int ptoa (int) ;
 scalar_t__ rounddown2 (int,int) ;
 scalar_t__ roundup2 (int,int) ;
 int vm_page_busied (TYPE_1__*) ;
 int vm_page_change_lock (TYPE_1__*,struct mtx**) ;
 scalar_t__ vm_page_queue (TYPE_1__*) ;
 scalar_t__ vm_page_wired (TYPE_1__*) ;
 int vm_reserv_level (TYPE_1__*) ;
 int vm_reserv_level_iffullpop (TYPE_1__*) ;
 int vm_reserv_size (int) ;

vm_page_t
vm_page_scan_contig(u_long npages, vm_page_t m_start, vm_page_t m_end,
    u_long alignment, vm_paddr_t boundary, int options)
{
 struct mtx *m_mtx;
 vm_object_t object;
 vm_paddr_t pa;
 vm_page_t m, m_run;



 int m_inc, order, run_ext, run_len;

 KASSERT(npages > 0, ("npages is 0"));
 KASSERT(powerof2(alignment), ("alignment is not a power of 2"));
 KASSERT(powerof2(boundary), ("boundary is not a power of 2"));
 m_run = ((void*)0);
 run_len = 0;
 m_mtx = ((void*)0);
 for (m = m_start; m < m_end && run_len < npages; m += m_inc) {
  KASSERT((m->flags & PG_MARKER) == 0,
      ("page %p is PG_MARKER", m));
  KASSERT((m->flags & PG_FICTITIOUS) == 0 || m->ref_count >= 1,
      ("fictitious page %p has invalid ref count", m));
  if (run_len == 0) {
   KASSERT(m_run == ((void*)0), ("m_run != NULL"));
   if (m + npages > m_end)
    break;
   pa = VM_PAGE_TO_PHYS(m);
   if ((pa & (alignment - 1)) != 0) {
    m_inc = atop(roundup2(pa, alignment) - pa);
    continue;
   }
   if (rounddown2(pa ^ (pa + ptoa(npages) - 1),
       boundary) != 0) {
    m_inc = atop(roundup2(pa, boundary) - pa);
    continue;
   }
  } else
   KASSERT(m_run != ((void*)0), ("m_run == NULL"));

  vm_page_change_lock(m, &m_mtx);
  m_inc = 1;
retry:
  if (vm_page_wired(m))
   run_ext = 0;
  else if ((object = m->object) != ((void*)0)) {





   if (!VM_OBJECT_TRYRLOCK(object)) {
    mtx_unlock(m_mtx);
    VM_OBJECT_RLOCK(object);
    mtx_lock(m_mtx);
    if (m->object != object) {



     VM_OBJECT_RUNLOCK(object);
     goto retry;
    }
   }

   if (object->type != OBJT_DEFAULT &&
       object->type != OBJT_SWAP &&
       object->type != OBJT_VNODE) {
    run_ext = 0;
   } else if (object->memattr == VM_MEMATTR_DEFAULT &&
       vm_page_queue(m) != PQ_NONE && !vm_page_busied(m) &&
       !vm_page_wired(m)) {





    KASSERT(pmap_page_get_memattr(m) ==
        VM_MEMATTR_DEFAULT,
        ("page %p has an unexpected memattr", m));
    KASSERT((m->oflags & (VPO_SWAPINPROG |
        VPO_SWAPSLEEP | VPO_UNMANAGED)) == 0,
        ("page %p has unexpected oflags", m));

    run_ext = 1;
   } else
    run_ext = 0;
   VM_OBJECT_RUNLOCK(object);
  } else if ((order = m->order) < VM_NFREEORDER) {







   run_ext = 1 << order;
   m_inc = 1 << order;
  } else {
   run_ext = 0;
  }




  if (run_ext > 0) {
   if (run_len == 0)
    m_run = m;
   run_len += run_ext;
  } else {
   if (run_len > 0) {
    m_run = ((void*)0);
    run_len = 0;
   }
  }
 }
 if (m_mtx != ((void*)0))
  mtx_unlock(m_mtx);
 if (run_len >= npages)
  return (m_run);
 return (((void*)0));
}
