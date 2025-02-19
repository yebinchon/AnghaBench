
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* read_posted ) (struct e1000_hw*,int *,int,int ) ;int (* write_posted ) (struct e1000_hw*,int *,int ,int ) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int E1000_VFMAILBOX_SIZE ;
 int stub1 (struct e1000_hw*,int *,int ,int ) ;
 int stub2 (struct e1000_hw*,int *,int,int ) ;

__attribute__((used)) static void e1000_write_msg_read_ack(struct e1000_hw *hw,
         u32 *msg, u16 size)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 u32 retmsg[E1000_VFMAILBOX_SIZE];
 s32 retval = mbx->ops.write_posted(hw, msg, size, 0);

 if (!retval)
  mbx->ops.read_posted(hw, retmsg, E1000_VFMAILBOX_SIZE, 0);
}
