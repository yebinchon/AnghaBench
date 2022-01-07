
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_mode; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct adapter {int phy_layer; int link_speed; int link_active; struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;


 int IFM_1000_CX ;
 int IFM_1000_KX ;
 int IFM_1000_LX ;
 int IFM_1000_SX ;
 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10G_CX4 ;
 int IFM_10G_KR ;
 int IFM_10G_KX4 ;
 int IFM_10G_LR ;
 int IFM_10G_LRM ;
 int IFM_10G_SR ;
 int IFM_10G_T ;
 int IFM_10G_TWINAX ;
 int IFM_10_T ;
 int IFM_2500_KX ;
 int IFM_2500_SX ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 scalar_t__ IFM_SUBTYPE (int) ;
 int IFM_UNKNOWN ;
 int INIT_DEBUGOUT (char*) ;





 int IXGBE_PHYSICAL_LAYER_1000BASE_KX ;
 int IXGBE_PHYSICAL_LAYER_1000BASE_SX ;
 int IXGBE_PHYSICAL_LAYER_1000BASE_T ;
 int IXGBE_PHYSICAL_LAYER_100BASE_TX ;
 int IXGBE_PHYSICAL_LAYER_10BASE_T ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_CX4 ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_KR ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_KX4 ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_LR ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_LRM ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_SR ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_T ;
 int IXGBE_PHYSICAL_LAYER_2500BASE_KX ;
 int IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA ;
 int IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__ ixgbe_fc_full ;
 scalar_t__ ixgbe_fc_rx_pause ;
 scalar_t__ ixgbe_fc_tx_pause ;

__attribute__((used)) static void
ixgbe_if_media_status(if_ctx_t ctx, struct ifmediareq * ifmr)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 int layer;

 INIT_DEBUGOUT("ixgbe_if_media_status: begin");

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if (!adapter->link_active)
  return;

 ifmr->ifm_status |= IFM_ACTIVE;
 layer = adapter->phy_layer;

 if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_T ||
     layer & IXGBE_PHYSICAL_LAYER_1000BASE_T ||
     layer & IXGBE_PHYSICAL_LAYER_100BASE_TX ||
     layer & IXGBE_PHYSICAL_LAYER_10BASE_T)
  switch (adapter->link_speed) {
  case 131:
   ifmr->ifm_active |= IFM_10G_T | IFM_FDX;
   break;
  case 129:
   ifmr->ifm_active |= IFM_1000_T | IFM_FDX;
   break;
  case 132:
   ifmr->ifm_active |= IFM_100_TX | IFM_FDX;
   break;
  case 130:
   ifmr->ifm_active |= IFM_10_T | IFM_FDX;
   break;
  }
 if (layer & IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU ||
     layer & IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA)
  switch (adapter->link_speed) {
  case 131:
   ifmr->ifm_active |= IFM_10G_TWINAX | IFM_FDX;
   break;
  }
 if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_LR)
  switch (adapter->link_speed) {
  case 131:
   ifmr->ifm_active |= IFM_10G_LR | IFM_FDX;
   break;
  case 129:
   ifmr->ifm_active |= IFM_1000_LX | IFM_FDX;
   break;
  }
 if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_LRM)
  switch (adapter->link_speed) {
  case 131:
   ifmr->ifm_active |= IFM_10G_LRM | IFM_FDX;
   break;
  case 129:
   ifmr->ifm_active |= IFM_1000_LX | IFM_FDX;
   break;
  }
 if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_SR ||
     layer & IXGBE_PHYSICAL_LAYER_1000BASE_SX)
  switch (adapter->link_speed) {
  case 131:
   ifmr->ifm_active |= IFM_10G_SR | IFM_FDX;
   break;
  case 129:
   ifmr->ifm_active |= IFM_1000_SX | IFM_FDX;
   break;
  }
 if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_CX4)
  switch (adapter->link_speed) {
  case 131:
   ifmr->ifm_active |= IFM_10G_CX4 | IFM_FDX;
   break;
  }





 if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_KR)
  switch (adapter->link_speed) {
  case 131:
   ifmr->ifm_active |= IFM_10G_SR | IFM_FDX;
   break;
  case 128:
   ifmr->ifm_active |= IFM_2500_SX | IFM_FDX;
   break;
  case 129:
   ifmr->ifm_active |= IFM_1000_CX | IFM_FDX;
   break;
  }
 else if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_KX4 ||
     layer & IXGBE_PHYSICAL_LAYER_2500BASE_KX ||
     layer & IXGBE_PHYSICAL_LAYER_1000BASE_KX)
  switch (adapter->link_speed) {
  case 131:
   ifmr->ifm_active |= IFM_10G_CX4 | IFM_FDX;
   break;
  case 128:
   ifmr->ifm_active |= IFM_2500_SX | IFM_FDX;
   break;
  case 129:
   ifmr->ifm_active |= IFM_1000_CX | IFM_FDX;
   break;
  }
 if (IFM_SUBTYPE(ifmr->ifm_active) == 0)
  ifmr->ifm_active |= IFM_UNKNOWN;


 if (hw->fc.current_mode == ixgbe_fc_rx_pause ||
     hw->fc.current_mode == ixgbe_fc_full)
  ifmr->ifm_active |= IFM_ETH_RXPAUSE;
 if (hw->fc.current_mode == ixgbe_fc_tx_pause ||
     hw->fc.current_mode == ixgbe_fc_full)
  ifmr->ifm_active |= IFM_ETH_TXPAUSE;
}
