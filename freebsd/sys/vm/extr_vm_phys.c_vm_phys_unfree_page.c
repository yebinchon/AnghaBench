
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
struct vm_phys_seg {int start; TYPE_1__* first_page; struct vm_freelist*** free_queues; int domain; } ;
struct vm_freelist {int dummy; } ;
typedef int boolean_t ;
struct TYPE_5__ {size_t segind; int order; int phys_addr; size_t pool; } ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int PAGE_SHIFT ;
 int TRUE ;
 int VM_DOMAIN (int ) ;
 int VM_NFREEORDER ;
 size_t atop (int) ;
 int vm_domain_free_assert_locked (int ) ;
 int vm_freelist_add (struct vm_freelist*,TYPE_1__*,int,int ) ;
 int vm_freelist_rem (struct vm_freelist*,TYPE_1__*,int) ;
 struct vm_phys_seg* vm_phys_segs ;

boolean_t
vm_phys_unfree_page(vm_page_t m)
{
 struct vm_freelist *fl;
 struct vm_phys_seg *seg;
 vm_paddr_t pa, pa_half;
 vm_page_t m_set, m_tmp;
 int order;






 seg = &vm_phys_segs[m->segind];
 vm_domain_free_assert_locked(VM_DOMAIN(seg->domain));
 for (m_set = m, order = 0; m_set->order == VM_NFREEORDER &&
     order < VM_NFREEORDER - 1; ) {
  order++;
  pa = m->phys_addr & (~(vm_paddr_t)0 << (PAGE_SHIFT + order));
  if (pa >= seg->start)
   m_set = &seg->first_page[atop(pa - seg->start)];
  else
   return (FALSE);
 }
 if (m_set->order < order)
  return (FALSE);
 if (m_set->order == VM_NFREEORDER)
  return (FALSE);
 KASSERT(m_set->order < VM_NFREEORDER,
     ("vm_phys_unfree_page: page %p has unexpected order %d",
     m_set, m_set->order));







 fl = (*seg->free_queues)[m_set->pool];
 order = m_set->order;
 vm_freelist_rem(fl, m_set, order);
 while (order > 0) {
  order--;
  pa_half = m_set->phys_addr ^ (1 << (PAGE_SHIFT + order));
  if (m->phys_addr < pa_half)
   m_tmp = &seg->first_page[atop(pa_half - seg->start)];
  else {
   m_tmp = m_set;
   m_set = &seg->first_page[atop(pa_half - seg->start)];
  }
  vm_freelist_add(fl, m_tmp, order, 0);
 }
 KASSERT(m_set == m, ("vm_phys_unfree_page: fatal inconsistency"));
 return (TRUE);
}
