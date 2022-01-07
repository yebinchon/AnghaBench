
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct adapter {struct ixgbe_hw hw; } ;


 int EINVAL ;
 int ixgbe_mbox_api_10 ;
 int ixgbe_mbox_api_11 ;
 int ixgbe_mbox_api_unknown ;
 scalar_t__ ixgbevf_negotiate_api_version (struct ixgbe_hw*,int) ;

__attribute__((used)) static int
ixv_negotiate_api(struct adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int mbx_api[] = { ixgbe_mbox_api_11,
                               ixgbe_mbox_api_10,
                               ixgbe_mbox_api_unknown };
 int i = 0;

 while (mbx_api[i] != ixgbe_mbox_api_unknown) {
  if (ixgbevf_negotiate_api_version(hw, mbx_api[i]) == 0)
   return (0);
  i++;
 }

 return (EINVAL);
}
