
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
 int * pmap_l2 (int ,int ) ;
 int * pmap_l2_to_l3 (int *,int ) ;
 int pmap_load (int *) ;

__attribute__((used)) static __inline pt_entry_t *
pmap_l3(pmap_t pmap, vm_offset_t va)
{
 pd_entry_t *l2;

 l2 = pmap_l2(pmap, va);
 if (l2 == ((void*)0))
  return (((void*)0));
 if ((pmap_load(l2) & PTE_V) == 0)
  return (((void*)0));
 if ((pmap_load(l2) & PTE_RX) != 0)
  return (((void*)0));

 return (pmap_l2_to_l3(l2, va));
}
