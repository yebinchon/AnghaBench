
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ctx; } ;
struct TYPE_7__ {int get_link_info; } ;
struct i40e_hw {TYPE_3__ phy; } ;
struct ixl_pf {scalar_t__ advertised_speed; int link_up; TYPE_4__ vsi; struct i40e_hw hw; } ;
struct TYPE_5__ {int raw; } ;
struct TYPE_6__ {TYPE_1__ params; } ;
struct i40e_arq_event_info {TYPE_2__ desc; } ;
struct i40e_aqc_get_link_status {int link_info; int an_info; } ;
typedef int device_t ;


 int I40E_AQ_LINK_UP ;
 int I40E_AQ_MEDIA_AVAILABLE ;
 int I40E_AQ_QUALIFIED_MODULE ;
 int TRUE ;
 int device_printf (int ,char*) ;
 int i40e_get_link_status (struct i40e_hw*,int *) ;
 int iflib_get_dev (int ) ;

void
ixl_link_event(struct ixl_pf *pf, struct i40e_arq_event_info *e)
{
 struct i40e_hw *hw = &pf->hw;
 device_t dev = iflib_get_dev(pf->vsi.ctx);
 struct i40e_aqc_get_link_status *status =
     (struct i40e_aqc_get_link_status *)&e->desc.params.raw;


 hw->phy.get_link_info = TRUE;
 i40e_get_link_status(hw, &pf->link_up);


 if ((status->link_info & I40E_AQ_MEDIA_AVAILABLE) &&
     (pf->advertised_speed) &&
     (!(status->an_info & I40E_AQ_QUALIFIED_MODULE)) &&
     (!(status->link_info & I40E_AQ_LINK_UP)))
  device_printf(dev, "Link failed because "
      "an unqualified module was detected!\n");


}
