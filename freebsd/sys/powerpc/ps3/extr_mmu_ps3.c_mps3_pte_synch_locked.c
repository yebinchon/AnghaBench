
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {int pvo_vpn; TYPE_1__ pvo_pte; } ;
typedef int int64_t ;


 int ADDR_API_SHFT64 ;
 int ADDR_PIDX_SHFT ;
 int LPTE_AVPN_MASK ;
 int LPTE_CHG ;
 int LPTE_REF ;
 int LPTE_VALID ;
 int PTESYNC () ;
 int lv1_read_htab_entries (int ,int,int*,int*,int*,int*,int*) ;
 int mps3_vas_id ;

__attribute__((used)) static int64_t
mps3_pte_synch_locked(struct pvo_entry *pvo)
{
 uint64_t halfbucket[4], rcbits;

 PTESYNC();
 lv1_read_htab_entries(mps3_vas_id, pvo->pvo_pte.slot & ~0x3UL,
     &halfbucket[0], &halfbucket[1], &halfbucket[2], &halfbucket[3],
     &rcbits);


 if ((halfbucket[pvo->pvo_pte.slot & 0x3] & LPTE_AVPN_MASK) !=
     ((pvo->pvo_vpn >> (ADDR_API_SHFT64 - ADDR_PIDX_SHFT)) &
     LPTE_AVPN_MASK))
  return (-1);
 if (!(halfbucket[pvo->pvo_pte.slot & 0x3] & LPTE_VALID))
  return (-1);






 return ((rcbits >> ((3 - (pvo->pvo_pte.slot & 0x3))*16)) &
     (LPTE_CHG | LPTE_REF));
}
