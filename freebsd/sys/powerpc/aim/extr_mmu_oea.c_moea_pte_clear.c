
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct pte {int pte_lo; } ;


 int MA_OWNED ;
 int moea_table_mutex ;
 int mtx_assert (int *,int ) ;
 int tlbie (int ) ;

__attribute__((used)) static __inline void
moea_pte_clear(struct pte *pt, vm_offset_t va, int ptebit)
{

 mtx_assert(&moea_table_mutex, MA_OWNED);




 pt->pte_lo &= ~ptebit;
 tlbie(va);
}
