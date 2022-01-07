
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {int pvo_vpn; TYPE_1__ pvo_pte; } ;
struct lpte {int pte_hi; int pte_lo; } ;
typedef int mmu_t ;
typedef int int64_t ;


 int ADDR_API_SHFT64 ;
 int ADDR_PIDX_SHFT ;
 int H_READ ;
 int LPTE_AVPN_MASK ;
 int LPTE_CHG ;
 int LPTE_REF ;
 int LPTE_VALID ;
 int phyp_pft_hcall (int ,int ,int ,int ,int ,int*,int*,int *) ;

__attribute__((used)) static int64_t
mphyp_pte_synch(mmu_t mmu, struct pvo_entry *pvo)
{
 struct lpte pte;
 uint64_t junk;

 __asm __volatile("ptesync");
 phyp_pft_hcall(H_READ, 0, pvo->pvo_pte.slot, 0, 0, &pte.pte_hi,
     &pte.pte_lo, &junk);
 if ((pte.pte_hi & LPTE_AVPN_MASK) !=
     ((pvo->pvo_vpn >> (ADDR_API_SHFT64 - ADDR_PIDX_SHFT)) &
     LPTE_AVPN_MASK))
  return (-1);
 if (!(pte.pte_hi & LPTE_VALID))
  return (-1);

 return (pte.pte_lo & (LPTE_CHG | LPTE_REF));
}
