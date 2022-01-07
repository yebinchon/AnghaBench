
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct tsec_softc {int node; } ;


 int OF_getprop (int ,char*,void*,int) ;
 void* TSEC_READ (struct tsec_softc*,int ) ;
 int TSEC_REG_MACSTNADDR1 ;
 int TSEC_REG_MACSTNADDR2 ;
 int bcopy (int *,int *,int) ;

void
tsec_get_hwaddr(struct tsec_softc *sc, uint8_t *addr)
{
 union {
  uint32_t reg[2];
  uint8_t addr[6];
 } hw;
 int i;

 hw.reg[0] = hw.reg[1] = 0;


 i = OF_getprop(sc->node, "local-mac-address", (void *)hw.addr, 6);
 if (i == 6 && (hw.reg[0] != 0 || hw.reg[1] != 0)) {
  bcopy(hw.addr, addr, 6);
  return;
 }


 i = OF_getprop(sc->node, "mac-address", (void *)hw.addr, 6);
 if (i == 6 && (hw.reg[0] != 0 || hw.reg[1] != 0)) {
  bcopy(hw.addr, addr, 6);
  return;
 }





 hw.reg[0] = TSEC_READ(sc, TSEC_REG_MACSTNADDR1);
 hw.reg[1] = TSEC_READ(sc, TSEC_REG_MACSTNADDR2);
 for (i = 0; i < 6; i++)
  addr[5-i] = hw.addr[i];
}
