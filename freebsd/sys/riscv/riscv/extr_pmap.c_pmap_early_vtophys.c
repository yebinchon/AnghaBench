
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef size_t u_int ;
typedef int pt_entry_t ;


 int KASSERT (int,char*) ;
 int L2_OFFSET ;
 int L2_SHIFT ;
 int PTE_PPN1_S ;
 int PTE_RX ;
 int* pmap_early_page_idx (int,int,size_t*,size_t*) ;

__attribute__((used)) static vm_paddr_t
pmap_early_vtophys(vm_offset_t l1pt, vm_offset_t va)
{
 u_int l1_slot, l2_slot;
 pt_entry_t *l2;
 vm_paddr_t ret;

 l2 = pmap_early_page_idx(l1pt, va, &l1_slot, &l2_slot);


 KASSERT((l2[l2_slot] & PTE_RX) != 0,
  ("Invalid bootstrap L2 table"));


 ret = (l2[l2_slot] >> PTE_PPN1_S) << L2_SHIFT;
 ret += (va & L2_OFFSET);

 return (ret);
}
