
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rsts; scalar_t__ acks; scalar_t__ reqs; scalar_t__ msgs_rx; scalar_t__ msgs_tx; } ;
struct TYPE_3__ {int check_for_rst; int check_for_ack; int check_for_msg; int write_posted; int read_posted; int write; int read; } ;
struct ixgbe_mbx_info {TYPE_2__ stats; TYPE_1__ ops; int size; int usec_delay; scalar_t__ timeout; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;


 int IXGBE_VFMAILBOX_SIZE ;
 int IXGBE_VF_MBX_INIT_DELAY ;
 int ixgbe_check_for_ack_vf ;
 int ixgbe_check_for_msg_vf ;
 int ixgbe_check_for_rst_vf ;
 int ixgbe_read_mbx_vf ;
 int ixgbe_read_posted_mbx ;
 int ixgbe_write_mbx_vf ;
 int ixgbe_write_posted_mbx ;

void ixgbe_init_mbx_params_vf(struct ixgbe_hw *hw)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;



 mbx->timeout = 0;
 mbx->usec_delay = IXGBE_VF_MBX_INIT_DELAY;

 mbx->size = IXGBE_VFMAILBOX_SIZE;

 mbx->ops.read = ixgbe_read_mbx_vf;
 mbx->ops.write = ixgbe_write_mbx_vf;
 mbx->ops.read_posted = ixgbe_read_posted_mbx;
 mbx->ops.write_posted = ixgbe_write_posted_mbx;
 mbx->ops.check_for_msg = ixgbe_check_for_msg_vf;
 mbx->ops.check_for_ack = ixgbe_check_for_ack_vf;
 mbx->ops.check_for_rst = ixgbe_check_for_rst_vf;

 mbx->stats.msgs_tx = 0;
 mbx->stats.msgs_rx = 0;
 mbx->stats.reqs = 0;
 mbx->stats.acks = 0;
 mbx->stats.rsts = 0;
}
