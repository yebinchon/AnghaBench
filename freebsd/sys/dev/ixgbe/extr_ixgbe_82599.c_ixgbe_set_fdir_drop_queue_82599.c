
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_FDIRCMD ;
 int IXGBE_FDIRCMD_CLEARHT ;
 int IXGBE_FDIRCTRL ;
 int IXGBE_FDIRCTRL_DROP_NO_MATCH ;
 int IXGBE_FDIRCTRL_DROP_Q_MASK ;
 int IXGBE_FDIRCTRL_DROP_Q_SHIFT ;
 int IXGBE_FDIRCTRL_INIT_DONE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_fdir_enable_82599 (struct ixgbe_hw*,int) ;
 scalar_t__ ixgbe_mac_X550 ;
 scalar_t__ ixgbe_mac_X550EM_a ;
 scalar_t__ ixgbe_mac_X550EM_x ;

void ixgbe_set_fdir_drop_queue_82599(struct ixgbe_hw *hw, u8 dropqueue)
{
 u32 fdirctrl;

 DEBUGFUNC("ixgbe_set_fdir_drop_queue_82599");

 fdirctrl = IXGBE_READ_REG(hw, IXGBE_FDIRCTRL);
 fdirctrl &= ~(IXGBE_FDIRCTRL_DROP_Q_MASK | IXGBE_FDIRCTRL_INIT_DONE);


 fdirctrl |= (dropqueue << IXGBE_FDIRCTRL_DROP_Q_SHIFT);
 if ((hw->mac.type == ixgbe_mac_X550) ||
     (hw->mac.type == ixgbe_mac_X550EM_x) ||
     (hw->mac.type == ixgbe_mac_X550EM_a))
  fdirctrl |= IXGBE_FDIRCTRL_DROP_NO_MATCH;

 IXGBE_WRITE_REG(hw, IXGBE_FDIRCMD,
   (IXGBE_READ_REG(hw, IXGBE_FDIRCMD) |
    IXGBE_FDIRCMD_CLEARHT));
 IXGBE_WRITE_FLUSH(hw);
 IXGBE_WRITE_REG(hw, IXGBE_FDIRCMD,
   (IXGBE_READ_REG(hw, IXGBE_FDIRCMD) &
    ~IXGBE_FDIRCMD_CLEARHT));
 IXGBE_WRITE_FLUSH(hw);


 ixgbe_fdir_enable_82599(hw, fdirctrl);
}
