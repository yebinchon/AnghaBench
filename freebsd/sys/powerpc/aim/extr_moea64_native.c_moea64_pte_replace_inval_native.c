
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pvo_entry {int pvo_vpn; } ;
struct lpte {int pte_hi; int pte_lo; } ;
typedef int mmu_t ;
typedef int int64_t ;


 int EIEIO () ;
 int LPTE_AVPN_MASK ;
 int LPTE_CHG ;
 int LPTE_LOCKED ;
 int LPTE_REF ;
 int LPTE_VALID ;
 int PTESYNC () ;
 int STAT_MOEA64 (int ) ;
 int TLBIE (int ) ;
 int be64toh (int) ;
 int critical_enter () ;
 int critical_exit () ;
 void* htobe64 (int) ;
 int isync () ;
 int moea64_eviction_lock ;
 int moea64_pte_from_pvo (struct pvo_entry*,struct lpte*) ;
 int moea64_pte_overflow ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;

__attribute__((used)) static int64_t
moea64_pte_replace_inval_native(mmu_t mmu, struct pvo_entry *pvo,
    volatile struct lpte *pt)
{
 struct lpte properpt;
 uint64_t ptelo;

 moea64_pte_from_pvo(pvo, &properpt);

 rw_rlock(&moea64_eviction_lock);
 if ((be64toh(pt->pte_hi & LPTE_AVPN_MASK)) !=
     (properpt.pte_hi & LPTE_AVPN_MASK)) {

  STAT_MOEA64(moea64_pte_overflow--);
  rw_runlock(&moea64_eviction_lock);
  return (-1);
 }





 isync();
 critical_enter();
 pt->pte_hi = be64toh((pt->pte_hi & ~LPTE_VALID) | LPTE_LOCKED);
 PTESYNC();
 TLBIE(pvo->pvo_vpn);
 ptelo = be64toh(pt->pte_lo);
 EIEIO();
 pt->pte_lo = htobe64(properpt.pte_lo);
 EIEIO();
 pt->pte_hi = htobe64(properpt.pte_hi);
 PTESYNC();
 critical_exit();
 rw_runlock(&moea64_eviction_lock);

 return (ptelo & (LPTE_CHG | LPTE_REF));
}
