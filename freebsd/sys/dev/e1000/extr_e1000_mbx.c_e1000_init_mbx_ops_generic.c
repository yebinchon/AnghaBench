
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write_posted; int read_posted; void* check_for_rst; void* check_for_ack; void* check_for_msg; void* write; void* read; int init_params; } ;
struct e1000_mbx_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;


 void* e1000_null_mbx_check_for_flag ;
 void* e1000_null_mbx_transact ;
 int e1000_null_ops_generic ;
 int e1000_read_posted_mbx ;
 int e1000_write_posted_mbx ;

void e1000_init_mbx_ops_generic(struct e1000_hw *hw)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 mbx->ops.init_params = e1000_null_ops_generic;
 mbx->ops.read = e1000_null_mbx_transact;
 mbx->ops.write = e1000_null_mbx_transact;
 mbx->ops.check_for_msg = e1000_null_mbx_check_for_flag;
 mbx->ops.check_for_ack = e1000_null_mbx_check_for_flag;
 mbx->ops.check_for_rst = e1000_null_mbx_check_for_flag;
 mbx->ops.read_posted = e1000_read_posted_mbx;
 mbx->ops.write_posted = e1000_write_posted_mbx;
}
