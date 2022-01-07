
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct lpte {void* pte_hi; void* pte_lo; } ;


 uintptr_t ADDR_API_SHFT64 ;
 uintptr_t ADDR_PIDX ;
 uintptr_t ADDR_PIDX_SHFT ;
 int ADDR_SR_SHFT ;
 int EIEIO () ;
 int KASSERT (int,char*) ;
 int LPTE_AVPN_MASK ;
 int LPTE_HID ;
 int LPTE_VALID ;
 int LPTE_WIRED ;
 int PTESYNC () ;
 int STAT_MOEA64 (int ) ;
 int TLBIE (int) ;
 scalar_t__ atomic_pte_lock (struct lpte volatile*,int,int*) ;
 void* htobe64 (void*) ;
 int mftb () ;
 int moea64_pte_overflow ;
 int moea64_pte_valid ;
 uintptr_t moea64_pteg_mask ;
 struct lpte* moea64_pteg_table ;

__attribute__((used)) static uintptr_t
moea64_insert_to_pteg_native(struct lpte *pvo_pt, uintptr_t slotbase,
    uint64_t mask)
{
 volatile struct lpte *pt;
 uint64_t oldptehi, va;
 uintptr_t k;
 int i, j;


 i = mftb() % 8;
 for (j = 0; j < 8; j++) {
  k = slotbase + (i + j) % 8;
  pt = &moea64_pteg_table[k];

  if (atomic_pte_lock(pt, mask, &oldptehi))
   break;
 }

 if (j == 8)
  return (-1);

 if (oldptehi & LPTE_VALID) {
  KASSERT(!(oldptehi & LPTE_WIRED), ("Unmapped wired entry"));





  va = oldptehi >> (ADDR_SR_SHFT - ADDR_API_SHFT64);
  if (oldptehi & LPTE_HID)
   va = (((k >> 3) ^ moea64_pteg_mask) ^ va) &
       (ADDR_PIDX >> ADDR_PIDX_SHFT);
  else
   va = ((k >> 3) ^ va) & (ADDR_PIDX >> ADDR_PIDX_SHFT);
  va |= (oldptehi & LPTE_AVPN_MASK) <<
      (ADDR_API_SHFT64 - ADDR_PIDX_SHFT);
  PTESYNC();
  TLBIE(va);
  STAT_MOEA64(moea64_pte_valid--);
  STAT_MOEA64(moea64_pte_overflow++);
 }





 pt->pte_lo = htobe64(pvo_pt->pte_lo);
 EIEIO();
 pt->pte_hi = htobe64(pvo_pt->pte_hi);
 PTESYNC();


 STAT_MOEA64(moea64_pte_valid++);

 return (k);
}
