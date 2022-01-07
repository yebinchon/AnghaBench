
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {int pvo_vpn; int pvo_pmap; TYPE_1__ pvo_pte; } ;
struct lpte {int pte_hi; int pte_lo; } ;
typedef int mmu_t ;
typedef int int64_t ;


 int LPTE_AVPN_MASK ;
 int LPTE_CHG ;
 int LPTE_REF ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int PTESYNC () ;
 int TLBIE (int ) ;
 int be64toh (int) ;
 int critical_enter () ;
 int critical_exit () ;
 int moea64_eviction_lock ;
 int moea64_pte_from_pvo (struct pvo_entry*,struct lpte*) ;
 int moea64_pte_insert_native (int ,struct pvo_entry*) ;
 int moea64_pte_unset_native (int ,struct pvo_entry*) ;
 struct lpte* moea64_pteg_table ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;

__attribute__((used)) static int64_t
moea64_pte_clear_native(mmu_t mmu, struct pvo_entry *pvo, uint64_t ptebit)
{
 volatile struct lpte *pt = moea64_pteg_table + pvo->pvo_pte.slot;
 struct lpte properpt;
 uint64_t ptelo;

 PMAP_LOCK_ASSERT(pvo->pvo_pmap, MA_OWNED);

 moea64_pte_from_pvo(pvo, &properpt);

 rw_rlock(&moea64_eviction_lock);
 if ((be64toh(pt->pte_hi) & LPTE_AVPN_MASK) !=
     (properpt.pte_hi & LPTE_AVPN_MASK)) {

  rw_runlock(&moea64_eviction_lock);
  return (-1);
 }

 if (ptebit == LPTE_REF) {

  PTESYNC();

  ptelo = be64toh(pt->pte_lo);


  ((volatile uint8_t *)(&pt->pte_lo))[6] =

      ((uint8_t *)(&properpt.pte_lo))[6];



  rw_runlock(&moea64_eviction_lock);

  critical_enter();
  TLBIE(pvo->pvo_vpn);
  critical_exit();
 } else {
  rw_runlock(&moea64_eviction_lock);
  ptelo = moea64_pte_unset_native(mmu, pvo);
  moea64_pte_insert_native(mmu, pvo);
 }

 return (ptelo & (LPTE_REF | LPTE_CHG));
}
