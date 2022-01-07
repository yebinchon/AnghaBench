
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int max_tx_queues; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;



u32 ixgbe_get_num_of_tx_queues(struct ixgbe_hw *hw)
{
 return hw->mac.max_tx_queues;
}
