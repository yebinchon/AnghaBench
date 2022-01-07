
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct pte {int pte_hi; } ;


 int MA_OWNED ;
 int PTE_VALID ;
 int moea_pte_synch (struct pte*,struct pte*) ;
 int moea_pte_valid ;
 int moea_table_mutex ;
 int mtx_assert (int *,int ) ;
 int powerpc_sync () ;
 int tlbie (int ) ;

__attribute__((used)) static __inline void
moea_pte_unset(struct pte *pt, struct pte *pvo_pt, vm_offset_t va)
{

 mtx_assert(&moea_table_mutex, MA_OWNED);
 pvo_pt->pte_hi &= ~PTE_VALID;




 powerpc_sync();




 pt->pte_hi &= ~PTE_VALID;

 tlbie(va);




 moea_pte_synch(pt, pvo_pt);
 moea_pte_valid--;
}
