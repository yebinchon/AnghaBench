
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int FALSE ;
 int i40e_aq_get_set_rss_lut (struct i40e_hw*,int ,int,int *,int ,int ) ;

enum i40e_status_code i40e_aq_get_rss_lut(struct i40e_hw *hw, u16 vsi_id,
       bool pf_lut, u8 *lut, u16 lut_size)
{
 return i40e_aq_get_set_rss_lut(hw, vsi_id, pf_lut, lut, lut_size,
           FALSE);
}
