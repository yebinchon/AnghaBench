
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_ERR_PARAM ;
 int I40E_PRTDCB_GENS ;
 int I40E_PRTDCB_GENS_DCBX_STATUS_MASK ;
 int I40E_PRTDCB_GENS_DCBX_STATUS_SHIFT ;
 int I40E_SUCCESS ;
 int rd32 (struct i40e_hw*,int ) ;

enum i40e_status_code i40e_get_dcbx_status(struct i40e_hw *hw, u16 *status)
{
 u32 reg;

 if (!status)
  return I40E_ERR_PARAM;

 reg = rd32(hw, I40E_PRTDCB_GENS);
 *status = (u16)((reg & I40E_PRTDCB_GENS_DCBX_STATUS_MASK) >>
   I40E_PRTDCB_GENS_DCBX_STATUS_SHIFT);

 return I40E_SUCCESS;
}
