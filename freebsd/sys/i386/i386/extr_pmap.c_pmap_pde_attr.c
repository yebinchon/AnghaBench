
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int pd_entry_t ;


 int PG_PDE_CACHE ;
 int atomic_cmpset_int (int*,int,int) ;

__attribute__((used)) static __inline void
pmap_pde_attr(pd_entry_t *pde, int cache_bits)
{
 u_int opde, npde;





 do {
  opde = *(u_int *)pde;
  npde = opde & ~PG_PDE_CACHE;
  npde |= cache_bits;
 } while (npde != opde && !atomic_cmpset_int((u_int *)pde, opde, npde));
}
