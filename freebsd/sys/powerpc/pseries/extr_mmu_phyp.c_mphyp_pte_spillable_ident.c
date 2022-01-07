
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint64_t ;
struct lpte {int pte_hi; int pte_lo; } ;


 int H_READ ;
 int LPTE_REF ;
 int LPTE_VALID ;
 int LPTE_WIRED ;
 int memcpy (struct lpte*,struct lpte*,int) ;
 int mftb () ;
 int phyp_pft_hcall (int ,int ,uintptr_t,int ,int ,int*,int*,uintptr_t*) ;

__attribute__((used)) static uintptr_t
mphyp_pte_spillable_ident(uintptr_t ptegbase, struct lpte *to_evict)
{
 uint64_t slot, junk, k;
 struct lpte pt;
 int i, j;


 i = mftb() % 8;
 k = -1;
 for (j = 0; j < 8; j++) {
  slot = ptegbase + (i + j) % 8;
  phyp_pft_hcall(H_READ, 0, slot, 0, 0, &pt.pte_hi,
      &pt.pte_lo, &junk);

  if (pt.pte_hi & LPTE_WIRED)
   continue;


  k = slot;


  if (!(pt.pte_hi & LPTE_VALID) || !(pt.pte_lo & LPTE_REF)) {
   memcpy(to_evict, &pt, sizeof(struct lpte));
   return (k);
  }
 }

 if (k == -1)
  return (k);

 phyp_pft_hcall(H_READ, 0, k, 0, 0, &to_evict->pte_hi,
     &to_evict->pte_lo, &junk);
 return (k);
}
