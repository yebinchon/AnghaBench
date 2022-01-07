
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_EEP_SM ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_read_eerd_buffer_generic (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;

s32 ixgbe_read_eerd_buffer_X540(struct ixgbe_hw *hw,
    u16 offset, u16 words, u16 *data)
{
 s32 status = IXGBE_SUCCESS;

 DEBUGFUNC("ixgbe_read_eerd_buffer_X540");
 if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM) ==
     IXGBE_SUCCESS) {
  status = ixgbe_read_eerd_buffer_generic(hw, offset,
       words, data);
  hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);
 } else {
  status = IXGBE_ERR_SWFW_SYNC;
 }

 return status;
}
