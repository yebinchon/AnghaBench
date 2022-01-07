
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ sr_size; } ;
struct i40e_hw {TYPE_1__ nvm; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int BIT (int ) ;
 int DEBUGFUNC (char*) ;
 int I40E_DEBUG_NVM ;
 int I40E_ERR_PARAM ;
 int I40E_ERR_TIMEOUT ;
 int I40E_GLNVM_SRCTL ;
 int I40E_GLNVM_SRCTL_ADDR_SHIFT ;
 int I40E_GLNVM_SRCTL_START_SHIFT ;
 int I40E_GLNVM_SRDATA ;
 int I40E_GLNVM_SRDATA_RDDATA_MASK ;
 int I40E_GLNVM_SRDATA_RDDATA_SHIFT ;
 int I40E_SUCCESS ;
 int i40e_debug (struct i40e_hw*,int ,char*,scalar_t__,...) ;
 int i40e_poll_sr_srctl_done_bit (struct i40e_hw*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

enum i40e_status_code i40e_read_nvm_word_srctl(struct i40e_hw *hw, u16 offset,
            u16 *data)
{
 enum i40e_status_code ret_code = I40E_ERR_TIMEOUT;
 u32 sr_reg;

 DEBUGFUNC("i40e_read_nvm_word_srctl");

 if (offset >= hw->nvm.sr_size) {
  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVM read error: Offset %d beyond Shadow RAM limit %d\n",
      offset, hw->nvm.sr_size);
  ret_code = I40E_ERR_PARAM;
  goto read_nvm_exit;
 }


 ret_code = i40e_poll_sr_srctl_done_bit(hw);
 if (ret_code == I40E_SUCCESS) {

  sr_reg = ((u32)offset << I40E_GLNVM_SRCTL_ADDR_SHIFT) |
    BIT(I40E_GLNVM_SRCTL_START_SHIFT);
  wr32(hw, I40E_GLNVM_SRCTL, sr_reg);


  ret_code = i40e_poll_sr_srctl_done_bit(hw);
  if (ret_code == I40E_SUCCESS) {
   sr_reg = rd32(hw, I40E_GLNVM_SRDATA);
   *data = (u16)((sr_reg &
           I40E_GLNVM_SRDATA_RDDATA_MASK)
        >> I40E_GLNVM_SRDATA_RDDATA_SHIFT);
  }
 }
 if (ret_code != I40E_SUCCESS)
  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVM read error: Couldn't access Shadow RAM address: 0x%x\n",
      offset);

read_nvm_exit:
 return ret_code;
}
