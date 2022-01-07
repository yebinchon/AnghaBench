
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write_posted; int read_posted; } ;
struct ixgbe_mbx_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;


 int ixgbe_read_posted_mbx ;
 int ixgbe_write_posted_mbx ;

void ixgbe_init_mbx_ops_generic(struct ixgbe_hw *hw)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;

 mbx->ops.read_posted = ixgbe_read_posted_mbx;
 mbx->ops.write_posted = ixgbe_write_posted_mbx;
}
