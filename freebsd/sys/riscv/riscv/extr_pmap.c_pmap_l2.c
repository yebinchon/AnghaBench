
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int PTE_RX ;
 int PTE_V ;
 int * pmap_l1 (int ,int ) ;
 int * pmap_l1_to_l2 (int *,int ) ;
 int pmap_load (int *) ;

__attribute__((used)) static __inline pd_entry_t *
pmap_l2(pmap_t pmap, vm_offset_t va)
{
 pd_entry_t *l1;

 l1 = pmap_l1(pmap, va);
 if ((pmap_load(l1) & PTE_V) == 0)
  return (((void*)0));
 if ((pmap_load(l1) & PTE_RX) != 0)
  return (((void*)0));

 return (pmap_l1_to_l2(l1, va));
}
