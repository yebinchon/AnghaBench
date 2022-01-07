
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uint8_t ;


 int MPASS (int) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PHYS_TO_VM_PAGE (int ) ;
 int kva_free (scalar_t__,int) ;
 int mp_maxid ;
 int pmap_kextract (scalar_t__) ;
 int pmap_qremove (scalar_t__,int) ;
 int vm_page_free (int ) ;
 int vm_page_unwire_noq (int ) ;

__attribute__((used)) static void
pcpu_page_free(void *mem, vm_size_t size, uint8_t flags)
{
 vm_offset_t sva, curva;
 vm_paddr_t paddr;
 vm_page_t m;

 MPASS(size == (mp_maxid+1)*PAGE_SIZE);
 sva = (vm_offset_t)mem;
 for (curva = sva; curva < sva + size; curva += PAGE_SIZE) {
  paddr = pmap_kextract(curva);
  m = PHYS_TO_VM_PAGE(paddr);
  vm_page_unwire_noq(m);
  vm_page_free(m);
 }
 pmap_qremove(sva, size >> PAGE_SHIFT);
 kva_free(sva, size);
}
