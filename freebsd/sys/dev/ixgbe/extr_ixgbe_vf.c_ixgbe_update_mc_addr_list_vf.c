
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int (* write_posted ) (struct ixgbe_hw*,int*,int,int ) ;} ;
struct ixgbe_mbx_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;
typedef int (* ixgbe_mc_addr_itr ) (struct ixgbe_hw*,int **,int*) ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int IXGBE_VFMAILBOX_SIZE ;
 int IXGBE_VF_SET_MULTICAST ;
 int IXGBE_VT_MSGINFO_SHIFT ;
 int UNREFERENCED_1PARAMETER (int) ;
 int ixgbe_mta_vector (struct ixgbe_hw*,int ) ;
 int stub1 (struct ixgbe_hw*,int*,int,int ) ;

s32 ixgbe_update_mc_addr_list_vf(struct ixgbe_hw *hw, u8 *mc_addr_list,
     u32 mc_addr_count, ixgbe_mc_addr_itr next,
     bool clear)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 u32 msgbuf[IXGBE_VFMAILBOX_SIZE];
 u16 *vector_list = (u16 *)&msgbuf[1];
 u32 vector;
 u32 cnt, i;
 u32 vmdq;

 UNREFERENCED_1PARAMETER(clear);

 DEBUGFUNC("ixgbe_update_mc_addr_list_vf");
 DEBUGOUT1("MC Addr Count = %d\n", mc_addr_count);

 cnt = (mc_addr_count > 30) ? 30 : mc_addr_count;
 msgbuf[0] = IXGBE_VF_SET_MULTICAST;
 msgbuf[0] |= cnt << IXGBE_VT_MSGINFO_SHIFT;

 for (i = 0; i < cnt; i++) {
  vector = ixgbe_mta_vector(hw, next(hw, &mc_addr_list, &vmdq));
  DEBUGOUT1("Hash value = 0x%03X\n", vector);
  vector_list[i] = (u16)vector;
 }

 return mbx->ops.write_posted(hw, msgbuf, IXGBE_VFMAILBOX_SIZE, 0);
}
