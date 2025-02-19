
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* identify_sfp ) (struct ixgbe_hw*) ;scalar_t__ (* reset ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ sfp_type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
struct adapter {void* sfp_probe; struct ixgbe_hw hw; } ;
typedef scalar_t__ s32 ;
typedef int if_ctx_t ;
typedef int device_t ;


 void* FALSE ;
 scalar_t__ IXGBE_ERR_SFP_NOT_SUPPORTED ;
 int TRUE ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__ ixgbe_phy_nl ;
 scalar_t__ ixgbe_sfp_type_not_present ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;

__attribute__((used)) static bool
ixgbe_sfp_probe(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 device_t dev = iflib_get_dev(ctx);
 bool result = FALSE;

 if ((hw->phy.type == ixgbe_phy_nl) &&
     (hw->phy.sfp_type == ixgbe_sfp_type_not_present)) {
  s32 ret = hw->phy.ops.identify_sfp(hw);
  if (ret)
   goto out;
  ret = hw->phy.ops.reset(hw);
  adapter->sfp_probe = FALSE;
  if (ret == IXGBE_ERR_SFP_NOT_SUPPORTED) {
   device_printf(dev, "Unsupported SFP+ module detected!");
   device_printf(dev,
       "Reload driver with supported module.\n");
   goto out;
  } else
   device_printf(dev, "SFP+ module detected!\n");

  result = TRUE;
 }
out:

 return (result);
}
