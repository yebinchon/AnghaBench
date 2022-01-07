
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvo_entry {int dummy; } ;
typedef int mmu_t ;
typedef int int64_t ;


 int mps3_pte_synch_locked (struct pvo_entry*) ;
 int mps3_table_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int64_t
mps3_pte_synch(mmu_t mmu, struct pvo_entry *pvo)
{
 int64_t retval;

 mtx_lock(&mps3_table_lock);
 retval = mps3_pte_synch_locked(pvo);
 mtx_unlock(&mps3_table_lock);

 return (retval);
}
