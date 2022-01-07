
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct rm_priotracker {int dummy; } ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; int pvo_pmap; } ;
typedef int mmu_t ;
typedef int int64_t ;


 int H_CLEAR_MOD ;
 int H_CLEAR_REF ;
 int H_SUCCESS ;
 int KASSERT (int,char*) ;
 int LPTE_CHG ;
 int LPTE_REF ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 scalar_t__ brokenkvm ;
 int mphyp_eviction_lock ;
 int mphyp_pte_synch (int ,struct pvo_entry*) ;
 int phyp_pft_hcall (int ,int ,int ,int ,int ,int*,int*,int*) ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;

__attribute__((used)) static int64_t
mphyp_pte_clear(mmu_t mmu, struct pvo_entry *pvo, uint64_t ptebit)
{
 struct rm_priotracker track;
 int64_t refchg;
 uint64_t ptelo, junk;
 int err;
 PMAP_LOCK_ASSERT(pvo->pvo_pmap, MA_OWNED);
 rm_rlock(&mphyp_eviction_lock, &track);

 refchg = mphyp_pte_synch(mmu, pvo);
 if (refchg < 0) {
  rm_runlock(&mphyp_eviction_lock, &track);
  return (refchg);
 }

 if (brokenkvm) {





  rm_runlock(&mphyp_eviction_lock, &track);
  return (refchg & ~LPTE_REF);
 }

 if (ptebit & LPTE_CHG) {
  err = phyp_pft_hcall(H_CLEAR_MOD, 0, pvo->pvo_pte.slot, 0, 0,
      &ptelo, &junk, &junk);
  KASSERT(err == H_SUCCESS,
      ("Error clearing page change bit: %d", err));
  refchg |= (ptelo & LPTE_CHG);
 }
 if (ptebit & LPTE_REF) {
  err = phyp_pft_hcall(H_CLEAR_REF, 0, pvo->pvo_pte.slot, 0, 0,
      &ptelo, &junk, &junk);
  KASSERT(err == H_SUCCESS,
      ("Error clearing page reference bit: %d", err));
  refchg |= (ptelo & LPTE_REF);
 }

 rm_runlock(&mphyp_eviction_lock, &track);

 return (refchg);
}
