
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ func; } ;
struct ixgbe_hw {int wol_enabled; TYPE_1__ bus; } ;
struct adapter {int wol_support; int wufc; struct ixgbe_hw hw; } ;


 int IXGBE_DEVICE_CAPS_WOL_PORT0 ;
 int IXGBE_DEVICE_CAPS_WOL_PORT0_1 ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WUFC ;
 int ixgbe_get_device_caps (struct ixgbe_hw*,int*) ;

__attribute__((used)) static void
ixgbe_check_wol_support(struct adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u16 dev_caps = 0;


 adapter->wol_support = hw->wol_enabled = 0;
 ixgbe_get_device_caps(hw, &dev_caps);
 if ((dev_caps & IXGBE_DEVICE_CAPS_WOL_PORT0_1) ||
     ((dev_caps & IXGBE_DEVICE_CAPS_WOL_PORT0) &&
      hw->bus.func == 0))
  adapter->wol_support = hw->wol_enabled = 1;


 adapter->wufc = IXGBE_READ_REG(hw, IXGBE_WUFC);

 return;
}
