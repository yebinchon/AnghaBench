
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_FCOE_IBA_CAPS_BLK_PTR ;
 int IXGBE_FCOE_IBA_CAPS_FCOE ;
 int IXGBE_ISCSI_FCOE_BLK_PTR ;
 int IXGBE_ISCSI_FCOE_FLAGS_ENABLE ;
 int IXGBE_ISCSI_FCOE_FLAGS_OFFSET ;
 scalar_t__ IXGBE_SUCCESS ;
 int ixgbe_fcoe_bootstatus_disabled ;
 int ixgbe_fcoe_bootstatus_enabled ;
 int ixgbe_fcoe_bootstatus_unavailable ;
 scalar_t__ stub1 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int,int*) ;

s32 ixgbe_get_fcoe_boot_status_generic(struct ixgbe_hw *hw, u16 *bs)
{
 u16 offset, caps, flags;
 s32 status;

 DEBUGFUNC("ixgbe_get_fcoe_boot_status_generic");


 *bs = ixgbe_fcoe_bootstatus_unavailable;


 offset = IXGBE_FCOE_IBA_CAPS_BLK_PTR;
 status = hw->eeprom.ops.read(hw, offset, &caps);
 if (status != IXGBE_SUCCESS)
  goto out;

 if (!(caps & IXGBE_FCOE_IBA_CAPS_FCOE))
  goto out;


 status = hw->eeprom.ops.read(hw, IXGBE_ISCSI_FCOE_BLK_PTR, &offset);
 if (status != IXGBE_SUCCESS)
  goto out;

 if ((offset == 0) || (offset == 0xFFFF))
  goto out;


 offset = offset + IXGBE_ISCSI_FCOE_FLAGS_OFFSET;
 status = hw->eeprom.ops.read(hw, offset, &flags);
 if (status != IXGBE_SUCCESS)
  goto out;

 if (flags & IXGBE_ISCSI_FCOE_FLAGS_ENABLE)
  *bs = ixgbe_fcoe_bootstatus_enabled;
 else
  *bs = ixgbe_fcoe_bootstatus_disabled;

out:
 return status;
}
