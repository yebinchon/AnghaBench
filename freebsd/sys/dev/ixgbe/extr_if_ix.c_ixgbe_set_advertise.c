
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* get_link_capabilities ) (struct ixgbe_hw*,int*,int*) ;int (* setup_link ) (struct ixgbe_hw*,int,int ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; int autotry_restart; } ;
struct TYPE_4__ {scalar_t__ media_type; scalar_t__ multispeed_fiber; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
struct adapter {int advertise; struct ixgbe_hw hw; int ctx; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;
typedef int device_t ;


 int EINVAL ;
 int ENODEV ;
 int FALSE ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_10_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 scalar_t__ IXGBE_NOT_IMPLEMENTED ;
 scalar_t__ IXGBE_SUCCESS ;
 int TRUE ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 scalar_t__ ixgbe_media_type_backplane ;
 scalar_t__ ixgbe_media_type_copper ;
 scalar_t__ stub1 (struct ixgbe_hw*,int*,int*) ;
 int stub2 (struct ixgbe_hw*,int,int ) ;

__attribute__((used)) static int
ixgbe_set_advertise(struct adapter *adapter, int advertise)
{
 device_t dev = iflib_get_dev(adapter->ctx);
 struct ixgbe_hw *hw;
 ixgbe_link_speed speed = 0;
 ixgbe_link_speed link_caps = 0;
 s32 err = IXGBE_NOT_IMPLEMENTED;
 bool negotiate = FALSE;


 if (adapter->advertise == advertise)
  return (0);

 hw = &adapter->hw;


 if (hw->phy.media_type == ixgbe_media_type_backplane)
  return (ENODEV);

 if (!((hw->phy.media_type == ixgbe_media_type_copper) ||
       (hw->phy.multispeed_fiber))) {
  device_printf(dev, "Advertised speed can only be set on copper or multispeed fiber media types.\n");
  return (EINVAL);
 }

 if (advertise < 0x1 || advertise > 0xF) {
  device_printf(dev, "Invalid advertised speed; valid modes are 0x1 through 0xF\n");
  return (EINVAL);
 }

 if (hw->mac.ops.get_link_capabilities) {
  err = hw->mac.ops.get_link_capabilities(hw, &link_caps,
      &negotiate);
  if (err != IXGBE_SUCCESS) {
   device_printf(dev, "Unable to determine supported advertise speeds\n");
   return (ENODEV);
  }
 }


 if (advertise & 0x1) {
  if (!(link_caps & IXGBE_LINK_SPEED_100_FULL)) {
   device_printf(dev, "Interface does not support 100Mb advertised speed\n");
   return (EINVAL);
  }
  speed |= IXGBE_LINK_SPEED_100_FULL;
 }
 if (advertise & 0x2) {
  if (!(link_caps & IXGBE_LINK_SPEED_1GB_FULL)) {
   device_printf(dev, "Interface does not support 1Gb advertised speed\n");
   return (EINVAL);
  }
  speed |= IXGBE_LINK_SPEED_1GB_FULL;
 }
 if (advertise & 0x4) {
  if (!(link_caps & IXGBE_LINK_SPEED_10GB_FULL)) {
   device_printf(dev, "Interface does not support 10Gb advertised speed\n");
   return (EINVAL);
  }
  speed |= IXGBE_LINK_SPEED_10GB_FULL;
 }
 if (advertise & 0x8) {
  if (!(link_caps & IXGBE_LINK_SPEED_10_FULL)) {
   device_printf(dev, "Interface does not support 10Mb advertised speed\n");
   return (EINVAL);
  }
  speed |= IXGBE_LINK_SPEED_10_FULL;
 }

 hw->mac.autotry_restart = TRUE;
 hw->mac.ops.setup_link(hw, speed, TRUE);
 adapter->advertise = advertise;

 return (0);
}
