
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* read_posted ) (struct e1000_hw*,int*,int,int ) ;int (* write_posted ) (struct e1000_hw*,int*,int,int ) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef int s32 ;
typedef enum e1000_promisc_type { ____Placeholder_e1000_promisc_type } e1000_promisc_type ;


 int E1000_ERR_MAC_INIT ;
 int E1000_VF_SET_PROMISC ;
 int E1000_VF_SET_PROMISC_MULTICAST ;
 int E1000_VF_SET_PROMISC_UNICAST ;
 int E1000_VT_MSGTYPE_ACK ;




 int stub1 (struct e1000_hw*,int*,int,int ) ;
 int stub2 (struct e1000_hw*,int*,int,int ) ;

s32 e1000_promisc_set_vf(struct e1000_hw *hw, enum e1000_promisc_type type)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 u32 msgbuf = E1000_VF_SET_PROMISC;
 s32 ret_val;

 switch (type) {
 case 129:
  msgbuf |= E1000_VF_SET_PROMISC_MULTICAST;
  break;
 case 130:
  msgbuf |= E1000_VF_SET_PROMISC_MULTICAST;

 case 128:
  msgbuf |= E1000_VF_SET_PROMISC_UNICAST;

 case 131:
  break;
 default:
  return -E1000_ERR_MAC_INIT;
 }

  ret_val = mbx->ops.write_posted(hw, &msgbuf, 1, 0);

 if (!ret_val)
  ret_val = mbx->ops.read_posted(hw, &msgbuf, 1, 0);

 if (!ret_val && !(msgbuf & E1000_VT_MSGTYPE_ACK))
  ret_val = -E1000_ERR_MAC_INIT;

 return ret_val;
}
