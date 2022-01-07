
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int get_link_info; } ;
struct TYPE_3__ {int fw_maj_ver; int fw_min_ver; int asq_last_status; } ;
struct i40e_hw {TYPE_2__ phy; TYPE_1__ aq; } ;
struct ixl_pf {int link_up; struct i40e_hw hw; int dev; } ;
typedef int device_t ;


 int TRUE ;
 int device_printf (int ,char*,int ) ;
 int i40e_aq_set_link_restart_an (struct i40e_hw*,int ,int *) ;
 int i40e_get_link_status (struct i40e_hw*,int *) ;
 int i40e_msec_delay (int) ;

int
ixl_attach_get_link_status(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 device_t dev = pf->dev;
 int error = 0;

 if (((hw->aq.fw_maj_ver == 4) && (hw->aq.fw_min_ver < 33)) ||
     (hw->aq.fw_maj_ver < 4)) {
  i40e_msec_delay(75);
  error = i40e_aq_set_link_restart_an(hw, TRUE, ((void*)0));
  if (error) {
   device_printf(dev, "link restart failed, aq_err=%d\n",
       pf->hw.aq.asq_last_status);
   return error;
  }
 }


 hw->phy.get_link_info = TRUE;
 i40e_get_link_status(hw, &pf->link_up);
 return (0);
}
