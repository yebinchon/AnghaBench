
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pte {int pte_hi; int pte_lo; } ;


 int MA_OWNED ;
 int PTE_VALID ;
 int moea_pte_valid ;
 int moea_table_mutex ;
 int mtx_assert (int *,int ) ;
 int powerpc_sync () ;

__attribute__((used)) static __inline void
moea_pte_set(struct pte *pt, struct pte *pvo_pt)
{

 mtx_assert(&moea_table_mutex, MA_OWNED);
 pvo_pt->pte_hi |= PTE_VALID;






 pt->pte_lo = pvo_pt->pte_lo;
 powerpc_sync();
 pt->pte_hi = pvo_pt->pte_hi;
 powerpc_sync();
 moea_pte_valid++;
}
