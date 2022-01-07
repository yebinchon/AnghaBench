
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int L2_OFFSET ;
 int L2_SHIFT ;
 int L3_OFFSET ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_PPN1_S ;
 int PTE_RX ;
 int PTE_TO_PHYS (int) ;
 int* pmap_l2 (int ,int) ;
 int* pmap_l2_to_l3 (int*,int) ;
 int pmap_load (int*) ;

vm_paddr_t
pmap_extract(pmap_t pmap, vm_offset_t va)
{
 pd_entry_t *l2p, l2;
 pt_entry_t *l3p, l3;
 vm_paddr_t pa;

 pa = 0;
 PMAP_LOCK(pmap);




 l2p = pmap_l2(pmap, va);
 if (l2p != ((void*)0)) {
  l2 = pmap_load(l2p);
  if ((l2 & PTE_RX) == 0) {
   l3p = pmap_l2_to_l3(l2p, va);
   if (l3p != ((void*)0)) {
    l3 = pmap_load(l3p);
    pa = PTE_TO_PHYS(l3);
    pa |= (va & L3_OFFSET);
   }
  } else {

   pa = (l2 >> PTE_PPN1_S) << L2_SHIFT;
   pa |= (va & L2_OFFSET);
  }
 }
 PMAP_UNLOCK(pmap);
 return (pa);
}
