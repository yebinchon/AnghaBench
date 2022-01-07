
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct mge_softc {int node; } ;


 int MGE_MAC_ADDR_H ;
 int MGE_MAC_ADDR_L ;
 int MGE_READ (struct mge_softc*,int ) ;
 int OF_getprop (int ,char*,void*,int) ;
 int bcopy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static void
mge_get_mac_address(struct mge_softc *sc, uint8_t *addr)
{
 uint32_t mac_l, mac_h;
 uint8_t lmac[6];
 int i, valid;




 i = OF_getprop(sc->node, "local-mac-address", (void *)lmac, 6);
 if (i == 6) {
  valid = 0;
  for (i = 0; i < 6; i++)
   if (lmac[i] != 0) {
    valid = 1;
    break;
   }

  if (valid) {
   bcopy(lmac, addr, 6);
   return;
  }
 }




 mac_l = MGE_READ(sc, MGE_MAC_ADDR_L);
 mac_h = MGE_READ(sc, MGE_MAC_ADDR_H);

 addr[0] = (mac_h & 0xff000000) >> 24;
 addr[1] = (mac_h & 0x00ff0000) >> 16;
 addr[2] = (mac_h & 0x0000ff00) >> 8;
 addr[3] = (mac_h & 0x000000ff);
 addr[4] = (mac_l & 0x0000ff00) >> 8;
 addr[5] = (mac_l & 0x000000ff);
}
