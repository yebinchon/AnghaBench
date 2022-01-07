
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int dummy; } ;
struct bwi_mac {int mac_rev; struct bwi_softc* mac_sc; } ;


 int BWI_MAC_STATUS ;
 int BWI_MAC_STATUS_PROMISC ;
 int CSR_CLRBITS_4 (struct bwi_softc*,int ,int ) ;
 int CSR_SETBITS_4 (struct bwi_softc*,int ,int ) ;

void
bwi_mac_set_promisc(struct bwi_mac *mac, int promisc)
{
 struct bwi_softc *sc = mac->mac_sc;

 if (mac->mac_rev < 5)
  return;

 if (promisc)
  CSR_SETBITS_4(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_PROMISC);
 else
  CSR_CLRBITS_4(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_PROMISC);
}
