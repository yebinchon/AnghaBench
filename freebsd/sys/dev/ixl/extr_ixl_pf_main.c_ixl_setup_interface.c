
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ixl_vsi {int media; TYPE_1__* shared; int ctx; } ;
struct TYPE_6__ {int phy_types; } ;
struct TYPE_5__ {int asq_last_status; } ;
struct i40e_hw {TYPE_3__ phy; TYPE_2__ aq; } ;
struct ixl_pf {int supported_speeds; struct i40e_hw hw; struct ixl_vsi vsi; } ;
struct ifnet {scalar_t__ if_mtu; } ;
struct i40e_aq_get_phy_abilities_resp {int link_speed; } ;
typedef int if_ctx_t ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ isc_max_frame_size; } ;


 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int FALSE ;
 int I40E_ERR_UNKNOWN_PHY ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int INIT_DBG_DEV (int ,char*) ;
 int TRUE ;
 int device_printf (int ,char*,...) ;
 int i40e_aq_get_phy_capabilities (struct i40e_hw*,int ,int ,struct i40e_aq_get_phy_abilities_resp*,int *) ;
 int i40e_msec_delay (int) ;
 int if_initbaudrate (struct ifnet*,int ) ;
 int if_setbaudrate (struct ifnet*,int ) ;
 struct ifnet* iflib_get_ifp (int ) ;
 int ifmedia_add (int ,int,int ,int *) ;
 int ifmedia_set (int ,int) ;
 int ixl_add_ifmedia (struct ixl_vsi*,int ) ;
 int ixl_max_aq_speed_to_value (int ) ;

int
ixl_setup_interface(device_t dev, struct ixl_pf *pf)
{
 struct ixl_vsi *vsi = &pf->vsi;
 if_ctx_t ctx = vsi->ctx;
 struct i40e_hw *hw = &pf->hw;
 struct ifnet *ifp = iflib_get_ifp(ctx);
 struct i40e_aq_get_phy_abilities_resp abilities;
 enum i40e_status_code aq_error = 0;

 INIT_DBG_DEV(dev, "begin");

 vsi->shared->isc_max_frame_size =
     ifp->if_mtu + ETHER_HDR_LEN + ETHER_CRC_LEN
     + ETHER_VLAN_ENCAP_LEN;

 aq_error = i40e_aq_get_phy_capabilities(hw,
     FALSE, TRUE, &abilities, ((void*)0));

 if (aq_error == I40E_ERR_UNKNOWN_PHY) {

  i40e_msec_delay(200);
  aq_error = i40e_aq_get_phy_capabilities(hw, FALSE,
      TRUE, &abilities, ((void*)0));
 }
 if (aq_error) {
  if (aq_error == I40E_ERR_UNKNOWN_PHY)
   device_printf(dev, "Unknown PHY type detected!\n");
  else
   device_printf(dev,
       "Error getting supported media types, err %d,"
       " AQ error %d\n", aq_error, hw->aq.asq_last_status);
 } else {
  pf->supported_speeds = abilities.link_speed;



  if_initbaudrate(ifp, ixl_max_aq_speed_to_value(pf->supported_speeds));


  ixl_add_ifmedia(vsi, hw->phy.phy_types);
 }


 ifmedia_add(vsi->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(vsi->media, IFM_ETHER | IFM_AUTO);

 return (0);
}
