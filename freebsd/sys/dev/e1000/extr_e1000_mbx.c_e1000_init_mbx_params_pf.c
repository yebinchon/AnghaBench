
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rsts; int acks; int reqs; int msgs_rx; int msgs_tx; } ;
struct TYPE_5__ {int check_for_rst; int check_for_ack; int check_for_msg; int write_posted; int read_posted; int write; int read; } ;
struct e1000_mbx_info {TYPE_3__ stats; TYPE_2__ ops; int size; int usec_delay; int timeout; } ;
struct TYPE_4__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int E1000_VFMAILBOX_SIZE ;

 int e1000_check_for_ack_pf ;
 int e1000_check_for_msg_pf ;
 int e1000_check_for_rst_pf ;


 int e1000_read_mbx_pf ;
 int e1000_read_posted_mbx ;
 int e1000_write_mbx_pf ;
 int e1000_write_posted_mbx ;

s32 e1000_init_mbx_params_pf(struct e1000_hw *hw)
{
 struct e1000_mbx_info *mbx = &hw->mbx;

 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  mbx->timeout = 0;
  mbx->usec_delay = 0;

  mbx->size = E1000_VFMAILBOX_SIZE;

  mbx->ops.read = e1000_read_mbx_pf;
  mbx->ops.write = e1000_write_mbx_pf;
  mbx->ops.read_posted = e1000_read_posted_mbx;
  mbx->ops.write_posted = e1000_write_posted_mbx;
  mbx->ops.check_for_msg = e1000_check_for_msg_pf;
  mbx->ops.check_for_ack = e1000_check_for_ack_pf;
  mbx->ops.check_for_rst = e1000_check_for_rst_pf;

  mbx->stats.msgs_tx = 0;
  mbx->stats.msgs_rx = 0;
  mbx->stats.reqs = 0;
  mbx->stats.acks = 0;
  mbx->stats.rsts = 0;

 default:
  return E1000_SUCCESS;
 }
}
