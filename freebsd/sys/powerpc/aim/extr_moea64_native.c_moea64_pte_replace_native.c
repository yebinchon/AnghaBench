
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
struct lpte {int pte_hi; int pte_lo; } ;
typedef int mmu_t ;
typedef int int64_t ;


 int LPTE_AVPN_MASK ;
 int be64toh (int) ;
 int htobe64 (int) ;
 int moea64_eviction_lock ;
 int moea64_pte_from_pvo (struct pvo_entry*,struct lpte*) ;
 int moea64_pte_replace_inval_native (int ,struct pvo_entry*,struct lpte volatile*) ;
 struct lpte* moea64_pteg_table ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;

__attribute__((used)) static int64_t
moea64_pte_replace_native(mmu_t mmu, struct pvo_entry *pvo, int flags)
{
 volatile struct lpte *pt = moea64_pteg_table + pvo->pvo_pte.slot;
 struct lpte properpt;
 int64_t ptelo;

 if (flags == 0) {

  moea64_pte_from_pvo(pvo, &properpt);

  rw_rlock(&moea64_eviction_lock);
  if ((be64toh(pt->pte_hi) & LPTE_AVPN_MASK) !=
      (properpt.pte_hi & LPTE_AVPN_MASK)) {
   rw_runlock(&moea64_eviction_lock);
   return (-1);
  }
  pt->pte_hi = htobe64(properpt.pte_hi);
  ptelo = be64toh(pt->pte_lo);
  rw_runlock(&moea64_eviction_lock);
 } else {

  ptelo = moea64_pte_replace_inval_native(mmu, pvo, pt);
 }

 return (ptelo);
}
