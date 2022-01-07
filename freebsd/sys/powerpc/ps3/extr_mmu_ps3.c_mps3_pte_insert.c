
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long uint64_t ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; } ;
struct lpte {int pte_hi; int pte_lo; } ;
typedef int mmu_t ;


 int KASSERT (int,char*) ;
 int LPTE_LOCKED ;
 int LPTE_WIRED ;
 int PTESYNC () ;
 int PVO_HID ;
 int STAT_MOEA64 (int ) ;
 int lv1_insert_htab_entry (int ,unsigned long,int,int ,int,int ,unsigned long*,int*,int *) ;
 int moea64_pte_from_pvo (struct pvo_entry*,struct lpte*) ;
 int moea64_pte_overflow ;
 int moea64_pte_valid ;
 int moea64_pteg_mask ;
 int mps3_table_lock ;
 int mps3_vas_id ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,int) ;

__attribute__((used)) static int
mps3_pte_insert(mmu_t mmu, struct pvo_entry *pvo)
{
 int result;
 struct lpte pte, evicted;
 uint64_t index;

 if (pvo->pvo_vaddr & PVO_HID) {

  pvo->pvo_vaddr &= ~PVO_HID;
  pvo->pvo_pte.slot ^= (moea64_pteg_mask << 3);
 }

 pvo->pvo_pte.slot &= ~7UL;
 moea64_pte_from_pvo(pvo, &pte);
 evicted.pte_hi = 0;
 PTESYNC();
 mtx_lock(&mps3_table_lock);
 result = lv1_insert_htab_entry(mps3_vas_id, pvo->pvo_pte.slot,
     pte.pte_hi, pte.pte_lo, LPTE_LOCKED | LPTE_WIRED, 0,
     &index, &evicted.pte_hi, &evicted.pte_lo);
 mtx_unlock(&mps3_table_lock);

 if (result != 0) {

  panic("mps3_pte_insert: overflow (%d)", result);
  return (-1);
 }




 if ((index & ~7UL) != pvo->pvo_pte.slot)
  pvo->pvo_vaddr |= PVO_HID;
 pvo->pvo_pte.slot = index;

 STAT_MOEA64(moea64_pte_valid++);

 if (evicted.pte_hi) {
  KASSERT((evicted.pte_hi & (LPTE_WIRED | LPTE_LOCKED)) == 0,
      ("Evicted a wired PTE"));
  STAT_MOEA64(moea64_pte_valid--);
  STAT_MOEA64(moea64_pte_overflow++);
 }

 return (0);
}
