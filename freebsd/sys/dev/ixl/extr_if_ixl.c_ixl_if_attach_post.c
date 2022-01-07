
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ixl_vsi {TYPE_2__* shared; int num_tx_queues; int num_rx_queues; int ifp; } ;
struct TYPE_10__ {int num_active; int num_allocated; } ;
struct TYPE_9__ {scalar_t__ iwarp; int num_tx_qp; } ;
struct TYPE_8__ {int get_link_info; } ;
struct TYPE_6__ {int asq_last_status; } ;
struct i40e_hw {TYPE_4__ func_caps; TYPE_3__ phy; TYPE_1__ aq; } ;
struct ixl_pf {int iw_enabled; scalar_t__ iw_msix; int link_up; TYPE_5__ qtag; int qmgr; struct i40e_hw hw; struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef int device_t ;
struct TYPE_7__ {scalar_t__ isc_intr; int isc_ntxqsets; int isc_nrxqsets; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ IFLIB_INTR_MSIX ;
 int INIT_DBG_DEV (int ,char*) ;
 int INIT_DEBUGOUT (char*,int) ;
 int IXL_DEFAULT_PHY_INT_MASK ;
 int device_printf (int ,char*,...) ;
 int i40e_aq_set_phy_int_mask (struct i40e_hw*,int ,int *) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_get_link_status (struct i40e_hw*,int *) ;
 int i40e_stat_str (struct i40e_hw*,int) ;
 int iflib_get_dev (int ) ;
 int iflib_get_ifp (int ) ;
 struct ixl_pf* iflib_get_softc (int ) ;
 int ixl_add_device_sysctls (struct ixl_pf*) ;
 int ixl_add_hw_stats (struct ixl_pf*) ;
 scalar_t__ ixl_attach_get_link_status (struct ixl_pf*) ;
 int ixl_configure_intr0_msix (struct ixl_pf*) ;
 int ixl_enable_intr0 (struct i40e_hw*) ;
 scalar_t__ ixl_enable_iwarp ;
 int ixl_get_bus_info (struct ixl_pf*) ;
 int ixl_init_filters (struct ixl_vsi*) ;
 int ixl_initialize_sriov (struct ixl_pf*) ;
 int ixl_iw_pf_attach (struct ixl_pf*) ;
 int ixl_pf_qmgr_alloc_contiguous (int *,int ,TYPE_5__*) ;
 int ixl_pf_qmgr_init (int *,int ) ;
 int ixl_pf_reset_stats (struct ixl_pf*) ;
 int ixl_set_initial_advertised_speeds (struct ixl_pf*) ;
 scalar_t__ ixl_setup_interface (int ,struct ixl_pf*) ;
 int ixl_switch_config (struct ixl_pf*) ;
 int ixl_update_link_status (struct ixl_pf*) ;
 int ixl_update_stats_counters (struct ixl_pf*) ;
 int max (int ,int ) ;

__attribute__((used)) static int
ixl_if_attach_post(if_ctx_t ctx)
{
 device_t dev;
 struct ixl_pf *pf;
 struct i40e_hw *hw;
 struct ixl_vsi *vsi;
 int error = 0;
 enum i40e_status_code status;

 INIT_DBG_DEV(dev, "begin");

 dev = iflib_get_dev(ctx);
 pf = iflib_get_softc(ctx);
 vsi = &pf->vsi;
 vsi->ifp = iflib_get_ifp(ctx);
 hw = &pf->hw;


 vsi->num_rx_queues = vsi->shared->isc_nrxqsets;
 vsi->num_tx_queues = vsi->shared->isc_ntxqsets;


 if (ixl_setup_interface(dev, pf)) {
  device_printf(dev, "interface setup failed!\n");
  error = EIO;
  goto err;
 }


 if (ixl_attach_get_link_status(pf)) {
  error = EINVAL;
  goto err;
 }

 error = ixl_switch_config(pf);
 if (error) {
  device_printf(dev, "Initial ixl_switch_config() failed: %d\n",
       error);
  goto err;
 }


 ixl_init_filters(vsi);


 error = ixl_pf_qmgr_init(&pf->qmgr, hw->func_caps.num_tx_qp);
 if (error) {
  device_printf(dev, "Failed to init queue manager for PF queues, error %d\n",
      error);
  goto err;
 }

 error = ixl_pf_qmgr_alloc_contiguous(&pf->qmgr,
     max(vsi->num_rx_queues, vsi->num_tx_queues), &pf->qtag);
 if (error) {
  device_printf(dev, "Failed to reserve queues for PF LAN VSI, error %d\n",
      error);
  goto err;
 }
 device_printf(dev, "Allocating %d queues for PF LAN VSI; %d queues active\n",
     pf->qtag.num_allocated, pf->qtag.num_active);


 status = i40e_aq_set_phy_int_mask(hw, IXL_DEFAULT_PHY_INT_MASK,
     ((void*)0));
        if (status) {
  device_printf(dev, "i40e_aq_set_phy_mask() failed: err %s,"
      " aq_err %s\n", i40e_stat_str(hw, status),
      i40e_aq_str(hw, hw->aq.asq_last_status));
  goto err;
 }


 ixl_get_bus_info(pf);


 if (vsi->shared->isc_intr == IFLIB_INTR_MSIX) {
   ixl_configure_intr0_msix(pf);
   ixl_enable_intr0(hw);
 }


 ixl_set_initial_advertised_speeds(pf);


 ixl_add_device_sysctls(pf);
 ixl_pf_reset_stats(pf);
 ixl_update_stats_counters(pf);
 ixl_add_hw_stats(pf);

 hw->phy.get_link_info = 1;
 i40e_get_link_status(hw, &pf->link_up);
 ixl_update_link_status(pf);
 INIT_DBG_DEV(dev, "end");
 return (0);

err:
 INIT_DEBUGOUT("end: error %d", error);

 return (error);
}
