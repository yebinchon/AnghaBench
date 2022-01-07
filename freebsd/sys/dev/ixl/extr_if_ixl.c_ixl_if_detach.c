
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixl_vsi {int media; } ;
struct TYPE_2__ {scalar_t__ hmc_obj; } ;
struct i40e_hw {TYPE_1__ hmc; } ;
struct ixl_pf {int qmgr; scalar_t__ iw_enabled; int dev; struct i40e_hw hw; struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef int device_t ;


 int EBUSY ;
 int INIT_DBG_DEV (int ,char*) ;
 int device_printf (int ,char*,...) ;
 int i40e_shutdown_adminq (struct i40e_hw*) ;
 int i40e_shutdown_lan_hmc (struct i40e_hw*) ;
 int i40e_stat_str (struct i40e_hw*,int) ;
 struct ixl_pf* iflib_get_softc (int ) ;
 int ifmedia_removeall (int ) ;
 int ixl_disable_intr0 (struct i40e_hw*) ;
 scalar_t__ ixl_enable_iwarp ;
 int ixl_free_mac_filters (struct ixl_vsi*) ;
 int ixl_free_pci_resources (struct ixl_pf*) ;
 int ixl_iw_pf_detach (struct ixl_pf*) ;
 int ixl_pf_qmgr_destroy (int *) ;

__attribute__((used)) static int
ixl_if_detach(if_ctx_t ctx)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &pf->vsi;
 struct i40e_hw *hw = &pf->hw;
 device_t dev = pf->dev;
 enum i40e_status_code status;




 INIT_DBG_DEV(dev, "begin");
 ifmedia_removeall(vsi->media);


 if (hw->hmc.hmc_obj) {
  status = i40e_shutdown_lan_hmc(hw);
  if (status)
   device_printf(dev,
       "i40e_shutdown_lan_hmc() failed with status %s\n",
       i40e_stat_str(hw, status));
 }


 ixl_disable_intr0(hw);
 status = i40e_shutdown_adminq(hw);
 if (status)
  device_printf(dev,
      "i40e_shutdown_adminq() failed with status %s\n",
      i40e_stat_str(hw, status));

 ixl_pf_qmgr_destroy(&pf->qmgr);
 ixl_free_pci_resources(pf);
 ixl_free_mac_filters(vsi);
 INIT_DBG_DEV(dev, "end");
 return (0);
}
