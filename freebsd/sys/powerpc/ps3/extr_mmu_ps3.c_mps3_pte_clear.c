
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
struct lpte {int pte_lo; int pte_hi; } ;
typedef int mmu_t ;
typedef int int64_t ;


 int lv1_write_htab_entry (int ,int ,int ,int ) ;
 int moea64_pte_from_pvo (struct pvo_entry*,struct lpte*) ;
 int mps3_pte_synch_locked (struct pvo_entry*) ;
 int mps3_table_lock ;
 int mps3_vas_id ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int64_t
mps3_pte_clear(mmu_t mmu, struct pvo_entry *pvo, uint64_t ptebit)
{
 int64_t refchg;
 struct lpte pte;

 mtx_lock(&mps3_table_lock);

 refchg = mps3_pte_synch_locked(pvo);
 if (refchg < 0) {
  mtx_unlock(&mps3_table_lock);
  return (refchg);
 }

 moea64_pte_from_pvo(pvo, &pte);

 pte.pte_lo |= refchg;
 pte.pte_lo &= ~ptebit;

 lv1_write_htab_entry(mps3_vas_id, pvo->pvo_pte.slot, pte.pte_hi,
     pte.pte_lo);
 mtx_unlock(&mps3_table_lock);

 return (refchg);
}
