
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; int pvo_vaddr; } ;
struct lpte {int pte_hi; } ;
typedef int mmu_t ;


 int LPTE_HID ;
 int LPTE_LOCKED ;
 int LPTE_VALID ;
 int LPTE_WIRED ;
 int PVO_HID ;
 int moea64_eviction_lock ;
 uintptr_t moea64_insert_to_pteg_native (struct lpte*,unsigned long long,int) ;
 int moea64_pte_from_pvo (struct pvo_entry*,struct lpte*) ;
 int moea64_pteg_mask ;
 int panic (char*) ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;
 int rw_try_upgrade (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

__attribute__((used)) static int
moea64_pte_insert_native(mmu_t mmu, struct pvo_entry *pvo)
{
 struct lpte insertpt;
 uintptr_t slot;


 moea64_pte_from_pvo(pvo, &insertpt);


 rw_rlock(&moea64_eviction_lock);




 pvo->pvo_pte.slot &= ~7ULL;
 slot = moea64_insert_to_pteg_native(&insertpt, pvo->pvo_pte.slot,
     LPTE_VALID | LPTE_WIRED | LPTE_LOCKED);
 if (slot != -1) {
  rw_runlock(&moea64_eviction_lock);
  pvo->pvo_pte.slot = slot;
  return (0);
 }




 pvo->pvo_vaddr ^= PVO_HID;
 insertpt.pte_hi ^= LPTE_HID;
 pvo->pvo_pte.slot ^= (moea64_pteg_mask << 3);
 slot = moea64_insert_to_pteg_native(&insertpt, pvo->pvo_pte.slot,
     LPTE_VALID | LPTE_WIRED | LPTE_LOCKED);
 if (slot != -1) {
  rw_runlock(&moea64_eviction_lock);
  pvo->pvo_pte.slot = slot;
  return (0);
 }






 if (!rw_try_upgrade(&moea64_eviction_lock)) {
  rw_runlock(&moea64_eviction_lock);
  rw_wlock(&moea64_eviction_lock);
 }

 slot = moea64_insert_to_pteg_native(&insertpt, pvo->pvo_pte.slot,
     LPTE_WIRED | LPTE_LOCKED);
 if (slot != -1) {
  rw_wunlock(&moea64_eviction_lock);
  pvo->pvo_pte.slot = slot;
  return (0);
 }


 pvo->pvo_vaddr ^= PVO_HID;
 insertpt.pte_hi ^= LPTE_HID;
 pvo->pvo_pte.slot ^= (moea64_pteg_mask << 3);
 slot = moea64_insert_to_pteg_native(&insertpt, pvo->pvo_pte.slot,
     LPTE_WIRED | LPTE_LOCKED);
 if (slot != -1) {
  rw_wunlock(&moea64_eviction_lock);
  pvo->pvo_pte.slot = slot;
  return (0);
 }


 rw_wunlock(&moea64_eviction_lock);
 panic("moea64_pte_insert: overflow");
 return (-1);
}
