
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_VF_MAX_RX_QUEUES ;
 int UNREFERENCED_1PARAMETER (struct ixgbe_hw*) ;

u32 ixgbe_get_num_of_rx_queues_vf(struct ixgbe_hw *hw)
{
 UNREFERENCED_1PARAMETER(hw);
 return IXGBE_VF_MAX_RX_QUEUES;
}
