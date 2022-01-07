
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_ESDP ;
 int IXGBE_ESDP_SDP3 ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int msec_delay (int) ;

void ixgbe_enable_tx_laser_multispeed_fiber(struct ixgbe_hw *hw)
{
 u32 esdp_reg = IXGBE_READ_REG(hw, IXGBE_ESDP);


 esdp_reg &= ~IXGBE_ESDP_SDP3;
 IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp_reg);
 IXGBE_WRITE_FLUSH(hw);
 msec_delay(100);
}
