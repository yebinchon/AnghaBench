
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ixl_vsi {int seid; TYPE_2__* hw; int ftl; scalar_t__ back; } ;
struct ixl_pf {scalar_t__ enable_tx_fc_filter; int hw; } ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;


 int IXL_VLAN_ANY ;
 int SLIST_INIT (int *) ;
 int TRUE ;
 int i40e_add_filter_to_drop_tx_flow_control_frames (TYPE_2__*,int ) ;
 int i40e_aq_set_vsi_broadcast (int *,int ,int ,int *) ;
 int ixl_add_filter (struct ixl_vsi*,int ,int ) ;
 int ixl_del_default_hw_filters (struct ixl_vsi*) ;

void
ixl_init_filters(struct ixl_vsi *vsi)
{
 struct ixl_pf *pf = (struct ixl_pf *)vsi->back;


 SLIST_INIT(&vsi->ftl);


 i40e_aq_set_vsi_broadcast(&pf->hw, vsi->seid, TRUE, ((void*)0));

 ixl_del_default_hw_filters(vsi);

 ixl_add_filter(vsi, vsi->hw->mac.addr, IXL_VLAN_ANY);





 if (pf->enable_tx_fc_filter)
  i40e_add_filter_to_drop_tx_flow_control_frames(vsi->hw, vsi->seid);
}
