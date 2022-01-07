
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int api_version; } ;
typedef scalar_t__ s32 ;


 int IXGBEVF_XCAST_MODE_ALLMULTI ;
 scalar_t__ IXGBE_ERR_FEATURE_NOT_SUPPORTED ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_VF_UPDATE_XCAST_MODE ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;


 scalar_t__ ixgbevf_write_msg_read_ack (struct ixgbe_hw*,int*,int*,int) ;

s32 ixgbevf_update_xcast_mode(struct ixgbe_hw *hw, int xcast_mode)
{
 u32 msgbuf[2];
 s32 err;

 switch (hw->api_version) {
 case 129:

  if (xcast_mode > IXGBEVF_XCAST_MODE_ALLMULTI)
   return IXGBE_ERR_FEATURE_NOT_SUPPORTED;

 case 128:
  break;
 default:
  return IXGBE_ERR_FEATURE_NOT_SUPPORTED;
 }

 msgbuf[0] = IXGBE_VF_UPDATE_XCAST_MODE;
 msgbuf[1] = xcast_mode;

 err = ixgbevf_write_msg_read_ack(hw, msgbuf, msgbuf, 2);
 if (err)
  return err;

 msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;
 if (msgbuf[0] == (IXGBE_VF_UPDATE_XCAST_MODE | IXGBE_VT_MSGTYPE_NACK))
  return IXGBE_ERR_FEATURE_NOT_SUPPORTED;
 return IXGBE_SUCCESS;
}
