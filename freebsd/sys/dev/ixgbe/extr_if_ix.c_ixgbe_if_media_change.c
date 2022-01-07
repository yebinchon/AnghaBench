
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* setup_link ) (struct ixgbe_hw*,int,int ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; int autotry_restart; } ;
struct TYPE_4__ {scalar_t__ media_type; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
struct ifmedia {int ifm_media; } ;
struct adapter {int advertise; struct ixgbe_hw hw; } ;
typedef int ixgbe_link_speed ;
typedef int if_ctx_t ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ IFM_ETHER ;
 int IFM_SUBTYPE (int ) ;
 scalar_t__ IFM_TYPE (int ) ;
 int INIT_DEBUGOUT (char*) ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_10_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int TRUE ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 struct ifmedia* iflib_get_media (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__ ixgbe_media_type_backplane ;
 int stub1 (struct ixgbe_hw*,int,int ) ;

__attribute__((used)) static int
ixgbe_if_media_change(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ifmedia *ifm = iflib_get_media(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 ixgbe_link_speed speed = 0;

 INIT_DEBUGOUT("ixgbe_if_media_change: begin");

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);

 if (hw->phy.media_type == ixgbe_media_type_backplane)
  return (EPERM);






 switch (IFM_SUBTYPE(ifm->ifm_media)) {
 case 128:
 case 131:
  speed |= IXGBE_LINK_SPEED_100_FULL;
  speed |= IXGBE_LINK_SPEED_1GB_FULL;
  speed |= IXGBE_LINK_SPEED_10GB_FULL;
  break;
 case 133:
 case 134:

 case 132:
 case 137:




  speed |= IXGBE_LINK_SPEED_1GB_FULL;
  speed |= IXGBE_LINK_SPEED_10GB_FULL;
  break;

 case 143:



 case 141:
 case 140:
  speed |= IXGBE_LINK_SPEED_1GB_FULL;
  break;
 case 139:
  speed |= IXGBE_LINK_SPEED_100_FULL;
  speed |= IXGBE_LINK_SPEED_1GB_FULL;
  break;
 case 130:
  speed |= IXGBE_LINK_SPEED_10GB_FULL;
  break;
 case 138:
  speed |= IXGBE_LINK_SPEED_100_FULL;
  break;
 case 129:
  speed |= IXGBE_LINK_SPEED_10_FULL;
  break;
 default:
  goto invalid;
 }

 hw->mac.autotry_restart = TRUE;
 hw->mac.ops.setup_link(hw, speed, TRUE);
 adapter->advertise =
     ((speed & IXGBE_LINK_SPEED_10GB_FULL) ? 4 : 0) |
     ((speed & IXGBE_LINK_SPEED_1GB_FULL) ? 2 : 0) |
     ((speed & IXGBE_LINK_SPEED_100_FULL) ? 1 : 0) |
     ((speed & IXGBE_LINK_SPEED_10_FULL) ? 8 : 0);

 return (0);

invalid:
 device_printf(iflib_get_dev(ctx), "Invalid media type!\n");

 return (EINVAL);
}
