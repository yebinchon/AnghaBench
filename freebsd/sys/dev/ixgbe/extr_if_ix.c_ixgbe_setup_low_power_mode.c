
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* enter_lplu ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int reset_disable; TYPE_1__ ops; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_2__ phy; int wol_enabled; } ;
struct adapter {int wufc; struct ixgbe_hw hw; } ;
typedef int s32 ;
typedef int if_ctx_t ;
typedef int device_t ;


 int FALSE ;
 scalar_t__ IXGBE_DEV_ID_X550EM_X_10G_T ;
 int IXGBE_GRC ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int IXGBE_WUC ;
 int IXGBE_WUC_PME_EN ;
 int IXGBE_WUC_WKEN ;
 int IXGBE_WUFC ;
 int IXGBE_WUS ;
 int TRUE ;
 int device_printf (int ,char*,int) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_if_stop (int ) ;
 int ixgbe_set_phy_power (struct ixgbe_hw*,int ) ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static int
ixgbe_setup_low_power_mode(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 device_t dev = iflib_get_dev(ctx);
 s32 error = 0;

 if (!hw->wol_enabled)
  ixgbe_set_phy_power(hw, FALSE);


 if (hw->device_id == IXGBE_DEV_ID_X550EM_X_10G_T &&
     hw->phy.ops.enter_lplu) {

  IXGBE_WRITE_REG(hw, IXGBE_GRC,
      IXGBE_READ_REG(hw, IXGBE_GRC) & ~(u32)2);





  IXGBE_WRITE_REG(hw, IXGBE_WUS, 0xffffffff);





  IXGBE_WRITE_REG(hw, IXGBE_WUFC, adapter->wufc);


  IXGBE_WRITE_REG(hw, IXGBE_WUC,
      IXGBE_WUC_WKEN | IXGBE_WUC_PME_EN);


  hw->phy.reset_disable = TRUE;
  ixgbe_if_stop(ctx);
  error = hw->phy.ops.enter_lplu(hw);
  if (error)
   device_printf(dev, "Error entering LPLU: %d\n", error);
  hw->phy.reset_disable = FALSE;
 } else {

  ixgbe_if_stop(ctx);
 }

 return error;
}
