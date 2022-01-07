
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ixl_vsi {struct ifnet* ifp; } ;
struct TYPE_3__ {int num_allocated; } ;
struct TYPE_4__ {scalar_t__ seid; } ;
struct ixl_vf {int ctx; TYPE_1__ qtag; TYPE_2__ vsi; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int num_vfs; scalar_t__ veb_seid; struct ixl_vf* vfs; scalar_t__ enable_vf_loopback; int qmgr; struct ixl_vsi vsi; struct i40e_hw hw; } ;
struct ifnet {int dummy; } ;
typedef int if_ctx_t ;


 int M_IXL ;
 int free (struct ixl_vf*,int ) ;
 int i40e_aq_delete_element (struct i40e_hw*,scalar_t__,int *) ;
 struct ixl_pf* iflib_get_softc (int ) ;
 int ixl_config_pf_vsi_loopback (struct ixl_pf*,int) ;
 int ixl_dbg_iov (struct ixl_pf*,char*,int,...) ;
 int ixl_free_mac_filters (TYPE_2__*) ;
 int ixl_pf_qmgr_get_num_free (int *) ;
 int ixl_pf_qmgr_release (int *,TYPE_1__*) ;
 int sysctl_ctx_free (int *) ;

void
ixl_if_iov_uninit(if_ctx_t ctx)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct i40e_hw *hw;
 struct ixl_vsi *vsi;
 struct ifnet *ifp;
 struct ixl_vf *vfs;
 int i, num_vfs;

 hw = &pf->hw;
 vsi = &pf->vsi;
 ifp = vsi->ifp;

 for (i = 0; i < pf->num_vfs; i++) {
  if (pf->vfs[i].vsi.seid != 0)
   i40e_aq_delete_element(hw, pf->vfs[i].vsi.seid, ((void*)0));
  ixl_pf_qmgr_release(&pf->qmgr, &pf->vfs[i].qtag);
  ixl_free_mac_filters(&pf->vfs[i].vsi);
  ixl_dbg_iov(pf, "VF %d: %d released\n",
      i, pf->vfs[i].qtag.num_allocated);
  ixl_dbg_iov(pf, "Unallocated total: %d\n", ixl_pf_qmgr_get_num_free(&pf->qmgr));
 }

 if (pf->veb_seid != 0) {
  i40e_aq_delete_element(hw, pf->veb_seid, ((void*)0));
  pf->veb_seid = 0;
 }

 if (pf->enable_vf_loopback)
  ixl_config_pf_vsi_loopback(pf, 0);

 vfs = pf->vfs;
 num_vfs = pf->num_vfs;

 pf->vfs = ((void*)0);
 pf->num_vfs = 0;


 for (i = 0; i < num_vfs; i++)
  sysctl_ctx_free(&vfs[i].ctx);
 free(vfs, M_IXL);
}
