
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* check_for_msg ) (struct ixgbe_hw*,int ) ;} ;
struct ixgbe_mbx_info {int timeout; int usec_delay; TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int ERROR_REPORT2 (int ,char*,int ) ;
 int IXGBE_ERROR_POLLING ;
 int IXGBE_ERR_MBX ;
 int IXGBE_SUCCESS ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int usec_delay (int ) ;

__attribute__((used)) static s32 ixgbe_poll_for_msg(struct ixgbe_hw *hw, u16 mbx_id)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 int countdown = mbx->timeout;

 DEBUGFUNC("ixgbe_poll_for_msg");

 if (!countdown || !mbx->ops.check_for_msg)
  goto out;

 while (countdown && mbx->ops.check_for_msg(hw, mbx_id)) {
  countdown--;
  if (!countdown)
   break;
  usec_delay(mbx->usec_delay);
 }

 if (countdown == 0)
  ERROR_REPORT2(IXGBE_ERROR_POLLING,
      "Polling for VF%d mailbox message timedout", mbx_id);

out:
 return countdown ? IXGBE_SUCCESS : IXGBE_ERR_MBX;
}
