
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_filter_control_settings {scalar_t__ hash_lut_size; scalar_t__ enable_macvlan; scalar_t__ enable_ethtype; scalar_t__ enable_fdir; scalar_t__ fcoe_cntx_num; scalar_t__ fcoe_filt_num; scalar_t__ pe_cntx_num; scalar_t__ pe_filt_num; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_ERR_PARAM ;
 scalar_t__ I40E_HASH_LUT_SIZE_512 ;
 int I40E_PFQF_CTL_0 ;
 int I40E_PFQF_CTL_0_ETYPE_ENA_MASK ;
 int I40E_PFQF_CTL_0_FD_ENA_MASK ;
 int I40E_PFQF_CTL_0_HASHLUTSIZE_MASK ;
 int I40E_PFQF_CTL_0_HASHLUTSIZE_SHIFT ;
 int I40E_PFQF_CTL_0_MACVLAN_ENA_MASK ;
 int I40E_PFQF_CTL_0_PEDSIZE_MASK ;
 int I40E_PFQF_CTL_0_PEDSIZE_SHIFT ;
 int I40E_PFQF_CTL_0_PEHSIZE_MASK ;
 int I40E_PFQF_CTL_0_PEHSIZE_SHIFT ;
 int I40E_PFQF_CTL_0_PFFCDSIZE_MASK ;
 int I40E_PFQF_CTL_0_PFFCDSIZE_SHIFT ;
 int I40E_PFQF_CTL_0_PFFCHSIZE_MASK ;
 int I40E_PFQF_CTL_0_PFFCHSIZE_SHIFT ;
 int I40E_SUCCESS ;
 int i40e_read_rx_ctl (struct i40e_hw*,int ) ;
 int i40e_validate_filter_settings (struct i40e_hw*,struct i40e_filter_control_settings*) ;
 int i40e_write_rx_ctl (struct i40e_hw*,int ,int) ;

enum i40e_status_code i40e_set_filter_control(struct i40e_hw *hw,
    struct i40e_filter_control_settings *settings)
{
 enum i40e_status_code ret = I40E_SUCCESS;
 u32 hash_lut_size = 0;
 u32 val;

 if (!settings)
  return I40E_ERR_PARAM;


 ret = i40e_validate_filter_settings(hw, settings);
 if (ret)
  return ret;


 val = i40e_read_rx_ctl(hw, I40E_PFQF_CTL_0);


 val &= ~I40E_PFQF_CTL_0_PEHSIZE_MASK;
 val |= ((u32)settings->pe_filt_num << I40E_PFQF_CTL_0_PEHSIZE_SHIFT) &
  I40E_PFQF_CTL_0_PEHSIZE_MASK;

 val &= ~I40E_PFQF_CTL_0_PEDSIZE_MASK;
 val |= ((u32)settings->pe_cntx_num << I40E_PFQF_CTL_0_PEDSIZE_SHIFT) &
  I40E_PFQF_CTL_0_PEDSIZE_MASK;


 val &= ~I40E_PFQF_CTL_0_PFFCHSIZE_MASK;
 val |= ((u32)settings->fcoe_filt_num <<
   I40E_PFQF_CTL_0_PFFCHSIZE_SHIFT) &
  I40E_PFQF_CTL_0_PFFCHSIZE_MASK;

 val &= ~I40E_PFQF_CTL_0_PFFCDSIZE_MASK;
 val |= ((u32)settings->fcoe_cntx_num <<
   I40E_PFQF_CTL_0_PFFCDSIZE_SHIFT) &
  I40E_PFQF_CTL_0_PFFCDSIZE_MASK;


 val &= ~I40E_PFQF_CTL_0_HASHLUTSIZE_MASK;
 if (settings->hash_lut_size == I40E_HASH_LUT_SIZE_512)
  hash_lut_size = 1;
 val |= (hash_lut_size << I40E_PFQF_CTL_0_HASHLUTSIZE_SHIFT) &
  I40E_PFQF_CTL_0_HASHLUTSIZE_MASK;


 if (settings->enable_fdir)
  val |= I40E_PFQF_CTL_0_FD_ENA_MASK;
 if (settings->enable_ethtype)
  val |= I40E_PFQF_CTL_0_ETYPE_ENA_MASK;
 if (settings->enable_macvlan)
  val |= I40E_PFQF_CTL_0_MACVLAN_ENA_MASK;

 i40e_write_rx_ctl(hw, I40E_PFQF_CTL_0, val);

 return I40E_SUCCESS;
}
