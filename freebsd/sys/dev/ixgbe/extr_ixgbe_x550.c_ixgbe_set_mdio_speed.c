
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int device_id; } ;
 int IXGBE_HLREG0 ;
 int IXGBE_HLREG0_MDCSPD ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

__attribute__((used)) static void ixgbe_set_mdio_speed(struct ixgbe_hw *hw)
{
 u32 hlreg0;

 switch (hw->device_id) {
 case 128:
 case 130:
 case 129:
 case 135:
 case 131:
 case 132:

  hlreg0 = IXGBE_READ_REG(hw, IXGBE_HLREG0);
  hlreg0 &= ~IXGBE_HLREG0_MDCSPD;
  IXGBE_WRITE_REG(hw, IXGBE_HLREG0, hlreg0);
  break;
 case 134:
 case 133:

  hlreg0 = IXGBE_READ_REG(hw, IXGBE_HLREG0);
  hlreg0 |= IXGBE_HLREG0_MDCSPD;
  IXGBE_WRITE_REG(hw, IXGBE_HLREG0, hlreg0);
  break;
 default:
  break;
 }
}
