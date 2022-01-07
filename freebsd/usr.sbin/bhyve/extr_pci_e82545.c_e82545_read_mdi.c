
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct e82545_softc {int dummy; } ;


 int DPRINTF (char*,int,int) ;
 int E82545_REVISION_4 ;
 int M88E1011_I_PHY_ID ;
 int MII_SR_AUTONEG_CAPS ;
 int MII_SR_AUTONEG_COMPLETE ;
 int MII_SR_LINK_STATUS ;
 int NWAY_AR_SELECTOR_FIELD ;






 int SR_1000T_LOCAL_RX_STATUS ;
 int SR_1000T_LP_FD_CAPS ;
 int SR_1000T_REMOTE_RX_STATUS ;

__attribute__((used)) static uint32_t
e82545_read_mdi(struct e82545_softc *sc, uint8_t reg_addr,
   uint8_t phy_addr)
{

 switch (reg_addr) {
 case 128:
  return (MII_SR_LINK_STATUS | MII_SR_AUTONEG_CAPS |
   MII_SR_AUTONEG_COMPLETE);
 case 132:
  return NWAY_AR_SELECTOR_FIELD;
 case 129:
  return 0;
 case 133:
  return (SR_1000T_LP_FD_CAPS | SR_1000T_REMOTE_RX_STATUS |
   SR_1000T_LOCAL_RX_STATUS);
 case 131:
  return (M88E1011_I_PHY_ID >> 16) & 0xFFFF;
 case 130:
  return (M88E1011_I_PHY_ID | E82545_REVISION_4) & 0xFFFF;
 default:
  DPRINTF("Unknown mdi read reg:0x%x phy:0x%x\r\n", reg_addr, phy_addr);
  return 0;
 }

}
