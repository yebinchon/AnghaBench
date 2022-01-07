
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phy_type; int an_info; } ;
struct TYPE_4__ {TYPE_1__ link_info; } ;
struct i40e_hw {TYPE_2__ phy; } ;
struct ixl_pf {int link_up; struct i40e_hw hw; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
typedef int if_ctx_t ;


 int I40E_AQ_LINK_PAUSE_RX ;
 int I40E_AQ_LINK_PAUSE_TX ;
 int IFM_1000_KX ;
 int IFM_1000_LX ;
 int IFM_1000_SGMII ;
 int IFM_1000_SX ;
 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10G_AOC ;
 int IFM_10G_CR1 ;
 int IFM_10G_KR ;
 int IFM_10G_KX4 ;
 int IFM_10G_LR ;
 int IFM_10G_SFI ;
 int IFM_10G_SR ;
 int IFM_10G_T ;
 int IFM_10G_TWINAX ;
 int IFM_20G_KR2 ;
 int IFM_25G_ACC ;
 int IFM_25G_AOC ;
 int IFM_25G_CR ;
 int IFM_25G_KR ;
 int IFM_25G_LR ;
 int IFM_25G_SR ;
 int IFM_40G_CR4 ;
 int IFM_40G_KR4 ;
 int IFM_40G_LR4 ;
 int IFM_40G_SR4 ;
 int IFM_40G_XLPPI ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OTHER ;
 int IFM_UNKNOWN ;
 int INIT_DEBUGOUT (char*) ;
 struct ixl_pf* iflib_get_softc (int ) ;

__attribute__((used)) static void
ixl_if_media_status(if_ctx_t ctx, struct ifmediareq *ifmr)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct i40e_hw *hw = &pf->hw;

 INIT_DEBUGOUT("ixl_media_status: begin");

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if (!pf->link_up) {
  return;
 }

 ifmr->ifm_status |= IFM_ACTIVE;

 ifmr->ifm_active |= IFM_FDX;

 switch (hw->phy.link_info.phy_type) {

  case 156:
   ifmr->ifm_active |= IFM_100_TX;
   break;

  case 158:
   ifmr->ifm_active |= IFM_1000_T;
   break;
  case 159:
   ifmr->ifm_active |= IFM_1000_SX;
   break;
  case 160:
   ifmr->ifm_active |= IFM_1000_LX;
   break;
  case 157:
   ifmr->ifm_active |= IFM_1000_T;
   break;

  case 149:
   ifmr->ifm_active |= IFM_10G_TWINAX;
   break;
  case 148:
   ifmr->ifm_active |= IFM_10G_SR;
   break;
  case 150:
   ifmr->ifm_active |= IFM_10G_LR;
   break;
  case 147:
   ifmr->ifm_active |= IFM_10G_T;
   break;
  case 131:
  case 130:
   ifmr->ifm_active |= IFM_10G_TWINAX;
   break;
  case 155:
   ifmr->ifm_active |= IFM_10G_AOC;
   break;

  case 142:
   ifmr->ifm_active |= IFM_25G_KR;
   break;
  case 143:
   ifmr->ifm_active |= IFM_25G_CR;
   break;
  case 140:
   ifmr->ifm_active |= IFM_25G_SR;
   break;
  case 141:
   ifmr->ifm_active |= IFM_25G_LR;
   break;
  case 144:
   ifmr->ifm_active |= IFM_25G_AOC;
   break;
  case 145:
   ifmr->ifm_active |= IFM_25G_ACC;
   break;

  case 138:
  case 137:
   ifmr->ifm_active |= IFM_40G_CR4;
   break;
  case 134:
   ifmr->ifm_active |= IFM_40G_SR4;
   break;
  case 135:
   ifmr->ifm_active |= IFM_40G_LR4;
   break;
  case 129:
   ifmr->ifm_active |= IFM_OTHER;
   break;
  case 161:
   ifmr->ifm_active |= IFM_1000_KX;
   break;
  case 132:
   ifmr->ifm_active |= IFM_1000_SGMII;
   break;

  case 153:
  case 154:
   ifmr->ifm_active |= IFM_10G_CR1;
   break;
  case 151:
   ifmr->ifm_active |= IFM_10G_KX4;
   break;
  case 152:
   ifmr->ifm_active |= IFM_10G_KR;
   break;
  case 133:
   ifmr->ifm_active |= IFM_10G_SFI;
   break;

  case 146:
   ifmr->ifm_active |= IFM_20G_KR2;
   break;
  case 136:
   ifmr->ifm_active |= IFM_40G_KR4;
   break;
  case 128:
  case 139:
   ifmr->ifm_active |= IFM_40G_XLPPI;
   break;

  default:
   ifmr->ifm_active |= IFM_UNKNOWN;
   break;
 }

 if (hw->phy.link_info.an_info & I40E_AQ_LINK_PAUSE_TX)
  ifmr->ifm_active |= IFM_ETH_TXPAUSE;
 if (hw->phy.link_info.an_info & I40E_AQ_LINK_PAUSE_RX)
  ifmr->ifm_active |= IFM_ETH_RXPAUSE;
}
