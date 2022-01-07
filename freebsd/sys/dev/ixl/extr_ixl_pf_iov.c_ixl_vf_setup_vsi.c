
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hw_filters_del; scalar_t__ hw_filters_add; int seid; } ;
struct ixl_vf {TYPE_1__ vsi; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int dev; struct i40e_hw hw; } ;


 int TRUE ;
 int device_printf (int ,char*) ;
 int i40e_aq_set_vsi_broadcast (struct i40e_hw*,int ,int ,int *) ;
 int ixl_reconfigure_filters (TYPE_1__*) ;
 int ixl_vf_alloc_vsi (struct ixl_pf*,struct ixl_vf*) ;

__attribute__((used)) static int
ixl_vf_setup_vsi(struct ixl_pf *pf, struct ixl_vf *vf)
{
 struct i40e_hw *hw;
 int error;

 hw = &pf->hw;

 error = ixl_vf_alloc_vsi(pf, vf);
 if (error != 0)
  return (error);


 error = i40e_aq_set_vsi_broadcast(hw, vf->vsi.seid, TRUE, ((void*)0));
 if (error)
  device_printf(pf->dev, "Error configuring VF VSI for broadcast promiscuous\n");

 ixl_reconfigure_filters(&vf->vsi);

 vf->vsi.hw_filters_add = 0;
 vf->vsi.hw_filters_del = 0;

 return (0);
}
