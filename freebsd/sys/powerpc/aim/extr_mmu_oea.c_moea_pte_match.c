
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int ;
struct pte {int pte_hi; } ;


 int ADDR_API_SHFT ;
 int PTE_API ;
 int PTE_VALID ;
 int PTE_VSID_SHFT ;
 int SR_VSID_MASK ;

__attribute__((used)) static __inline int
moea_pte_match(struct pte *pt, u_int sr, vm_offset_t va, int which)
{
 return (pt->pte_hi & ~PTE_VALID) ==
     (((sr & SR_VSID_MASK) << PTE_VSID_SHFT) |
     ((va >> ADDR_API_SHFT) & PTE_API) | which);
}
