
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ixl_vsi {int seid; scalar_t__ enable_head_writeback; TYPE_2__* shared; int ifp; } ;
struct TYPE_3__ {int * addr; } ;
struct i40e_hw {TYPE_1__ mac; } ;
struct ixl_pf {scalar_t__ iw_enabled; struct i40e_hw hw; struct ixl_vsi vsi; } ;
struct ifnet {int dummy; } ;
typedef int if_ctx_t ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ isc_intr; } ;


 int ETHER_ADDR_LEN ;
 int ETH_ALEN ;
 int I40E_AQC_WRITE_TYPE_LAA_ONLY ;
 scalar_t__ I40E_SUCCESS ;
 scalar_t__ IFLIB_INTR_MSIX ;
 int * IF_LLADDR (int ) ;
 int IXL_VLAN_ANY ;
 int bcopy (int *,int *,int ) ;
 int cmp_etheraddr (int *,int *) ;
 int device_printf (int ,char*,...) ;
 int i40e_aq_mac_address_write (struct i40e_hw*,int ,int *,int *) ;
 int i40e_aq_set_default_vsi (struct i40e_hw*,int ,int *) ;
 int i40e_check_asq_alive (struct i40e_hw*) ;
 scalar_t__ i40e_validate_mac_addr (int *) ;
 int if_getflags (struct ifnet*) ;
 int iflib_get_dev (int ) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct ixl_pf* iflib_get_softc (int ) ;
 int iflib_set_mac (int ,int *) ;
 int ixl_add_filter (struct ixl_vsi*,int *,int ) ;
 int ixl_config_rss (struct ixl_pf*) ;
 int ixl_configure_itr (struct ixl_pf*) ;
 int ixl_configure_legacy (struct ixl_pf*) ;
 int ixl_configure_queue_intr_msix (struct ixl_pf*) ;
 int ixl_del_filter (struct ixl_vsi*,int *,int ) ;
 scalar_t__ ixl_enable_iwarp ;
 int ixl_enable_rings (struct ixl_vsi*) ;
 int ixl_if_multi_set (int ) ;
 int ixl_if_promisc_set (int ,int ) ;
 int ixl_init_tx_cidx (struct ixl_vsi*) ;
 int ixl_init_tx_rsqs (struct ixl_vsi*) ;
 scalar_t__ ixl_initialize_vsi (struct ixl_vsi*) ;
 int ixl_iw_pf_init (struct ixl_pf*) ;
 int ixl_rebuild_hw_structs_after_reset (struct ixl_pf*) ;
 int ixl_reconfigure_filters (struct ixl_vsi*) ;
 int ixl_teardown_hw_structs (struct ixl_pf*) ;

void
ixl_if_init(if_ctx_t ctx)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &pf->vsi;
 struct i40e_hw *hw = &pf->hw;
 struct ifnet *ifp = iflib_get_ifp(ctx);
 device_t dev = iflib_get_dev(ctx);
 u8 tmpaddr[ETHER_ADDR_LEN];
 int ret;






 if (!i40e_check_asq_alive(&pf->hw)) {
  device_printf(dev, "Admin Queue is down; resetting...\n");
  ixl_teardown_hw_structs(pf);
  ixl_rebuild_hw_structs_after_reset(pf);
 }


 bcopy(IF_LLADDR(vsi->ifp), tmpaddr, ETH_ALEN);
 if (!cmp_etheraddr(hw->mac.addr, tmpaddr) &&
     (i40e_validate_mac_addr(tmpaddr) == I40E_SUCCESS)) {
  ixl_del_filter(vsi, hw->mac.addr, IXL_VLAN_ANY);
  bcopy(tmpaddr, hw->mac.addr, ETH_ALEN);
  ret = i40e_aq_mac_address_write(hw,
      I40E_AQC_WRITE_TYPE_LAA_ONLY,
      hw->mac.addr, ((void*)0));
  if (ret) {
   device_printf(dev, "LLA address change failed!!\n");
   return;
  }
  ixl_add_filter(vsi, hw->mac.addr, IXL_VLAN_ANY);
 }

 iflib_set_mac(ctx, hw->mac.addr);


 if (ixl_initialize_vsi(vsi)) {
  device_printf(dev, "initialize vsi failed!!\n");
  return;
 }


 ixl_if_multi_set(ctx);


 ixl_config_rss(pf);


 if (vsi->shared->isc_intr == IFLIB_INTR_MSIX) {
  ixl_configure_queue_intr_msix(pf);
  ixl_configure_itr(pf);
 } else
  ixl_configure_legacy(pf);

 if (vsi->enable_head_writeback)
  ixl_init_tx_cidx(vsi);
 else
  ixl_init_tx_rsqs(vsi);

 ixl_enable_rings(vsi);

 i40e_aq_set_default_vsi(hw, vsi->seid, ((void*)0));


 ixl_reconfigure_filters(vsi);


 ixl_if_promisc_set(ctx, if_getflags(ifp));
}
