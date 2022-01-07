
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int pt_entry_t ;


 int PG_PTE_CACHE ;
 int atomic_cmpset_int (int*,int,int) ;

__attribute__((used)) static __inline void
pmap_pte_attr(pt_entry_t *pte, int cache_bits)
{
 u_int opte, npte;





 do {
  opte = *(u_int *)pte;
  npte = opte & ~PG_PTE_CACHE;
  npte |= cache_bits;
 } while (npte != opte && !atomic_cmpset_int((u_int *)pte, opte, npte));
}
