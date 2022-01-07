
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_filter_control_settings {int fcoe_filt_num; int fcoe_cntx_num; int pe_filt_num; int pe_cntx_num; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_DMA_CNTX_BASE_SIZE ;
 int I40E_ERR_INVALID_SIZE ;
 int I40E_ERR_PARAM ;
 int I40E_GLHMC_FCOEFMAX ;
 int I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_MASK ;
 int I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_SHIFT ;
 int I40E_HASH_FILTER_BASE_SIZE ;
 int I40E_SUCCESS ;
 int rd32 (struct i40e_hw*,int ) ;

__attribute__((used)) static enum i40e_status_code i40e_validate_filter_settings(struct i40e_hw *hw,
    struct i40e_filter_control_settings *settings)
{
 u32 fcoe_cntx_size, fcoe_filt_size;
 u32 pe_cntx_size, pe_filt_size;
 u32 fcoe_fmax;

 u32 val;


 switch (settings->fcoe_filt_num) {
 case 136:
 case 133:
 case 131:
 case 128:
 case 137:
 case 132:
  fcoe_filt_size = I40E_HASH_FILTER_BASE_SIZE;
  fcoe_filt_size <<= (u32)settings->fcoe_filt_num;
  break;
 default:
  return I40E_ERR_PARAM;
 }

 switch (settings->fcoe_cntx_num) {
 case 141:
 case 146:
 case 144:
 case 142:
  fcoe_cntx_size = I40E_DMA_CNTX_BASE_SIZE;
  fcoe_cntx_size <<= (u32)settings->fcoe_cntx_num;
  break;
 default:
  return I40E_ERR_PARAM;
 }


 switch (settings->pe_filt_num) {
 case 136:
 case 133:
 case 131:
 case 128:
 case 137:
 case 132:
 case 129:
 case 138:
 case 134:
 case 130:
 case 135:
  pe_filt_size = I40E_HASH_FILTER_BASE_SIZE;
  pe_filt_size <<= (u32)settings->pe_filt_num;
  break;
 default:
  return I40E_ERR_PARAM;
 }

 switch (settings->pe_cntx_num) {
 case 141:
 case 146:
 case 144:
 case 142:
 case 139:
 case 147:
 case 143:
 case 140:
 case 148:
 case 145:
  pe_cntx_size = I40E_DMA_CNTX_BASE_SIZE;
  pe_cntx_size <<= (u32)settings->pe_cntx_num;
  break;
 default:
  return I40E_ERR_PARAM;
 }


 val = rd32(hw, I40E_GLHMC_FCOEFMAX);
 fcoe_fmax = (val & I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_MASK)
       >> I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_SHIFT;
 if (fcoe_filt_size + fcoe_cntx_size > fcoe_fmax)
  return I40E_ERR_INVALID_SIZE;

 return I40E_SUCCESS;
}
