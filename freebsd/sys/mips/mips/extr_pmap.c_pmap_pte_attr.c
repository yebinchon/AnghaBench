
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_memattr_t ;
typedef int u_int ;
typedef int pt_entry_t ;


 int PTE_C (int ) ;
 int PTE_C_MASK ;

__attribute__((used)) static __inline void
pmap_pte_attr(pt_entry_t *pte, vm_memattr_t ma)
{
 u_int npte;

 npte = *(u_int *)pte;
 npte &= ~PTE_C_MASK;
 npte |= PTE_C(ma);
 *pte = npte;
}
