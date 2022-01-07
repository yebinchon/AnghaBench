
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ether_addr {int dummy; } ;
struct arswitch_softc {int sc_dev; } ;


 int AR8X16_REG_SW_MAC_ADDR0 ;
 int AR8X16_REG_SW_MAC_ADDR0_BYTE4 ;
 int AR8X16_REG_SW_MAC_ADDR0_BYTE5 ;
 int AR8X16_REG_SW_MAC_ADDR1 ;
 int AR8X16_REG_SW_MAC_ADDR1_BYTE0 ;
 int AR8X16_REG_SW_MAC_ADDR1_BYTE1 ;
 int AR8X16_REG_SW_MAC_ADDR1_BYTE2 ;
 int AR8X16_REG_SW_MAC_ADDR1_BYTE3 ;
 char MS (int ,int ) ;
 int arswitch_readreg (int ,int ) ;

__attribute__((used)) static int
ar8xxx_hw_get_switch_macaddr(struct arswitch_softc *sc, struct ether_addr *ea)
{
 uint32_t ret0, ret1;
 char *s;

 s = (void *) ea;

 ret0 = arswitch_readreg(sc->sc_dev, AR8X16_REG_SW_MAC_ADDR0);
 ret1 = arswitch_readreg(sc->sc_dev, AR8X16_REG_SW_MAC_ADDR1);

 s[5] = MS(ret0, AR8X16_REG_SW_MAC_ADDR0_BYTE5);
 s[4] = MS(ret0, AR8X16_REG_SW_MAC_ADDR0_BYTE4);
 s[3] = MS(ret1, AR8X16_REG_SW_MAC_ADDR1_BYTE3);
 s[2] = MS(ret1, AR8X16_REG_SW_MAC_ADDR1_BYTE2);
 s[1] = MS(ret1, AR8X16_REG_SW_MAC_ADDR1_BYTE1);
 s[0] = MS(ret1, AR8X16_REG_SW_MAC_ADDR1_BYTE0);

 return (0);
}
