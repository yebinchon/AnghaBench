
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int PCPU_SET (int ,scalar_t__) ;
 int cmap1_addr ;
 int cmap1_ptep ;
 int cmap2_addr ;
 int cmap2_ptep ;
 scalar_t__ crashdumpva ;
 int kernel_pmap ;
 scalar_t__ pmap_pte (int ,scalar_t__) ;
 int qmap_addr ;
 int qmap_ptep ;
 scalar_t__ virtual_avail ;

__attribute__((used)) static __inline void
pmap_alloc_lmem_map(void)
{
 PCPU_SET(cmap1_addr, virtual_avail);
 PCPU_SET(cmap2_addr, virtual_avail + PAGE_SIZE);
 PCPU_SET(cmap1_ptep, pmap_pte(kernel_pmap, virtual_avail));
 PCPU_SET(cmap2_ptep, pmap_pte(kernel_pmap, virtual_avail + PAGE_SIZE));
 PCPU_SET(qmap_addr, virtual_avail + (2 * PAGE_SIZE));
 PCPU_SET(qmap_ptep, pmap_pte(kernel_pmap, virtual_avail + (2 * PAGE_SIZE)));
 crashdumpva = virtual_avail + (3 * PAGE_SIZE);
 virtual_avail += PAGE_SIZE * 4;
}
