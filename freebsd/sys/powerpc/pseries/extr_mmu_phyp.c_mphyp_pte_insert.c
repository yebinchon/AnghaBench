
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long uint64_t ;
struct rm_priotracker {int dummy; } ;
struct TYPE_2__ {unsigned long slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; int pvo_vaddr; int pvo_pmap; } ;
struct lpte {int pte_hi; long pte_lo; } ;
typedef int mmu_t ;
typedef scalar_t__ int64_t ;


 int H_AVPN ;
 int H_ENTER ;
 int H_EXACT ;
 scalar_t__ H_NOT_FOUND ;
 scalar_t__ H_PTEG_FULL ;
 int H_REMOVE ;
 scalar_t__ H_SUCCESS ;
 int KASSERT (int,char*) ;
 int LPTE_AVPN_MASK ;
 int LPTE_HID ;
 int LPTE_VALID ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int PVO_HID ;
 int STAT_MOEA64 (int ) ;
 int moea64_pte_from_pvo (struct pvo_entry*,struct lpte*) ;
 int moea64_pte_overflow ;
 int moea64_pteg_count ;
 int moea64_pteg_mask ;
 int mphyp_eviction_lock ;
 long mphyp_pte_spillable_ident (long,struct lpte*) ;
 int panic (char*,...) ;
 scalar_t__ phyp_pft_hcall (int ,int ,long,int,long,long*,long*,long*) ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;
 int rm_wlock (int *) ;
 int rm_wunlock (int *) ;

__attribute__((used)) static int
mphyp_pte_insert(mmu_t mmu, struct pvo_entry *pvo)
{
 struct rm_priotracker track;
 int64_t result;
 struct lpte evicted, pte;
 uint64_t index, junk, lastptelo;

 PMAP_LOCK_ASSERT(pvo->pvo_pmap, MA_OWNED);


 moea64_pte_from_pvo(pvo, &pte);
 evicted.pte_hi = 0;


 rm_rlock(&mphyp_eviction_lock, &track);




 pvo->pvo_pte.slot &= ~7UL;
 result = phyp_pft_hcall(H_ENTER, 0, pvo->pvo_pte.slot, pte.pte_hi,
     pte.pte_lo, &index, &evicted.pte_lo, &junk);
 if (result == H_SUCCESS) {
  rm_runlock(&mphyp_eviction_lock, &track);
  pvo->pvo_pte.slot = index;
  return (0);
 }
 KASSERT(result == H_PTEG_FULL, ("Page insertion error: %ld "
     "(ptegidx: %#zx/%#lx, PTE %#lx/%#lx", result, pvo->pvo_pte.slot,
     moea64_pteg_count, pte.pte_hi, pte.pte_lo));




 pvo->pvo_vaddr ^= PVO_HID;
 pte.pte_hi ^= LPTE_HID;
 pvo->pvo_pte.slot ^= (moea64_pteg_mask << 3);

 result = phyp_pft_hcall(H_ENTER, 0, pvo->pvo_pte.slot,
     pte.pte_hi, pte.pte_lo, &index, &evicted.pte_lo, &junk);
 if (result == H_SUCCESS) {
  rm_runlock(&mphyp_eviction_lock, &track);
  pvo->pvo_pte.slot = index;
  return (0);
 }
 KASSERT(result == H_PTEG_FULL, ("Secondary page insertion error: %ld",
     result));






 rm_runlock(&mphyp_eviction_lock, &track);
 rm_wlock(&mphyp_eviction_lock);

 index = mphyp_pte_spillable_ident(pvo->pvo_pte.slot, &evicted);
 if (index == -1L) {

  pvo->pvo_vaddr ^= PVO_HID;
  pte.pte_hi ^= LPTE_HID;
  pvo->pvo_pte.slot ^= (moea64_pteg_mask << 3);
  index = mphyp_pte_spillable_ident(pvo->pvo_pte.slot, &evicted);
 }

 if (index == -1L) {

  rm_wunlock(&mphyp_eviction_lock);
  panic("mphyp_pte_insert: overflow");
  return (-1);
 }


 if (evicted.pte_hi & LPTE_VALID) {
  result = phyp_pft_hcall(H_REMOVE, H_AVPN, index,
      evicted.pte_hi & LPTE_AVPN_MASK, 0, &junk, &lastptelo,
      &junk);
  STAT_MOEA64(moea64_pte_overflow++);
  KASSERT(result == H_SUCCESS || result == H_NOT_FOUND,
      ("Error evicting page: %d", (int)result));
 }




 result = phyp_pft_hcall(H_ENTER, H_EXACT, index, pte.pte_hi,
     pte.pte_lo, &index, &evicted.pte_lo, &junk);
 rm_wunlock(&mphyp_eviction_lock);

 pvo->pvo_pte.slot = index;
 if (result == H_SUCCESS)
  return (0);

 panic("Page replacement error: %ld", result);
 return (result);
}
