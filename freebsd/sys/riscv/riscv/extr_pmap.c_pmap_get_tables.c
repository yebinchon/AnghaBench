
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int PTE_RX ;
 int PTE_V ;
 int * pmap_l1 (int ,int ) ;
 int * pmap_l1_to_l2 (int *,int ) ;
 int * pmap_l2_to_l3 (int *,int ) ;
 int pmap_load (int *) ;

bool
pmap_get_tables(pmap_t pmap, vm_offset_t va, pd_entry_t **l1, pd_entry_t **l2,
    pt_entry_t **l3)
{
 pd_entry_t *l1p, *l2p;


 l1p = pmap_l1(pmap, va);
 *l1 = l1p;

 if (l1p == ((void*)0) || (pmap_load(l1p) & PTE_V) == 0)
  return (0);

 if ((pmap_load(l1p) & PTE_RX) != 0) {
  *l2 = ((void*)0);
  *l3 = ((void*)0);
  return (1);
 }


 l2p = pmap_l1_to_l2(l1p, va);
 *l2 = l2p;

 if (l2p == ((void*)0) || (pmap_load(l2p) & PTE_V) == 0)
  return (0);

 if ((pmap_load(l2p) & PTE_RX) != 0) {
  *l3 = ((void*)0);
  return (1);
 }


 *l3 = pmap_l2_to_l3(l2p, va);

 return (1);
}
