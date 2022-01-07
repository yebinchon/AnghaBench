
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_RFCTL ;
 int E1000_RFCTL_IPV6_EX_DIS ;
 int E1000_RFCTL_NEW_IPV6_EXT_DIS ;
 int E1000_TARC (int) ;
 int E1000_TCTL ;
 int E1000_TCTL_MULR ;
 int E1000_TXDCTL (int) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_media_type_copper ;

__attribute__((used)) static void e1000_initialize_hw_bits_80003es2lan(struct e1000_hw *hw)
{
 u32 reg;

 DEBUGFUNC("e1000_initialize_hw_bits_80003es2lan");


 reg = E1000_READ_REG(hw, E1000_TXDCTL(0));
 reg |= (1 << 22);
 E1000_WRITE_REG(hw, E1000_TXDCTL(0), reg);


 reg = E1000_READ_REG(hw, E1000_TXDCTL(1));
 reg |= (1 << 22);
 E1000_WRITE_REG(hw, E1000_TXDCTL(1), reg);


 reg = E1000_READ_REG(hw, E1000_TARC(0));
 reg &= ~(0xF << 27);
 if (hw->phy.media_type != e1000_media_type_copper)
  reg &= ~(1 << 20);
 E1000_WRITE_REG(hw, E1000_TARC(0), reg);


 reg = E1000_READ_REG(hw, E1000_TARC(1));
 if (E1000_READ_REG(hw, E1000_TCTL) & E1000_TCTL_MULR)
  reg &= ~(1 << 28);
 else
  reg |= (1 << 28);
 E1000_WRITE_REG(hw, E1000_TARC(1), reg);




 reg = E1000_READ_REG(hw, E1000_RFCTL);
 reg |= (E1000_RFCTL_IPV6_EX_DIS | E1000_RFCTL_NEW_IPV6_EXT_DIS);
 E1000_WRITE_REG(hw, E1000_RFCTL, reg);

 return;
}
