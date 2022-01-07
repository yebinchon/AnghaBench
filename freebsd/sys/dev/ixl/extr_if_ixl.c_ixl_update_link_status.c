
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ixl_vsi {scalar_t__ link_active; int ctx; } ;
struct TYPE_3__ {int link_speed; } ;
struct TYPE_4__ {TYPE_1__ link_info; } ;
struct i40e_hw {TYPE_2__ phy; } ;
struct ixl_pf {scalar_t__ link_up; struct i40e_hw hw; struct ixl_vsi vsi; } ;


 scalar_t__ FALSE ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 scalar_t__ TRUE ;
 int iflib_link_state_change (int ,int ,int ) ;
 int ixl_broadcast_link_state (struct ixl_pf*) ;
 int ixl_link_up_msg (struct ixl_pf*) ;
 int ixl_max_aq_speed_to_value (int ) ;

void
ixl_update_link_status(struct ixl_pf *pf)
{
 struct ixl_vsi *vsi = &pf->vsi;
 struct i40e_hw *hw = &pf->hw;
 u64 baudrate;

 if (pf->link_up) {
  if (vsi->link_active == FALSE) {
   vsi->link_active = TRUE;
   baudrate = ixl_max_aq_speed_to_value(hw->phy.link_info.link_speed);
   iflib_link_state_change(vsi->ctx, LINK_STATE_UP, baudrate);
   ixl_link_up_msg(pf);




  }
 } else {
  if (vsi->link_active == TRUE) {
   vsi->link_active = FALSE;
   iflib_link_state_change(vsi->ctx, LINK_STATE_DOWN, 0);



  }
 }
}
