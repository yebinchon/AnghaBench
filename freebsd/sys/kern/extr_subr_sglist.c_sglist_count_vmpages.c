
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_paddr_t ;


 size_t PAGE_SIZE ;
 scalar_t__ VM_PAGE_TO_PHYS (int ) ;

int
sglist_count_vmpages(vm_page_t *m, size_t pgoff, size_t len)
{
 vm_paddr_t lastaddr, paddr;
 int i, nsegs;

 if (len == 0)
  return (0);

 len += pgoff;
 nsegs = 1;
 lastaddr = VM_PAGE_TO_PHYS(m[0]);
 for (i = 1; len > PAGE_SIZE; len -= PAGE_SIZE, i++) {
  paddr = VM_PAGE_TO_PHYS(m[i]);
  if (lastaddr + PAGE_SIZE != paddr)
   nsegs++;
  lastaddr = paddr;
 }
 return (nsegs);
}
