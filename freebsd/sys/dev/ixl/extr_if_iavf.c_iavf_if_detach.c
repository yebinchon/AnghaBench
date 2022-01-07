
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int media; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {int vf_res; struct i40e_hw hw; int dev; struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef int device_t ;


 int I40E_SUCCESS ;
 int INIT_DBG_DEV (int ,char*) ;
 int M_IAVF ;
 int device_printf (int ,char*,int ) ;
 int free (int ,int ) ;
 int i40e_shutdown_adminq (struct i40e_hw*) ;
 int i40e_stat_str (struct i40e_hw*,int) ;
 int iavf_disable_adminq_irq (struct i40e_hw*) ;
 int iavf_free_filters (struct iavf_sc*) ;
 int iavf_free_pci_resources (struct iavf_sc*) ;
 struct iavf_sc* iflib_get_softc (int ) ;
 int ifmedia_removeall (int ) ;

__attribute__((used)) static int
iavf_if_detach(if_ctx_t ctx)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &sc->vsi;
 struct i40e_hw *hw = &sc->hw;
 device_t dev = sc->dev;
 enum i40e_status_code status;

 INIT_DBG_DEV(dev, "begin");


 ifmedia_removeall(vsi->media);

 iavf_disable_adminq_irq(hw);
 status = i40e_shutdown_adminq(&sc->hw);
 if (status != I40E_SUCCESS) {
  device_printf(dev,
      "i40e_shutdown_adminq() failed with status %s\n",
      i40e_stat_str(hw, status));
 }

 free(sc->vf_res, M_IAVF);
 iavf_free_pci_resources(sc);
 iavf_free_filters(sc);

 INIT_DBG_DEV(dev, "end");
 return (0);
}
