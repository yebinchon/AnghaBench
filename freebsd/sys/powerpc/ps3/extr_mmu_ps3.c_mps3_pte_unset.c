
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
typedef int mmu_t ;
typedef int int64_t ;


 int LPTE_CHG ;
 int LPTE_REF ;
 int STAT_MOEA64 (int ) ;
 int lv1_write_htab_entry (int ,int ,int ,int ) ;
 int moea64_pte_overflow ;
 int moea64_pte_valid ;
 int mps3_pte_synch_locked (struct pvo_entry*) ;
 int mps3_table_lock ;
 int mps3_vas_id ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int64_t
mps3_pte_unset(mmu_t mmu, struct pvo_entry *pvo)
{
 int64_t refchg;

 mtx_lock(&mps3_table_lock);
 refchg = mps3_pte_synch_locked(pvo);
 if (refchg < 0) {
  STAT_MOEA64(moea64_pte_overflow--);
  mtx_unlock(&mps3_table_lock);
  return (-1);
 }

 lv1_write_htab_entry(mps3_vas_id, pvo->pvo_pte.slot, 0, 0);
 mtx_unlock(&mps3_table_lock);
 STAT_MOEA64(moea64_pte_valid--);

 return (refchg & (LPTE_REF | LPTE_CHG));
}
