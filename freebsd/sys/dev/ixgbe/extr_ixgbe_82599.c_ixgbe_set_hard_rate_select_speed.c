
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int ixgbe_link_speed ;


 int DEBUGOUT (char*) ;
 int IXGBE_ESDP ;
 int IXGBE_ESDP_SDP5 ;
 int IXGBE_ESDP_SDP5_DIR ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

void ixgbe_set_hard_rate_select_speed(struct ixgbe_hw *hw,
     ixgbe_link_speed speed)
{
 u32 esdp_reg = IXGBE_READ_REG(hw, IXGBE_ESDP);

 switch (speed) {
 case 129:
  esdp_reg |= (IXGBE_ESDP_SDP5_DIR | IXGBE_ESDP_SDP5);
  break;
 case 128:
  esdp_reg &= ~IXGBE_ESDP_SDP5;
  esdp_reg |= IXGBE_ESDP_SDP5_DIR;
  break;
 default:
  DEBUGOUT("Invalid fixed module speed\n");
  return;
 }

 IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp_reg);
 IXGBE_WRITE_FLUSH(hw);
}
