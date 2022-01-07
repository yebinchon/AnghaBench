
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pte {int pte_lo; } ;


 int MA_OWNED ;
 int PTE_CHG ;
 int PTE_REF ;
 int moea_table_mutex ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static __inline void
moea_pte_synch(struct pte *pt, struct pte *pvo_pt)
{

 mtx_assert(&moea_table_mutex, MA_OWNED);
 pvo_pt->pte_lo |= pt->pte_lo & (PTE_REF | PTE_CHG);
}
