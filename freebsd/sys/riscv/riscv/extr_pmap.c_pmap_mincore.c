
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int L2_OFFSET ;
 int L3_OFFSET ;
 int MINCORE_INCORE ;
 int MINCORE_MODIFIED ;
 int MINCORE_MODIFIED_OTHER ;
 int MINCORE_REFERENCED ;
 int MINCORE_REFERENCED_OTHER ;
 int MINCORE_SUPER ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_A ;
 int PTE_D ;
 int PTE_RWX ;
 int PTE_SW_MANAGED ;
 int PTE_TO_PHYS (int) ;
 int PTE_V ;
 int* pmap_l2 (int ,int) ;
 int* pmap_l2_to_l3 (int*,int) ;
 int pmap_load (int*) ;

int
pmap_mincore(pmap_t pmap, vm_offset_t addr, vm_paddr_t *pap)
{
 pt_entry_t *l2, *l3, tpte;
 vm_paddr_t pa;
 int val;
 bool managed;

 PMAP_LOCK(pmap);
 l2 = pmap_l2(pmap, addr);
 if (l2 != ((void*)0) && ((tpte = pmap_load(l2)) & PTE_V) != 0) {
  if ((tpte & PTE_RWX) != 0) {
   pa = PTE_TO_PHYS(tpte) | (addr & L2_OFFSET);
   val = MINCORE_INCORE | MINCORE_SUPER;
  } else {
   l3 = pmap_l2_to_l3(l2, addr);
   tpte = pmap_load(l3);
   if ((tpte & PTE_V) == 0) {
    PMAP_UNLOCK(pmap);
    return (0);
   }
   pa = PTE_TO_PHYS(tpte) | (addr & L3_OFFSET);
   val = MINCORE_INCORE;
  }

  if ((tpte & PTE_D) != 0)
   val |= MINCORE_MODIFIED | MINCORE_MODIFIED_OTHER;
  if ((tpte & PTE_A) != 0)
   val |= MINCORE_REFERENCED | MINCORE_REFERENCED_OTHER;
  managed = (tpte & PTE_SW_MANAGED) == PTE_SW_MANAGED;
 } else {
  managed = 0;
  val = 0;
 }
 if ((val & (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER)) !=
     (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER) && managed) {
  *pap = pa;
 }
 PMAP_UNLOCK(pmap);
 return (val);
}
