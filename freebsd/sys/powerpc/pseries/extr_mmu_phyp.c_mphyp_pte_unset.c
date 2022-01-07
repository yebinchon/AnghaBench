
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; int pvo_pmap; } ;
struct lpte {int pte_hi; int pte_lo; } ;
typedef int mmu_t ;
typedef int int64_t ;


 int H_AVPN ;
 int H_NOT_FOUND ;
 int H_REMOVE ;
 int H_SUCCESS ;
 int KASSERT (int,char*) ;
 int LPTE_AVPN_MASK ;
 int LPTE_CHG ;
 int LPTE_REF ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int STAT_MOEA64 (int ) ;
 int moea64_pte_from_pvo (struct pvo_entry*,struct lpte*) ;
 int moea64_pte_overflow ;
 int phyp_pft_hcall (int ,int ,int ,int,int ,int*,int*,int *) ;

__attribute__((used)) static int64_t
mphyp_pte_unset(mmu_t mmu, struct pvo_entry *pvo)
{
 struct lpte pte;
 uint64_t junk;
 int err;

 PMAP_LOCK_ASSERT(pvo->pvo_pmap, MA_OWNED);

 moea64_pte_from_pvo(pvo, &pte);

 err = phyp_pft_hcall(H_REMOVE, H_AVPN, pvo->pvo_pte.slot,
     pte.pte_hi & LPTE_AVPN_MASK, 0, &pte.pte_hi, &pte.pte_lo,
     &junk);
 KASSERT(err == H_SUCCESS || err == H_NOT_FOUND,
     ("Error removing page: %d", err));

 if (err == H_NOT_FOUND) {
  STAT_MOEA64(moea64_pte_overflow--);
  return (-1);
 }

 return (pte.pte_lo & (LPTE_REF | LPTE_CHG));
}
