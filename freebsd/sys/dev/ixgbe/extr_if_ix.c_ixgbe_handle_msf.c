
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* setup_link ) (struct ixgbe_hw*,int ,int ) ;int (* get_link_capabilities ) (struct ixgbe_hw*,int *,int*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int autoneg_advertised; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
struct adapter {int media; int ctx; int phy_layer; struct ixgbe_hw hw; } ;
typedef void* if_ctx_t ;


 int IFM_AUTO ;
 int IFM_ETHER ;
 int TRUE ;
 struct adapter* iflib_get_softc (void*) ;
 int ifmedia_removeall (int ) ;
 int ifmedia_set (int ,int) ;
 int ixgbe_add_media_types (int ) ;
 int ixgbe_get_supported_physical_layer (struct ixgbe_hw*) ;
 int stub1 (struct ixgbe_hw*,int *,int*) ;
 int stub2 (struct ixgbe_hw*,int ,int ) ;

__attribute__((used)) static void
ixgbe_handle_msf(void *context)
{
 if_ctx_t ctx = context;
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 autoneg;
 bool negotiate;


 adapter->phy_layer = ixgbe_get_supported_physical_layer(hw);

 autoneg = hw->phy.autoneg_advertised;
 if ((!autoneg) && (hw->mac.ops.get_link_capabilities))
  hw->mac.ops.get_link_capabilities(hw, &autoneg, &negotiate);
 if (hw->mac.ops.setup_link)
  hw->mac.ops.setup_link(hw, autoneg, TRUE);


 ifmedia_removeall(adapter->media);
 ixgbe_add_media_types(adapter->ctx);
 ifmedia_set(adapter->media, IFM_ETHER | IFM_AUTO);
}
