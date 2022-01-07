
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_memattr_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef scalar_t__ pd_entry_t ;


 int EINVAL ;
 int NBPDR ;
 int NBSEG ;
 scalar_t__ PAGE_SIZE ;
 int PDRMASK ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_V ;
 int SEGMASK ;
 int kernel_pmap ;
 int mips_dcache_wbinv_range (int,int ) ;
 int pmap_invalidate_range (int ,int,int) ;
 int * pmap_pde_to_pte (scalar_t__*,int) ;
 scalar_t__* pmap_pdpe_to_pde (scalar_t__*,int) ;
 int pmap_pte_attr (int *,int ) ;
 scalar_t__* pmap_segmap (int ,int) ;
 int pte_cache_bits (int *) ;
 int pte_test (int *,int ) ;

int
pmap_change_attr(vm_offset_t sva, vm_size_t size, vm_memattr_t ma)
{
 pd_entry_t *pde, *pdpe;
 pt_entry_t *pte;
 vm_offset_t ova, eva, va, va_next;
 pmap_t pmap;

 ova = sva;
 eva = sva + size;
 if (eva < sva)
  return (EINVAL);

 pmap = kernel_pmap;
 PMAP_LOCK(pmap);

 for (; sva < eva; sva = va_next) {
  pdpe = pmap_segmap(pmap, sva);
  va_next = (sva + NBPDR) & ~PDRMASK;
  if (va_next < sva)
   va_next = eva;

  pde = pmap_pdpe_to_pde(pdpe, sva);
  if (*pde == ((void*)0))
   continue;






  if (va_next > eva)
   va_next = eva;

  va = va_next;
  for (pte = pmap_pde_to_pte(pde, sva); sva != va_next; pte++,
      sva += PAGE_SIZE) {
   if (!pte_test(pte, PTE_V) || pte_cache_bits(pte) == ma) {
    if (va != va_next) {
     pmap_invalidate_range(pmap, va, sva);
     va = va_next;
    }
    continue;
   }
   if (va == va_next)
    va = sva;

   pmap_pte_attr(pte, ma);
  }
  if (va != va_next)
   pmap_invalidate_range(pmap, va, sva);
 }
 PMAP_UNLOCK(pmap);


 mips_dcache_wbinv_range(ova, size);
 return 0;
}
