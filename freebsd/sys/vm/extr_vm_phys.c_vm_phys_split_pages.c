
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct vm_freelist {int dummy; } ;
struct TYPE_4__ {scalar_t__ order; } ;


 int KASSERT (int,char*) ;
 scalar_t__ VM_NFREEORDER ;
 int vm_freelist_add (struct vm_freelist*,TYPE_1__*,int,int) ;

__attribute__((used)) static __inline void
vm_phys_split_pages(vm_page_t m, int oind, struct vm_freelist *fl, int order,
    int tail)
{
 vm_page_t m_buddy;

 while (oind > order) {
  oind--;
  m_buddy = &m[1 << oind];
  KASSERT(m_buddy->order == VM_NFREEORDER,
      ("vm_phys_split_pages: page %p has unexpected order %d",
      m_buddy, m_buddy->order));
  vm_freelist_add(fl, m_buddy, oind, tail);
        }
}
