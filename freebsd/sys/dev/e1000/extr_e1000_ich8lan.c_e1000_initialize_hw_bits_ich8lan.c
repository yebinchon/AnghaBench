
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_PHYPDEN ;
 int E1000_CTRL_MEHE ;
 int E1000_PBECCSTS ;
 int E1000_PBECCSTS_ECC_ENABLE ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_RFCTL ;
 int E1000_RFCTL_IPV6_EX_DIS ;
 int E1000_RFCTL_NEW_IPV6_EXT_DIS ;
 int E1000_RFCTL_NFSR_DIS ;
 int E1000_RFCTL_NFSW_DIS ;
 int E1000_STATUS ;
 int E1000_TARC (int) ;
 int E1000_TCTL ;
 int E1000_TCTL_MULR ;
 int E1000_TXDCTL (int) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_ich8lan ;
 scalar_t__ e1000_pch_lpt ;
 scalar_t__ e1000_pchlan ;

__attribute__((used)) static void e1000_initialize_hw_bits_ich8lan(struct e1000_hw *hw)
{
 u32 reg;

 DEBUGFUNC("e1000_initialize_hw_bits_ich8lan");


 reg = E1000_READ_REG(hw, E1000_CTRL_EXT);
 reg |= (1 << 22);

 if (hw->mac.type >= e1000_pchlan)
  reg |= E1000_CTRL_EXT_PHYPDEN;
 E1000_WRITE_REG(hw, E1000_CTRL_EXT, reg);


 reg = E1000_READ_REG(hw, E1000_TXDCTL(0));
 reg |= (1 << 22);
 E1000_WRITE_REG(hw, E1000_TXDCTL(0), reg);


 reg = E1000_READ_REG(hw, E1000_TXDCTL(1));
 reg |= (1 << 22);
 E1000_WRITE_REG(hw, E1000_TXDCTL(1), reg);


 reg = E1000_READ_REG(hw, E1000_TARC(0));
 if (hw->mac.type == e1000_ich8lan)
  reg |= (1 << 28) | (1 << 29);
 reg |= (1 << 23) | (1 << 24) | (1 << 26) | (1 << 27);
 E1000_WRITE_REG(hw, E1000_TARC(0), reg);


 reg = E1000_READ_REG(hw, E1000_TARC(1));
 if (E1000_READ_REG(hw, E1000_TCTL) & E1000_TCTL_MULR)
  reg &= ~(1 << 28);
 else
  reg |= (1 << 28);
 reg |= (1 << 24) | (1 << 26) | (1 << 30);
 E1000_WRITE_REG(hw, E1000_TARC(1), reg);


 if (hw->mac.type == e1000_ich8lan) {
  reg = E1000_READ_REG(hw, E1000_STATUS);
  reg &= ~(1U << 31);
  E1000_WRITE_REG(hw, E1000_STATUS, reg);
 }




 reg = E1000_READ_REG(hw, E1000_RFCTL);
 reg |= (E1000_RFCTL_NFSW_DIS | E1000_RFCTL_NFSR_DIS);




 if (hw->mac.type == e1000_ich8lan)
  reg |= (E1000_RFCTL_IPV6_EX_DIS | E1000_RFCTL_NEW_IPV6_EXT_DIS);
 E1000_WRITE_REG(hw, E1000_RFCTL, reg);


 if (hw->mac.type >= e1000_pch_lpt) {
  reg = E1000_READ_REG(hw, E1000_PBECCSTS);
  reg |= E1000_PBECCSTS_ECC_ENABLE;
  E1000_WRITE_REG(hw, E1000_PBECCSTS, reg);

  reg = E1000_READ_REG(hw, E1000_CTRL);
  reg |= E1000_CTRL_MEHE;
  E1000_WRITE_REG(hw, E1000_CTRL, reg);
 }

 return;
}
