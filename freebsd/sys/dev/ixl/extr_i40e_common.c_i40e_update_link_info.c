
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int link_info; int req_fec_info; int module_type; } ;
struct TYPE_4__ {int link_info; } ;
struct TYPE_6__ {TYPE_2__ link_info; TYPE_1__ link_info_old; } ;
struct i40e_hw {TYPE_3__ phy; } ;
struct i40e_aq_get_phy_abilities_resp {int fec_cfg_curr_mod_ext_info; int module_type; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int FALSE ;
 int I40E_AQ_LINK_UP ;
 int I40E_AQ_MEDIA_AVAILABLE ;
 int I40E_AQ_REQUEST_FEC_KR ;
 int I40E_AQ_REQUEST_FEC_RS ;
 int I40E_NONDMA_TO_NONDMA ;
 int I40E_SUCCESS ;
 int TRUE ;
 int i40e_aq_get_link_info (struct i40e_hw*,int ,int *,int *) ;
 int i40e_aq_get_phy_capabilities (struct i40e_hw*,int ,int,struct i40e_aq_get_phy_abilities_resp*,int *) ;
 int i40e_memcpy (int ,int *,int,int ) ;

enum i40e_status_code i40e_update_link_info(struct i40e_hw *hw)
{
 struct i40e_aq_get_phy_abilities_resp abilities;
 enum i40e_status_code status = I40E_SUCCESS;

 status = i40e_aq_get_link_info(hw, TRUE, ((void*)0), ((void*)0));
 if (status)
  return status;


 if ((hw->phy.link_info.link_info & I40E_AQ_MEDIA_AVAILABLE) &&
     ((hw->phy.link_info.link_info & I40E_AQ_LINK_UP) ||
      !(hw->phy.link_info_old.link_info & I40E_AQ_LINK_UP))) {
  status = i40e_aq_get_phy_capabilities(hw, FALSE, 0,
            &abilities, ((void*)0));
  if (status)
   return status;

  hw->phy.link_info.req_fec_info =
   abilities.fec_cfg_curr_mod_ext_info &
   (I40E_AQ_REQUEST_FEC_KR | I40E_AQ_REQUEST_FEC_RS);

  i40e_memcpy(hw->phy.link_info.module_type, &abilities.module_type,
   sizeof(hw->phy.link_info.module_type), I40E_NONDMA_TO_NONDMA);
 }
 return status;
}
