
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct e1000_phy_info {int addr; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; struct e1000_phy_info phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int DEBUGOUT2 (char*,int,int) ;
 int E1000_ERR_PARAM ;
 int E1000_ERR_PHY ;
 int E1000_GEN_POLL_TIMEOUT ;
 int E1000_MDIC ;
 int E1000_MDIC_ERROR ;
 int E1000_MDIC_OP_WRITE ;
 int E1000_MDIC_PHY_SHIFT ;
 int E1000_MDIC_READY ;
 int E1000_MDIC_REG_MASK ;
 int E1000_MDIC_REG_SHIFT ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int MAX_PHY_REG_ADDRESS ;
 scalar_t__ e1000_pch2lan ;
 int usec_delay_irq (int) ;

s32 e1000_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
{
 struct e1000_phy_info *phy = &hw->phy;
 u32 i, mdic = 0;

 DEBUGFUNC("e1000_write_phy_reg_mdic");

 if (offset > MAX_PHY_REG_ADDRESS) {
  DEBUGOUT1("PHY Address %d is out of range\n", offset);
  return -E1000_ERR_PARAM;
 }





 mdic = (((u32)data) |
  (offset << E1000_MDIC_REG_SHIFT) |
  (phy->addr << E1000_MDIC_PHY_SHIFT) |
  (E1000_MDIC_OP_WRITE));

 E1000_WRITE_REG(hw, E1000_MDIC, mdic);





 for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
  usec_delay_irq(50);
  mdic = E1000_READ_REG(hw, E1000_MDIC);
  if (mdic & E1000_MDIC_READY)
   break;
 }
 if (!(mdic & E1000_MDIC_READY)) {
  DEBUGOUT("MDI Write did not complete\n");
  return -E1000_ERR_PHY;
 }
 if (mdic & E1000_MDIC_ERROR) {
  DEBUGOUT("MDI Error\n");
  return -E1000_ERR_PHY;
 }
 if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
  DEBUGOUT2("MDI Write offset error - requested %d, returned %d\n",
     offset,
     (mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT);
  return -E1000_ERR_PHY;
 }




 if (hw->mac.type == e1000_pch2lan)
  usec_delay_irq(100);

 return E1000_SUCCESS;
}
