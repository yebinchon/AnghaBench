
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int E1000_VF_SET_LPE ;
 int e1000_write_msg_read_ack (struct e1000_hw*,int *,int) ;

void e1000_rlpml_set_vf(struct e1000_hw *hw, u16 max_size)
{
 u32 msgbuf[2];

 msgbuf[0] = E1000_VF_SET_LPE;
 msgbuf[1] = max_size;

 e1000_write_msg_read_ack(hw, msgbuf, 2);
}
