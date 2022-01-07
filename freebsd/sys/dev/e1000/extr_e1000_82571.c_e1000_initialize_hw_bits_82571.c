
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_DMA_DYN_CLK_EN ;
 int E1000_GCR ;
 int E1000_GCR2 ;
 int E1000_PBA_ECC ;
 int E1000_PBA_ECC_CORR_EN ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_RFCTL ;
 int E1000_RFCTL_IPV6_EX_DIS ;
 int E1000_RFCTL_NEW_IPV6_EXT_DIS ;
 int E1000_TARC (int) ;
 int E1000_TCTL ;
 int E1000_TCTL_MULR ;
 int E1000_TXDCTL (int) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;






__attribute__((used)) static void e1000_initialize_hw_bits_82571(struct e1000_hw *hw)
{
 u32 reg;

 DEBUGFUNC("e1000_initialize_hw_bits_82571");


 reg = E1000_READ_REG(hw, E1000_TXDCTL(0));
 reg |= (1 << 22);
 E1000_WRITE_REG(hw, E1000_TXDCTL(0), reg);


 reg = E1000_READ_REG(hw, E1000_TXDCTL(1));
 reg |= (1 << 22);
 E1000_WRITE_REG(hw, E1000_TXDCTL(1), reg);


 reg = E1000_READ_REG(hw, E1000_TARC(0));
 reg &= ~(0xF << 27);
 switch (hw->mac.type) {
 case 132:
 case 131:
  reg |= (1 << 23) | (1 << 24) | (1 << 25) | (1 << 26);
  break;
 case 129:
 case 128:
  reg |= (1 << 26);
  break;
 default:
  break;
 }
 E1000_WRITE_REG(hw, E1000_TARC(0), reg);


 reg = E1000_READ_REG(hw, E1000_TARC(1));
 switch (hw->mac.type) {
 case 132:
 case 131:
  reg &= ~((1 << 29) | (1 << 30));
  reg |= (1 << 22) | (1 << 24) | (1 << 25) | (1 << 26);
  if (E1000_READ_REG(hw, E1000_TCTL) & E1000_TCTL_MULR)
   reg &= ~(1 << 28);
  else
   reg |= (1 << 28);
  E1000_WRITE_REG(hw, E1000_TARC(1), reg);
  break;
 default:
  break;
 }


 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  reg = E1000_READ_REG(hw, E1000_CTRL);
  reg &= ~(1 << 29);
  E1000_WRITE_REG(hw, E1000_CTRL, reg);
  break;
 default:
  break;
 }


 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  reg = E1000_READ_REG(hw, E1000_CTRL_EXT);
  reg &= ~(1 << 23);
  reg |= (1 << 22);
  E1000_WRITE_REG(hw, E1000_CTRL_EXT, reg);
  break;
 default:
  break;
 }

 if (hw->mac.type == 132) {
  reg = E1000_READ_REG(hw, E1000_PBA_ECC);
  reg |= E1000_PBA_ECC_CORR_EN;
  E1000_WRITE_REG(hw, E1000_PBA_ECC, reg);
 }




 if ((hw->mac.type == 132) ||
    (hw->mac.type == 131)) {
  reg = E1000_READ_REG(hw, E1000_CTRL_EXT);
  reg &= ~E1000_CTRL_EXT_DMA_DYN_CLK_EN;
  E1000_WRITE_REG(hw, E1000_CTRL_EXT, reg);
 }




 if (hw->mac.type <= 130) {
  reg = E1000_READ_REG(hw, E1000_RFCTL);
  reg |= (E1000_RFCTL_IPV6_EX_DIS | E1000_RFCTL_NEW_IPV6_EXT_DIS);
  E1000_WRITE_REG(hw, E1000_RFCTL, reg);
 }


 switch (hw->mac.type) {
 case 129:
 case 128:
  reg = E1000_READ_REG(hw, E1000_GCR);
  reg |= (1 << 22);
  E1000_WRITE_REG(hw, E1000_GCR, reg);







  reg = E1000_READ_REG(hw, E1000_GCR2);
  reg |= 1;
  E1000_WRITE_REG(hw, E1000_GCR2, reg);
  break;
 default:
  break;
 }

 return;
}
